//
//  OrangeViewController.swift
//  LifeCycleViewController
//
//  Created by Debash on 28.05.2018.
//  Copyright © 2018 swiftbook.ru. All rights reserved.
//

import UIKit

final class OrangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "OrangeVC"
        printMessage()
    }
    
    // перед тем как View отоброзиться
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    //свершившийся факт - View отоброзилось
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    // перед тем как View будет скрыто
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    // свершившийся факт  - View скрылось
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
    
    deinit {
        printMessage()
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
