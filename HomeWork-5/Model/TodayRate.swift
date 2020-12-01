//
//  TodayRate.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 15.11.2020.
//

import Foundation

struct TodayRate: Decodable {
	let Date: String
	let Valute: [String: Valute]
}
