//
//  Animation.swift
//  DemoAnimation
//
//  Created by Ilyasa Azmi on 17/05/19.
//  Copyright © 2019 Falah. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func backgroundColorAnimation() {
        UIView.animate(withDuration: 0.8) {
            self.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0...1))
        }
    }
    
    func centerAnimation(centerX: CGFloat, centerY: CGFloat){
        UIView.animate(withDuration: 0.8) {
            self.center = CGPoint(x: centerX, y: centerY)
        }
    }
    
    func alphaAnimation(){
        UIView.animate(withDuration: 0.8) {
            self.alpha = CGFloat.random(in: 0...1)
        }
    }
    
    func boundAnimation(boundX: CGFloat, boundY: CGFloat){
        UIView.animate(withDuration: 0.8) {
            self.bounds = CGRect(x: 0, y: 0, width: boundX, height: boundY)
        }
    }
    
    func transformAnimation(transformX: CGFloat, transformY: CGFloat){
        UIView.animate(withDuration: 0.8) {
            self.frame.origin.x = transformX
            self.frame.origin.y = transformY
        }
    }
}
