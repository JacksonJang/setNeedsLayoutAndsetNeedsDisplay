//
//  ViewController.swift
//  setNeedsLayoutAndsetNeedsDisplay
//
//  Created by 장효원 on 3/25/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let view = CustomView(frame: CGRect(x: 100, y: 100, width: 10, height: 10))
        view.backgroundColor = .red
        self.view.addSubview(view)
        
        print("viewDidLoad()")
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            view.setNeedsLayout()
            print("setNeedsLayout()")
        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            view.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
            view.setNeedsDisplay()
            print("setNeedsDisplay()")
        })
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        print("viewDidLayoutSubviews()")
    }

}

class CustomView: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        print("draw(\(rect))")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        print("layoutSubviews()")
    }
}
