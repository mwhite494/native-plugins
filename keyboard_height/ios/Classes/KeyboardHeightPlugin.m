#import "KeyboardHeightPlugin.h"

@implementation KeyboardHeightPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"keyboard_height"
            binaryMessenger:[registrar messenger]];
  KeyboardHeightPlugin* instance = [[KeyboardHeightPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getKeyboardHeight" isEqualToString:call.method]) {
    result(NULL);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
