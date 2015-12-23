//
//  Layer2.swift
//  ErrorHandling
//
//  Created by Jeganathan, Vivin () on 12/22/15.
//  Copyright © 2015 Allstate. All rights reserved.
//

import UIKit

class Layer2: NSObject
{
    
    static func layer2Func(completionHandler2:(responseStringFromL2: String) -> Void) throws -> Void
    {
        do
        {
            //URL FORMATION
            let url = NSURL(string: "https:www.google.com")
            
            try Layer3.layer3Func(url!, completionHandler: { (responseStringFromL3) -> Void in
                
                completionHandler2(responseStringFromL2: responseStringFromL3)
            
            })
        }
        
    }
    
}
