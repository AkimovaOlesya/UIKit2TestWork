//
//  AppDelegate.swift
//  UIKit2TestWork
//
//  Created by o.akimova on 01.12.2021.
//

//Перед началом работы необходимо удалить (move to trash) файл SceneDelegate.swift, чтобы этот файл не занимал время компиляции
//и в файле info удалить Application Scene Manifest
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let tabBarController = UITabBarController()

        let firstViewController = FirstViewController()
        firstViewController.tabBarItem = UITabBarItem(title: "First", image: .checkmark, tag: 0)
        let firstNavigationController = UINavigationController(rootViewController: firstViewController)

        let secondViewController = SecondViewController()
      //  let secondNavigationController = UINavigationController(rootViewController: secondViewController)
        //secondViewController.view.backgroundColor = .systemGreen
        secondViewController.tabBarItem = UITabBarItem(title: "Second", image: .remove, tag: 1)

        let thirdViewController = ThirdViewController()
      //  thirdViewController.view.backgroundColor = .systemYellow
        thirdViewController.tabBarItem = UITabBarItem(title: "Third", image: .add, tag: 2)

        tabBarController.setViewControllers([
            firstNavigationController,
            secondViewController,
            thirdViewController
        ], animated: true)

        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }
}

