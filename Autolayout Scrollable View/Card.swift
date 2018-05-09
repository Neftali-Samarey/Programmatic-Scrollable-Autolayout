//
//  Card.swift
//  Autolayout Scrollable View
//
//  Created by Neftali Samarey on 5/9/18.
//  Copyright © 2018 Neftali Samarey. All rights reserved.
//

import Foundation
import UIKit

class Card: UIView {
    
     private var cardTitle = UILabel()
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.cloudsColor()
        self.layer.cornerRadius = 8
        self.layer.shadowColor = UIColor.dracularDark().cgColor
        self.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 2.0
        
        self.addSubview(cardTitle)
        
        self.enableComponents()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func enableComponents() {
        
        self.cardTitle.translatesAutoresizingMaskIntoConstraints = false
        self.cardTitle.font = UIFont(name: "avenir", size: 24.0)
        self.cardTitle.textColor = UIColor.dracularDark()
        self.cardTitle.textAlignment = .center
        
        
        self.cardTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
        self.cardTitle.widthAnchor.constraint(equalToConstant: 300).isActive = true
        self.cardTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        self.cardTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
    }
    
    public func setLabelTitle(title: String) {
        self.cardTitle.text = title
    }
}
