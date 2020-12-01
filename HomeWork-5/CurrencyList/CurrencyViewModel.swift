//
//  CurrencyViewModel.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 01.12.2020.
//

import Foundation

final class CurrencyViewModel: CurrencyViewModelProtocol {

	var valutes: [Valute] = []
	private var indexPath: IndexPath?

	func fetchCurrencys(complition: @escaping () -> Void) {
		NetworkManager.shared.getExchangeRate { valutes in
			self.valutes = valutes
			complition()
		}
	}

	func numberOfRows() -> Int? {
		return valutes.count
	}

	func cellViewModel(for indexPath: IndexPath) -> CurrencyCellViewModelProtocol? {
		let valute = valutes[indexPath.row]
		return CurrencyCellViewModel(valute: valute)
	}

	func selectedRow(for indexPath: IndexPath) {
		self.indexPath = indexPath
	}

	func converterViewModel() -> ConverterViewModelProtocol? {
		guard let indexPath = indexPath else { return nil }
		let valute = valutes[indexPath.row]
		return ConverterViewModel(anotherValute: valute)
	}
}
