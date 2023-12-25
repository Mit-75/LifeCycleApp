//
//  AppDelegate.swift
//  LifeCycleApp
//
//  Created by Alexey Efimov on 15.04.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // Самый первый метод который вызывается после загрузки приложения в память
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print(#function)
        return true
    }

    // MARK: UISceneSession Lifecycle
    
    // Обязательные два метода application при помощи которых
    // перехватывает управление приложением класс SceneDelegate
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {

    }

    // Метод срабатывает когда мы выгружаем приложение из памяти
    func applicationWillTerminate(_ application: UIApplication) {
        print(#function)
    }
}

