//
//  ViewController.swift
//  BAGDE_INXCODE
//
//  Created by Mayurii Gajbhiye on 08/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let badgeNumber: Int = 12 //tht will be displayed
        let appplication = UIApplication.shared
        let center = UNUserNotificationCenter.current()
   //Mandatory line
        center.requestAuthorization(options: [.badge,.alert,.sound]) { (success, error) in
            print("Success")
        }
    //alert on the display......
        appplication.applicationIconBadgeNumber = badgeNumber
        appplication.registerForRemoteNotifications()
    }


}

