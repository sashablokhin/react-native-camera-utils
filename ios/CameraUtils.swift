//
//  CameraUtils.swift
//  CameraUtils
//
//  Created by Alexander Blokhin on 09.07.2020.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit


@objc(CameraUtils)
class CameraUtils: NSObject {
    @objc static func requiresMainQueueSetup() -> Bool {
        return true
    }
    
    @objc(maxResolution:rejecter:)
    func maxResolution(
                    resolve: @escaping RCTPromiseResolveBlock,
                    rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        
        let size = getCaptureResolution();
        resolve(["width": size.width, "height": size.height])
    }
    
    
    func getCaptureResolution() -> CGSize {
        var resolution = CGSize(width: 0, height: 0)
        
        let portraitOrientation = (UIScreen.main.bounds.height > UIScreen.main.bounds.width)
        
        let cameraDevice = AVCaptureDevice.default(for: AVMediaType.video)
        
        if let formatDescription = cameraDevice?.activeFormat.formatDescription {
            let dimensions = CMVideoFormatDescriptionGetDimensions(formatDescription)
            resolution = CGSize(width: CGFloat(dimensions.width), height: CGFloat(dimensions.height))
        } else {
            resolution = CGSize(width: CGFloat(UIScreen.main.bounds.width), height: CGFloat(UIScreen.main.bounds.height))
        }
        
        if (!portraitOrientation) {
            resolution = CGSize(width: resolution.height, height: resolution.width)
        }
        
        return resolution
    }
}
