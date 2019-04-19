//
//  MyView.swift
//  DesignableViewsAndInspectableProperties
//
//  Created by Лилия Левина on 19/04/2019.
//  Copyright © 2019 Лилия Левина. All rights reserved.
//

import UIKit

@IBDesignable class MyView: UIView {
    func configure() {
        self.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        let v2 = UIView()
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        let v3 = UIView()
        v3.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        v2.translatesAutoresizingMaskIntoConstraints = false
        v3.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(v2)
        self.addSubview(v3)
        NSLayoutConstraint.activate([
            v2.leftAnchor.constraint(equalTo:self.leftAnchor),
            v2.rightAnchor.constraint(equalTo:self.rightAnchor),
            v2.topAnchor.constraint(equalTo:self.topAnchor),
            v2.heightAnchor.constraint(equalToConstant:20),
            v3.widthAnchor.constraint(equalToConstant:20),
            v3.heightAnchor.constraint(equalTo:v3.widthAnchor),
            v3.rightAnchor.constraint(equalTo:self.rightAnchor),
            v3.bottomAnchor.constraint(equalTo:self.bottomAnchor),
            ])
    }
    override func willMove(toSuperview newSuperview: UIView!) {
        self.configure()
    }

}

