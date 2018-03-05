//
//  DropDownAlert.swift
//
//  Created by John Goytan on 2018-01-13.
//  Copyright © 2018 John Goytan. All rights reserved.
//

import Foundation
import UIKit

func dropDownAlertView(messageText: String,textColour: UIColor ,alertColour: UIColor, currentView: UIViewController){
    let alertViewHeight = 25
    let alertViewOrigin = CGFloat.init(-(alertViewHeight))
    let alertViewWidth = currentView.view.bounds.width
    let alertViewSize = CGSize.init(width: currentView.view.bounds.width, height: CGFloat.init(alertViewHeight))
    let alertVIewRect = CGRect.init(origin: CGPoint.init(x: CGFloat.init(0), y: alertViewOrigin), size: alertViewSize)
    let alertView = UIView.init(frame: alertVIewRect)
    let messageRect = CGRect.init(origin: CGPoint.init(x: 0, y: 2.5), size: CGSize.init(width: alertView.bounds.width, height: alertView.bounds.height-5))
    let message = UILabel.init(frame: messageRect)
    message.textAlignment = .center
    message.textColor = textColour
    message.text = messageText
    alertView.addSubview(message)
    alertView.backgroundColor = alertColour
    UIView.animate(withDuration: 1.0) {
        alertView.center = CGPoint.init(x: alertView.center.x, y: alertView.center.y + CGFloat.init(alertViewHeight))
        
    }
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4)) {
        UIView.animate(withDuration: 5) {
            alertView.center = CGPoint.init(x: alertView.center.x, y: alertView.center.y - CGFloat.init(400))
            
        }
    }
    currentView.view.addSubview(alertView)
    
}
