//
//  ViewController.swift
//  Book-A-Sitter
//
//  Created by Jon Harlan on 1/6/16.
//  Copyright © 2016 Jon Harlan. All rights reserved.
//

import UIKit
import DJKFlipper

class ViewController: UIViewController, DJKFlipperDataSource {

//    @IBOutlet weak var flipView: DJKFlipperView!
    
    @IBOutlet weak var flipView: DJKFlipperView!
    var flipperViewArray:[UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var page1 = PageTestViewController(nibName: "PageTestViewController", bundle: nil)
        page1.view.frame = self.view.bounds
        page1.backgroundImage.image = UIImage(named: "page1")
        page1.view.layoutSubviews()
        
        var page2 = PageTestViewController(nibName: "PageTestViewController", bundle: nil)
        page2.view.frame = self.view.bounds
        page2.backgroundImage.image = UIImage(named: "page2")
        page2.view.layoutSubviews()
        
        var page3 = PageTestViewController(nibName: "PageTestViewController", bundle: nil)
        page3.view.frame = self.view.bounds
        page3.backgroundImage.image = UIImage(named: "page3")
        page3.view.layoutSubviews()
        
        //add the view controllers to the flipperViewArray
        flipperViewArray += [page1,page2,page3]
        
        flipView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - FlipperDataSource Methods
    
    func numberOfPages(flipper: DJKFlipperView) -> NSInteger {
        return flipperViewArray.count
    }
    
    func viewForPage(page: NSInteger, flipper: DJKFlipperView) -> UIView {
        return flipperViewArray[page].view
    }


}

