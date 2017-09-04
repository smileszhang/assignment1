//
//  ImageModel.m
//  try1
//
//  Created by smile on 2017/8/28.
//  Copyright © 2017年 smile. All rights reserved.
//

#import "ImageModel.h"
@interface NSObject ()

@property (strong, nonatomic) NSArray* imageNames;
@property (strong, nonatomic) NSMutableArray* imageImage;

@end

@implementation ImageModel
@synthesize imageNames = _imageNames;
@synthesize imageImage = _imageImage;




-(NSArray*)imageNames{
    
    if(!_imageNames)
        _imageNames=@[@"Eric1",@"Eric2",@"Eric3",@"SMU"];
    return _imageNames;
}

-(NSMutableArray*)imageImage{
    
    if(!_imageImage){
        _imageImage = [[NSMutableArray alloc] initWithCapacity:4];
    }
/*
    for(int i=0; i++; i<3)
    {
        _imageImage[i]=[self getImageWithName:self.imageNames[i]];
        
    }
 */
    _imageImage[0]=[self getImageWithName:self.imageNames[0]];
    _imageImage[1]=[self getImageWithName:self.imageNames[1]];
    _imageImage[2]=[self getImageWithName:self.imageNames[2]];
    _imageImage[3]=[self getImageWithName:self.imageNames[3]];
           //[[self.sharedInstance] getImageWithName:@"Eric1"];
        //@[@"Eric1",@"Eric2",@"Eric3"];
    return _imageImage;
}


+(ImageModel*)sharedInstance{
    static ImageModel * _sharedInstance = nil;
    
    static dispatch_once_t oncePredicate;

    dispatch_once(&oncePredicate,^{
        _sharedInstance = [[ImageModel alloc] init];
    });
    
    return _sharedInstance;

}

-(UIImage*)getImageWithName:(NSString *)name{
    UIImage* image = nil;
    
    image = [UIImage imageNamed:name];
    
    return image;
}

-(NSString*)imageNameInteger:(NSInteger)integer{
    
    NSString* sendback= self.imageNames[integer];
    return sendback;
    
   }
-(UIImage*)imageImageInteger:(NSInteger)integer{
    UIImage* sendback=self.imageImage[integer];
    return sendback;
    
}

-(NSInteger)imageNum:(NSInteger)str{
    str=self.imageNames.count;
    return str;
}
@end
