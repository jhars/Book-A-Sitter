//
//  FacebookAuthViewController.swift
//  Book-A-Sitter
//
//  Created by Jon Harlan on 1/6/16.
//  Copyright © 2016 Jon Harlan. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class FacebookAuthViewController: UIViewController, FBSDKLoginButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (FBSDKAccessToken.currentAccessToken() != nil) {
            print("already logged in")
                    print(FBSDKAccessToken.currentAccessToken().tokenString)
            //            print(FBSDKAccessToken.getToken())
            //            var myToken = FBSession.activeSession().accessTokenData.accessToken
        } else {
            print("Error: No Facebook Access Token Find, You Must Login First!")
        }
        
        let loginView : FBSDKLoginButton = FBSDKLoginButton()
        self.view.addSubview(loginView)
        
        loginView.center = self.view.center
        //        loginView.center = self.view.center
        //        let X_Co = ((self.view.frame.size.width - loginView.frame.width)/2 - 60)
        //        let Y_Position:CGFloat? = 500.0 //use your Y position here
        //        let Y_Co = ((self.view.frame.size.height - loginView.frame.height)/2)
        //        loginView.frame = CGRectMake(X_Co, Y_Co, 240, 40)
        loginView.readPermissions = ["public_profile"]
        loginView.delegate = self
        
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        print("User Logged In")
        print(FBSDKAccessToken.currentAccessToken().tokenString)
        
        if ((error) != nil)
        { // Process error
        } else if result.isCancelled {// Handle cancellations
        } else {// If you ask for multiple permissions at once, you
            // should check if specific permissions missing
            if result.grantedPermissions.contains("name") {
                print("email found")
//                self.performSegueWithIdentifier("showNew", sender: self)
//                returnUserData()
            }
        }
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }
    
    func returnUserData() {
        let graphRequest : FBSDKGraphRequest = FBSDKGraphRequest(graphPath: "me", parameters: nil)
        graphRequest.startWithCompletionHandler({ (connection, result, error) -> Void in
            if ((error) != nil) {// Process error
                print("Error: \(error)")
            } else {
                print("fetched user: \(result)")
            }
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
