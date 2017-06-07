//
//  ViewController.swift
//  Plurtaku
//
//  Created by Tony on 2017/5/15.
//  Copyright © 2017年 ak2840. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    @IBAction func requestToken(_ sender: Any)
    {
        //http://www.plurk.com/OAuth/request_token?oauth_nonce=44259414&oauth_timestamp=1495358660&oauth_consumer_key=oHat5lVqqhU0&oauth_signature_method=HMAC-SHA1&oauth_version=1.0&oauth_signature=4VFHj6HWyrg6NLIk5bdA5DdD7ko%3D
        let now = Date()
        let timeStamp = String(now.timeIntervalSince1970)
        let oauth_signature = "";
        
        let url = String(format: "https://www.plurk.com/OAuth/request_token?oauth_nonce=%@&oauth_timestamp=%@&oauth_consumer_key=%@&oauth_signature_method=%@&oauth_version=%@&oauth_signature=%@",
                         Constant.OAUTH_NONCE,
                         timeStamp,
                         Constant.APP_KEY,
                         Constant.OAUTH_SIGNATURE_METHOD,
                         Constant.OAUTH_VERSION,
                         oauth_signature)
        
        NSLog(url)
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

