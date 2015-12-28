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
    
    static func layer2Func(completionHandler2:(responseClosure2:() throws -> String) -> Void) throws -> Void
    {
        
        //URL FORMATION
        let url = NSURL(string: "https:www.google.com")
        
        Layer3.layer3Func(url!, completionHandler: { (responseClosure) -> Void in
            
            do
            {
                let result = try responseClosure()
                completionHandler2(responseClosure2:{return result})
            }
            catch
            {
                print("Error received in Layer 2")
                completionHandler2(responseClosure2:{throw MyError.e1})
            }
         }) 
    }
    
    static func sample() throws -> Void
    {
        throw MyError.e1
    }
    
}
