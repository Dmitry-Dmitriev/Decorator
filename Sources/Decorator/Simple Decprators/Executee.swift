//
//  Executee.swift
//  Decorator
//
//  Created by dmitry on 17.04.2021.
//

import Foundation

public class Executee: ExecuteDecorator {
    var decorator: ExecuteDecorator!
    
    public func execute() {
        assert(decorator != nil)
        decorator?.execute()
    }
    
//    public static func <-- (lhs: Executee, rhs: Executee) -> Executee {
//        rhs.decorator = lhs
//        return rhs
//    }
}
