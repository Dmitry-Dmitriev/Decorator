//
//  EntryPointProtocol.swift
//  Decorator
//
//  Created by dmitry on 17.04.2021.
//

import Foundation

public protocol EntryPointProtocol: ExecuteDecorator {
    associatedtype EntryPointInput
    var input: EntryPointInput! { get set }
}
