//
//  CurrencyViewController.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 15.11.2020.
//

import UIKit

final class CurrencyViewController: UIViewController {

	// MARK: - Properties

	private let cellID = "Cell"
	private var tableView = UITableView()
	//private var valutes: [Valute] = []

	private var viewModel: CurrencyViewModelProtocol? {
		didSet {
			viewModel?.fetchCurrencys() {
				DispatchQueue.main.async {
					self.tableView.reloadData()
				}
			}
		}
	}

	// MARK: - lifecycle

	override func viewDidLoad() {
        super.viewDidLoad()
		self.viewModel = CurrencyViewModel()
		self.setupNavigationBar()
		self.setupTableView()
    }
}

// MARK: - Setup table view

private extension CurrencyViewController {
	func setupNavigationBar() {
		self.navigationItem.title = "Курсы валют"
		self.navigationController?.navigationBar.barTintColor = UIColor.darkGray
		self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white ]
		self.navigationController?.navigationBar.tintColor = .white
	}

	func setupTableView() {
        self.tableView.backgroundColor = UIColor.darkGray
		self.tableView.delegate = self
		self.tableView.dataSource = self
		self.tableView.register(CurrencyCell.self, forCellReuseIdentifier: cellID)
		self.setupTableViewLayout()
	}

	func setupTableViewLayout() {
		self.view.addSubview(tableView)
		self.tableView.translatesAutoresizingMaskIntoConstraints = false

		NSLayoutConstraint.activate([
			self.tableView.topAnchor.constraint(
				equalTo: self.view.safeAreaLayoutGuide.topAnchor),
			self.tableView.bottomAnchor.constraint(
				equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
			self.tableView.leadingAnchor.constraint(
				equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
			self.tableView.trailingAnchor.constraint(
				equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
		])
	}
}

// MARK: - UITableViewDataSource

extension CurrencyViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		guard let count = viewModel?.numberOfRows() else { return 0 }
		return count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = self.tableView.dequeueReusableCell(withIdentifier: cellID,
												 for: indexPath) as? CurrencyCell

		let cellViewModel = viewModel?.cellViewModel(for: indexPath)
		cell?.viewModel = cellViewModel

		guard let nonOptionalCell = cell else { return UITableViewCell() }

		return nonOptionalCell
	}
}

// MARK: - UITableViewDelegate

extension CurrencyViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return Metrics.tableViewHeight
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		self.tableView.deselectRow(at: indexPath, animated: true)

		let converter = ConverterViewController()
		viewModel?.selectedRow(for: indexPath)
		converter.viewModel = viewModel?.converterViewModel()
		navigationController?.pushViewController(converter, animated: true)
	}
}
