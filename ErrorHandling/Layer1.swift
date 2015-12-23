//
//  Layer1.swift
//  ErrorHandling
//
//  Created by Jeganathan, Vivin () on 12/22/15.
//  Copyright © 2015 Allstate. All rights reserved.
//

import UIKit

class Layer1: NSObject
{
    
    static func layer1Func(inputString: String, completionHandler:(responseStringFromLayer1: String) -> Void) throws -> Void
    {
        
        if(inputString == "")
        {
            //PASS THE ERROR OBJECT TO THE CALLING FUNCTION
        }
        else
        {
            do
            {
                try Layer2.layer2Func { (responseStringFromL2) -> Void in
                    
                    Layer1_1.parseMyResponse(responseStringFromL2)
                    
                    if(true) // IF THERE IS NO ERROR IN PARSING AND IN NETWORK, THEN PARSED DATA IS TRANSFERRED ELSE ERROR SHOULD BE THROWN TO THE CALLING FUNCTION
                    {
                        completionHandler(responseStringFromLayer1: "PARSED DATA FROM WEB SERICE")
                    }
                    
                }
            }
        }
    }
    
}
