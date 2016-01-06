//
//  FireBaseDataViewController.swift
//  Book-A-Sitter
//
//  Created by Jon Harlan on 1/6/16.
//  Copyright © 2016 Jon Harlan. All rights reserved.
//

import UIKit
import Firebase

class FireBaseDataViewController: UIViewController {

      var ref = Firebase(url: "https://sitterbookdevapi.firebaseio.com/")
      var userEmail = "SitterTest01@SitterBook.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
    }

    @IBAction func firebaseBtnTapped(sender: AnyObject) {
        self.ref.createUser(self.userEmail, password: "1111", withValueCompletionBlock:{(result) -> Void in
            print("success sign up!")
            //                                var userID = result.uid
            //Do I want to Use Facebook OAuth Through FireBAse HERE??
            print(result)
            print("result above")
            
            
            self.ref.authUser(self.userEmail, password:"1111", withCompletionBlock: { (authData) -> Void in
                //                                    var userId = result.authData.uid
                print(authData)
                
                // ===== BREAKING POINT =========== //
                //                var userID = index + 1 -jh
                
                //                self.ref.childByAppendingPath("users").childByAppendingPath(userID as String).setValue(userName as String)
                //                self.ref.childByAppendingPath("users/\(userID as String)/name").setValue(userName as String)
                //                self.ref.childByAppendingPath("users/\(userID as String)/zip").setValue(userZip as String)
                
            })
        })
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
