//
//  EntryPoint.swift
//  Decorator
//
//  Created by dmitry on 17.04.2021.
//

import Foundation

public final class EntryPoint<T: ParameterizedDecoratorProtocol>: EntryPointProtocol  {
    
    private let facade: Builder<T>
    
    init(_ facade: Builder<T>) {
        self.facade = facade
    }
    
    public var input: T.Input! {
        get {
            facade.primary.input
        }
        set {
            facade.primary.input = newValue
        }
    }
    
    public func execute() {
        facade.execute()
    }
}
