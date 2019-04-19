//
//  ViewController.swift
//  DesignableViewsAndInspectableProperties
//
//  Created by Лилия Левина on 19/04/2019.
//  Copyright © 2019 Лилия Левина. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let myView = MyView(frame:CGRect(x:100, y:111, width:132, height:194))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
    }


}

