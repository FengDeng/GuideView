//
//  ViewController.swift
//  GuideViewTest
//
//  Created by 邓锋 on 15/11/24.
//  Copyright © 2015年 邓锋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let ccp = CCPGuideView(frame:UIScreen.mainScreen().bounds)
        ccp.contentImages = {
            let arr : Array<UIImage> = [UIImage(named:"guide_page_1")!,UIImage(named:"guide_page_2")!,UIImage(named: "guide_page_3")!,UIImage(named: "guide_page_4")!]
            return arr
        }
        ccp.titles = {
                    return ["文章分类,方便阅读","纯黑设计,极客最爱","代码高亮,尊重技术","一键分享,保留精彩"]
                }
        ccp.contentSize = {
            return CGSizeMake(250, 250)
        }
        
        ccp.doneButton = {
            let button : UIButton = UIButton(frame:CGRectMake(ccp.frame.size.width * 0.1, ccp.frame.size.height * 0.9, ccp.frame.size.width * 0.8, 50))
            button.setImage(UIImage(named: "button_start", inBundle: NSBundle(forClass:CCPGuideView.self), compatibleWithTraitCollection: nil), forState:.Normal)
            return button
        }
        ccp.showGuideView()
        
        
    }

    

    @IBAction func gaga(sender: AnyObject) {
        let ccp = CCPGuideView(frame:UIScreen.mainScreen().bounds)
//        ccp.contentImages = {
//            let arr : Array<UIImage> = [UIImage(named:"guide_page_1")!,UIImage(named:"guide_page_2")!,UIImage(named: "guide_page_3")!,UIImage(named: "guide_page_4")!]
//            return arr
//        }
//        ccp.titles = {
//            return ["文章分类,方便阅读","纯黑设计,极客最爱","代码高亮,尊重技术","一键分享,保留精彩"]
//        }
        ccp.contentSize = {
            return CGSizeMake(250, 250)
        }
        ccp.showGuideView()
    }
    @IBOutlet weak var haha: UIButton!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

