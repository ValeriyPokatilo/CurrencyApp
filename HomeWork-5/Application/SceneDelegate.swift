//
//  SceneDelegate.swift
//  HomeWork-5
//
//  Created by Valeriy Pokatilo on 15.11.2020.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?

	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let windowScene = (scene as? UIWindowScene) else { return }
		window = UIWindow(frame: windowScene.coordinateSpace.bounds)
		window?.windowScene = windowScene
		let mainViewController = CurrencyViewController()
		let navigationMainViewController = UINavigationController(rootViewController: mainViewController)
		window?.rootViewController = navigationMainViewController
		window?.makeKeyAndVisible()
	}
}

