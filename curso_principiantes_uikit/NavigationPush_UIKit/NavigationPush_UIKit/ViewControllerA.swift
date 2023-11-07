//
//  ViewController.swift
//  NavigationPush_UIKit
//
//  Created by Mfercons on 6/11/23.
//

import UIKit

class ViewControllerA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBackground
        title = "View Controller A"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .done, target: self, action: #selector(nextViewController))
    }

    @objc private func nextViewController(){
        self.navigationController?.pushViewController(ViewControllerB(), animated: true)
    }
}

