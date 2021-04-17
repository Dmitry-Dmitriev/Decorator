//
//  ParameterizedDecoratorProtocol.swift
//  Decorator
//
//  Created by dmitry on 17.04.2021.
//

import Foundation

public protocol ParameterizedDecoratorProtocol: ExecuteDecorator {
    associatedtype Input
    associatedtype Output
    
    var input: Input! { get set }
    var output: Output! { get set }
    
    var onComplete: (Output) -> Void { get set }
}
