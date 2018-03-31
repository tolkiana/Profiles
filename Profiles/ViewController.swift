//
//  ViewController.swift
//  Profiles
//
//  Created by Nelida Velazquez on 3/30/18.
//  Copyright © 2018 Tolkiana. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    var dataBaseReference: FIRDatabaseReference?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataBaseReference = FIRDatabase.database().reference()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

