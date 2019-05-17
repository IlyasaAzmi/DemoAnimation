//
//  ViewController.swift
//  DemoAnimation
//
//  Created by Syamsul Falah on 16/05/19.
//  Copyright © 2019 Falah. All rights reserved.
//

/* https://developer.apple.com/library/archive/documentation/WindowsViews/Conceptual/ViewPG_iPhoneOS/AnimatingViews/AnimatingViews.html

*/
 
import UIKit

class ViewController: UIViewController {
    
    var viewCircle: UIView!
    var widthView: CGFloat!
    var heightView: CGFloat!
    var flagBonds: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        widthView = view.frame.size.width
        heightView = view.frame.size.height
        
        viewCircle = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        viewCircle.backgroundColor = .blue
        viewCircle.layer.cornerRadius = viewCircle.frame.size.width/2
        self.view.addSubview(viewCircle)
        
        
        let mytapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(myTapAction))
        mytapGestureRecognizer.numberOfTapsRequired = 1
        self.viewCircle.addGestureRecognizer(mytapGestureRecognizer)
    }
    
    @objc func myTapAction(recognizer: UITapGestureRecognizer) {
        viewCircle.transformAnimation(transformX: CGFloat.random(in: 0...widthView), transformY: CGFloat.random(in: 0...CGFloat(620)))
        viewCircle.backgroundColorAnimation()
        viewCircle.alphaAnimation()
    }
    
    @IBAction func transform(_ sender: UIButton) {
        viewCircle.transformAnimation(transformX: CGFloat.random(in: 0...widthView), transformY: CGFloat.random(in: 0...CGFloat(620)))
        viewCircle.backgroundColorAnimation()
    }

    @IBAction func center(_ sender: UIButton) {
        viewCircle.centerAnimation(centerX: widthView/2, centerY: heightView/2)
    }

    @IBAction func bounds(_ sender: UIButton) {
        if flagBonds == 0 {
            viewCircle.boundAnimation(boundX: 150, boundY: 150)
            viewCircle.backgroundColorAnimation()
            flagBonds = 1
        } else {
            viewCircle.boundAnimation(boundX: 100, boundY: 100)
            viewCircle.backgroundColorAnimation()
            flagBonds = 0
        }
    }

    @IBAction func alpha(_ sender: UIButton) {
        viewCircle.alphaAnimation()
    }

    @IBAction func backgroundColor(_ sender: UIButton) {
        viewCircle.backgroundColorAnimation()
    }
}

//extension UIView {
//    func backgroundColorAnimation() {
//        UIView.animate(withDuration: 0.8) {
//            self.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0...1))
//        }
//    }
//
//    func centerAnimation(centerX: CGFloat, centerY: CGFloat){
//        UIView.animate(withDuration: 0.8) {
//            self.center = CGPoint(x: centerX, y: centerY)
//        }
//    }
//
//    func alphaAnimation(){
//        UIView.animate(withDuration: 0.8) {
//            self.alpha = CGFloat.random(in: 0...1)
//        }
//    }
//
//    func boundAnimation(boundX: CGFloat, boundY: CGFloat){
//        UIView.animate(withDuration: 0.8) {
//            self.bounds = CGRect(x: 0, y: 0, width: boundX, height: boundY)
//        }
//    }
//
//    func transformAnimation(transformX: CGFloat, transformY: CGFloat){
//        UIView.animate(withDuration: 0.8) {
//            self.frame.origin.x = transformX
//            self.frame.origin.y = transformY
//        }
//    }
//}
