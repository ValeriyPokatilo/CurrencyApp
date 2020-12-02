//
//  ExchangeString.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 28.11.2020.
//

import Foundation

struct TextFormatter {
	static let shared = TextFormatter()

	func getExchageString(longValue: Double?,
						  nominal: Int?,
						  charCode: String?) -> String {
		let value = String(format: "%.2f", longValue ?? 0)
		let resultString = "\(value) руб. за \(nominal ?? 0) \(charCode ?? "")"

		return resultString
	}

	func doubleFormatter(value: Double) -> String {
		String(format: "%.2f", value)
	}
}
