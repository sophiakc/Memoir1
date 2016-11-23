//
//  TextArchiveRootViewController.swift
//  Memoir
//
//  Created by Sophia KC on 22/11/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class TextArchiveRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        performSegue(withIdentifier: "newtextSegue", sender: nil)

        
    }


}
