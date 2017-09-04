//
//  ImageModel.h
//  try1
//
//  Created by smile on 2017/8/28.
//  Copyright © 2017年 smile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageModel : NSObject

+(ImageModel*) sharedInstance;

-(UIImage*)getImageWithName:(NSString*)name;
-(NSString*)imageNameInteger:(NSInteger)integer;
-(UIImage*)imageImageInteger:(NSInteger)integer;
-(NSInteger)imageNum:(NSInteger)str;

@end
