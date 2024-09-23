#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray
{
    if (numbersArray.count == 0) {
        return @"";
    }
    
    NSMutableArray *ipComponents = [NSMutableArray arrayWithCapacity:4];
    
    for (NSUInteger index = 0; index < 4; index++) {
        NSNumber *number = (index < numbersArray.count) ? numbersArray[index] : @(0);
        
        if (number.integerValue < 0) {
            return  @"Negative numbers are not valid for input.";
        } else if (number.integerValue > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        
        [ipComponents addObject:number];
    }
    
    return [ipComponents componentsJoinedByString:@"."];
}

@end
