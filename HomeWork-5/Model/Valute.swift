//
//  CurrentValute.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 15.11.2020.
//

import Foundation

struct Valute: Decodable {
	let CharCode: String?
	let Nominal: Int?
	let Name: String?
	let Value: Double?
	let Previous: Double?
	var toUp: Bool {
		return Value ?? 0 > Previous ?? 0 ? true : false
	}
}

extension Valute: Comparable {
	static func < (lhs: Valute, rhs: Valute) -> Bool {
		return lhs.CharCode ?? "" < rhs.CharCode ?? ""
	}

	static func <= (lhs: Valute, rhs: Valute) -> Bool {
		return lhs.CharCode ?? "" <= rhs.CharCode ?? ""
	}

	static func >= (lhs: Valute, rhs: Valute) -> Bool {
		return lhs.CharCode ?? "" >= rhs.CharCode ?? ""
	}

	static func > (lhs: Valute, rhs: Valute) -> Bool {
		return lhs.CharCode ?? "" > rhs.CharCode ?? ""
	}
}
