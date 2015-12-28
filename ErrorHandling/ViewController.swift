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
        
        do
        {
            try Layer1.layer1Func("INPUT", completionHandler: { (responseClosure1) -> Void in
                
                do
                {
                    let result = try responseClosure1();
                    print(result)
                }
                catch
                {
                    print("Error in ViewController")
                }
                
            })
        }
        catch
        {
            
        }        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

