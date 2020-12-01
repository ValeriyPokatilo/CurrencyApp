//
//  ConverterViewModel.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 01.12.2020.
//

import Foundation

final class ConverterViewModel: ConverterViewModelProtocol {

	private var anotherValute: Valute?

	var firstValuteName: String? {
		return "Российский рубль"

	}

	var firstValuteCharCode: String? {
		return "RUR"

	}

	var firstValuteValue: String? {
		return "0"
	}


	var secondValuteName: String? {
		return anotherValute?.Name

	}

	var secondValuteCharCode: String? {
		return anotherValute?.CharCode
	}

	var secondValuteValue: String? {
		return "0"
	}

	var nominal: Int? {
		return anotherValute?.Nominal
	}

	var value: Double? {
		return anotherValute?.Value
	}

	var resultString: String {
		return TextFormatter.shared.getExchageString(longValue: anotherValute?.Value,
													 nominal: anotherValute?.Nominal,
													 charCode: anotherValute?.CharCode)
	}

	init(anotherValute: Valute) {
		self.anotherValute = anotherValute
	}
}
