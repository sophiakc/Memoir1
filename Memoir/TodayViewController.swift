//
//  TodayViewController.swift
//  Memoir
//
//  Created by Monith Ilavarasan on 11/20/16.
//  Modified by Sophia Kecir Camper on 11/27/2016: initial title "FirstCalendarViewController.swift"
//  Copyright © 2016 Memoir All rights reserved.
//

import UIKit

class TodayViewController: UIViewController, UIScrollViewDelegate {
    
    // Outlets
    @IBOutlet var backgroundView: UIView!
        @IBOutlet weak var containerScrollView: UIScrollView!
            @IBOutlet weak var imageView: UIImageView!
            @IBOutlet weak var bubblesContainerView: UIImageView!
    
                @IBOutlet weak var bubbleWordView: UIImageView!
    
                @IBOutlet weak var bubbleTimeView: UIImageView!
    
    
    // Variables
    // Prepare for segue from CalendarWeek VC
    var column: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bubblesContainerView.image = column
        containerScrollView.delegate = self
        
        // Configure the content size of the scroll view
        containerScrollView.contentSize = CGSize(width: 320, height: imageView.frame.size.height)
        
        
//        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
//        swipeRight.direction = UISwipeGestureRecognizerDirection.right
//        self.view.addGestureRecognizer(swipeRight)
//        
//        let swipeLeft = UISwipeGestureRecognizer(target:self, action:#selector(self.respondToSwipeGesture))
//        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
//        self.view.addGestureRecognizer(swipeLeft)
//        
//        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
//        swipeDown.direction = UISwipeGestureRecognizerDirection.down
//        self.view.addGestureRecognizer(swipeDown)
//        
//        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
//        swipeUp.direction = UISwipeGestureRecognizerDirection.up
//        self.view.addGestureRecognizer(swipeUp)
        
        
    }
    
    
    @IBAction func didPan(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: view)
        let velocity = sender.velocity(in: view)
        let location = sender.location(in: view)
        
        if sender.state == .began {
            print("Gesture began")
            dismiss(animated: true, completion: nil)
            
        } else if sender.state == .changed {
            
        } else if sender.state == .ended {
            
        }
        
    }
    
    
    

    
    
//    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
//        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
//            switch swipeGesture.direction {
//            case UISwipeGestureRecognizerDirection.right:
//                print("Swiped right")
//            case UISwipeGestureRecognizerDirection.down:
//                print("Swiped down")
//                performSegue(withIdentifier: "BackHomeSegue", sender: UISwipeGestureRecognizerDirection.down)
//            case UISwipeGestureRecognizerDirection.left:
//                print("Swiped left")
//            case UISwipeGestureRecognizerDirection.up:
//                print("Swiped up")
//                performSegue(withIdentifier: "WeekSegue", sender: UISwipeGestureRecognizerDirection.up)
//            default:
//                break
//            }
//        }
//    }



}
