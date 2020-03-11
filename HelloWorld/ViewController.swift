//
//  ViewController.swift
//  HelloWorld
//
//  Created by xiote on 2020/03/10.
//  Copyright © 2020 xiote. All rights reserved.
//

import UIKit
import Greet

class ViewController: UIViewController {




    @IBOutlet weak var lblHello: UILabel!
    @IBOutlet weak var btnSend: UIButton!
    @IBOutlet weak var txtName: UITextField!

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblHello.accessibilityIdentifier = "lblHello"
        txtName.accessibilityIdentifier = "txtName"
        btnSend.accessibilityIdentifier = "btnSend"
    }
    
    @IBAction func txtNameDidBeginEditing(_ sender: UITextField) {
        sender.text = ""
    }

    @IBAction func btnSendTouchUpInside(_ sender: UIButton) {
        lblHello.text = Greet().hello(nameOfPerson: txtName.text!)
    }
}

