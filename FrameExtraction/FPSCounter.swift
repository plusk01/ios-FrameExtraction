//
//  FPSCounter.swift
//  FrameExtraction
//
//  Created by Parker Lusk on 3/31/18.
//  Copyright © 2018 Wanderlusk. All rights reserved.
//

import Foundation
import QuartzCore

public class FPSCounter {
    private(set) public var fps: Double = 0
    
    private var startTime: CFTimeInterval = 0
    
    // LPF alpha filter parameter -- higher number smooths more
    private let alpha = 0.75
    
    public func start() {
        startTime = CACurrentMediaTime()
    }
    
    public func frameCompleted() {
        let now = CACurrentMediaTime()
        let elapsed = now - startTime
        
        // noisy fps value
        let current = 1.0/elapsed
        
        // filter the fps
        fps = alpha*fps + (1 - alpha)*current

        startTime = CACurrentMediaTime()
    }
}
