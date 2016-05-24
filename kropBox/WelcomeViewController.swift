//
//  WelcomeViewController.swift
//  kropBox
//
//  Created by Karan Khurana on 5/22/16.
//  Copyright © 2016 Karan Khurana. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var WelcomeScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        WelcomeScrollView.contentSize = CGSize(width: 960, height: 568)
        WelcomeScrollView.delegate = self
        pageControl.numberOfPages = 3
        pageControl.currentPageIndicatorTintColor = UIColor.blueColor()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(WelcomeScrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(WelcomeScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
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
