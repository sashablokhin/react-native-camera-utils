//
//  CameraUtils.swift
//  CameraUtils
//
//  Created by Alexander Blokhin on 09.07.2020.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation

@objc(CameraUtils)
class CameraUtils: NSObject {
    @objc static func requiresMainQueueSetup() -> Bool {
        return true
    }
    
    @objc(getPages:resolver:rejecter:)
    func maxResolution(
                    resolver resolve: @escaping RCTPromiseResolveBlock,
                    rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        
        resolve("123x456")
    }
}
