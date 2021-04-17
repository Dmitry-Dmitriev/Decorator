//
//  Queuer.swift
//  Decorator
//
//  Created by dmitry on 17.04.2021.
//

import Foundation

public final class Queuer: Executee {
    public static let defaultQueue = DispatchQueue(label: "Decorator.Private.Queuer.queue")
    private let queue: DispatchQueue
    
    public init( _ queue: DispatchQueue = defaultQueue) {
        self.queue = queue
        super.init()
    }
    
    public override func execute() {
        queue.async(execute: super.execute)
    }
}

