////
////  SitterFlipViewController.swift
////  Book-A-Sitter
////
////  Created by Jon Harlan on 1/7/16.
////  Copyright © 2016 Jon Harlan. All rights reserved.
////
//
//import UIKit
//import DJKFlipper
//
//class SitterFlipViewController: UIViewController, DJKFlipperDataSource {
//
//    @IBOutlet var sitFlipView:DJKFlipperView! // above View Did Load
//    var sitFlipperViewModel:[UIViewController] = [] //Insatantiated i believe..
//    
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//    
//    
//    
//    //===================================================================//
//    
//
//    //ViewDidLoad (Appear)
//    //Or Funciton... {
//    var ImagesFromUrlArray = []
//    
//    //For Loop Should be handled By FireBase Query
//    // firebaseRef.queryOrderedByValue().observeEventType(.ChildAdded, withBlock: { snapshot in
//    
//    for image in ImagesFromUrlArray {
//        let tempNib = flipper(nibName: "flipper", bundle: nil)
//        tempNib.view.frame = self.view.bounds
//    
//        let tempImage = UIImage(imgFromUrl) as UIImage
//        tempNib.backgroundImage.image = tempImage
//    
//        tempNib.view.layoutSubViews()
//    
//        sitFlipperViewModel.append(tempNib)
//    }
//    //===}
//    //===============================================================//
//    
//    
//    func numberOfPages(flipper: DJKFlipperView) -> NSInteger {
//        return flipperViewArray.count
//    }
//    
//    func viewForPage(page: NSInteger, flipper: DJKFlipperView) -> UIView {
//        return flipperViewArray[page].view
//    }
//    
//    
//    
//    
////    func returnUserData() {
////        
////        let graphRequest : FBSDKGraphRequest = FBSDKGraphRequest(graphPath: "me", parameters: nil)
////        let task = graphRequest.startWithCompletionHandler({ (connection, result, error) -> Void in
////            
////            if ((error) != nil)
////            {   // Process error
////                print("Error: \(error)")
////            } else {
////                let userID : NSString = result.valueForKey("id") as! NSString
////                //                let accessToken : NSString = result.
////                print("User ID is is: \(userID)")
////                self.currentUserId = userID as String
////                self.tempFireBaseUrlForCurrentUser = "https://sitterbookapi.firebaseio.com/users/" + (userID as String)
////                
////                let currentUserPath = self.tempFireBaseUrlForCurrentUser
////                let firebaseRef = Firebase(url:(currentUserPath as String) + "/sitter-list/")
////                
////                firebaseRef.queryOrderedByValue().observeEventType(.ChildAdded, withBlock: { snapshot in
////                    
////                    //Need To ADD ERROR HANDLING HERE
////                    
////                    let sitterObjDict = snapshot.value as! NSDictionary
////                    //=================================================================\\
////                    let imgUrlModel = sitterObjDict["image-url"] as! String
////                    
////                    let AlamoRef = Alamofire.request(.GET, imgUrlModel)
////                    AlamoRef.responseImage { response in
////                        debugPrint(response)
////                        
////                        print(response.request)
////                        print(response.response)
////                        debugPrint(response.result)
////                        
////                        if let image = response.result.value {
////                            let sitterImageModel = image as! UIImage
////                            let sitterNameModel = sitterObjDict["name"] as! String
////                            let sitterScoreModel = sitterObjDict["cnx-score"] as! Int
////                            let SitterObject = SitterMatchModel(name: sitterNameModel, cnxScore: sitterScoreModel, img: sitterImageModel)
////                            sitterModelObjects.append(SitterObject)
////                            self.performSegueWithIdentifier("showSitter", sender: nil)
////                        }
////                        AlamoRef.resume()
////                    }
////                })
////            } // ----- END 'else' Statement --------------//
////            
////            
////        }) // - - - - - - - - END Graph Request - - - - - - - - - - - - - - //
////        //                    task.resume()
////    } //============================ END  func returnUserData() ============================== //
//
//}
