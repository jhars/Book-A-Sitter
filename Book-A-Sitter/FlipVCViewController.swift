//
//  FlipVCViewController.swift
//  Book-A-Sitter
//
//  Created by Jon Harlan on 1/6/16.
//  Copyright © 2016 Jon Harlan. All rights reserved.
//

import UIKit
import DJKFlipper

class FlipVCViewController: UIViewController, DJKFlipperDataSource {

    @IBOutlet var flipView: DJKFlipperView!
    
    @IBOutlet weak var testDJK: DJKFlipperView!
    
//    @IBOutlet weak var flipNumber: UILabel!
    
    var flipperViewArray:[UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(animated: Bool) {
        let page1 = flipper(nibName: "flipper", bundle: nil)
        page1.view.frame = self.view.bounds
        page1.backgroundImage.image = UIImage(named: "me")
//        page1.testLabel.text = "0"
//        self.flipNumber.text = "0"
        page1.view.layoutSubviews()
        
        let page2 = flipper(nibName: "flipper", bundle: nil)
        page2.view.frame = self.view.bounds
        page2.backgroundImage.image = UIImage(named: "zane")
//        page2.testLabel.text = "1"
        page2.view.layoutSubviews()
        
        let page3 = flipper(nibName: "flipper", bundle: nil)
        page3.view.frame = self.view.bounds
        page3.backgroundImage.image = UIImage(named: "bedford")
//        page3.testLabel.text = "2"
        page3.view.layoutSubviews()

        let page4 = flipper(nibName: "flipper", bundle: nil)
        page4.view.frame = self.view.bounds
        page4.backgroundImage.image = UIImage(named: "me")
//        page4.testLabel.text = "3"
        page4.view.layoutSubviews()
        


        flipperViewArray += [page1,page2,page3,page4]

        testDJK.dataSource = self
    }
    
    func numberOfPages(flipper: DJKFlipperView) -> NSInteger {
        return flipperViewArray.count
    }
    
    func viewForPage(page: NSInteger, flipper: DJKFlipperView) -> UIView {
        return flipperViewArray[page].view
    }
    
    
    
    
    
    
    
    
//=========================================================================//
}
