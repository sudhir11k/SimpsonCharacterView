//
//  XfinityBaseOperation.swift
//  xfinity
//
//  Created by Sudhir Kumar on 3/28/19.
//  Copyright © 2019 Sudhir Kumar. All rights reserved.
//

import Foundation

class XfinityBaseOperation: Operation {
    
    private var _executing = false {
        willSet{
            willChangeValue(forKey: "isExecuting")
        }
        didSet{
            didChangeValue(forKey: "isExecuting")
        }
    }
    
    override var isExecuting: Bool{
        return _executing
    }
    
    
    private var _finished = false{
        willSet{
            willChangeValue(forKey: "isFinished")
        }
        didSet{
            didChangeValue(forKey: "isFinished")
        }
    }
    
    
    override var isFinished : Bool{
        return _finished
    }
    
    func executing(_ executing: Bool)  {
        _executing = executing
    }
    
    func finish(_ finished: Bool) {
        _finished = finished
    }

}
