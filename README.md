# GuideView
一个简单地引导界面

![](https://raw.githubusercontent.com/FengDeng/GuideView/master/debug.png)


##UsePage

在你的第一个VC的ViewDidLoad里添加如下代码即可。不需要判断启动和版本。

		let ccp = CCPGuideView(frame:UIScreen.mainScreen().bounds)

添加你的引导页
		
        ccp.contentImages = {
            let arr : Array<UIImage> = [UIImage(named:"guide_page_1")!,UIImage(named:"guide_page_2")!,UIImage(named: "guide_page_3")!,UIImage(named: "guide_page_4")!]
            return arr
        }
        
        
每页引导页的标题

        ccp.titles = {
                    return ["文章分类,方便阅读","纯黑设计,极客最爱","代码高亮,尊重技术","一键分享,保留精彩"]
                }
                
引导页的大小 如果不写默认全屏

        ccp.contentSize = {
            return CGSizeMake(250, 250)
        }
        
定制进入按钮，可默认

	ccp.doneButton = {
            let button : UIButton = UIButton(frame:CGRectMake(ccp.frame.size.width * 0.1, ccp.frame.size.height * 0.9, ccp.frame.size.width * 0.8, 50))
            button.setImage(UIImage(named: "button_start", inBundle: NSBundle(forClass:CCPGuideView.self), compatibleWithTraitCollection: nil), forState:.Normal)
            return button
        }
        
展现引导页

        ccp.showGuideView()