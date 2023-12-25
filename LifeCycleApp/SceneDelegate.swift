//
//  SceneDelegate.swift
//  LifeCycleApp
//
//  Created by Alexey Efimov on 15.04.2021.
//

import UIKit

// Этот класс управляет жизненым циклом одной или несколькими
// сценами приложения
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // Вызывается, когда новая сцена добавляется в приложение.
    // Происходит глобальная конфигурация всего приложения
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        // Как пример настраиваем цвет кнопок
        UIView.appearance().tintColor = .cyan
        
        // Кастомизируем NavigationBar:
        let navBarAppearance = UINavigationBarAppearance()
        // Задаем цвет заголовка
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        // Задаем цвет NavigationBar (по умолчанию был прозрачный)
        navBarAppearance.backgroundColor = .systemGray
        // Присваиваем заданную конфигурацию UINavigationBar
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        print(#function)
    }
    
    // Вызывается перед переходом приложения (сцены) в активное состояние
    func sceneWillEnterForeground(_ scene: UIScene) {
        print(#function)
    }
    
    // Вызывается, когда сцена становится активной.
    // запускаем активности которые пользователь дол
    func sceneDidBecomeActive(_ scene: UIScene) {
        print(#function)
    }
    
    // Вызывается перед переходом приложения (сцены) в фоновый режим
    // Останавливаем все активности, сохранение состояния данных, элементов
    func sceneWillResignActive(_ scene: UIScene) {
        print(#function)
    }

    // Вызывается после перехода приложения (сцены) в фоновый режим
    func sceneDidEnterBackground(_ scene: UIScene) {
        print(#function)
    }

}

