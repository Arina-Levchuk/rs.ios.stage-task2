#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 result = 0;
    
    for (int bitIndex = 0; bitIndex < 8; bitIndex++ ) {
        result <<= 1; // сдвиг влево - освобождаем место для нового бита
        result |= (n & 1); // берем младший бит у n
        n >>= 1; // удаляем обработанный младший бит сдвигом вправо
    }
    
    return result;
}
