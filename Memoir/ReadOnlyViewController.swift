//
//  ReadOnlyViewController.swift
//  Memoir
//
//  Created by Namrata Mohanty on 11/21/16.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class ReadOnlyViewController: UIViewController {

    var fadeTransition: FadeTransition!
    

    @IBOutlet weak var lockedTextField: UITextField!
    var lockedText: String!
    var wordCount: Int!
    var postCount: Int!
    override func viewDidLoad() {
        super.viewDidLoad()

        lockedTextField.text = lockedText

        // Do any additional setup after loading the view.
    }

    @IBAction func didPanReadOnly(_ sender: UIPanGestureRecognizer) {
        performSegue(withIdentifier: "GoToFirstCalendarSegue", sender: nil)
        print(lockedText)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        var firstcalendarViewController = segue.destination as! FirstCalendarViewController
        
        // Set the modal presentation style of your destinationViewController to be custom.
        firstcalendarViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        firstcalendarViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 1.0
        firstcalendarViewController.post1TextContent = lockedText
        firstcalendarViewController.postWordsContent = wordCount
        firstcalendarViewController.postTimesContent = postCount
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
