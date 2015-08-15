//
//  ViewController.m
//  CM-WebScrapper
//
//  Created by Walter Gonzalez Domenzain on 15/08/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Start.h"

@interface Start ()
@property (strong, nonatomic) UIWebView *webNews;
@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    [self.webNews stopLoading];
    self.webNews                = [[UIWebView alloc] init];
    self.webNews.hidden         = YES;
    NSString *urlAddress        = nURLNews;//[nURLNews stringByAppendingString:@"1"];
    NSURL *url                  = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj    = [NSURLRequest requestWithURL:url];
    self.webNews.delegate       = self;
    [self.webNews loadRequest:requestObj];
}

/**********************************************************************************************/
#pragma mark - Web methods
/**********************************************************************************************/
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    @try {
    NSLog(@"webViewDidFinishLoad");
    NSString *stCurrentURL      = self.webNews.request.URL.absoluteString;
    }
    @catch (NSException * e) {print(NSLog(@"Exception"));}
}
//-------------------------------------------------------------------------------
/*- (void)webView:(UIWebView*)webView didFailLoadWithError:(NSError*)error {
    NSLog(@"didFailLoadWithError");
}*/










@end
