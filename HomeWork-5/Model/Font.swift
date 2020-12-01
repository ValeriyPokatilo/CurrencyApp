//
//  Font.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 16.11.2020.
//

import UIKit

enum Font {
	case headerStyle
	case textStyle
	case countryStyle
	case dateStyle

	var font: UIFont {
		switch self {
		case .headerStyle:
			return UIFont.init(name: "AppleSDGothicNeo-Bold", size: 21.0)!
		case .textStyle:
			return UIFont.init(name: "AppleSDGothicNeo-Regular", size: 16.0)!
		case .countryStyle:
				return UIFont.init(name: "AppleSDGothicNeo-SemiBold", size: 16.0)!
		case .dateStyle:
			return UIFont.init(name: "AppleSDGothicNeo-SemiBold", size: 16.0)!
		}
	}
}
