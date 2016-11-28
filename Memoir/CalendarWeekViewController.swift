//
//  CalendarWeekViewController.swift
//  Memoir
//
//  Created by Monith Ilavarasan on 11/20/16.
//  Modified by Sophia Kecir Camper on 11/27/2016.
//  Copyright © 2016 Memoir All rights reserved.
//

import UIKit

class CalendarWeekViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var columns: [UIImageView]!
    
    
    // Variables
    var todayViewController: TodayViewController!
    var selectedColumn: UIImageView!
    var tapTransition: TapTransition!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure the content size of the scroll view
        scrollView.contentSize = CGSize(width: imageView.frame.size.width, height: 230)
        
        
        
        for column in columns {
            let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTapColumn))
            
            column.addGestureRecognizer(tapRecognizer)
        }
        
        
        
        
        
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
    
    
    @IBAction func didTapColumn(_ sender: UITapGestureRecognizer) {
        selectedColumn = sender.view as! UIImageView
        performSegue(withIdentifier: "DayViewSegue", sender: nil)
    }
    

    
    
//    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
//        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
//            switch swipeGesture.direction {
//            case UISwipeGestureRecognizerDirection.right:
//                print("Swiped right")
//            case UISwipeGestureRecognizerDirection.down:
//                print("Swiped down")
//                performSegue(withIdentifier: "DayViewSegue", sender: UISwipeGestureRecognizerDirection.down)
//            case UISwipeGestureRecognizerDirection.left:
//                print("Swiped left")
//            case UISwipeGestureRecognizerDirection.up:
//                print("Swiped up")
//            default:
//                break
//            }
//        }
//    }
    

}
