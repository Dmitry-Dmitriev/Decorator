//
//  InverseChain.swift
//  Decorator
//
//  Created by dmitry on 17.04.2021.
//

import Foundation

public final class InverseChain<T: ParameterizedDecoratorProtocol>  {
    
    private(set) var current: Builder<T>
    
    init(_ cur: Builder<T>) {
        current = cur
    }
    
    public static func --> <U: ParameterizedDecoratorProtocol>(lhs: InverseChain<T>, rhs: Builder<U>) -> InverseChain<U> where T.Input == U.Output {
        
        rhs.primary.onComplete = { [lhs, unowned rhs] out in
            lhs.current.primary.input = rhs.primary.output
            lhs.current.execute()
        }
        
        return InverseChain<U>(rhs)
    }
    
    public var entryPoint: EntryPoint<T> {
        EntryPoint(current)
    }
}
