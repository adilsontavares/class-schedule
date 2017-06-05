//
//  ViewController.swift
//  ClassSchedule
//
//  Created by Adilson Tavares on 27/04/17.
//  Copyright © 2017 Adilson Tavares. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var stackView: NSStackView!
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 1 ... 6 {
            addSection(for: i)
        }
    }
    
    private func addSection(for day: Int) {
        
        let section = DayViewController(nibName: "DayViewController", bundle: nil)!
        self.addChildViewController(section)
        stackView.addArrangedSubview(section.view)
        
        sectionCountDidChange()
    }
    
    private func sectionCountDidChange() {
        
        widthConstraint.constant = CGFloat(stackView.arrangedSubviews.count) * 110.0
    }
}

