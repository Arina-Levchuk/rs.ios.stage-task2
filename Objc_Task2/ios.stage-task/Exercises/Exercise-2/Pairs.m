#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger pairCount = 0;
    NSInteger deltaValue = number.integerValue;
    NSSet *set = [NSSet setWithArray:array];
    
    for (NSNumber *value in array) {
        NSInteger targetValue = value.integerValue + deltaValue;
        if ([set containsObject:@(targetValue)]) {
            pairCount++;
        }
    }
    
    return pairCount;
}

@end
