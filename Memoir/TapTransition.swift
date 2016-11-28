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
    var originalSelectedColumnFrame: CGRect!
    
    let window = UIApplication.shared.keyWindow
    
    let tempBubbleView = UIImageView()
    
    
    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        let todayViewController = toViewController as! TodayViewController
        let bubbleWordView = todayViewController.bubbleWordView
        
        // unpack the CalendarWeekViewController for customize modal transition
        let calendarWeekViewController = fromViewController as! CalendarWeekViewController
        let selectedColumn = calendarWeekViewController.selectedColumn
        
        let frame = window!.convert(selectedColumn!.frame, from: window)
        //        let frame = window!.convert(selectedColumn!.frame, to: window)
        //        window!.addSubview(selectedColumn)
        
        // 1. create a temporary UIImageView
        // 2. add it to the window
        originalSelectedColumnFrame = bubbleWordView!.frame
        
        
        // 3. create a view animation
        // 4. upon completion of the animation, remove the temporary UIImageView from the window
        UIView.animate(withDuration: duration, animations: {
            bubbleWordView!.frame = CGRect(x: todayViewController.bubbleWordView.frame.origin.x, y: todayViewController.bubbleWordView.frame.origin.y, width: todayViewController.bubbleWordView.frame.width, height: todayViewController.bubbleWordView.frame.height)
            todayViewController.bubbleWordView.alpha = 1
        }) { (finished: Bool) -> Void in
            self.finish()
        }
        
        //        UIView.animate(withDuration: duration, animations: {
        
        ////            fromViewController.view.alpha = 0
        ////            frame.alpha = 1
        //
        //            tempBubbleView.frame = frame
        //            tempBubbleView.image = selectedColumn?.image
        //            window?.addSubview(tempBubbleView)
        //
        //
        //        }) { (finished: Bool) -> Void in
        //            self.finish()
        ////            frame.view.alpha = 0
        ////            window?.removeFromSuperview(tempBubbleView)
        //        }
        
        
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        
        let todayViewController = fromViewController as! TodayViewController
        let bubbleWordView = todayViewController.bubbleWordView

        let calendarWeekViewController = toViewController as! CalendarWeekViewController
        
        let selectedColumn = calendarWeekViewController.selectedColumn
        
        let frame = window!.convert(selectedColumn!.frame, from: window)
        //        let frame = window!.convert(selectedColumnView!.frame, to: window)
        
        tempBubbleView.alpha = 0
        //        window?.removeFromSuperview(tempBubbleView)
        
        
        UIView.animate(withDuration: duration, animations: {
            bubbleWordView!.frame = CGRect(x: calendarWeekViewController.selectedColumn.frame.origin.x, y: calendarWeekViewController.selectedColumn.frame.origin.y, width: calendarWeekViewController.selectedColumn.frame.width, height: calendarWeekViewController.selectedColumn.frame.height)
            todayViewController.containerScrollView.alpha = 0
        }) { (finished: Bool) -> Void in
            self.finish()
        }
    }
}

