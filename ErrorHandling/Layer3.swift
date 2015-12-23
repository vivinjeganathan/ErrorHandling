//
//  Layer3.swift
//  ErrorHandling
//
//  Created by Jeganathan, Vivin () on 12/22/15.
//  Copyright © 2015 Allstate. All rights reserved.
//

import UIKit

enum MyError : ErrorType
{
    case e1
}

class Layer3: NSObject
{
    //EXAMPLE
    func add(a: Int, b: Int) throws -> Int
    {
        if (a==0 || b==0)
        {
            throw MyError.e1
        }
        
        return a+b
    }
    
    static func layer3Func(url : NSURL, completionHandler :(responseClosure : () throws -> String ) -> Void) throws -> Void
    {
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithURL(url) { (data, urlResponse, var error) -> Void in
            
            //ASSUMING ERROR OCCURS IN WEB SERVICE CALL
            //error = NSError(domain: "domain", code: 1, userInfo: nil)
            
            if(error == nil)
            {
                completionHandler(responseClosure: {return "abc"})
            }
            else
            {
                // NEED TO PROPAGATE ERROR TO THE VIEW CONTROLLER WHICH IS THREE LAYERS DEEP
                completionHandler(responseClosure: {throw MyError.e1})
                
            }
        }
        
        task.resume()
    }
}
