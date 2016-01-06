//
//  FireBaseAuthDataViewController.swift
//  Book-A-Sitter
//
//  Created by Jon Harlan on 1/6/16.
//  Copyright © 2016 Jon Harlan. All rights reserved.
//

import UIKit
import Firebase

class FireBaseAuthDataViewController: UIViewController {

    
    var ref = Firebase(url: "https://sitterbookdevapi.firebaseio.com/")
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref.observeAuthEventWithBlock({ authData in
            if authData != nil {
                // user authenticated
                print(authData)
            } else {
                 print("No user is signed in")
            }
        })
    }



}
