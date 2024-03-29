//
//  ReadOnlyViewController.swift
//  Memoir
//
//  Created by Namrata Mohanty on 11/21/16.
//  Copyright © 2016 Memoir All rights reserved.
//

import UIKit

class ReadOnlyViewController: UIViewController {

    // Variables
    var fadeTransition: FadeTransition!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

   
    // This view is shown in TextArchiveRootViewController and contains all the text previously written
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        var todayViewController = segue.destination as! TodayViewController
        
        // Set the modal presentation style of your destinationViewController to be custom.
        todayViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        todayViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 1.0
    }
    

    
}
