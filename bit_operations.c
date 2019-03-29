#include "bit_operations.h"


int get_bit(int32_t toto, int j){
    return (toto >> j) & 1; 
}

int32_t set_bit(int32_t toto, int nombre){
    toto |= 1<<nombre;
    return toto;
}

int32_t clr_bit(int32_t toto, int nombre){
    toto &= 0<<nombre;
    return toto;
}