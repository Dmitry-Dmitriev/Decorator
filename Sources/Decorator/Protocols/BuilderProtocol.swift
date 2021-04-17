//
//  BuilderProtocol.swift
//  Decorator
//
//  Created by dmitry on 17.04.2021.
//

import Foundation

public protocol BuilderProtocol: ExecuteDecorator {
    associatedtype Decorator: ExecuteDecorator
    
    var primary: Decorator! { get }
}
