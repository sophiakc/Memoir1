//
//  TodayViewController.swift
//  Memoir
//
//  Created by Monith Ilavarasan on 11/20/16.
//  Modified by Sophia Kecir Camper on 11/27/2016: initial title "FirstCalendarViewController.swift"
//  Copyright © 2016 Memoir All rights reserved.
//

import UIKit

class TodayViewController: UIViewController {
    
    // Outlets
    @IBOutlet var backgroundView: UIView!
        @IBOutlet weak var scrollView: UIScrollView!
            @IBOutlet weak var bubblesContainerView: UIImageView!
    
                @IBOutlet weak var bubbleWordView: UIImageView!
    
                @IBOutlet weak var bubbleTimeView: UIImageView!
    
    
    // Variables
    // Prepare for segue from CalendarWeek VC
    var bubble: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bubbleWordView.bubble = bubble
        scrollView.delegate = self
        
        
        // reminder: deal with the UIScroll 
        
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
