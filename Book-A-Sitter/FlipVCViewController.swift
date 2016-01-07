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
    var flipperViewArray:[UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Below code is in ViewDidiAppear
        // Could Also be up here..
        //Attempting to fix error:
        // "Presenting view controllers on detached view controllers is
        // discouraged <Book_A_Sitter.flipper: 0x154d6bba0>."
    }
    override func viewDidAppear(animated: Bool) {
        var page1 = flipper(nibName: "flipper", bundle: nil)
        page1.view.frame = self.view.bounds
        page1.backgroundImage.image = UIImage(named: "page1")
        page1.view.layoutSubviews()
        
        var page2 = flipper(nibName: "flipper", bundle: nil)
        //        var page2 = flipperTestViewController()
        page2.view.frame = self.view.bounds
        page2.backgroundImage.image = UIImage(named: "page2")
        page2.view.layoutSubviews()
        
        var page3 = flipper(nibName: "flipper", bundle: nil)
        page3.view.frame = self.view.bounds
        page3.backgroundImage.image = UIImage(named: "page3")
        page3.view.layoutSubviews()
        // Do any additional setup after loading the view.
        flipperViewArray += [page1,page2,page3]
        flipView.dataSource = self
    }
    
    func numberOfPages(flipper: DJKFlipperView) -> NSInteger {
        return flipperViewArray.count
    }
    
    func viewForPage(page: NSInteger, flipper: DJKFlipperView) -> UIView {
        return flipperViewArray[page].view
    }

}
