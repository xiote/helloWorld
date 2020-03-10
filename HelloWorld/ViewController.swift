//
//  ViewController.swift
//  HelloWorld
//
//  Created by xiote on 2020/03/10.
//  Copyright © 2020 xiote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    @IBOutlet weak var lblHello: UILabel!
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
    }

}

