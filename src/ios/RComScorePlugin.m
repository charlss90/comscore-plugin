#import <Cordova/CDV.h>
#import <ComScore/ComScore.h>
#import "RComScorePlugin.h"

@implementation RComScorePlugin

- (void)initializeComScore:(CDVInvokedUrlCommand *)command
{

    NSString *publisherId = [command.arguments objectAtIndex:0];
    NSString *publisherSecret = [command.arguments objectAtIndex:1];

    SCORPublisherConfiguration *publisherConfiguration = [SCORPublisherConfiguration publisherConfigurationWithBuilderBlock:^(SCORPublisherConfigurationBuilder *builder) {
        builder.publisherId = publisherId;
        builder.publisherSecret = publisherSecret;
    }];
    
    [[SCORAnalytics configuration] addClientWithConfiguration:publisherConfiguration];
    [SCORAnalytics start];
}

@end
