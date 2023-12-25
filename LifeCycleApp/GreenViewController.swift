//
//  GreenViewController.swift
//  LifeCycleViewController
//
//  Created by Debash on 07.05.2018.
//  Copyright © 2018 swiftbook.ru. All rights reserved.
//

import UIKit

final class GreenViewController: UIViewController {
    
    // инициализаторы не относятся к LifeCycleView и обычно используется когда
    // мы не используем сториборд
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        printMessage()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        printMessage()
    }
    
    // Не относится к LifeCycleView
    // Вызывается после того, как объекты были десериализованы из файла Interface Builder,
    // и перед началом жизненного цикла UIViewController (только при использовани
    // сториборда)
    // это аналог viewDidLoad только не для UIViewController а для разных View
    // внутри класса если мы с ними хотим что то сделать еще до вызова на экран
    override func awakeFromNib() {
        super.awakeFromNib()
        printMessage()
    }
    
    // Не относится к LifeCycleView
    // Вызывается для создания представления, если оно еще не было создано.
    // т.е. если мы создали свою кастомную View и хотим загрузить ее в память
    // только если нету сториборда
    /*
    override func loadView() {
        printMessage()
    }
    */
    // ЯВЛЯЕТСЯ LifeCycleView
    // Вызывается после загрузки View в память (загружается в память только раз)
    override func viewDidLoad() {
        // super - обращение к родительскому классу
        super.viewDidLoad()
        title = "GreenVC"
        printMessage()
    }
    
    // ЯВЛЯЕТСЯ LifeCycleView
    // Вызывается перед каждым появлением вью на экране (многоразовый метод)
    // можем работать над обновлением элементов интерфейса и т.д.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    // Не относится к LifeCycleView
    // Вызывается автоматически системой Auto Layout, когда необходимо обновить ограничения в представлении
    // метод реализуется до того как View отоброзиться на экране
    // метод для обновления констрейнтов (используется редко)
    // и этод метод вызывается другим методом (смотри мануал)
    override func updateViewConstraints() {
        printMessage()
        super.updateViewConstraints()
    }
    
    // ЯВЛЯЕТСЯ LifeCycleView
    // Вызывается перед расстановкой subviews
    override func viewWillLayoutSubviews() {
        printMessage()
    }
    
    // ЯВЛЯЕТСЯ LifeCycleView
    // Вызывается после расстановки subviews и каждый раз при взаимодействии
    // пользователя с интерфейсом и определяет реальные величины данных для
    // изменившегося интерфейса
    override func viewDidLayoutSubviews() {
        printMessage()
    }
    
    // ЯВЛЯЕТСЯ LifeCycleView
    // Вызывается после появления вью на экране
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
        
    }
    
    // ЯВЛЯЕТСЯ LifeCycleView
    // Вызывается перед скрытием вью
    // в этом методе мы отключаем все активности (как пример)
    // а после в методе viewDidАppear мы можем обратно включить активности
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    // ЯВЛЯЕТСЯ LifeCycleView
    // Вызывается после скрытия вью
    // в этом методе можно заниматься освобождением ресурсов, которые больше
    // не нужны, останавливать какие либо сетевые активности и т.д...
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
    
    // ЯВЛЯЕТСЯ LifeCycleView
    // Вызывается при изменении размеров вью (смена ориентации View)
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        printMessage()
        
        if size.height < size.width {
            print("The device is in landscape orientation")
        } else {
            print("The device is in portrait orientation")
        }
    }
    
    // Вызывается после выгрузки вью из памяти
    // т.е. мы можем проконтролировать выгрузку View из памяти
    deinit {
        printMessage()
    }
}

extension UIViewController {
    //Вывод на консоль название отработавшего метода
    //(из какого title (UIViewController) срабатывает метод (#function)
    func printMessage(function: String = #function) {
        print("\(title ?? ""): \(function)")
    }
}
