//
//  CurrencyCell.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 15.11.2020.
//

import UIKit

final class CurrencyCell: UITableViewCell {

	// MARK: - Properties

	private var nameLabel = UILabel()
	private var resultStringLabel = UILabel()
	private var countryLabel = UILabel()
	private var toUpImage = UIImageView()
	private var flagImage = UIImageView()

	var viewModel: CurrencyCellViewModelProtocol? {
		didSet {
			self.nameLabel.text = viewModel?.charCode
			self.countryLabel.text = viewModel?.name
			self.resultStringLabel.text = viewModel?.resultString
			self.flagImage.image = UIImage(named: viewModel?.charCode ?? "")

			self.setupViews()
		}
	}
}

// MARK: - Setup views

private extension CurrencyCell {
	func setupViews() {
		self.backgroundColor = UIColor.darkGray

		self.nameLabel.font = Font.headerStyle.font
		self.nameLabel.textColor = UIColor.white

		self.countryLabel.font = Font.textStyle.font
		self.countryLabel.textColor = UIColor.white
		self.countryLabel.adjustsFontSizeToFitWidth = true
		self.countryLabel.minimumScaleFactor = 0.4
		self.resultStringLabel.font = Font.dateStyle.font
		self.resultStringLabel.textColor = UIColor.white

		if self.viewModel?.toUp ?? true {
			self.toUpImage.tintColor = .green
			self.toUpImage.image = SystemImage.up.image
		} else {
			self.toUpImage.tintColor = .red
			self.toUpImage.image = SystemImage.down.image
		}

		self.setupViewsLayout()
	}

	func setupViewsLayout() {
		self.flagImage.translatesAutoresizingMaskIntoConstraints = false
		self.addSubview(self.flagImage)
		NSLayoutConstraint.activate([
			self.flagImage.heightAnchor.constraint(
				equalToConstant: Metrics.imageSize),
			self.flagImage.widthAnchor.constraint(
				equalToConstant: Metrics.imageSize),
			self.flagImage.leadingAnchor.constraint(
				equalTo: self.leadingAnchor,
				constant: Metrics.standartSizeSeparator),
			self.flagImage.centerYAnchor.constraint(equalTo: self.centerYAnchor)
		])

		self.nameLabel.translatesAutoresizingMaskIntoConstraints = false
		self.addSubview(self.nameLabel)
		NSLayoutConstraint.activate([
			nameLabel.topAnchor.constraint(
				equalTo: self.topAnchor,
				constant: Metrics.smallSizeSeparator),
			nameLabel.leadingAnchor.constraint(
				equalTo: self.flagImage.trailingAnchor,
				constant: Metrics.standartSizeSeparator)
		])

		self.toUpImage.translatesAutoresizingMaskIntoConstraints = false
		self.addSubview(self.toUpImage)
		NSLayoutConstraint.activate([
			self.toUpImage.leadingAnchor.constraint(
				equalTo: self.flagImage.trailingAnchor,
				constant: Metrics.tableViewToUpSeparator),
			self.toUpImage.topAnchor.constraint(
				equalTo: self.topAnchor,
				constant: Metrics.smallSizeSeparator),
			self.toUpImage.heightAnchor.constraint(
				equalToConstant: Metrics.mediumSizeSeparator),
			self.toUpImage.widthAnchor.constraint(
				equalToConstant: Metrics.mediumSizeSeparator)
		])

		self.countryLabel.translatesAutoresizingMaskIntoConstraints = false
		self.addSubview(self.countryLabel)
		NSLayoutConstraint.activate([
			self.countryLabel.topAnchor.constraint(
				equalTo: self.nameLabel.bottomAnchor,
				constant: Metrics.minimumSizeSeparator),
			self.countryLabel.leadingAnchor.constraint(
				equalTo: self.flagImage.trailingAnchor,
				constant: Metrics.standartSizeSeparator),
			self.countryLabel.trailingAnchor.constraint(
				equalTo: self.trailingAnchor,
				constant: -Metrics.standartSizeSeparator)
		])

		self.resultStringLabel.translatesAutoresizingMaskIntoConstraints = false
		self.addSubview(self.resultStringLabel)
		NSLayoutConstraint.activate([
			self.resultStringLabel.topAnchor.constraint(
				equalTo: self.countryLabel.bottomAnchor,
				constant: Metrics.minimumSizeSeparator),
			self.resultStringLabel.leadingAnchor.constraint(
				equalTo: self.flagImage.trailingAnchor,
				constant: Metrics.standartSizeSeparator)
		])
	}
}
