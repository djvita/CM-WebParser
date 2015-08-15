//
//  ViewController.h
//  CM-WebScrapper
//
//  Created by Walter Gonzalez Domenzain on 15/08/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>
#define nURLNews        @"http://doradosfc.com.mx/noticias-del-club.html?page=1"

//Debug
#define nDebugEnable        1
#define print(x)            if(nDebugEnable){(x);}

@interface Start : UIViewController <UIWebViewDelegate>

@end

