//
//  UserDefManager.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 01.12.2020.
//

import Foundation

class UserDefManager {

	static let shared = UserDefManager()

	private let userDefaults = UserDefaults()

	func saveFirstValuteStatus(status: Bool) {
		userDefaults.set(status, forKey: "firstValuteStatus")
	}

	func loadFirstValuteStatus() -> Bool {
		return userDefaults.bool(forKey: "firstValuteStatus")
	}
}
