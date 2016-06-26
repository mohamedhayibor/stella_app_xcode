#import "BackgroundLayer.h"
#import <UIKit/UIKit.h>
@implementation BackgroundLayer

//Metallic grey gradient background

+ (CAGradientLayer*) customGradient {
   
    UIColor *colorOne=[UIColor colorWithRed:(26/255.0) green:(214/255.0) blue:(253/255.0) alpha:1.0];
  
    UIColor *colorTwo = [UIColor colorWithRed:(29/255.0) green:(90/255.0) blue:(224/255.0) alpha:1.0];

      
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];
    NSNumber *stopOne = [NSNumber numberWithFloat:0.0];
    NSNumber *stopTwo = [NSNumber numberWithFloat:1.0];
    
    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, nil];
    
    CAGradientLayer *headerLayer = [CAGradientLayer layer];
    headerLayer.colors = colors;
    headerLayer.locations = locations;
    
    return headerLayer;

    
}
@end