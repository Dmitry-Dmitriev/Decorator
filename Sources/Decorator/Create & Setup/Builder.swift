//
//  Builder.swift
//  Decorator
//
//  Created by dmitry on 17.04.2021.
//

import Foundation

public final class Builder<T: ExecuteDecorator>: Executee, BuilderProtocol {
    
    public override init() { super.init() }
    
    public private(set) var primary: T!
    
    public static func <-- (lhs: Builder, rhs: T) -> Builder<T> {
        lhs.decorator = rhs
        return lhs
    }
    
    @discardableResult
    public static func <-- (lhs: Builder<T>, rhs: Executee) -> Builder<T> {
        rhs.decorator = lhs.decorator
        lhs.decorator = rhs
        return lhs
    }
}
