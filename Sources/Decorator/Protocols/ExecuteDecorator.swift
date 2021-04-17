//
//  ExecuteDecorator.swift
//  Decorator
//
//  Created by dmitry on 17.04.2021.
//

import Foundation

public protocol ExecuteDecorator: AnyObject {
    func execute()
}

public extension ExecuteDecorator {
    func execute() {
    }
}
