//
//  ViewController.swift
//  Parallax Effect
//
//  Created by Neftali Samarey on 5/9/18.
//  Copyright © 2018 Neftali Samarey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var card = Card()
    
    let scrollableAreaView : UIScrollView = {
        
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = UIColor.clear
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.isScrollEnabled = true
        scrollView.bounces = true
        scrollView.isUserInteractionEnabled = true
        return scrollView
    }()
    
    let topView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    let bottomView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.spanishBlue()
        self.card.translatesAutoresizingMaskIntoConstraints = false
        self.card.setLabelTitle(title: "Scroll me!!")
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(scrollableAreaView)
        self.setScrollableArea()
        
        
        self.topView.addSubview(card)
        self.constrainCard()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setScrollableArea() {
        
        scrollableAreaView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        scrollableAreaView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        scrollableAreaView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollableAreaView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        scrollableAreaView.addSubview(topView)
        
        // Constraints for the top area
        topView.leadingAnchor.constraint(equalTo: scrollableAreaView.leadingAnchor).isActive = true
        topView.topAnchor.constraint(equalTo: scrollableAreaView.topAnchor).isActive = true
        topView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        topView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
        scrollableAreaView.addSubview(bottomView)
        
        // Now set the bottom
        
        bottomView.leadingAnchor.constraint(equalTo: scrollableAreaView.leadingAnchor).isActive = true
        bottomView.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        bottomView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        bottomView.heightAnchor.constraint(equalToConstant: scrollableAreaView.bounds.height + 400).isActive = true               // Important: was 400
        bottomView.bottomAnchor.constraint(equalTo: scrollableAreaView.bottomAnchor).isActive = true
        
        
    }
    
    
    func constrainCard() {
        card.topAnchor.constraint(equalTo: self.topView.topAnchor, constant: 100).isActive = true
        card.bottomAnchor.constraint(equalTo: self.topView.bottomAnchor, constant: 20).isActive = true
        card.trailingAnchor.constraint(equalTo: self.topView.trailingAnchor, constant: -30).isActive = true
        card.leadingAnchor.constraint(equalTo: self.topView.leadingAnchor, constant: 30).isActive = true
    }
    
    
}

