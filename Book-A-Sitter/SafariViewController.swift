//
//  SafariViewController.swift
//  Book-A-Sitter
//
//  Created by Jon Harlan on 1/6/16.
//  Copyright © 2016 Jon Harlan. All rights reserved.
//

import UIKit
import SafariServices

class SafariViewController: UIViewController, SFSafariViewControllerDelegate {
    
    let urlString = "https://sitterbook.herokuapp.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func openWithSafariVC(sender: AnyObject) {
        let svc = SFSafariViewController(URL: NSURL(string: self.urlString)!)
        svc.delegate = self
        self.presentViewController(svc, animated: true, completion: nil)
    }
    
    func safariViewControllerDidFinish(controller: SFSafariViewController)
    {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }

}
