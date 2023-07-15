/* 
 * CS:APP Data Lab 
 * 
 * <Please put your name and userid here>
 * 徐浩博 2020010108
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* 
 * bitAnd - x&y using only ~ and | 
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y) {
  return ~((~x) | (~y));
}
/* 
 * getByte - Extract byte n from word x
 *   Bytes numbered from 0 (LSB) to 3 (MSB)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int getByte(int x, int n) {
    int shift = n << 3;
    int result_with_shift = x & (0xff << shift);
    // get Byte with shift
    return (result_with_shift >> shift) & 0xff;
    // AND 0xff to prevent arithmetic right shift of negative number
}
/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3 
 */
int logicalShift(int x, int n) {
  int n_not_zero = (n & 1) | ((n >> 1) & 1) | ((n >> 2) & 1) | ((n >> 3) & 1) | ((n >> 4) & 1);
  // = 1, if n != 0; = 0, else
  int n_not_zero_and_x_negative = n_not_zero & (x >> 31);
  // = 1, if n != 0 && x < 0; = 0, else
  int q = n_not_zero_and_x_negative << (33 + (~n));
  // if n != 0 && x < 0, then add 2^(32 - n); else add 0
  return (x >> n) + q;
}
/*
 * bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int bitCount(int x) {
  int sign, n_0x7fffffff, n_0x55, n_0x33, n_0x0f;

  // process signal of x
  sign = (1 & (x >> 31));
  n_0x7fffffff = (1 << 31) + (~ 1) +1;
  x = x & n_0x7fffffff;

  // 32 group * 1 bit/group -> 16 group * 2 bit/group 
  n_0x55 = 85 + (85 << 16); // 85 = 0x55
  n_0x55 = n_0x55 + (n_0x55 << 8); // mask = 0x55555555
  x = x + (~((x >> 1) & n_0x55)) + 1; // x = x - (x & mask)

  // 16 group * 2 bit/group -> 8 group * 4 bit/group 
  n_0x33 = 51 + (51 << 16); // 51 = 0x33
  n_0x33 = n_0x33 + (n_0x33 << 8); // mask = 0x33333333
  x = (x & n_0x33) + ((x >> 2) & n_0x33); // x = (x & mask)+((x >> 4) & mask)

  // 8 group * 4 bit/group -> 4 group * 8 bit/group 
  n_0x0f = 15 + (15 << 16); // 51 = 0x0f
  n_0x0f = n_0x0f + (n_0x0f << 8); // mask = 0x0f0f0f0f
  x = (x + (x >> 4)) & n_0x0f; // x = (x + (x >> 8)) & mask

  // 4 group * 8 bit/group -> 2 group * 16 bit/group 
  x = x + ((x >> 8));// 16

  // 2 group * 16 bit/group -> result
  return (x & 0xff) + ((x >> 16) & 0xff) + sign;
}
/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int bang(int x) {
  x = x | (x >> 16); // 32 -> 16
  x = x | (x >> 8); // 16 -> 8 
  x = x | (x >> 4); // 8 -> 4 
  x = x | (x >> 2); // 4 -> 2 
  x = x | (x >> 1); // 2 -> 1 
  return (x & 1) ^ 1;
}
/* 
 * tmin - return minimum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmin(void) {
  return (1 << 31);
}
/* 
 * fitsBits - return 1 if x can be represented as an 
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n) {
  int sign, positive_fitBits, negative_fitBits;
  sign = (1 & (x >> 31));
  // sign = 1, if x is negative; sign = 0, else

  n = n + (~1) + 1;
  // n = n - 1

  positive_fitBits = !((x >> n)) & (!sign);
  // positive_fitBits = 1 iff. x >= 0 and x satisfies fitsBits 
  negative_fitBits = (!((~x) >> n)) & sign;
  // negative_fitBits = 1 iff. x >= 0 and x satisfies fitsBits 
  return positive_fitBits | negative_fitBits;
}
/* 
 * divpwr2 - Compute x/(2^n), for 0 <= n <= 30
 *  Round toward zero
 *   Examples: divpwr2(15,1) = 7, divpwr2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int divpwr2(int x, int n) {
  int sign = (x >> 31) & 1;
  // sign = 1, if x is negative; sign = 0, else
  int add = (sign << n) + (~sign) + 1; 
  // plus 2 ^ n - 1
  return (x + add) >> n; 
  // right shift n bits
}
/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
  return ~x + 1;
}
/* 
 * isPositive - return 1 if x > 0, return 0 otherwise 
 *   Example: isPositive(-1) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 3
 */
int isPositive(int x) {
  int sign = 1 & (x >> 31);
  // sign = 1, if x is negative; sign = 0, else

  return (!sign) & (!!x);
  // !sign = 1, if x >= 0; sign = 0, else
  // !!x = 1, if x != 0; !!x = 0, else
  // (!sign) & (!!x) iff. x > 0
}
/* 
 * isLessOrEqual - if x <= y  then return 1, else return 0 
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y) {
  // case 1:
  int sg1 = (1 & (x >> 31));
  // sg1 = 1, if x is negative; sign = 0, else
  int sg2 = (1 & (y >> 31));
  // sg2 = 1, if y is negative; sign = 0, else
  int case1 = sg1 & (!sg2);
  // x < 0 && y >= 0

  // case 2:
  int sub = x + (~y) + 1;
  // sub = x - y
  int sg_sub = (1 & (sub >> 31));
  // sg_sub = 1, if sub is negative; sign = 0, else
  int case2 = (!(sg1 ^ sg2)) & (sg_sub | (!sub));
  // x, y have same sign, and (x - y < 0 or x - y == 0)
  return case1 | case2;
}
/*
 * ilog2 - return floor(log base 2 of x), where x > 0
 *   Example: ilog2(16) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 90
 *   Rating: 4
 */
int ilog2(int x) {
  int x_16, x_16_exist;
  int x_8, x_8_exist;
  int x_4, x_4_exist;
  int x_2, x_2_exist;
  int x_1, x_1_exist;

  x_16 = x >> 16;
  x_16_exist = !!(x_16);
  // test whether x >> 16 == 0, which is equal to the fifth bit number of ilog2 
  x = x >> (16 & ((~x_16_exist) + 1));
  // x = x >> 16 if x >> 16 != 0, else x = x
  
  x_8 = x >> 8;
  x_8_exist = !!(x_8);
  // test whether x >> 8 == 0, which is equal to the fourth bit number of ilog2 
  x = x >> (8 & ((~x_8_exist) + 1));
  // x = x >> 8 if x >> 8 != 0, else x = x

  x_4 = x >> 4;
  x_4_exist = !!(x_4);
  // test whether x >> 4 == 0, which is equal to the third bit number of ilog2 
  x = x >> (4 & ((~x_4_exist) + 1));
  // x = x >> 4 if x >> 4 != 0, else x = x

  x_2 = x >> 2;
  x_2_exist = !!(x_2);
  // test whether x >> 2 == 0, which is equal to the second bit number of ilog2 
  x = x >> (2 & ((~x_2_exist) + 1));
  // x = x >> 2 if x >> 2 != 0, else x = x

  x_1 = x >> 1;
  x_1_exist = !!(x_1);
  // test whether x >> 2 == 0, which is equal to the second bit number of ilog2 

  return x_1_exist + (x_2_exist << 1) + (x_4_exist << 2) + (x_8_exist << 3) + (x_16_exist << 4);
  // get value of ilog2 by bit numbers
}
/* 
 * float_neg - Return bit-level equivalent of expression -f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_neg(unsigned uf) {
  unsigned fraction = uf & 0x007fffff;
  unsigned exponent = uf & 0x7f800000;
  unsigned sign;

  // NaN
  if (fraction != 0 && exponent == 0x7f800000)
    return uf; 
  sign = (uf >> 31) & 1;

  // not negative
  if(sign){
    return uf & 0x7fffffff;
  }
  // negative
  else{
    return uf | 0x80000000;
  }
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
  unsigned sign, temp, limit_case, E, fraction, exponent;
  // if x == 0
  if(!x)
    return 0;
  
  sign = (x >> 31) & 1;
  // sign = 1, if x is negative; sign = 0, else
  if(sign)
    x = -x; 
  // if x is negative, turn it to positive
  temp = x;
  E = 0xffffffff; //E = -1

  // test the position of highest 1 
  while (temp){
    temp = temp >> 1;
    E = E + 1;
  }

  // if the position is lower than 24, left shift
  if(E <= 23){
    temp = x << (23 - E);
  }
  // if the position is higher than 24, right shift
  else{
    temp = x >> (E - 23);
    limit_case = ((temp << 1) | 1) << (E - 24); // limit case of rounding (0.5)
    temp = temp & 0x7fffff; // reserve the fraction part
    if (x > limit_case) // if greater than limit case (> 0.5)
      temp = temp + 1;
    else if(x == limit_case && (temp & 1)) // if equal to limit case AND satisfying Ties To Even (= 0.5) 
      temp = temp + 1;
    if (temp & 0x800000) // if fraction part overflow, then div by 2 and exponent ++
      E++;
  }

  fraction = temp & 0x7fffff; // get fraction part
  exponent = 127 + E; // get exponent part
  return (sign << 31) + (exponent << 23) + fraction;
}
/* 
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf) {
  unsigned fraction = uf & 0x007fffff; // get fraction part
  unsigned exponent = uf & 0x7f800000; // get fraction part with shift
  unsigned sign = uf & 0x80000000; // get sign part with shift

  if (exponent == 0x7f800000)
    return uf; // NaN & inf

  if (exponent == 0x7f000000)
    return (uf | 0x7f800000) & 0xff800000; // mul 2 then overflow, return inf

  if (exponent == 0)
    return sign | (uf << 1); // De-normalized value

  return (sign + (((exponent >> 23) + 1) << 23) + fraction); // Normalized Value
}
