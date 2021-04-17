//
//  ChainBuilder.swift
//  Decorator
//
//  Created by dmitry on 17.04.2021.
//

import Foundation

public final class ChainBuilder {
    private init() {}
    
    public static func inverce<T: ParameterizedDecoratorProtocol>(finish: Builder<T>) -> InverseChain<T> {
        InverseChain(finish)
    }
}
