//
//  StartWritingViewController.swift
//  Memoir
//
//  Created by Monith Ilavarasan on 11/20/16.
//  Modified by Sophia Kecir Camper on 11/22/2016: initial title "HomeTransitionViewController.swift"
//  Copyright © 2016 Memoir All rights reserved.
//

import UIKit

class StartWritingViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var startWritingView: UIView!
    
    @IBOutlet weak var textField: UITextView!
    
    
    // Variables
//    var startWritingViewOriginalCenter: CGPoint!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.textContainerInset = UIEdgeInsetsMake(24, 4, 0, 2)
        textField.becomeFirstResponder()
        

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
        
        // Do any additional setup after loading the view.
    }

    
//    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
//        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
//            switch swipeGesture.direction {
//            case UISwipeGestureRecognizerDirection.right:
//                print("Swiped right")
//            case UISwipeGestureRecognizerDirection.down:
//                print("Swiped down")
//            case UISwipeGestureRecognizerDirection.left:
//                print("Swiped left")
//            case UISwipeGestureRecognizerDirection.up:
//                print("Swiped up")
//                performSegue(withIdentifier: "TodaySegue", sender: UISwipeGestureRecognizerDirection.up)
//            default:
//                break
//            }
//        }
//    }
    
    
    
    @IBAction func didPan(_ sender: AnyObject) {
        let translation = sender.translation(in: view)
        let velocity = sender.velocity(in: view)
        let location = sender.location(in: view)
        
        if sender.state == .began {
            print("Gesture began")
            navigationController!.popViewController(animated: true)
            
        } else if sender.state == .changed {
            
        } else if sender.state == .ended {
            
        }
    
        
    }
    
    @IBAction func sendTextButton(_ sender: UIButton) {
        // Pop the push, but should we performSegue(withIdentifier) instead?
        navigationController!.popViewController(animated: true)
    }
    
    
    
//    
//    // UIAlertConroller when click unlock icon
//
//    let alertController = UIAlertController(title: "Lock editing", message: "Are you sure you're done writing?", preferredStyle: .actionSheet)
//    
////    var alertController = UIAlertController(title: "Lock editing", message: "Are you sure you're done writing?", preferredStyle: .actionSheet)
//    
//    let lockAction = UIAlertAction(title: "Lock", style: .destructive) { (action) in
//        // handle case of user locking text
//    }
//    
//    // add the lock action to the alert controller
////    alertController.addAction(lockAction)
//    
//    let continueAction = UIAlertAction(title: "Continue writing", style: .cancel) { (action) in
//        // handle case of user willing to continue writing. Doing nothing will dismiss the view.
//    }
//    // add the cancel action to the alert controller
////    alertController.addAction(continueAction)
//    
//    
//    present(alertController, animated: true) {
//    // optional code for what happens after the alert controller has finished presenting
//    }
    
    
    
    
    
}


