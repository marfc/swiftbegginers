//
//  ViewControllerB.swift
//  NavigationPush_UIKit
//
//  Created by Mfercons on 7/11/23.
//

import UIKit

class ViewControllerB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .secondarySystemBackground
        title = "View Controller B"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .done, target: self, action: #selector(nextViewController))
    }

    @objc private func nextViewController(){
        self.navigationController?.pushViewController(ViewControllerC(), animated: true)
    }
}
