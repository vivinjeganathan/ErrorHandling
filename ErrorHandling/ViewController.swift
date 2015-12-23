//
//  ViewController.swift
//  ErrorHandling
//
//  Created by Jeganathan, Vivin () on 12/22/15.
//  Copyright © 2015 Allstate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
         try! Layer1.layer1Func("INPUT", completionHandler: { (responseStringFromLayer1) -> Void in
            
            print(responseStringFromLayer1)
            
         })

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

