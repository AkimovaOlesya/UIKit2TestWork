//
//  ThirdChildViewController.swift
//  UIKit2TestWork
//
//  Created by o.akimova on 03.12.2021.
//

import UIKit

class ThirdChildViewController: UIViewController {


    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPurple
        navigationController?.navigationBar.prefersLargeTitles = true
       // navigationItem.largeTitleDisplayMode = .always
        title = "Third Child"

    }
}
