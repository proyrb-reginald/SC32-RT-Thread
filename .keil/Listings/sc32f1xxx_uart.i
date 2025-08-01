# 1 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 392 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../hal/SC32F1X/src/sc32f1xxx_uart.c" 2
# 26 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h" 1
# 35 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h"
# 1 "../hal/SC32F1X/inc\\sc32f1xxx.h" 1
# 57 "../hal/SC32F1X/inc\\sc32f1xxx.h"
# 1 "../hal/SC32F1X/inc\\sc32r803.h" 1
# 93 "../hal/SC32F1X/inc\\sc32r803.h"
typedef enum {


    NonMaskableInt_IRQn = -14,
    HardFault_IRQn = -13,
    SVC_IRQn = -5,
    PendSV_IRQn = -2,
    SysTick_IRQn = -1,


    INT0_IRQn = 0,
    INT1_7_IRQn = 1,
    INT8_11_IRQn = 2,
    INT12_15_IRQn = 3,
    RCC_IRQn = 4,
    BTM_IRQn = 6,
    UART0_2_4_IRQn = 7,
    UART1_3_5_IRQn = 8,
    TWIx_QSPIx_0_2_IRQn = 9,
    TWIx_QSPIx_1_3_IRQn = 10,
    DMA0_IRQn = 11,
    DMA1_IRQn = 12,
    DMA2_IRQn = 13,
    DMA3_IRQn = 14,
    TIMER0_IRQn = 15,
    TIMER1_IRQn = 16,
    TIMER2_IRQn = 17,
    TIMER3_IRQn = 18,
    TIMER4_5_IRQn = 19,
    TIMER6_7_IRQn = 20,
    PWM0_IRQn = 21,
    LEDPWM_IRQn = 22,
    CAN_IRQn = 28,
    ADC_IRQn = 29,
    CMP_IRQn = 30,
    TK_IRQn = 31,
} IRQn_Type;





# 1 "../.cmsis/inc\\core_cm0plus.h" 1
# 29 "../.cmsis/inc\\core_cm0plus.h" 3





# 1 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdint.h" 1 3
# 56 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdint.h" 3
typedef signed char int8_t;
typedef signed short int int16_t;
typedef signed int int32_t;
typedef signed long long int int64_t;


typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long int uint64_t;





typedef signed char int_least8_t;
typedef signed short int int_least16_t;
typedef signed int int_least32_t;
typedef signed long long int int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long int uint_least64_t;




typedef signed int int_fast8_t;
typedef signed int int_fast16_t;
typedef signed int int_fast32_t;
typedef signed long long int int_fast64_t;


typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long int uint_fast64_t;






typedef signed int intptr_t;
typedef unsigned int uintptr_t;



typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
# 35 "../.cmsis/inc\\core_cm0plus.h" 2 3
# 63 "../.cmsis/inc\\core_cm0plus.h" 3
# 1 "../.cmsis/inc\\cmsis_version.h" 1 3
# 29 "../.cmsis/inc\\cmsis_version.h" 3
# 64 "../.cmsis/inc\\core_cm0plus.h" 2 3
# 115 "../.cmsis/inc\\core_cm0plus.h" 3
# 1 "../.cmsis/inc\\cmsis_compiler.h" 1 3
# 47 "../.cmsis/inc\\cmsis_compiler.h" 3
# 1 "../.cmsis/inc\\cmsis_armclang.h" 1 3
# 31 "../.cmsis/inc\\cmsis_armclang.h" 3
# 64 "../.cmsis/inc\\cmsis_armclang.h" 3
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed)) T_UINT32 { uint32_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT16_WRITE { uint16_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT16_READ { uint16_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT32_WRITE { uint32_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT32_READ { uint32_t v; };
#pragma clang diagnostic pop
# 260 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  op2 %= 32U;
  if (op2 == 0U)
  {
    return op1;
  }
  return (op1 >> op2) | (op1 << (32U - op2));
}
# 295 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint8_t __CLZ(uint32_t value)
{
# 306 "../.cmsis/inc\\cmsis_armclang.h" 3
  if (value == 0U)
  {
    return 32U;
  }
  return __builtin_clz(value);
}
# 526 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline int32_t __SSAT(int32_t val, uint32_t sat)
{
  if ((sat >= 1U) && (sat <= 32U))
  {
    const int32_t max = (int32_t)((1U << (sat - 1U)) - 1U);
    const int32_t min = -1 - max ;
    if (val > max)
    {
      return max;
    }
    else if (val < min)
    {
      return min;
    }
  }
  return val;
}
# 551 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __USAT(int32_t val, uint32_t sat)
{
  if (sat <= 31U)
  {
    const uint32_t max = ((1U << sat) - 1U);
    if (val > (int32_t)max)
    {
      return max;
    }
    else if (val < 0)
    {
      return 0U;
    }
  }
  return (uint32_t)val;
}
# 737 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __enable_irq(void)
{
  __asm volatile ("cpsie i" : : : "memory");
}
# 750 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __disable_irq(void)
{
  __asm volatile ("cpsid i" : : : "memory");
}
# 762 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_CONTROL(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, control" : "=r" (result) );
  return(result);
}
# 792 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_CONTROL(uint32_t control)
{
  __asm volatile ("MSR control, %0" : : "r" (control) : "memory");
  __builtin_arm_isb(0xF);
}
# 818 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_IPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, ipsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_APSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, apsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_xPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, xpsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_PSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, psp" : "=r" (result) );
  return(result);
}
# 890 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_PSP(uint32_t topOfProcStack)
{
  __asm volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
}
# 914 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_MSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, msp" : "=r" (result) );
  return(result);
}
# 944 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_MSP(uint32_t topOfMainStack)
{
  __asm volatile ("MSR msp, %0" : : "r" (topOfMainStack) : );
}
# 995 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_PRIMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, primask" : "=r" (result) );
  return(result);
}
# 1025 "../.cmsis/inc\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_PRIMASK(uint32_t priMask)
{
  __asm volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
}
# 48 "../.cmsis/inc\\cmsis_compiler.h" 2 3
# 116 "../.cmsis/inc\\core_cm0plus.h" 2 3
# 210 "../.cmsis/inc\\core_cm0plus.h" 3
typedef union
{
  struct
  {
    uint32_t _reserved0:28;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} APSR_Type;
# 240 "../.cmsis/inc\\core_cm0plus.h" 3
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:23;
  } b;
  uint32_t w;
} IPSR_Type;
# 258 "../.cmsis/inc\\core_cm0plus.h" 3
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:15;
    uint32_t T:1;
    uint32_t _reserved1:3;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} xPSR_Type;
# 297 "../.cmsis/inc\\core_cm0plus.h" 3
typedef union
{
  struct
  {
    uint32_t nPRIV:1;
    uint32_t SPSEL:1;
    uint32_t _reserved1:30;
  } b;
  uint32_t w;
} CONTROL_Type;
# 328 "../.cmsis/inc\\core_cm0plus.h" 3
typedef struct
{
  volatile uint32_t ISER[1U];
        uint32_t RESERVED0[31U];
  volatile uint32_t ICER[1U];
        uint32_t RESERVED1[31U];
  volatile uint32_t ISPR[1U];
        uint32_t RESERVED2[31U];
  volatile uint32_t ICPR[1U];
        uint32_t RESERVED3[31U];
        uint32_t RESERVED4[64U];
  volatile uint32_t IP[8U];
} NVIC_Type;
# 355 "../.cmsis/inc\\core_cm0plus.h" 3
typedef struct
{
  volatile const uint32_t CPUID;
  volatile uint32_t ICSR;

  volatile uint32_t VTOR;



  volatile uint32_t AIRCR;
  volatile uint32_t SCR;
  volatile uint32_t CCR;
        uint32_t RESERVED1;
  volatile uint32_t SHP[2U];
  volatile uint32_t SHCSR;
} SCB_Type;
# 472 "../.cmsis/inc\\core_cm0plus.h" 3
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t LOAD;
  volatile uint32_t VAL;
  volatile const uint32_t CALIB;
} SysTick_Type;
# 524 "../.cmsis/inc\\core_cm0plus.h" 3
typedef struct
{
  volatile const uint32_t TYPE;
  volatile uint32_t CTRL;
  volatile uint32_t RNR;
  volatile uint32_t RBAR;
  volatile uint32_t RASR;
} MPU_Type;
# 741 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    __asm volatile("":::"memory");
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __asm volatile("":::"memory");
  }
}
# 760 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0U] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 779 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
  }
}
# 798 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0U] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 817 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 832 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 850 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )] = ((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )] & ~(0xFFUL << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL))) |
       (((priority << (8U - 2U)) & (uint32_t)0xFFUL) << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL)));
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] = ((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] & ~(0xFFUL << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL))) |
       (((priority << (8U - 2U)) & (uint32_t)0xFFUL) << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL)));
  }
}
# 874 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )] >> ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL) ) & (uint32_t)0xFFUL) >> (8U - 2U)));
  }
  else
  {
    return((uint32_t)(((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] >> ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL) ) & (uint32_t)0xFFUL) >> (8U - 2U)));
  }
}
# 899 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(2U)) ? (uint32_t)(2U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(2U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(2U));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority & (uint32_t)((1UL << (SubPriorityBits )) - 1UL)))
         );
}
# 926 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(2U)) ? (uint32_t)(2U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(2U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(2U));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority = (Priority ) & (uint32_t)((1UL << (SubPriorityBits )) - 1UL);
}
# 950 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{

  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  vectors[(int32_t)IRQn + 16] = vector;





}
# 971 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{

  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return vectors[(int32_t)IRQn + 16];




}






__attribute__((__noreturn__)) static __inline void __NVIC_SystemReset(void)
{
  __builtin_arm_dsb(0xF);

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = ((0x5FAUL << 16U) |
                 (1UL << 2U));
  __builtin_arm_dsb(0xF);

  for(;;)
  {
    __builtin_arm_nop();
  }
}







# 1 "../.cmsis/inc\\mpu_armv7.h" 1 3
# 29 "../.cmsis/inc\\mpu_armv7.h" 3
# 183 "../.cmsis/inc\\mpu_armv7.h" 3
typedef struct {
  uint32_t RBAR;
  uint32_t RASR;
} ARM_MPU_Region_t;




static __inline void ARM_MPU_Enable(uint32_t MPU_Control)
{
  __builtin_arm_dmb(0xF);
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL = MPU_Control | (1UL );



  __builtin_arm_dsb(0xF);
  __builtin_arm_isb(0xF);
}



static __inline void ARM_MPU_Disable(void)
{
  __builtin_arm_dmb(0xF);



  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL &= ~(1UL );
  __builtin_arm_dsb(0xF);
  __builtin_arm_isb(0xF);
}




static __inline void ARM_MPU_ClrRegion(uint32_t rnr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = 0U;
}





static __inline void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}






static __inline void ARM_MPU_SetRegionEx(uint32_t rnr, uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}






static __inline void ARM_MPU_OrderedMemcpy(volatile uint32_t* dst, const uint32_t* __restrict src, uint32_t len)
{
  uint32_t i;
  for (i = 0U; i < len; ++i)
  {
    dst[i] = src[i];
  }
}





static __inline void ARM_MPU_Load(ARM_MPU_Region_t const* table, uint32_t cnt)
{
  const uint32_t rowWordSize = sizeof(ARM_MPU_Region_t)/4U;
  while (cnt > 1U) {
    ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), 1U*rowWordSize);
    table += 1U;
    cnt -= 1U;
  }
  ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), cnt*rowWordSize);
}
# 1008 "../.cmsis/inc\\core_cm0plus.h" 2 3
# 1027 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline uint32_t SCB_GetFPUType(void)
{
    return 0U;
}
# 1058 "../.cmsis/inc\\core_cm0plus.h" 3
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = (uint32_t)(ticks - 1UL);
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 2U) - 1UL);
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = 0UL;
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) |
                   (1UL << 1U) |
                   (1UL );
  return (0UL);
}
# 136 "../hal/SC32F1X/inc\\sc32r803.h" 2





typedef enum { RESET = 0, SET = !RESET } FlagStatus, ITStatus;

typedef enum { DISABLE = 0, ENABLE = !DISABLE } FunctionalState;



typedef enum { SUCCESS = 0, ERROR = !SUCCESS } ErrorStatus;

typedef enum { FALSE = 0, TRUE = !FALSE } boolType;
# 173 "../hal/SC32F1X/inc\\sc32r803.h"
typedef struct {
    volatile uint32_t APB0_CFG;
    volatile uint32_t APB0_RST;
} RCCAPB0_TypeDef;




typedef struct {
    volatile uint32_t APB1_CFG;
    volatile uint32_t APB1_RST;
} RCCAPB1_TypeDef;




typedef struct {
    volatile uint32_t APB2_CFG;
    volatile uint32_t APB2_RST;
} RCCAPB2_TypeDef;
# 201 "../hal/SC32F1X/inc\\sc32r803.h"
typedef struct {
    volatile uint32_t UART_CON;
    volatile uint32_t UART_STS;
    volatile uint32_t UART_BAUD;
    volatile uint32_t UART_DATA;
    volatile uint32_t UART_IDE;
} UART_TypeDef;




typedef struct {
    volatile uint32_t TWI_SPIx_CON;
    volatile uint32_t TWI_SPIx_STS;
    volatile uint32_t
                  TWI_SPIx_ADD;
    volatile uint32_t TWI_SPIx_DATA;
    volatile uint32_t TWI_SPIx_IDE;
} TWI_SPIx_TypeDef;



typedef struct {
    volatile uint32_t SPI_CON;
    volatile uint32_t SPI_STS;
    volatile uint32_t SPIx_ADD;
    volatile uint32_t SPI_DATA;
    volatile uint32_t SPI_IDE;
} SPI_TypeDef;




typedef struct {
    volatile uint32_t TWI_CON;
    volatile uint32_t TWI_STS;
    volatile uint32_t TWI_ADD;
    volatile uint32_t TWI_DATA;
    volatile uint32_t TWI_IDE;
} TWI_TypeDef;




typedef struct {
    volatile uint32_t QSPI_CON;
    volatile uint32_t QSPI_STS;
    volatile uint32_t QSPI_ADD;
    volatile uint32_t QSPI_DATA;
    volatile uint32_t QSPI_IDE;
    volatile uint32_t QSPI_DL;
    volatile uint32_t RESERVED0;
    volatile uint32_t QSPI_REV;
} QSPI_TypeDef;



typedef struct {
    volatile uint32_t TIM_CON;
    volatile uint32_t TIM_CNT;
    volatile uint32_t TIM_RLD;
    volatile uint32_t TIM_STS;
    volatile uint32_t TIM_PDTA_RCAP;
    volatile uint32_t TIM_PDTB_FCAP;
    volatile uint32_t TIM_IDE;
} TIM_TypeDef;




typedef struct {
    volatile uint32_t PWM_CON;
    volatile uint32_t PWM_CHN;
    volatile uint32_t PWM_STS;
    volatile uint32_t PWM_INV;
    volatile uint32_t PWM_DFR;
    volatile uint32_t PWM_FLT;
    volatile uint32_t PWM_CYCLE;
    volatile uint32_t
        RESERVED[5];
    volatile uint32_t
        PWM_DT[8];
} PWM_TypeDef;



typedef struct {
    volatile uint32_t LEDPWM_CON;
    volatile uint32_t LEDPWM_CHN0;
    volatile uint32_t LEDPWM_STS;
    volatile uint32_t LEDPWM_INV0;
    volatile uint32_t LEDPWM_DFR;
    volatile uint32_t LEDPWM_FLT;
    volatile uint32_t LEDPWM_CYCLE;
    volatile uint32_t LEDPWM_CHN1;
    volatile uint32_t LEDPWM_INV1;
    volatile uint32_t RESERVED[3];
    volatile uint32_t
        LEDPWM_DT[39];
} LEDPWM_TypeDef;



typedef struct {
    volatile uint32_t BTM_CON;
    volatile uint32_t BTM_STS;
} BTM_TypeDef;




typedef struct {
    volatile uint32_t ADC_CON;
    volatile uint32_t ADC_STS;
    volatile uint32_t ADC_VALUE;
    volatile uint32_t ADC_CFG;
} ADC_TypeDef;




typedef struct {
    volatile uint32_t CMP_STS;
    volatile uint32_t CMP_CFG;
} CMP_TypeDef;




typedef struct {
    volatile uint32_t OP_CON;
} OP_TypeDef;




typedef struct {
    volatile uint32_t TK_CHN;
    volatile uint32_t
                  RESERVED[2];
    volatile uint32_t TK_CON;
    volatile uint32_t TK_CFG;
    volatile uint32_t
                  RESERVED0;
    volatile uint32_t TK_CNT;
    volatile uint32_t TK_TM;
} TK_TypeDef;




typedef struct {
    volatile uint32_t DDR_CON;
    volatile uint32_t DDR_CFG;
    volatile uint32_t SEG_EN0;
    volatile uint32_t SEG_EN1;
    volatile uint32_t COM_EN;
    volatile uint32_t RESERVED0[39];

    volatile uint32_t SEGRn[35];
} LCD_LED_TypeDef;







typedef struct {
    volatile uint32_t PIN;
    volatile uint32_t RESERVED0[7];

    volatile uint32_t PXCON;
    volatile uint32_t RESERVED1[7];

    volatile uint32_t PXPH;
    volatile uint32_t RESERVED2[7];

    volatile uint32_t
        PXLEV;
} GPIO_TypeDef;




typedef struct {
    volatile uint8_t PIN_BIT[16];
    volatile uint8_t PIN_XR[16];
} GPIO_BIT_TypeDef;




typedef struct {
    volatile uint32_t INTF_IE;
    volatile uint32_t RESERVED0[7];

    volatile uint32_t
        INTR_IE;
    volatile uint32_t RESERVED1[7];

    volatile uint32_t INT_SEL0;
    volatile uint32_t RESERVED2[7];

    volatile uint32_t INT_SEL1;
    volatile uint32_t RESERVED3[7];

    volatile uint32_t INTF_CON;
    volatile uint32_t RESERVED4[7];

    volatile uint32_t INTR_CON;
    volatile uint32_t RESERVED5[7];

    volatile uint32_t INTF_STS;
    volatile uint32_t RESERVED6[7];

    volatile uint32_t INTR_STS;
    volatile uint32_t RESERVED7[7];

} INT_TypeDef;







typedef struct {
    volatile uint32_t RESERVED0[3];
    volatile uint32_t WDT_CON;
    volatile uint32_t WDT_CFG;
} WDT_TypeDef;




typedef struct {
    volatile uint32_t IAPKEY;
    volatile uint32_t IAP_SNB;
    volatile uint32_t RESERVED0;
    volatile uint32_t IAP_CON;
} IAP_TypeDef;




typedef struct {
    volatile uint32_t OPINX;
    volatile uint32_t OPREG;
} OPT_TypeDef;




typedef struct {
    volatile uint32_t CRC_DR;
    volatile uint32_t CRC_CON;
    volatile uint32_t CRC_INT;
    volatile uint32_t CRC_POL;
} CRC_TypeDef;




typedef struct {
    volatile uint32_t AHB_CFG;
    volatile uint32_t AHB_RST;
} RCCAHB_TypeDef;




typedef struct {
    volatile uint32_t RCC_KEY;
    volatile uint32_t RESERVED0;
    volatile uint32_t RCC_CFG0;
    volatile uint32_t RCC_CFG1;
    volatile uint32_t RESERVED1;
    volatile uint32_t RCC_STS;
    volatile uint32_t RESERVED2;
    volatile uint32_t SYST_CALIB;
    volatile uint32_t NMI_CFG;
} RCC_TypeDef;







typedef struct {
    volatile uint32_t DMA_SADR;
    volatile uint32_t DMA_DADR;
    volatile uint32_t DMA_CFG;
    volatile uint32_t DMA_CNT;
    volatile uint32_t DMA_STS;
} DMA_TypeDef;



typedef struct {
    volatile uint32_t CAN_RX_ID;
    volatile uint32_t CAN_RX_CTRL;
    volatile uint32_t CAN_RBUF[16];
    volatile uint32_t CAN_RTSL;
    volatile uint32_t CAN_RTSH;
} CAN_RX_BUFFER_TypeDef;

typedef struct {
    volatile uint32_t CAN_TX_ID;
    volatile uint32_t CAN_TX_CTRL;
    volatile uint32_t CAN_TBUF[16];
    volatile uint32_t CAN_TTSL;
    volatile uint32_t CAN_TTSH;
} CAN_TX_BUFFER_TypeDef;
typedef struct {
    volatile uint32_t
        CAN_TTSL;
    volatile uint32_t
        CAN_TTSH;
    volatile uint32_t CAN_CFG_STAT;

    volatile uint32_t
        CAN_RTIE;
    volatile uint32_t
        CAN_S_SEG;
    volatile uint32_t
        CAN_F_SEG;
    volatile uint32_t
        CAN_EALCAP;
    volatile uint32_t CAN_ACFCTRL;

    volatile uint32_t
        CAN_ACF;
    volatile uint32_t
        TTCAN_CFG;
    volatile uint32_t TTCAN_RFMSG;

    volatile uint32_t TTCAN_TRIG_CFG;

    volatile uint32_t TTCAN_WTRIG;

    volatile uint32_t
        CAN_IDE;
    volatile uint32_t
        CAN_TIML;
    volatile uint32_t
        CAN_TIMH;
} CAN_TypeDef;







typedef struct {
    volatile uint8_t Bg;
    volatile uint8_t Vref;
    volatile uint8_t Hrcr;
    volatile uint8_t Lrc;
    volatile uint8_t Hrcc;
    volatile uint8_t RomSize;
    volatile uint8_t Tk;
    volatile uint8_t Ldo;
    volatile uint8_t Adcmp;
    volatile uint8_t Rcc;
} DesignOption_TypeDef;
# 58 "../hal/SC32F1X/inc\\sc32f1xxx.h" 2
# 36 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h" 2
# 1 "../hal/SC32F1X/inc\\sc32.h" 1
# 37 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h" 1
# 68 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {
    RCC_SYSCLKSource_HIRC_2 = (uint16_t)(~(0x1UL << (7U))),
    RCC_SYSCLKSource_LIRC =
        (uint16_t)((0x00 << (8U))),
    RCC_SYSCLKSource_HXT =
        (uint16_t)((0x01 << (8U))),
    RCC_SYSCLKSource_HIRC =
        (uint16_t)((0x02 << (8U))),
    RCC_SYSCLKSource_LXT =
        (uint16_t)((0x03 << (8U))),
} RCC_SYSCLKSource_TypeDef;
# 110 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {
    RCC_SysTickSource_HCLK_DIV8 =
        (uint8_t)(0X00 << (5U)),
    RCC_SysTickSource_HIRC_DIV2 =
        (uint8_t)(0X01 << (5U)),
    RCC_SysTickSource_HXT_DIV2 =
        (uint8_t)(0X02 << (5U)),
    RCC_SysTickSource_LIRC =
        (uint8_t)(0X03 << (5U)),
    RCC_SysTickSource_LXT = (uint8_t)(0X04 << (5U)),
    RCC_SysTickSource_HCLK = (uint8_t)(0X01),
} RCC_SysTickSource_TypeDef;
# 134 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {
    RCC_SYSCLK_Div1 = (uint32_t)(0x00 << (20U)),
    RCC_SYSCLK_Div2 = (uint32_t)(0x01 << (20U)),
    RCC_SYSCLK_Div4 = (uint32_t)(0x02 << (20U)),
    RCC_SYSCLK_Div8 = (uint32_t)(0x03 << (20U)),
    RCC_SYSCLK_Div16 = (uint32_t)(0x04 << (20U)),
} RCC_HCLK_TypeDef;
# 155 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {
    RCC_HCLK_Div1 = (uint32_t)(0x00 << (20U)),
    RCC_HCLK_Div2 = (uint32_t)(0x01 << (20U)),
    RCC_HCLK_Div4 = (uint32_t)(0x02 << (20U)),
    RCC_HCLK_Div8 = (uint32_t)(0x03 << (20U)),
    RCC_HCLK_Div16 = (uint32_t)(0x04 << (20U)),
    RCC_HCLK_Div32 = (uint32_t)(0x05 << (20U)),
    RCC_HCLK_Div64 = (uint32_t)(0x06 << (20U)),
    RCC_HCLK_Div128 = (uint32_t)(0x07 << (20U)),
} RCC_PCLK_TypeDef;
# 179 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {
    RCC_LCDLEDCLKSource_LIRC =
        (uint32_t)(0x00 << (1U)),
    RCC_LCDLEDCLKSource_LXT =
        (uint32_t)(0x01 << (1U)),
} RCC_LCDLEDCLKSource_TypeDef;
# 196 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {
    RCC_BTMCLKSource_LIRC = (uint32_t)(0x00 << (0U)),
    RCC_BTMCLKSource_LXT = (uint32_t)(0x01 << (0U)),
} RCC_BTMCLKSource_TypeDef;
# 227 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {
    RCC_PWM0CLKSource_PCLK = (uint32_t)(0x00 << (2U)),
    RCC_PWM0CLKSource_Div1HIRC =
        (uint32_t)(0x01 << (2U)),
} RCC_PWM0CLKSource_TypeDef;
# 260 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {
    RCC_AHBPeriph_DMA = (uint8_t)(0x1UL << (0U)),
    RCC_AHBPeriph_CRC = (uint8_t)(0x1UL << (1U)),
    RCC_AHBPeriph_IFB = (uint8_t)(0x1UL << (2U)),
    RCC_AHBPeriph_CAN = (uint8_t)(0x1UL << (4U)),
    RCC_AHBPeriph_ALL = (uint8_t)0X17,
} RCC_AHBPeriph_TypeDef;
# 310 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {
    RCC_APB0Periph_TIM0 = (uint16_t)(0x1UL << (0U)),
    RCC_APB0Periph_TIM1 = (uint16_t)(0x1UL << (1U)),
    RCC_APB0Periph_TIM2 = (uint16_t)(0x1UL << (2U)),
    RCC_APB0Periph_TIM3 = (uint16_t)(0x1UL << (3U)),
    RCC_APB0Periph_QTWI0 = (uint16_t)(0x1UL << (4U)),
    RCC_APB0Periph_QTWI2 = (uint16_t)(0x1UL << (5U)),
    RCC_APB0Periph_UART0 = (uint16_t)(0x1UL << (6U)),
    RCC_APB0Periph_UART1 = (uint16_t)(0x1UL << (7U)),
    RCC_APB0Periph_PWM0 = (uint16_t)(0x1UL << (8U)),
    RCC_APB0Periph_UART5 = (uint16_t)(0x1UL << (9U)),
    RCC_APB0Periph_ALL = (uint16_t)0X03FF,
} RCC_APB0Periph_TypeDef;
# 362 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {
    RCC_APB1Periph_TIM4 = (uint16_t)(0x1UL << (0U)),
    RCC_APB1Periph_TIM5 = (uint16_t)(0x1UL << (1U)),
    RCC_APB1Periph_TIM6 = (uint16_t)(0x1UL << (2)),
    RCC_APB1Periph_TIM7 = (uint16_t)(0x1UL << (3U)),
    RCC_APB1Periph_QTWI1 = (uint16_t)(0x1UL << (4U)),
    RCC_APB1Periph_QTWI3 = (uint16_t)(0x1UL << (5U)),
    RCC_APB1Periph_UART4 = (uint16_t)(0x1UL << (6U)),
    RCC_APB1Periph_UART2 = (uint16_t)(0x1UL << (7U)),
    RCC_APB1Periph_ALL = (uint16_t)0X00FF,
} RCC_APB1Periph_TypeDef;
# 416 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {
    RCC_APB2Periph_LEDPWM = (uint16_t)(0x1UL << (0U)),
    RCC_APB2Periph_LCD_LED = (uint16_t)(0x1UL << (1U)),
    RCC_APB2Periph_UART3 = (uint16_t)(0x1UL << (2U)),
    RCC_APB2Periph_ALL = (uint16_t)0X0007,
} RCC_APB2Periph_TypeDef;
# 447 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {
    RCC_NMIPeriph_CSS = (uint16_t)(0x1UL << (0U)),
    RCC_NMIPeriph_CMP = (uint16_t)(0x1UL << (1U)),
    RCC_NMIPeriph_INT0 = (uint16_t)(0x1UL << (2U)),

    RCC_NMIPeriph_SRAMPE = (uint16_t)(0x1UL << (3U)),

    RCC_NMIPeriph_ALL = (uint16_t)0X0F,
} RCC_NMIPeriph_TypeDef;
# 472 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {
    RCC_WAIT_0 = (uint16_t)0x00 << (12U),
    RCC_WAIT_1 = (uint16_t)0x01 << (12U),
    RCC_WAIT_2 = (uint16_t)0x02 << (12U),
    RCC_WAIT_3 = (uint16_t)0x03 << (12U),
} RCC_Wait_TypeDef;
# 498 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef enum {

    RCC_FLAG_CLKIF = (uint8_t)(0x1UL << (0U)),

    RCC_FLAG_SRAMPEIF = (uint8_t)(0x1UL << (3U)),
} RCC_FLAG_TypeDef;
# 537 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
typedef struct {
    uint32_t SYSCLK_Frequency;
    uint32_t HCLK_Frequency;
    uint32_t PCLK0_Frequency;
    uint32_t PCLK1_Frequency;
    uint32_t PCLK2_Frequency;
} RCC_ClocksTypeDef;
# 555 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
void RCC_DeInit(void);



ErrorStatus RCC_Unlock(uint8_t TimeLimit);


void RCC_HXTCmd(FunctionalState NewState);

void RCC_LXTCmd(FunctionalState NewState);
void RCC_HIRCCmd(FunctionalState NewState);
void RCC_LIRCCmd(FunctionalState NewState);
# 575 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
void RCC_HIRCDIV1Cmd(FunctionalState NewState);

void RCC_APB0Cmd(FunctionalState NewState);
void RCC_APB1Cmd(FunctionalState NewState);
void RCC_APB2Cmd(FunctionalState NewState);


ErrorStatus RCC_SYSCLKConfig(RCC_SYSCLKSource_TypeDef RCC_SYSCLKSource);
RCC_SYSCLKSource_TypeDef RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(RCC_HCLK_TypeDef RCC_HCLKCLKSource);
void RCC_APB0Config(RCC_PCLK_TypeDef RCC_APB0CLKSource);
void RCC_APB1Config(RCC_PCLK_TypeDef RCC_APB1CLKSource);
void RCC_APB2Config(RCC_PCLK_TypeDef RCC_APB2CLKSource);
void RCC_GetClocksFreq(RCC_ClocksTypeDef * RCC_Clocks);
void RCC_WaitConfig(RCC_Wait_TypeDef RCC_Wait);
void RCC_NMICmd(uint32_t RCC_NMIPeriph, FunctionalState NewState);


void RCC_PWM0CLKConfig(RCC_PWM0CLKSource_TypeDef RCC_PWM0CLKSource);



void RCC_LCDLEDCLKConfig(RCC_LCDLEDCLKSource_TypeDef RCC_LCDLEDCLKSource);

void RCC_BTMCLKConfig(RCC_BTMCLKSource_TypeDef RCC_BTMCLKSource);

void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB0PeriphClockCmd(uint32_t RCC_APB0Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);

void RCC_AHBPeriphResetCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB0PeriphResetCmd(uint32_t RCC_APB0Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);


void RCC_SystickCLKConfig(RCC_SysTickSource_TypeDef RCC_SYSTICKSource);
void RCC_SystickSetCounter(uint32_t Counter);
void RCC_SystickCmd(FunctionalState NewState);
FlagStatus RCC_SystickGetFlagStatus(void);


void RCC_ITConfig(FunctionalState NewState);
FlagStatus RCC_GetFlagStatus(uint32_t RCC_FLAG);


void SC_IncTick(void);
void SC_Delay(uint32_t ms_Delay);
void SC_Delay_us(uint32_t us_Delay, uint32_t Sys_freq);
# 38 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h" 2
# 1 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 1 3
# 53 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
    typedef unsigned int size_t;
# 68 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
    typedef __builtin_va_list __va_list;
# 87 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
typedef struct __fpos_t_struct {
    unsigned long long int __pos;





    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
# 108 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
typedef struct __FILE FILE;
# 138 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;
# 224 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int remove(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int rename(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 243 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *tmpfile(void);






extern __attribute__((__nothrow__)) char *tmpnam(char * );
# 265 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fclose(FILE * ) __attribute__((__nonnull__(1)));
# 275 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fflush(FILE * );
# 285 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *fopen(const char * __restrict ,
                           const char * __restrict ) __attribute__((__nonnull__(1,2)));
# 329 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *freopen(const char * __restrict ,
                    const char * __restrict ,
                    FILE * __restrict ) __attribute__((__nonnull__(2,3)));
# 342 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void setbuf(FILE * __restrict ,
                    char * __restrict ) __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) int setvbuf(FILE * __restrict ,
                   char * __restrict ,
                   int , size_t ) __attribute__((__nonnull__(1)));
# 370 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int fprintf(FILE * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 393 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int _fprintf(FILE * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));





#pragma __printf_args
extern __attribute__((__nothrow__)) int printf(const char * __restrict , ...) __attribute__((__nonnull__(1)));






#pragma __printf_args
extern __attribute__((__nothrow__)) int _printf(const char * __restrict , ...) __attribute__((__nonnull__(1)));





#pragma __printf_args
extern __attribute__((__nothrow__)) int sprintf(char * __restrict , const char * __restrict , ...) __attribute__((__nonnull__(1,2)));








#pragma __printf_args
extern __attribute__((__nothrow__)) int _sprintf(char * __restrict , const char * __restrict , ...) __attribute__((__nonnull__(1,2)));






#pragma __printf_args
extern __attribute__((__nothrow__)) int __ARM_snprintf(char * __restrict , size_t ,
                     const char * __restrict , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __attribute__((__nothrow__)) int snprintf(char * __restrict , size_t ,
                     const char * __restrict , ...) __attribute__((__nonnull__(3)));
# 460 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int _snprintf(char * __restrict , size_t ,
                      const char * __restrict , ...) __attribute__((__nonnull__(3)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int fscanf(FILE * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 503 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __scanf_args
extern __attribute__((__nothrow__)) int _fscanf(FILE * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int scanf(const char * __restrict , ...) __attribute__((__nonnull__(1)));








#pragma __scanf_args
extern __attribute__((__nothrow__)) int _scanf(const char * __restrict , ...) __attribute__((__nonnull__(1)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int sscanf(const char * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 541 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __scanf_args
extern __attribute__((__nothrow__)) int _sscanf(const char * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));







extern __attribute__((__nothrow__)) int vfscanf(FILE * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int vscanf(const char * __restrict , __va_list) __attribute__((__nonnull__(1)));
extern __attribute__((__nothrow__)) int vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));

extern __attribute__((__nothrow__)) int _vfscanf(FILE * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int _vscanf(const char * __restrict , __va_list) __attribute__((__nonnull__(1)));
extern __attribute__((__nothrow__)) int _vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int __ARM_vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));

extern __attribute__((__nothrow__)) int vprintf(const char * __restrict , __va_list ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int _vprintf(const char * __restrict , __va_list ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) int vfprintf(FILE * __restrict ,
                    const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));
# 584 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int vsprintf(char * __restrict ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));
# 594 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int __ARM_vsnprintf(char * __restrict , size_t ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));

extern __attribute__((__nothrow__)) int vsnprintf(char * __restrict , size_t ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));
# 609 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int _vsprintf(char * __restrict ,
                      const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));





extern __attribute__((__nothrow__)) int _vfprintf(FILE * __restrict ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));





extern __attribute__((__nothrow__)) int _vsnprintf(char * __restrict , size_t ,
                      const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));






#pragma __printf_args
extern __attribute__((__nothrow__)) int asprintf(char ** , const char * __restrict , ...) __attribute__((__nonnull__(2)));
extern __attribute__((__nothrow__)) int vasprintf(char ** , const char * __restrict , __va_list ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __attribute__((__nothrow__)) int __ARM_asprintf(char ** , const char * __restrict , ...) __attribute__((__nonnull__(2)));
extern __attribute__((__nothrow__)) int __ARM_vasprintf(char ** , const char * __restrict , __va_list ) __attribute__((__nonnull__(2)));
# 649 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fgetc(FILE * ) __attribute__((__nonnull__(1)));
# 659 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) char *fgets(char * __restrict , int ,
                    FILE * __restrict ) __attribute__((__nonnull__(1,3)));
# 673 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fputc(int , FILE * ) __attribute__((__nonnull__(2)));
# 683 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fputs(const char * __restrict , FILE * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) int getc(FILE * ) __attribute__((__nonnull__(1)));
# 704 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
    extern __attribute__((__nothrow__)) int (getchar)(void);
# 713 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) char *gets(char * ) __attribute__((__nonnull__(1)));
# 725 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int putc(int , FILE * ) __attribute__((__nonnull__(2)));
# 737 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
    extern __attribute__((__nothrow__)) int (putchar)(int );






extern __attribute__((__nothrow__)) int puts(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int ungetc(int , FILE * ) __attribute__((__nonnull__(2)));
# 778 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t fread(void * __restrict ,
                    size_t , size_t , FILE * __restrict ) __attribute__((__nonnull__(1,4)));
# 794 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t __fread_bytes_avail(void * __restrict ,
                    size_t , FILE * __restrict ) __attribute__((__nonnull__(1,3)));
# 810 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t fwrite(const void * __restrict ,
                    size_t , size_t , FILE * __restrict ) __attribute__((__nonnull__(1,4)));
# 822 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fgetpos(FILE * __restrict , fpos_t * __restrict ) __attribute__((__nonnull__(1,2)));
# 833 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fseek(FILE * , long int , int ) __attribute__((__nonnull__(1)));
# 850 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fsetpos(FILE * __restrict , const fpos_t * __restrict ) __attribute__((__nonnull__(1,2)));
# 863 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) long int ftell(FILE * ) __attribute__((__nonnull__(1)));
# 877 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void rewind(FILE * ) __attribute__((__nonnull__(1)));
# 886 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void clearerr(FILE * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int feof(FILE * ) __attribute__((__nonnull__(1)));




extern __attribute__((__nothrow__)) int ferror(FILE * ) __attribute__((__nonnull__(1)));




extern __attribute__((__nothrow__)) void perror(const char * );
# 917 "C:\\Users\\proyr\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int _fisatty(FILE * ) __attribute__((__nonnull__(1)));



extern __attribute__((__nothrow__)) void __use_no_semihosting_swi(void);
extern __attribute__((__nothrow__)) void __use_no_semihosting(void);
# 39 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h" 2
# 55 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h"
typedef enum {
    UART_PRESCALER_12 = 0x00U << (4U),
    UART_PRESCALER_4 = 0x01U << (4U),
} UART_Prescaler_TypeDef;
# 69 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h"
typedef enum {
    UART_Mode_8B = (uint32_t)(0X00U << (0U)),
    UART_Mode_10B = (uint32_t)(0X01U << (0U)),
    UART_Mode_11B = (uint32_t)(0X03U << (0U)),
} UART_Mode_Typedef;
# 84 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h"
typedef enum {
    UART_PinRemap_Default = (uint32_t)0x00 << (13U),
    UART_PinRemap_A = (uint32_t)(0x01 << (13U)),
} UART_PinRemap_TypeDef;
# 98 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h"
typedef enum {
    UART_IT_EN = (uint8_t)(0x1L << (0U)),
    UART_IT_TX = (uint8_t)(0x1L << (2U)),
    UART_IT_RX = (uint8_t)(0x1L << (1U)),
    UART_IT_WK = (uint8_t)(0x1L << (4U)),


    UART_IT_BK = (uint16_t)(0x1L << (8U)),
    UART_IT_SL = (uint16_t)(0x1L << (9U)),
    UART_IT_SY = (uint16_t)(0x1L << (11U)),

} UART_IT_TypeDef;
# 119 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h"
typedef enum {
    UART_Flag_RX = (uint8_t)(0x1L << (0U)),
    UART_Flag_TX = (uint8_t)(0x1L << (1U)),
    UART_Flag_WK = (uint8_t)(0x1L << (4U)),


    UART_Flag_BK = (uint16_t)(0x1L << (8U)),
    UART_Flag_SY = (uint16_t)(0x1L << (11U)),
    UART_Flag_SLVYN = (uint16_t)(0x1L << (10U)),
    UART_Flag_SLVHE = (uint16_t)(0x1L << (9U)),

} UART_FLAG_TypeDef;
# 144 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h"
typedef enum {
    UART_DMAReq_RX = (uint8_t)(0x1L << (6U)),
    UART_DMAReq_TX = (uint8_t)(0x1L << (7U)),
} UART_DMAReq_TypeDef;
# 158 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h"
typedef enum {
    UART_MASTER = (uint32_t)(0x00 << (16U) |
                             (0x01 << (8U))),
    UART_SLAVER = (uint32_t)(0x01 << (16U) |
                             (0x01 << (8U))),
} UART_LINMODE_TypeDef;
# 172 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h"
typedef enum {
    UART_BKSIZE_10 = (uint32_t)0x00 << (26U),
    UART_BKSIZE_13 = (uint32_t)(0x01 << (26U)),
} UART_BKSIZE_TypeDef;






typedef enum {
    UART_LBDL_10 = (uint32_t)0x00 << (18U),
    UART_LBDL_11 = (uint32_t)(0x01 << (18U)),
} UART_LBDL_TypeDef;
# 238 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h"
typedef struct {
    uint32_t UART_ClockFrequency;



    uint32_t UART_BaudRate;



    uint32_t UART_Mode;


} UART_InitTypeDef;
# 274 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h"
void UART_DeInit(UART_TypeDef * UARTx);
void UART_Init(UART_TypeDef * UARTx, UART_InitTypeDef * UART_InitStruct);
void UART_TXCmd(UART_TypeDef * UARTx, FunctionalState NewState);
void UART_RXCmd(UART_TypeDef * UARTx, FunctionalState NewState);


void UART_SendData(UART_TypeDef * UARTx, uint16_t Data);
uint16_t UART_ReceiveData(UART_TypeDef * UARTx);


void UART_PinRemapConfig(UART_TypeDef * UARTx, UART_PinRemap_TypeDef UART_Remap);


void UART_ITConfig(UART_TypeDef * UARTx, uint16_t UART_IT, FunctionalState NewState);
FlagStatus UART_GetFlagStatus(UART_TypeDef * UARTx, UART_FLAG_TypeDef UART_FLAG);
void UART_ClearFlag(UART_TypeDef * UARTx, uint16_t UART_FLAG);
void UART_DMACmd(UART_TypeDef * UARTx, uint16_t UART_DMAReq, FunctionalState NewState);


void UART_LIN_MODE(UART_TypeDef * UARTx, UART_LINMODE_TypeDef UART_LINMODE);
void UART_LIN_BKSIZE(UART_TypeDef * UARTx, UART_BKSIZE_TypeDef BKSIZE);
void UART_SendBreak(void);
void UART_LIN_SLVARENE(UART_TypeDef * UARTx, FunctionalState NewState);
void UART_LIN_LBDL(UART_TypeDef * UARTx, UART_LBDL_TypeDef LBDL);
uint8_t LIN_CalID(uint8_t id);
uint8_t LINCalChecksum(uint8_t id, uint8_t * data, uint8_t len);
# 27 "../hal/SC32F1X/src/sc32f1xxx_uart.c" 2
# 39 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
UART_TypeDef * Printf_Uart;
# 56 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
void UART_DeInit(UART_TypeDef * UARTx) {
    ((void)0U);

    if (UARTx == ((UART_TypeDef *)(((0x40000000UL) + 0x20000) + (0x00000020UL)))) {

        RCC_APB0PeriphResetCmd(RCC_APB0Periph_UART0, ENABLE);

        RCC_APB0PeriphResetCmd(RCC_APB0Periph_UART0, DISABLE);
    } else if (UARTx == ((UART_TypeDef *)(((0x40000000UL) + 0x20000) + (0x00000080UL)))) {

        RCC_APB0PeriphResetCmd(RCC_APB0Periph_UART1, ENABLE);

        RCC_APB0PeriphResetCmd(RCC_APB0Periph_UART1, DISABLE);
    } else if (UARTx == ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))) {

        RCC_APB1PeriphResetCmd(RCC_APB1Periph_UART2, ENABLE);

        RCC_APB1PeriphResetCmd(RCC_APB1Periph_UART2, DISABLE);
    }

    else if (UARTx == ((UART_TypeDef *)(((0x40000000UL) + 0x22000) + (0x00000020UL)))) {

        RCC_APB2PeriphResetCmd(RCC_APB2Periph_UART3, ENABLE);

        RCC_APB2PeriphResetCmd(RCC_APB2Periph_UART3, DISABLE);
    }


    if (UARTx == ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000080UL)))) {

        RCC_APB1PeriphResetCmd(RCC_APB1Periph_UART4, ENABLE);

        RCC_APB1PeriphResetCmd(RCC_APB1Periph_UART4, DISABLE);
    } else if (UARTx == ((UART_TypeDef *)(((0x40000000UL) + 0x20000) + (0x000000A0UL)))) {

        RCC_APB0PeriphResetCmd(RCC_APB0Periph_UART5, ENABLE);

        RCC_APB0PeriphResetCmd(RCC_APB0Periph_UART5, DISABLE);
    }

}
# 116 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
void UART_Init(UART_TypeDef * UARTx, UART_InitTypeDef * UART_InitStruct) {
    uint32_t tmpreg;

    ((void)0U);
    ((void)0U);

    tmpreg = UARTx->UART_CON;
    tmpreg &= (uint32_t)~((0x3L << (0U)) | (0x1L << (2U)));
    tmpreg |= (uint32_t)(UART_InitStruct->UART_Mode);
    UARTx->UART_CON = tmpreg;

    if (UART_InitStruct->UART_Mode == UART_Mode_8B) {
        ((void)0U);

        UARTx->UART_CON &= ~(uint32_t)(0x1L << (4U));
        UARTx->UART_CON |= (uint32_t)(0x1L << (4U));
    } else {
        tmpreg = (UART_InitStruct->UART_ClockFrequency / UART_InitStruct->UART_BaudRate);
        if (tmpreg > 65535) {
            UARTx->UART_CON |= (uint32_t)(0x1L << (4U));
            tmpreg = tmpreg / 16;
        }
        UARTx->UART_BAUD = tmpreg;
    }
}
# 160 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
void UART_TXCmd(UART_TypeDef * UARTx, FunctionalState NewState) {

    ((void)0U);
    ((void)0U);

    if (NewState != DISABLE) {

        UARTx->UART_CON |= (0x1L << (7U));
    } else {

        UARTx->UART_CON &= (uint16_t)~(0x1L << (7U));
    }
}
# 192 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
void UART_RXCmd(UART_TypeDef * UARTx, FunctionalState NewState) {

    ((void)0U);
    ((void)0U);

    if (NewState != DISABLE) {

        UARTx->UART_CON |= (0x1L << (6U));
    } else {

        UARTx->UART_CON &= (uint16_t)~(0x1L << (6U));
    }
}
# 237 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
void UART_SendData(UART_TypeDef * UARTx, uint16_t Data) {

    ((void)0U);


    UARTx->UART_DATA = (Data & (uint16_t)0x01FF);
}
# 260 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
uint16_t UART_ReceiveData(UART_TypeDef * UARTx) {

    ((void)0U);


    return (uint16_t)(UARTx->UART_DATA & (uint16_t)0x01FF);
}
# 301 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
void UART_PinRemapConfig(UART_TypeDef * UARTx, UART_PinRemap_TypeDef UART_Remap) {
    uint32_t tmpreg;
# 317 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
    tmpreg = UARTx->UART_CON;

    tmpreg &= (uint32_t)(~(0x3L << (13U)));

    tmpreg |= UART_Remap;

    UARTx->UART_CON = tmpreg;
# 335 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
}
# 382 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
void UART_ITConfig(UART_TypeDef * UARTx, uint16_t UART_IT, FunctionalState NewState) {

    ((void)0U);
    ((void)0U);
    ((void)0U);

    if (NewState != DISABLE) {

        UARTx->UART_IDE |= UART_IT;
    } else {

        UARTx->UART_IDE &= (uint16_t)~UART_IT;
    }
}
# 422 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
FlagStatus UART_GetFlagStatus(UART_TypeDef * UARTx, UART_FLAG_TypeDef UART_FLAG) {
    ITStatus bitstatus = RESET;

    ((void)0U);
    ((void)0U);

    if ((UARTx->UART_STS & UART_FLAG) != (uint16_t)RESET) {
        bitstatus = SET;
    } else {
        bitstatus = RESET;
    }
    return bitstatus;
}
# 465 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
void UART_ClearFlag(UART_TypeDef * UARTx, uint16_t UART_FLAG) {

    ((void)0U);


    UARTx->UART_STS = (uint16_t)UART_FLAG;
}
# 491 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
void UART_DMACmd(UART_TypeDef * UARTx, uint16_t UART_DMAReq, FunctionalState NewState) {

    ((void)0U);
    ((void)0U);
    ((void)0U);

    if (NewState != DISABLE) {


        UARTx->UART_IDE |= UART_DMAReq;
    } else {


        UARTx->UART_IDE &= (uint16_t)~UART_DMAReq;
    }
}
# 531 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
void UART_LIN_MODE(UART_TypeDef * UARTx, UART_LINMODE_TypeDef UART_LINMODE) {
    uint32_t temp;

    ((void)0U);
    ((void)0U);

    if (UARTx == ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))) {
        temp = ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))->UART_CON;
        temp &= ~((0x1L << (16U)) | (0x1L << (8U)));
        temp |= UART_LINMODE;
        ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))->UART_CON = temp;
    }
}
# 553 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
void UART_LIN_BKSIZE(UART_TypeDef * UARTx, UART_BKSIZE_TypeDef BKSIZE) {
    uint32_t temp;

    ((void)0U);
    ((void)0U);

    if (UARTx == ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))) {
        temp = ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))->UART_CON;
        temp &= ~(0x1L << (26U));
        temp |= BKSIZE;

        ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))->UART_CON = temp;
    }
}





void UART_SendBreak() {
    ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))->UART_CON |= (0x1L << (24U));
}
# 586 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
void UART_LIN_SLVARENE(UART_TypeDef * UARTx, FunctionalState NewState) {

    ((void)0U);

    if (UARTx == ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))) {
        if (NewState != DISABLE) {


            ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))->UART_CON |= (0x1L << (17U));
        } else {


            ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))->UART_CON &= (uint32_t)~(0x1L << (17U));
        }
    }
}
# 612 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
void UART_LIN_LBDL(UART_TypeDef * UARTx, UART_LBDL_TypeDef LBDL) {
    uint32_t temp;

    ((void)0U);
    ((void)0U);

    if (UARTx == ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))) {
        temp = ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))->UART_CON;
        temp &= ~(0x1L << (18U));
        temp |= LBDL;
        ((UART_TypeDef *)(((0x40000000UL) + 0x21000) + (0x00000020UL)))->UART_CON = temp;
    }
}






uint8_t LIN_CalID(uint8_t id) {
    uint8_t parity, p0, p1;

    parity = id;
    p0 = (((parity >> 0) & 0x01) ^ ((parity >> 1) & 0x01) ^ ((parity >> 2) & 0x01) ^ ((parity >> 4) & 0x01)) << 6;
    p1 = (!(((parity >> 1) & 0x01) ^ ((parity >> 3) & 0x01) ^ ((parity >> 4) & 0x01) ^ ((parity >> 5) & 0x01))) << 7;

    parity |= (p0 | p1);

    return parity;
}







uint8_t LINCalChecksum(uint8_t id, uint8_t * data, uint8_t len) {
    uint32_t sum = LIN_CalID(id);
    uint8_t i;

    for (i = 0; i < len; i++) {
        sum += data[i];
        if (sum & 0xFF00) {
            sum = (sum & 0x00FF) + 1;
        }
    }

    sum ^= 0x00FF;
    return (uint8_t)sum;
}
# 690 "../hal/SC32F1X/src/sc32f1xxx_uart.c"
__attribute__((weak)) void Printf_UartInit(UART_TypeDef * UARTx) {
    Printf_Uart = UARTx;
}



__attribute__((weak)) int fputc(int c, FILE * f) {
    UART_SendData(Printf_Uart, (uint8_t)c);
    while (!UART_GetFlagStatus(Printf_Uart, UART_Flag_TX)) {}
    UART_ClearFlag(Printf_Uart, UART_Flag_TX);
    return c;
}
