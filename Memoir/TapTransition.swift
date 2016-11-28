//
//  TapTransition.swift
//  Memoir
//
//  Created by Sophia KC on 27/11/2016.
//  Copyright © 2016 Memoir All rights reserved.
//

import UIKit

class TapTransition: BaseTransition {
    
    
    // Variables
    var originalSelectedImageViewFrame: CGRect!
    
    let window = UIApplication.shared.keyWindow
    
    let tempImageView = UIImageView()
    
    
    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        let todayViewController = toViewController as! TodayViewController
        let photoImageView = todayViewController.photoImageView
        
        // unpack the FeedViewController for customize modal transition
        let tabBarViewController = fromViewController as! UITabBarController
//        let calendarWeekNavigationController = tabBarViewController.selectedViewController as! UINavigationController
        let calendarWeekViewController = calendarWeekNavigationController.topViewController as! CalendarWeekViewController
        let selectedImageView = calendarWeekViewController.selectedImageView
        
        let frame = window!.convert(selectedImageView!.frame, from: window)
        //        let frame = window!.convert(selectedImageView!.frame, to: window)
        //        window!.addSubview(selectedImageView)
        
        // 1. create a temporary UIImageView
        // 2. add it to the window
        originalSelectedImageViewFrame = photoImageView!.frame
        
        
        // 3. create a view animation
        // 4. upon completion of the animation, remove the temporary UIImageView from the window
        UIView.animate(withDuration: duration, animations: {
            photoImageView!.frame = CGRect(x: todayViewController.photoImageView.frame.origin.x, y: todayViewController.photoImageView.frame.origin.y, width: todayViewController.photoImageView.frame.width, height: todayViewController.photoImageView.frame.height)
            todayViewController.photoImageView.alpha = 1
        }) { (finished: Bool) -> Void in
            self.finish()
        }
        
        //        UIView.animate(withDuration: duration, animations: {
        
        ////            fromViewController.view.alpha = 0
        ////            frame.alpha = 1
        //
        //            tempImageView.frame = frame
        //            tempImageView.image = selectedImageView?.image
        //            window?.addSubview(tempImageView)
        //
        //
        //        }) { (finished: Bool) -> Void in
        //            self.finish()
        ////            frame.view.alpha = 0
        ////            window?.removeFromSuperview(tempImageView)
        //        }
        
        
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        let todayViewController = fromViewController as! TodayViewController
        let photoImageView = todayViewController.photoImageView
        let tabBarViewController = toViewController as! UITabBarController
//        let calendarWeekNavigationController = tabBarViewController.selectedViewController as! UINavigationController
        let calendarWeekViewController = calendarWeekNavigationController.topViewController as! calendarWeekViewController
        let selectedImageView = calendarWeekViewController.selectedImageView
        
        let frame = window!.convert(selectedImageView!.frame, from: window)
        //        let frame = window!.convert(selectedImageView!.frame, to: window)
        
        tempImageView.alpha = 0
        //        window?.removeFromSuperview(tempImageView)
        
        
        UIView.animate(withDuration: duration, animations: {
            photoImageView!.frame = CGRect(x: calendarWeekViewController.selectedImageView.frame.origin.x, y: calendarWeekViewController.selectedImageView.frame.origin.y, width: calendarWeekViewController.selectedImageView.frame.width, height: calendarWeekViewController.selectedImageView.frame.height)
            todayViewController.photoFrameView.alpha = 0
        }) { (finished: Bool) -> Void in
            self.finish()
        }
    }
}

