#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(CameraUtils, NSObject)

RCT_EXTERN_METHOD(maxResolution:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)

@end
