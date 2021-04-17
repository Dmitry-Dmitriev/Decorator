//
//  Operators.swift
//  Decorator
//
//  Created by dmitry on 17.04.2021.
//

import Foundation

precedencegroup Left {
    associativity: left
}

infix operator <--: Left
infix operator -->: Left
postfix operator -->
