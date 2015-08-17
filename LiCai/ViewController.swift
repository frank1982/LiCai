

import UIKit

class ViewController: UIViewController,UITabBarDelegate {
    
    var tabBar:UITabBar!
    var tabs=["测评","红黑榜","动态"]
    var contentView:UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTabBar()
        

    }
    
    func createTabBar(){
        
        tabBar=UITabBar(frame:CGRectMake(0, self.view.bounds.height-64, self.view.bounds.width, 44))
        var items:[UITabBarItem]=[]
        var TAG:Int=0
        for tab in self.tabs{
            
            var tabItem=UITabBarItem()
            tabItem.title=tab
            tabItem.tag=TAG
            items.append(tabItem)
            TAG++
        }
        tabBar.setItems(items, animated: true)
        tabBar.delegate=self
        self.view.addSubview(tabBar)
        
        contentView=UIView(frame:CGRectMake(0, 0, self.view.bounds.width, self.view.bounds.height-44))
        self.view.addSubview(contentView)
        
        //获取状态栏高度
        var statusBarHeight=UIApplication.sharedApplication().statusBarFrame.height
        
        var tabBarTitle=UILabel(frame:CGRectMake(0, statusBarHeight, self.view.bounds.width, 44))
        
        
        tabBarTitle.tag=1
        tabBarTitle.backgroundColor=UIColor.blueColor()
        tabBarTitle.textAlignment=NSTextAlignment.Center
        contentView.addSubview(tabBarTitle)
        
       
    }
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        
        (contentView.viewWithTag(1) as! UILabel).text=item.title
        if item.tag==0{
            
            print("tag0 selected")
            //createSearchBar
        }
        
       
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

