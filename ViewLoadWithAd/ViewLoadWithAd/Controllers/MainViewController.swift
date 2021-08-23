//
//  MainViewController.swift
//  MainViewController
//
//  Created by 陳飛 on 17/8/21.
//  Copyright © 2021 @fei.chen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
//        label.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        label.backgroundColor = .red
        label.font = UIFont.systemFont(ofSize: 100)
        label.text = "H"
        
        label.sizeToFit() // Size to fit content
//        label.adjustsFontSizeToFitWidth = true // Adjust font size to fit width when bigger than width
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(label)
        navigationItem.hidesBackButton = true
        navigationItem.title = "Home"
//        navigationController?.navigationBar.backgroundColor = .white
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        let topConstraint = label.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor)
        let leftConstraint = label.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor)
        let rightConstraint = label.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor)

        topConstraint.isActive = true
        leftConstraint.isActive = true
        rightConstraint.isActive = true
    }
    
}
