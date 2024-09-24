#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    // if array is empty || not two-dimensional
    if (array.count == 0 || ![array[0] isKindOfClass:[NSArray class]]) {
        return @[];
    }
    
    NSMutableArray<NSNumber *> *numbersArray = [NSMutableArray array];
    NSMutableArray<NSString *> *stringsArray = [NSMutableArray array];
    
    for (NSArray *subarray in array) {
        for (id item in subarray) {
            if ([item isKindOfClass:[NSNumber class]]) {
                [numbersArray addObject:item];
            } else if ([item isKindOfClass:[NSString class]]) {
                [stringsArray addObject:item];
            }
        }
    }
    
    NSArray *sortedNumbers = numbersArray.count != 0 ? [numbersArray sortedArrayUsingSelector:@selector(compare:)] : nil;
    NSArray *sortedStrings = stringsArray.count != 0 ? [stringsArray sortedArrayUsingSelector:@selector(compare:)] : nil;
    
    if (sortedNumbers && sortedStrings) {
        return @[sortedNumbers, [[sortedNumbers reverseObjectEnumerator] allObjects]];
    } else {
        return sortedNumbers ? sortedNumbers : sortedStrings;
    }
}

@end
