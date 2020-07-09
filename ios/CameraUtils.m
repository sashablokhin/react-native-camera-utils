#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(CameraUtils, NSObject)

RCT_EXTERN_METHOD(maxResolution:
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)

@end
