//
//  NumberPadView.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 28.11.2020.
//

import UIKit

final class NumberPadView: UIView {

	// MARK: - Properties

	let mainStackView = UIStackView()
	let firstLineStackView = UIStackView()
	let secondLineStackView = UIStackView()
	let thirdLineStackView = UIStackView()
	let fourthLineStackView = UIStackView()

	let button1 = UIButton()
	let button2 = UIButton()
	let button3 = UIButton()
	let button4 = UIButton()
	let button5 = UIButton()
	let button6 = UIButton()
	let button7 = UIButton()
	let button8 = UIButton()
	let button9 = UIButton()
	let button0 = UIButton()
	let buttonClear = UIButton()

	// MARK: - Lifecycle

	init() {
		super.init(frame: .zero)
		self.setupView()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

// MARK: - Setup views

private extension NumberPadView {
	func setupView() {
		self.mainStackView.axis = NSLayoutConstraint.Axis.vertical
		self.mainStackView.alignment = UIStackView.Alignment.center
		self.mainStackView.distribution = UIStackView.Distribution.fillEqually
		self.mainStackView.spacing = Metrics.stackViewSpacing
		self.mainStackView.addArrangedSubview(firstLineStackView)
		self.mainStackView.addArrangedSubview(secondLineStackView)
		self.mainStackView.addArrangedSubview(thirdLineStackView)
		self.mainStackView.addArrangedSubview(fourthLineStackView)

		self.firstLineStackView.axis = NSLayoutConstraint.Axis.horizontal
		self.firstLineStackView.spacing = Metrics.stackViewSpacing
		self.firstLineStackView.alignment = UIStackView.Alignment.center
		self.firstLineStackView.distribution = UIStackView.Distribution.fillEqually
		self.firstLineStackView.addArrangedSubview(button7)
		self.firstLineStackView.addArrangedSubview(button8)
		self.firstLineStackView.addArrangedSubview(button9)

		self.secondLineStackView.axis = NSLayoutConstraint.Axis.horizontal
		self.secondLineStackView.spacing = Metrics.stackViewSpacing
		self.secondLineStackView.alignment = UIStackView.Alignment.center
		self.secondLineStackView.distribution = UIStackView.Distribution.fillEqually
		self.secondLineStackView.addArrangedSubview(button4)
		self.secondLineStackView.addArrangedSubview(button5)
		self.secondLineStackView.addArrangedSubview(button6)

		self.thirdLineStackView.axis = NSLayoutConstraint.Axis.horizontal
		self.thirdLineStackView.spacing = Metrics.stackViewSpacing
		self.thirdLineStackView.alignment = UIStackView.Alignment.center
		self.thirdLineStackView.distribution = UIStackView.Distribution.fillEqually
		self.thirdLineStackView.addArrangedSubview(button1)
		self.thirdLineStackView.addArrangedSubview(button2)
		self.thirdLineStackView.addArrangedSubview(button3)

		self.fourthLineStackView.axis = NSLayoutConstraint.Axis.horizontal
		self.fourthLineStackView.spacing = Metrics.stackViewSpacing
		self.fourthLineStackView.alignment = UIStackView.Alignment.center
		self.fourthLineStackView.distribution = UIStackView.Distribution.fillEqually
		self.fourthLineStackView.addArrangedSubview(button0)
		self.fourthLineStackView.addArrangedSubview(buttonClear)


		self.button1.setTitle("1", for: .normal)
		self.button1.backgroundColor = Colors.numberButtonsLightGray
		self.button1.tag = 1

		self.button2.setTitle("2", for: .normal)
		self.button2.backgroundColor = Colors.numberButtonsLightGray
		self.button2.tag = 2

		self.button3.setTitle("3", for: .normal)
		self.button3.backgroundColor = Colors.numberButtonsLightGray
		self.button3.tag = 3

		self.button4.setTitle("4", for: .normal)
		self.button4.backgroundColor = Colors.numberButtonsLightGray
		self.button4.tag = 4

		self.button5.setTitle("5", for: .normal)
		self.button5.backgroundColor = Colors.numberButtonsLightGray
		self.button5.tag = 5

		self.button6.setTitle("6", for: .normal)
		self.button6.backgroundColor = Colors.numberButtonsLightGray
		self.button6.tag = 6

		self.button7.setTitle("7", for: .normal)
		self.button7.backgroundColor = Colors.numberButtonsLightGray
		self.button7.tag = 7

		self.button8.setTitle("8", for: .normal)
		self.button8.backgroundColor = Colors.numberButtonsLightGray
		self.button8.tag = 8

		self.button9.setTitle("9", for: .normal)
		self.button9.backgroundColor = Colors.numberButtonsLightGray
		self.button9.tag = 9

		self.button0.setTitle("0", for: .normal)
		self.button0.backgroundColor = Colors.numberButtonsLightGray
		self.button0.tag = 0

		self.buttonClear.setImage(UIImage(systemName: "clear"), for: UIControl.State.normal)
		self.buttonClear.tintColor = UIColor.white
		self.buttonClear.backgroundColor = Colors.nuberButtonsOrange

		self.setupViewLayout()
	}

	func setupViewLayout() {
		self.addSubview(self.mainStackView)
		self.mainStackView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.mainStackView.topAnchor.constraint(equalTo: self.topAnchor),
			self.mainStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
			self.mainStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
			self.mainStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
		])

		self.firstLineStackView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.firstLineStackView.leadingAnchor.constraint(equalTo: self.mainStackView.leadingAnchor),
			self.firstLineStackView.trailingAnchor.constraint(equalTo: self.mainStackView.trailingAnchor)
		])

		self.secondLineStackView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.secondLineStackView.leadingAnchor.constraint(equalTo: self.mainStackView.leadingAnchor),
			self.secondLineStackView.trailingAnchor.constraint(equalTo: self.mainStackView.trailingAnchor)
		])

		self.thirdLineStackView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.thirdLineStackView.leadingAnchor.constraint(equalTo: self.mainStackView.leadingAnchor),
			self.thirdLineStackView.trailingAnchor.constraint(equalTo: self.mainStackView.trailingAnchor)
		])

		self.fourthLineStackView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.fourthLineStackView.leadingAnchor.constraint(equalTo: self.mainStackView.leadingAnchor),
			self.fourthLineStackView.trailingAnchor.constraint(equalTo: self.mainStackView.trailingAnchor)
		])

		// Buttons line 1

		self.button7.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.button7.topAnchor.constraint(equalTo: self.firstLineStackView.topAnchor),
			self.button7.bottomAnchor.constraint(equalTo: self.firstLineStackView.bottomAnchor),
		])

		self.button8.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.button8.topAnchor.constraint(equalTo: self.firstLineStackView.topAnchor),
			self.button8.bottomAnchor.constraint(equalTo: self.firstLineStackView.bottomAnchor),
		])

		self.button9.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.button9.topAnchor.constraint(equalTo: self.firstLineStackView.topAnchor),
			self.button9.bottomAnchor.constraint(equalTo: self.firstLineStackView.bottomAnchor),
		])

		// Buttons line 2

		self.button4.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.button4.topAnchor.constraint(equalTo: self.secondLineStackView.topAnchor),
			self.button4.bottomAnchor.constraint(equalTo: self.secondLineStackView.bottomAnchor),
		])

		self.button5.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.button5.topAnchor.constraint(equalTo: self.secondLineStackView.topAnchor),
			self.button5.bottomAnchor.constraint(equalTo: self.secondLineStackView.bottomAnchor),
		])

		self.button6.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.button6.topAnchor.constraint(equalTo: self.secondLineStackView.topAnchor),
			self.button6.bottomAnchor.constraint(equalTo: self.secondLineStackView.bottomAnchor),
		])

		// Buttons line 3

		self.button1.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.button1.topAnchor.constraint(equalTo: self.thirdLineStackView.topAnchor),
			self.button1.bottomAnchor.constraint(equalTo: self.thirdLineStackView.bottomAnchor),
		])

		self.button2.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.button2.topAnchor.constraint(equalTo: self.thirdLineStackView.topAnchor),
			self.button2.bottomAnchor.constraint(equalTo: self.thirdLineStackView.bottomAnchor),
		])

		self.button3.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.button3.topAnchor.constraint(equalTo: self.thirdLineStackView.topAnchor),
			self.button3.bottomAnchor.constraint(equalTo: self.thirdLineStackView.bottomAnchor),
		])


		// Buttons line 4

		self.button0.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.button0.topAnchor.constraint(equalTo: self.fourthLineStackView.topAnchor),
			self.button0.bottomAnchor.constraint(equalTo: self.fourthLineStackView.bottomAnchor),
		])

		self.buttonClear.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			self.buttonClear.topAnchor.constraint(equalTo: self.fourthLineStackView.topAnchor),
			self.buttonClear.bottomAnchor.constraint(equalTo: self.fourthLineStackView.bottomAnchor),
		])
	}
}
