//
//  TextArchiveRootViewController.swift
//  Memoir
//
//  Created by Sophia KC on 22/11/2016.
//  Copyright © 2016 Memoir All rights reserved.
//

import UIKit

class TextArchiveRootViewController: UIViewController {

    // Outlets
    @IBOutlet weak var containerView: UIView!
    
    // Variables
    var noTextYetViewController: UIViewController!
    var readOnlyViewController: UIViewController!
    
    var composeViewController: UIViewController!
    var todayViewController: UIViewController!
    var containerViewBottomOffset: CGFloat!
    var containerViewTop: CGPoint!
    var containerViewBottom: CGPoint!
    var containerViewOriginalCenter: CGPoint!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let main = UIStoryboard(name: "Main", bundle: nil)
        
        // TextArchiveRootViewController behaves as:
        // 1. the Coordinator View Controller for the PastTextEntries
        // 2. Enables to access to Today View Controller
        
//        // when launching the app, go directly to new note
//            // 1. As a new user, no text written yet
//        noTextYetViewController = main.instantiateViewController(withIdentifier: "NoTextYetViewController")
//        noTextYetViewController.view.frame = containerView.bounds
//        addChildViewController(noTextYetViewController)
//        containerView.addSubview(noTextYetViewController.view)
////        noTextYetViewController.view.frame = containerView.bounds
////        noTextYetViewController.view.frame.origin.x = containerView.frame.size.width
//        
//        performSegue(withIdentifier: "ComposeSegue", sender: nil)
//        
//        
            // 2. As an existing user
        readOnlyViewController = main.instantiateViewController(withIdentifier: "ReadOnlyViewController")
        readOnlyViewController.view.frame = containerView.bounds
        addChildViewController(readOnlyViewController)
        containerView.addSubview(readOnlyViewController.view)
        
        performSegue(withIdentifier: "ComposeSegue", sender: nil)
        
    }
    
    
    @IBAction func didPan(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: view)
        let velocity = sender.velocity(in: view)
        let location = sender.location(in: view)
        
        
        
        // 1. If pan down, reveal from top of the screen: Today View
        // 2. If pan right, reveal from left of the screen: Previous Text Archive
        
        // 3. If pan left, reveal from right of the screen: New Text Entry
        //    if pan up, nothing happens
        
        if sender.state == .began {
            print(translation.y)
            
            // Record the original center of textArchiveRoot
            containerViewOriginalCenter = containerView.center
            
            
        } else if sender.state == .changed {
            
            // if translation
            containerView.center.y = containerViewOriginalCenter.y + translation.y
            print (translation.y)
            
        } else if sender.state == .ended {
            
            print (translation.y)
            
            // If panning down
            if velocity.y > 50 {
                UIView.animate(withDuration:0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options:[] ,
                               animations: { () -> Void in
//                                self.containerView.center = self.containerViewBottom
                                self.performSegue(withIdentifier: "TodayViewSegue", sender: nil)
                    }, completion: nil)
            } else if velocity.x > 0 {
                UIView.animate(withDuration:0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options:[] ,
                               animations: { () -> Void in
                                self.containerView.center = self.containerViewTop
                                self.performSegue(withIdentifier: "ComposeViewSegue", sender: nil)
                    }, completion: nil)
            } else {
                UIView.animate(withDuration:0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options:[] ,
                               animations: { () -> Void in
                                self.containerView.center = self.containerViewTop
                                
                    }, completion: nil)
        }
            
//            performSegue(withIdentifier: "ComposeSegue", sender: nil)
        
        
        


        
        // Hide Today View
        containerViewTop = containerView.center
        // Reveal Today View on the given offset
        containerViewBottomOffset = 320
        containerViewBottom = CGPoint(x: containerView.center.x, y: containerView.center.y + containerViewBottomOffset)

    }
        
}

}
