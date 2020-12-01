//
//  SystemImage.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 16.11.2020.
//

import UIKit

enum SystemImage: String {
	case up = "arrow.up.circle.fill"
	case down = "arrow.down.circle.fill"

	var image: UIImage {
		guard let image = UIImage(systemName: self.rawValue) else {
			assertionFailure()
			return UIImage()
		}
		return image
	}
}
