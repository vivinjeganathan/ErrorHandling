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
    
    static func layer1Func1(inputString: String, completionHandler:(responseClosure1:() throws -> String) -> Void) throws
    {
        
        //1. VALIDATOR
        //FUNCTION CALL GOES HERE
        
        
        //2. MAIN FUNCTIONALITY OF THIS FUNCTION
        //a) GET THE RESULT FROM LAYER 2    
        //b) PARSE THE DATA
        //c) PASS THE PARSED INFO CALLING FUNCTION
        
        try Layer2.layer2Func1({ (responseClosure2) -> Void in
            
            do
            {
                let result = try responseClosure2() //GET RESULT
                
                Layer1_1.parseMyResponse1(result)    //PARSE
                
                completionHandler(responseClosure1 :{ return "PARSED DATA FROM WEB SERICE"})    //PASS THE INFO BACK
                
            }
            catch
            {
                completionHandler(responseClosure1 :{ throw MyError.e1 })
            }
        })
    }
    
    static func layer1Func2(inputString: String, completionHandler:(responseClosure1:() throws -> String) -> Void) throws
    {
        
        //1. VALIDATOR
        //FUNCTION CALL GOES HERE
        
        
        //2. MAIN FUNCTIONALITY OF THIS FUNCTION - (COMMMON LOGIC)
        //a) GET THE RESULT FROM LAYER 2
        //b) PARSE THE DATA
        //c) PASS THE PARSED INFO CALLING FUNCTION
        
        try Layer2.layer2Func2({ (responseClosure2) -> Void in
            
            do
            {
                let result = try responseClosure2() //GET RESULT
                
                Layer1_1.parseMyResponse2(result)    //PARSE
                
                completionHandler(responseClosure1 :{ return "PARSED DATA FROM WEB SERICE"})    //PASS THE INFO TO THE CALLER
                
            }
            catch
            {
                completionHandler(responseClosure1 :{ throw MyError.e1 })
            }
        })
        
    }
    
    static func commonLogic(completionHandler:(responseClosure1:() throws -> String) -> Void, completionHandler2:(responseClosure2:() throws -> String) -> Void) throws
    {
        //I AM TRYING TO CONSOLIDATE THE MAIN FUNCTIONALITY HERE...
        //INTENDING TO
        //a) GET THE RESULT FROM LAYER 2
        //b) PARSE THE DATA
        //c) PASS THE PARSED INFO CALLING FUNCTION
        
        //BY PASSING BOTH THE CLOSURES TO THIS FUNCTION...
        
    }
    
}
