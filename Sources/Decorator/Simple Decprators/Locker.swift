//
//  Locker.swift
//  Decorator
//
//  Created by dmitry on 17.04.2021.
//

import Foundation

public final class Locker: Executee {
    
    public override init() {
        super.init()
    }
    
    private let lock = NSLock()
    
    public override func execute() {
        lock.lock()
        super.execute()
        lock.unlock()
    }
}
