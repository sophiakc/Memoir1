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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let main = UIStoryboard(name: "Main", bundle: nil)
        
//        // when launching the app, go directly to new note
//            // 1. As a new user, no text written yet
//        noTextYetViewController = main.instantiateViewController(withIdentifier: "NoTextYetViewController")
//        containerView.addSubview(noTextYetViewController.view)
////        noTextYetViewController.view.frame = containerView.bounds
////        noTextYetViewController.view.frame.origin.x = containerView.frame.size.width
//        
//        performSegue(withIdentifier: "newtextSegue", sender: nil)
//        
//        
            // 2. As an existing user
        readOnlyViewController = main.instantiateViewController(withIdentifier: "ReadOnlyViewController")
        containerView.addSubview(readOnlyViewController.view)
        
        performSegue(withIdentifier: "newtextSegue", sender: nil)
    }
    
    
    @IBAction func didPan(_ sender: AnyObject) {
        let translation = sender.translation(in: view)
        let velocity = sender.velocity(in: view)
        let location = sender.location(in: view)
        
        if sender.state == .began {
            print("Gesture began")
            performSegue(withIdentifier: "newtextSegue", sender: nil)
            
        } else if sender.state == .changed {
            
        } else if sender.state == .ended {
            
        }
        
        
    }
        
        
}
