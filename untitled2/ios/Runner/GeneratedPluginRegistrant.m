//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<home_widget/HomeWidgetPlugin.h>)
#import <home_widget/HomeWidgetPlugin.h>
#else
@import home_widget;
#endif

#if __has_include(<workmanager/WorkmanagerPlugin.h>)
#import <workmanager/WorkmanagerPlugin.h>
#else
@import workmanager;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [HomeWidgetPlugin registerWithRegistrar:[registry registrarForPlugin:@"HomeWidgetPlugin"]];
  [WorkmanagerPlugin registerWithRegistrar:[registry registrarForPlugin:@"WorkmanagerPlugin"]];
}

@end
