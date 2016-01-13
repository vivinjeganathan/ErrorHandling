//
//  SampleDomain.swift
//  ErrorHandling
//
//  Created by Jeganathan, Vivan () on 1/12/16.
//  Copyright © 2016 Allstate. All rights reserved.
//

import UIKit

class SampleDomain: NSObject
{
    var name : String!
    var emp : String!

    func propertyNameFor(inout item : AnyObject) -> String{
        let listMemAdd = unsafeAddressOf(item)
        let propertyName =  Mirror(reflecting: self).children.filter { (child: (label: String?, value: Any)) -> Bool in
            if let value = child.value as? AnyObject {
                return listMemAdd == unsafeAddressOf(value)
            }
            return false
            }.flatMap {
                return $0.label!
            }.first ?? ""
        
        return propertyName
    }

}
