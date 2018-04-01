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
    
    // MARK: - IBActions

    @IBAction func addNew(_ sender: UIButton) {
        addNew()
    }
    
    @IBAction func read(_ sender: UIButton) {
        read()
    }
    
    // Private
    
    func addNew() {
        guard let profilesRef = dataBaseReference?.child("profiles") else {
            return
        }
        let key = profilesRef.childByAutoId().key
        let profile: [String: Any] = [
            "id": key,
            "name": "Neli",
            "age": "2",
            "words": [[
                    "word": "dad",
                    "pronunciation": "dad"
                ],
                [
                    "word": "mom",
                    "pronunciation": "mom"
                ]
            ]
        ]
        profilesRef.child(key).setValue(profile)
    }
    
    func read() {
        guard let profilesRef = dataBaseReference?.child("profiles") else {
            return
        }
        
        profilesRef.observe(FIRDataEventType.value) { snapshot in
            print(snapshot)
        }
        
    }
}

