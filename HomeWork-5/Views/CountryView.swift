//
//  CountryView.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 16.11.2020.
//

import UIKit

final class CountryView: UIView {
	// MARK: - Properties

	let nameLabel = UILabel()
	let countryLabel = UILabel()
	let flagImage = UIImageView()
	var valueLabel = UILabel()

	init() {
		super.init(frame: .zero)
		setupViews()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

}

private extension CountryView {
	func setupViews() {
		self.flagImage.image = UIImage()

		self.nameLabel.font = Font.headerStyle.font

		self.countryLabel.font = Font.textStyle.font
		self.countryLabel.textColor = UIColor.white
		self.countryLabel.adjustsFontSizeToFitWidth = true
		self.countryLabel.minimumScaleFactor = 0.4

		self.valueLabel.font = Font.textStyle.font
		self.valueLabel.textColor = UIColor.white
		self.valueLabel.textAlignment = .right

		self.setupViewsLayout()
	}

	func setupViewsLayout() {
		let safeArea = self.safeAreaLayoutGuide

		self.flagImage.translatesAutoresizingMaskIntoConstraints = false
		self.addSubview(self.flagImage)
		NSLayoutConstraint.activate([
			self.flagImage.topAnchor.constraint(
				equalTo: safeArea.topAnchor),
			self.flagImage.heightAnchor.constraint(
				equalToConstant: Metrics.imageSize),
			self.flagImage.widthAnchor.constraint(
				equalToConstant: Metrics.imageSize),
			self.flagImage.leadingAnchor.constraint(
				equalTo: self.leadingAnchor,
				constant: Metrics.verticalSeparator),
			self.flagImage.centerYAnchor.constraint(equalTo: self.centerYAnchor)
		])

		self.countryLabel.translatesAutoresizingMaskIntoConstraints = false
		self.addSubview(self.countryLabel)
		NSLayoutConstraint.activate([
			self.countryLabel.topAnchor.constraint(
				equalTo: safeArea.topAnchor,
				constant: Metrics.smallSizeSeparator),
			self.countryLabel.leadingAnchor.constraint(
				equalTo: self.flagImage.trailingAnchor,
				constant: Metrics.verticalSeparator),
			self.countryLabel.trailingAnchor.constraint(
				equalTo: safeArea.trailingAnchor,
				constant: -Metrics.verticalSeparator)
		])

		self.valueLabel.translatesAutoresizingMaskIntoConstraints = false
		self.addSubview(self.valueLabel)
		NSLayoutConstraint.activate([
			self.valueLabel.topAnchor.constraint(
				equalTo: self.countryLabel.bottomAnchor,
				constant: Metrics.verticalSeparator),
			self.valueLabel.leadingAnchor.constraint(
				equalTo: self.flagImage.trailingAnchor,
				constant: Metrics.verticalSeparator),
			self.valueLabel.trailingAnchor.constraint(
				equalTo: safeArea.trailingAnchor,
				constant: -Metrics.verticalSeparator)
		])

		NSLayoutConstraint.activate([
			self.bottomAnchor.constraint(equalTo: self.flagImage.bottomAnchor)
		])
	}
}
