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
    //let myClosure = (responseClosure1:() throws -> String)
    
    static func layer1Func(inputString: String, completionHandler:(responseClosure1:() throws -> String) -> Void) throws -> Void
    {
        
        if(inputString == "")
        {
            //PASS THE ERROR OBJECT TO THE CALLING FUNCTION
        }
        else
        {
            do
            {
                try Layer2.layer2Func({ (responseClosure2) -> Void in
                    
                    do
                    {
                        let result = try responseClosure2()
                        Layer1_1.parseMyResponse(result)
                        
                        if(true) // IF THERE IS NO ERROR IN PARSING AND IN NETWORK, THEN PARSED DATA IS TRANSFERRED ELSE ERROR SHOULD BE THROWN TO THE CALLING FUNCTION
                        {
                            completionHandler(responseClosure1 :{ return "PARSED DATA FROM WEB SERICE"})
                        }
                    }
                    catch
                    {
                        print("Error received in Layer 1")
                        completionHandler(responseClosure1 :{ throw MyError.e1 })
                    }
                })

            }
            catch
            {
                print("Now Error in Layer 1")
                completionHandler(responseClosure1 :{ throw MyError.e1 })
            }
        }
    }
    
}
