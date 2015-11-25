# GuideView
一个简单地引导界面

##UsePage

在你的第一个VC的ViewDidLoad里添加如下代码即可。不需要判断启动和版本。

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
        ccp.showGuideView()