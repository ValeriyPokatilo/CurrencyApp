//
//  CurrencyViewModelProtocol.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 01.12.2020.
//

import Foundation

protocol CurrencyViewModelProtocol: AnyObject {
	// for view
	var valutes: [Valute] { get }
	func fetchCurrencys(complition: @escaping () -> Void)
	func numberOfRows() -> Int?
	// for cell
	func cellViewModel(for indexPath: IndexPath) -> CurrencyCellViewModelProtocol?
	// for transition
	func selectedRow(for indexPath: IndexPath)
	func converterViewModel() -> ConverterViewModelProtocol?
}
