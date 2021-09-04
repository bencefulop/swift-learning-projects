//
//  AFile.swift
//  SwiftAccessLevels
//
//  Created by Angela Yu on 14/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class AClass {
    
    //Global variables, also called class properties.
    private var aPrivateProperty = "private property"
    
    fileprivate var aFilePrivateProperty = "fileprivate property"
    
    var anInternalProperty = "internal property"
    
    func methodA () {
        
        var aLocalVariable = "local variable"
        
        //Step 1. Try to print aLocalVariable Here - Possible
        print("\(aLocalVariable) printed from methodA in AClass")
        
        //Step 3. Try to print aPrivateProperty Here
        print("\(aPrivateProperty) private property printed from methodA")
        //Step 6. Try to print aFilePrivateProperty Here
        print("\(aFilePrivateProperty) private property printed from methodA")

        //Step 9. Try to print anInternalProperty Here
        print("\(self.anInternalProperty) internal property printed from AClass methodA")
    }
    
    func methodB () {
        
        //Step 2. Try to print aLocalVariable Here
        print("not possible to print aLocalVariable from another function")
        
        //Step 4. Try to print aPrivateProperty Here
        print("\(aPrivateProperty) private property printed from methodB")
        
    }
    
}

class AnotherClassInTheSameFile {
    
    init() {
        
        //Step 5. Try to print aPrivateProperty Here
        print("Not possible to print AClass private property from AnotherClassInTheSameFile")
        
        //Step 7. Try to print aFilePrivateProperty Here
        print("\(AClass().aFilePrivateProperty) FilePrivate property printed from AnotherClassInTheSameFile")
        
    }
}
