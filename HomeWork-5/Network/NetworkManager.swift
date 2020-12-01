//
//  NetworkManager.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 15.11.2020.
//

import Foundation

final class NetworkManager {

	private let jsonUrlString = "https://www.cbr-xml-daily.ru/daily_json.js"
	static let shared = NetworkManager()

	func getExchangeRate(complition: @escaping (_ valutes: [Valute]) -> ()) {
		var valutes: [Valute] = []

		guard let url = URL(string: jsonUrlString) else { return }

		Foundation.URLSession.shared.dataTask(with: url) { (data, _, _) in
			guard let data = data else { return }

			do {
				let decoder = JSONDecoder()
				decoder.keyDecodingStrategy = .convertFromSnakeCase
				let today = try decoder.decode(TodayRate.self, from: data)
				for (_, valute) in today.Valute {
					if valute.CharCode != "XDR" {
						valutes.append(valute)
					}
				}
				complition(valutes.sorted())
			} catch let error {
				print("Error serialization json", error)
			}

		}.resume()
	}
}
