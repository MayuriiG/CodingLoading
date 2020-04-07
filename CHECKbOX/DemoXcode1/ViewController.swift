//
//  ViewController.swift
//  DemoXcode1
//
//  Created by Mayurii Gajbhiye on 07/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit
import BEMCheckBox

class ViewController: UIViewController,BEMCheckBoxDelegate {

    @IBOutlet weak var checkBox1: BEMCheckBox!
    
    @IBOutlet weak var checkBox2: BEMCheckBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkBox1.delegate = self
        checkBox2.delegate  = self
        
    }


    //Note: give the tag in mainstoryboard
    func didTap(_ checkBox: BEMCheckBox) {
        if checkBox.tag == 1{
            
            
            self.view.backgroundColor = UIColor.white
        }else if checkBox.tag == 2{
            
            self.view.backgroundColor = UIColor.brown
        }
    }
    
    
    
}

