//
//  MessageSendViewController.swift
//  Memoir
//
//  Created by Monith Ilavarasan on 11/20/16.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class MessageSendViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func MessageEndSwipe(_ sender: UISwipeGestureRecognizer) {
        
        performSegue(withIdentifier: "MessageSendSegue",sender:sender)
        
    }

}
