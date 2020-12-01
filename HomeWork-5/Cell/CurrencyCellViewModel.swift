//
//  CurrencyCellViewModel.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 01.12.2020.
//

import Foundation

final class CurrencyCellViewModel: CurrencyCellViewModelProtocol {
	private var valute: Valute

	var charCode: String? {
		return valute.CharCode
	}

	var name: String? {
		return valute.Name
	}

	var resultString: String {
		return TextFormatter.shared.getExchageString(longValue: valute.Value,
													 nominal: valute.Nominal,
													 charCode: valute.CharCode)
	}

	var toUp: Bool {
		return valute.toUp
	}

	init(valute: Valute) {
		self.valute = valute
	}
}
