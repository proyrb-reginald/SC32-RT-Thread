# 1 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 392 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../hal/SC32F1X/src/sc32f1xxx_adc.c" 2
# 27 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h" 1
# 35 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
# 1 "../hal/SC32F1X/inc\\sc32_conf.h" 1
# 27 "../hal/SC32F1X/inc\\sc32_conf.h"
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
# 28 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h" 1
# 36 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h"
# 1 "../hal/SC32F1X/inc\\sc32.h" 1
# 37 "../hal/SC32F1X/inc\\sc32f1xxx_rcc.h" 2
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
# 29 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_gpio.h" 1
# 52 "../hal/SC32F1X/inc\\sc32f1xxx_gpio.h"
typedef enum {
    GPIO_Mode_IN_HI = 0x00,
    GPIO_Mode_IN_PU = 0x01,
    GPIO_Mode_OUT_PP = 0x02
} GPIO_Mode_TypeDef;
# 67 "../hal/SC32F1X/inc\\sc32f1xxx_gpio.h"
typedef enum {
    GPIO_DriveLevel_0 = 0x00,
    GPIO_DriveLevel_1 = 0x01,
    GPIO_DriveLevel_2 = 0x02,
    GPIO_DriveLevel_3 = 0x03
} GPIO_DriveLevel_TypeDef;
# 85 "../hal/SC32F1X/inc\\sc32f1xxx_gpio.h"
typedef enum { Bit_RESET = 0, Bit_SET } BitAction;
# 103 "../hal/SC32F1X/inc\\sc32f1xxx_gpio.h"
typedef enum {
    GPIO_Pin_0 = ((uint16_t)0x0001),
    GPIO_Pin_1 = ((uint16_t)0x0002),
    GPIO_Pin_2 = ((uint16_t)0x0004),
    GPIO_Pin_3 = ((uint16_t)0x0008),
    GPIO_Pin_4 = ((uint16_t)0x0010),
    GPIO_Pin_5 = ((uint16_t)0x0020),
    GPIO_Pin_6 = ((uint16_t)0x0040),
    GPIO_Pin_7 = ((uint16_t)0x0080),
    GPIO_Pin_8 = ((uint16_t)0x0100),
    GPIO_Pin_9 = ((uint16_t)0x0200),
    GPIO_Pin_10 = ((uint16_t)0x0400),
    GPIO_Pin_11 = ((uint16_t)0x0800),
    GPIO_Pin_12 = ((uint16_t)0x1000),
    GPIO_Pin_13 = ((uint16_t)0x2000),
    GPIO_Pin_14 = ((uint16_t)0x4000),
    GPIO_Pin_15 = ((uint16_t)0x8000),
    GPIO_PIN_LNIB = ((uint16_t)0x00FF),
    GPIO_PIN_HNIB = ((uint16_t)0xFF00),
    GPIO_PIN_All = ((uint16_t)0xFFFF),
} GPIO_Pin_TypeDef;
# 153 "../hal/SC32F1X/inc\\sc32f1xxx_gpio.h"
typedef struct {
    uint16_t GPIO_Pin;

    uint16_t GPIO_Mode;

    uint16_t
        GPIO_DriveLevel;

} GPIO_InitTypeDef;
# 177 "../hal/SC32F1X/inc\\sc32f1xxx_gpio.h"
void GPIO_DeInit(GPIO_TypeDef * GPIOx);
void GPIO_Init(GPIO_TypeDef * GPIOx, GPIO_InitTypeDef * GPIO_InitStruct);
void GPIO_SetDriveLevel(GPIO_TypeDef * GPIOx,
                        uint16_t GPIO_Pin,
                        GPIO_DriveLevel_TypeDef GPIO_DriveLevel);


uint16_t GPIO_ReadData(GPIO_TypeDef * GPIOx);
BitAction GPIO_ReadDataBit(GPIO_TypeDef * GPIOx, uint16_t GPIO_Pin);
void GPIO_SetBits(GPIO_TypeDef * GPIOx, uint16_t GPIO_Pin);
void GPIO_ResetBits(GPIO_TypeDef * GPIOx, uint16_t GPIO_Pin);
void GPIO_Write(GPIO_TypeDef * GPIOx, uint16_t PortVal);
void GPIO_WriteBit(GPIO_TypeDef * GPIOx, uint16_t GPIO_Pin, BitAction BitVal);
void GPIO_TogglePins(GPIO_TypeDef * GPIOx, uint16_t GPIO_Pin);
# 30 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_iap.h" 1
# 55 "../hal/SC32F1X/inc\\sc32f1xxx_iap.h"
typedef enum {
    IAP_ENABLE = 0x69,
    IAP_SOFTKEY1 = 0x09,
    IAP_SOFTKEY2 = 0x60,
    IAP_DISABLE = 0x00,
} IAPOPTION_FLAG;







typedef enum {
    IAP_BYTE = 0x00,
    IAP_HALFWORD = 0x01,
    IAP_WORD = 0x02,
} IAPWRITE_ALIGNTYPE;







typedef enum {
    IAP_BTLD_APPROM = (uint8_t)0x00 << (9U),
    IAP_BTLD_LDROM = (uint8_t)0x01 << (9U),
    IAP_BTLD_SRAM = (uint8_t)0x02 << (9U),
} IAP_BTLD_TypeDef;
# 107 "../hal/SC32F1X/inc\\sc32f1xxx_iap.h"
extern uint32_t IapWriteFlag;
# 123 "../hal/SC32F1X/inc\\sc32f1xxx_iap.h"
boolType IAP_Unlock(void);
void IAP_Lock(void);
void IAP_WriteCmd(FunctionalState NewState);
void IAP_EraseSector(uint32_t IAP_Sector);

void IAP_EEPROMEraseSector(uint32_t IAP_Sector);

boolType IAP_ProgramWord(uint32_t Address, uint32_t Data);
boolType IAP_ProgramHalfWord(uint32_t Address, uint16_t Data);
boolType IAP_ProgramByte(uint32_t Address, uint8_t Data);
uint32_t IAP_ReadWord(uint32_t Address);
uint16_t IAP_ReadHalfWord(uint32_t Address);
uint8_t IAP_ReadByte(uint32_t Address);
uint16_t IAP_ProgramWordArray(uint32_t Address, uint32_t * ByteArray, uint16_t ArraySize);

uint16_t IAP_ProgramHalfWordArray(uint32_t Address, uint16_t * ByteArray, uint16_t ArraySize);
uint16_t IAP_ProgramByteArray(uint32_t Address, uint8_t * ByteArray, uint16_t ArraySize);

uint16_t IAP_ReadWordArray(uint32_t Address, uint32_t * ByteArray, uint16_t ArraySize);
uint16_t IAP_ReadHalfWordArray(uint32_t Address, uint16_t * ByteArray, uint16_t ArraySize);
uint16_t IAP_ReadByteArray(uint32_t Address, uint8_t * ByteArray, uint16_t ArraySize);


void IAP_SoftwareReset(IAP_BTLD_TypeDef IAP_BTLDType);
# 31 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h" 1
# 32 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_cmp.h" 1
# 74 "../hal/SC32F1X/inc\\sc32f1xxx_cmp.h"
typedef enum {
    CMP_Positive_CMP0 =
        (uint16_t)(0x00U << (0U)),
    CMP_Positive_CMP1 =
        (uint16_t)(0x01U << (0U)),
    CMP_Positive_CMP2 =
        (uint16_t)(0x02U << (0U)),
    CMP_Positive_CMP3 =
        (uint16_t)(0x03U << (0U)),
    CMP_Positive_OP =
        (uint16_t)(0x07U << (0U)),
    CMP_Positive_1_5V =
        (uint16_t)(0x01U << (4U)),

} CMP_Positive_TypeDef;
# 189 "../hal/SC32F1X/inc\\sc32f1xxx_cmp.h"
typedef enum {

    CMP_Negative_CMPR =
        (uint16_t)(0x00U << (8U)),
    CMP_Negative_1D16VDD =
        (uint16_t)(0x01U << (8U)),
    CMP_Negative_2D16VDD =
        (uint16_t)(0x02U << (8U)),
    CMP_Negative_3D16VDD =
        (uint16_t)(0x03U << (8U)),
    CMP_Negative_4D16VDD =
        (uint16_t)(0x04U << (8U)),
    CMP_Negative_5D16VDD =
        (uint16_t)(0x05U << (8U)),
    CMP_Negative_6D16VDD =
        (uint16_t)(0x06U << (8U)),
    CMP_Negative_7D16VDD =
        (uint16_t)(0x07U << (8U)),
    CMP_Negative_8D16VDD =
        (uint16_t)(0x08U << (8U)),
    CMP_Negative_9D16VDD =
        (uint16_t)(0x09U << (8U)),
    CMP_Negative_10D16VDD =
        (uint16_t)(0x0AU << (8U)),
    CMP_Negative_11D16VDD =
        (uint16_t)(0x0BU << (8U)),
    CMP_Negative_12D16VDD =
        (uint16_t)(0x0CU << (8U)),
    CMP_Negative_13D16VDD =
        (uint16_t)(0x0DU << (8U)),
    CMP_Negative_14D16VDD =
        (uint16_t)(0x0EU << (8U)),
    CMP_Negative_15D16VDD =
        (uint16_t)(0x0FU << (8U)),
} CMP_Negative_TypeDef;
# 237 "../hal/SC32F1X/inc\\sc32f1xxx_cmp.h"
typedef enum {
    CMP_TriggerMode_Disable =
        (uint16_t)(0x00U << (5U)),
    CMP_TriggerMode_RISE =
        (uint16_t)(0x01U << (5U)),

    CMP_TriggerMode_FALL =
        (uint16_t)(0x02U << (5U)),

    CMP_TriggerMode_RISE_FALL =
        (uint16_t)(0x03U << (5U)),

} CMP_TriggerMode_TypeDef;







typedef enum {
    CMP_CMPSTA_Low =
        (uint32_t)(0x00 << (1U)),

    CMP_CMPSTA_High =
        (uint32_t)(0x01 << (1U)),

} CMP_CMPSTA_TypeDef;
# 275 "../hal/SC32F1X/inc\\sc32f1xxx_cmp.h"
typedef enum {
    CMP_FLAG_IF = (uint32_t)(0x1L << (0U)),
} CMP_FLAG_TypeDef;
# 491 "../hal/SC32F1X/inc\\sc32f1xxx_cmp.h"
typedef struct {
    uint16_t CMP_Negative;



    uint16_t CMP_Positive;



    uint16_t CMP_TriggerMode;



} CMP_InitTypeDef;
# 548 "../hal/SC32F1X/inc\\sc32f1xxx_cmp.h"
void CMP_DeInit(CMP_TypeDef * CMPx);
void CMP_Init(CMP_TypeDef * CMPx, CMP_InitTypeDef * CMP_InitStruct);
void CMP_StructInit(CMP_InitTypeDef * CMP_InitStruct);
void CMP_Cmd(CMP_TypeDef * CMPx, FunctionalState NewState);
void CMP_SetNegativeChannel(CMP_TypeDef * CMPx, CMP_Negative_TypeDef CMP_Negative_Channel);
CMP_Negative_TypeDef CMP_GetNegativeChannel(CMP_TypeDef * CMPx);
void CMP_SetPositiveChannel(CMP_TypeDef * CMPx, CMP_Positive_TypeDef CMP_Positive_Channel);
CMP_Positive_TypeDef CMP_GetPositiveChannel(CMP_TypeDef * CMPx);

CMP_CMPSTA_TypeDef CMP_GetCMPSTA(CMP_TypeDef * CMPx);
FlagStatus CMP_GetFlagStatus(CMP_TypeDef * CMPx, CMP_FLAG_TypeDef CMP_FLAG);
void CMP_ClearFlag(CMP_TypeDef * CMPx, CMP_FLAG_TypeDef CMP_FLAG);
# 33 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_option.h" 1
# 54 "../hal/SC32F1X/inc\\sc32f1xxx_option.h"
typedef enum {
    OPTION_LVR_DISABLE = (uint8_t)0x04,
    OPTION_LVR_1_9V = (uint8_t)0x00,
    OPTION_LVR_2_9V = (uint8_t)0x01,
    OPTION_LVR_3_7V = (uint8_t)0x02,
    OPTION_LVR_4_3V = (uint8_t)0x03,
} OPTION_LVR_TypeDef;
# 76 "../hal/SC32F1X/inc\\sc32f1xxx_option.h"
void OPTION_WDTCmd(FunctionalState NewState);
void OPTION_LVRConfig(OPTION_LVR_TypeDef OPTION_LVR);
void OPTION_JTAGCmd(FunctionalState NewState);
void OPTION_IAPPORA(uint16_t IAPPROAST, uint16_t IAPPROAED);
void OPTION_IAPPORB(uint16_t IAPPROBST, uint16_t IAPPROBED);
# 34 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_int.h" 1
# 46 "../hal/SC32F1X/inc\\sc32f1xxx_int.h"
typedef enum {
    INT_Channel_0 = 0x00000001U,
    INT_Channel_1 = 0x00000002U,
    INT_Channel_2 = 0x00000004U,
    INT_Channel_3 = 0x00000008U,
    INT_Channel_4 = 0x00000010U,
    INT_Channel_5 = 0x00000020U,
    INT_Channel_6 = 0x00000040U,
    INT_Channel_7 = 0x00000080U,
    INT_Channel_8 = 0x00000100U,
    INT_Channel_9 = 0x00000200U,
    INT_Channel_10 = 0x00000400U,
    INT_Channel_11 = 0x00000800U,
    INT_Channel_12 = 0x00001000U,
    INT_Channel_13 = 0x00002000U,
    INT_Channel_14 = 0x00004000U,
    INT_Channel_15 = 0x00008000U,
} INT_Channel_Typedef;
# 94 "../hal/SC32F1X/inc\\sc32f1xxx_int.h"
typedef enum {
    INT_INTSEL_PA = 0x00000000U,
    INT_INTSEL_PB = 0x00000001U,
    INT_INTSEL_PC = 0x00000002U,
    INT_INTSEL_PD = 0x00000003U,
} INT_INTSEL_Typedef;
# 112 "../hal/SC32F1X/inc\\sc32f1xxx_int.h"
typedef enum {
    INT_Trigger_Null = (uint16_t)0x00,
    INT_Trigger_Rising = (uint16_t)0x01,
    INT_Trigger_Falling = (uint16_t)0x02,
    INT_Trigger_Rising_Falling =
        (uint16_t)0x03,
} INT_Trigger_TypeDef;
# 130 "../hal/SC32F1X/inc\\sc32f1xxx_int.h"
typedef enum {
    INT_IT_Rising = (uint16_t)0x01,
    INT_IT_Falling = (uint16_t)0x02,
} INT_IT_TypeDef;
# 145 "../hal/SC32F1X/inc\\sc32f1xxx_int.h"
typedef enum {
    INT_Flag_Rising = (uint16_t)0x01,
    INT_Flag_Falling = (uint16_t)0x02,
} INT_Flag_TypeDef;
# 164 "../hal/SC32F1X/inc\\sc32f1xxx_int.h"
typedef struct {
    uint16_t INT_Channel;



    uint16_t
        INT_Trigger;


    uint16_t INT_INTSEL;


} INT_InitTypeDef;
# 192 "../hal/SC32F1X/inc\\sc32f1xxx_int.h"
void INT_DeInit(void);
void INT_Init(INT_InitTypeDef * INT_InitStruct);
void INT_TriggerMode(INT_Channel_Typedef INT_Channel, INT_Trigger_TypeDef Trigger_Mode);


void INT_ITConfig(uint16_t INT_Channel, uint16_t INT_IT, FunctionalState NewState);
FlagStatus INT_GetFlagStatus(INT_Channel_Typedef INT_Channel, INT_Flag_TypeDef INT_Flag);
void INT_ClearFlag(uint32_t INT_Channel);
# 35 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h" 1
# 38 "../hal/SC32F1X/inc\\sc32f1xxx_uart.h"
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
# 36 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_spi.h" 1
# 428 "../hal/SC32F1X/inc\\sc32f1xxx_spi.h"
typedef enum {
    SPI_Mode_Slave = (uint32_t)(0X00U << (16U)),
    SPI_Mode_Master = (uint32_t)(0X01U << (16U)),
} SPI_Mode_TypeDef;
# 441 "../hal/SC32F1X/inc\\sc32f1xxx_spi.h"
typedef enum {
    SPI_DataSize_8B = (uint32_t)(0X00U << (28U)),
    SPI_DataSize_16B = (uint32_t)(0X01U << (28U)),

    SPI_DataSize_24B = (uint32_t)(0X02U << (28U)),
    SPI_DataSize_32B = (uint32_t)(0X03U << (28U)),

} SPI_DataSize_TypeDef;
# 458 "../hal/SC32F1X/inc\\sc32f1xxx_spi.h"
typedef enum {
    SPI_FirstBit_MSB = (uint32_t)(0X00U << (18U)),
    SPI_FirstBit_LSB = (uint32_t)(0X01U << (18U)),
} SPI_FirstBit_TypeDef;
# 471 "../hal/SC32F1X/inc\\sc32f1xxx_spi.h"
typedef enum {
    SPI_CPHA_1Edge = (uint32_t)(0X00U << (19U)),

    SPI_CPHA_2Edge = (uint32_t)(0X01U << (19U)),

} SPI_CPHA_TypeDef;
# 486 "../hal/SC32F1X/inc\\sc32f1xxx_spi.h"
typedef enum {
    SPI_CPOL_Low = (uint32_t)(0X00U << (20U)),
    SPI_CPOL_High = (uint32_t)(0X01U << (20U)),

} SPI_CPOL_TypeDef;
# 500 "../hal/SC32F1X/inc\\sc32f1xxx_spi.h"
typedef enum {
    SPI_Prescaler_1 = (uint32_t)(0x00U << (8U)),
    SPI_Prescaler_2 = (uint32_t)(0x01U << (8U)),
    SPI_Prescaler_4 = (uint32_t)(0x02U << (8U)),
    SPI_Prescaler_8 = (uint32_t)(0x03U << (8U)),
    SPI_Prescaler_16 = (uint32_t)(0x04U << (8U)),
    SPI_Prescaler_32 = (uint32_t)(0x05U << (8U)),
    SPI_Prescaler_64 = (uint32_t)(0x06U << (8U)),
    SPI_Prescaler_128 = (uint32_t)(0x07U << (8U)),
    SPI_Prescaler_256 = (uint32_t)(0x08U << (8U)),
    SPI_Prescaler_512 = (uint32_t)(0x09U << (8U)),
    SPI_Prescaler_1024 = (uint32_t)(0x0AU << (8U)),
    SPI_Prescaler_2048 = (uint32_t)(0x0BU << (8U)),
    SPI_Prescaler_4096 = (uint32_t)(0x0CU << (8U)),
} SPI_Prescaler_TypeDef;
# 529 "../hal/SC32F1X/inc\\sc32f1xxx_spi.h"
typedef enum {
    SPI_PinRemap_Default = (uint32_t)(0x00 << (13U)),
    SPI_PinRemap_A = (uint32_t)(0x01 << (13U)),

    SPI_PinRemap_B = (uint32_t)(0x02 << (13U)),
    SPI_PinRemap_C = (uint32_t)(0x03 << (13U)),
} SPI_PinRemap_TypeDef;
# 548 "../hal/SC32F1X/inc\\sc32f1xxx_spi.h"
typedef enum {
    SPI_IT_INTEN = (uint32_t)(0x1 << (0U)),
    SPI_IT_RXNE = (uint32_t)(0x1 << (1U)),
    SPI_IT_TB = (uint32_t)(0x1 << (2U)),
    SPI_IT_RX = (uint32_t)(0x1 << (3U)),
    SPI_IT_RXH = (uint32_t)(0x1 << (4U)),
    SPI_IT_TXH = (uint32_t)(0x1 << (5U)),
    SPI_IT_TBIE = (uint8_t)(0x1 << (2U)),
    SPI_IT_QTWIE = (uint32_t)(0x1 << (8U)),
} SPI_IT_TypeDef;
# 569 "../hal/SC32F1X/inc\\sc32f1xxx_spi.h"
typedef enum {
    SPI_Flag_RINEIF = (uint32_t)(0x1L << (1U)),
    SPI_Flag_TXEIF = (uint32_t)(0x1L << (2U)),
    SPI_Flag_RXFIF = (uint32_t)(0x1L << (3U)),
    SPI_Flag_RXHIF = (uint32_t)(0x1L << (4U)),
    SPI_Flag_TXHIF = (uint32_t)(0x1L << (5U)),
    SPI_Flag_WCOL = (uint32_t)(0x1L << (7U)),
    SPI_FLAG_QTWIF = (uint8_t)(0x1L << (0U)),
} SPI_FLAG_TypeDef;
# 589 "../hal/SC32F1X/inc\\sc32f1xxx_spi.h"
typedef enum {
    SPI_DMAReq_RX = (uint32_t)(0x1 << (6U)),
    SPI_DMAReq_TX = (uint32_t)(0x1 << (7U)),
} SPI_DMAReq_TypeDef;
# 625 "../hal/SC32F1X/inc\\sc32f1xxx_spi.h"
typedef struct {
    uint32_t SPI_Mode;


    uint32_t SPI_DataSize;



    uint32_t SPI_CPHA;


    uint32_t SPI_CPOL;


    uint32_t SPI_FirstBit;



    uint32_t SPI_Prescaler;


} SPI_InitTypeDef;
# 660 "../hal/SC32F1X/inc\\sc32f1xxx_spi.h"
void SPI_DeInit(SPI_TypeDef * SPIx);
void SPI_StructInit(SPI_InitTypeDef * SPI_InitStruct);
void SPI_Init(SPI_TypeDef * SPIx, SPI_InitTypeDef * SPI_InitStruct);
void SPI_Cmd(SPI_TypeDef * SPIx, FunctionalState NewState);
void SPI_SetMode(SPI_TypeDef * SPIx, SPI_Mode_TypeDef SPI_Mode);
void SPI_DataSizeConfig(SPI_TypeDef * SPIx, SPI_DataSize_TypeDef SPI_DataSize);


void SPI_SendData(SPI_TypeDef * SPIx, uint32_t Data);
uint32_t SPI_ReceiveData(SPI_TypeDef * SPIx);
void SPI_SendDataFIFO(SPI_TypeDef * SPIx, uint32_t * Data, uint16_t length);
void SPI_ReceiveDataFIFO(SPI_TypeDef * SPIx, uint32_t * Data, uint16_t length);


void SPI_PinRemapConfig(SPI_TypeDef * SPIx, SPI_PinRemap_TypeDef SPI_PinRemap);


void SPI_ITConfig(SPI_TypeDef * SPIx, uint16_t SPI_IT, FunctionalState NewState);
FlagStatus SPI_GetFlagStatus(SPI_TypeDef * SPIx, SPI_FLAG_TypeDef SPI_FLAG);
void SPI_ClearFlag(SPI_TypeDef * SPIx, SPI_FLAG_TypeDef SPI_FLAG);
void SPI_DMACmd(SPI_TypeDef * SPIx, SPI_DMAReq_TypeDef SPI_DMAReq, FunctionalState NewState);
# 37 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_twi.h" 1
# 336 "../hal/SC32F1X/inc\\sc32f1xxx_twi.h"
typedef enum {
    TWI_Ack_Disable = (uint16_t)(0X00U << (1U)),
    TWI_Ack_Enable = (uint16_t)(0X01U << (1U)),
} TWI_Ack_TypeDef;
# 353 "../hal/SC32F1X/inc\\sc32f1xxx_twi.h"
typedef enum {
    TWI_Prescaler_1 =
        (uint16_t)(0x00U << (8U)),
    TWI_Prescaler_2 =
        (uint16_t)(0x01U << (8U)),
    TWI_Prescaler_4 =
        (uint16_t)(0x02U << (8U)),
    TWI_Prescaler_8 =
        (uint16_t)(0x03U << (8U)),
    TWI_Prescaler_16 =
        (uint16_t)(0x04U << (8U)),
    TWI_Prescaler_32 =
        (uint16_t)(0x05U << (8U)),
    TWI_Prescaler_64 =
        (uint16_t)(0x06U << (8U)),
    TWI_Prescaler_128 =
        (uint16_t)(0x07U << (8U)),
    TWI_Prescaler_256 =
        (uint16_t)(0x08U << (8U)),
    TWI_Prescaler_512 =
        (uint16_t)(0x09U << (8U)),
    TWI_Prescaler_1024 =
        (uint16_t)(0x0AU << (8U)),
    TWI_Prescaler_2048 =
        (uint16_t)(0x0BU << (8U)),
    TWI_Prescaler_4096 =
        (uint16_t)(0x0CU << (8U)),
} TWI_Prescaler_TypeDef;
# 398 "../hal/SC32F1X/inc\\sc32f1xxx_twi.h"
typedef enum {
    TWI_Stretch_Disable =
        0X00U << (0U),
    TWI_Stretch_Enable = 0X01U << (0U),
} TWI_Stretch_TypeDef;
# 413 "../hal/SC32F1X/inc\\sc32f1xxx_twi.h"
typedef enum {
    TWI_GeneralCall_Disable = 0X00U << (0U),
    TWI_GeneralCall_Enable = 0X01U << (0U),
} TWI_GeneralCall_TypeDef;
# 427 "../hal/SC32F1X/inc\\sc32f1xxx_twi.h"
typedef enum {
    TWI_Command_Write = (uint8_t)0X00U,
    TWI_Command_Read = (uint8_t)0X01U,
} TWI_Command_TypeDef;
# 442 "../hal/SC32F1X/inc\\sc32f1xxx_twi.h"
typedef enum {
    TWI_PinRemap_Default =
        (uint32_t)(0x00 << (13U)),
    TWI_PinRemap_A = (uint32_t)(0x01 << (13U)),
    TWI_PinRemap_B = (uint32_t)(0x02 << (13U)),
    TWI_PinRemap_C = (uint32_t)(0x03 << (13U)),
} TWI_PinRemap_TypeDef;
# 461 "../hal/SC32F1X/inc\\sc32f1xxx_twi.h"
typedef enum {
    TWI_Slave_Idle = 0x00 << (8U),
    TWI_Slave_ReceivedaAddress = 0x01 << (8U),
    TWI_Slave_ReceivedaData = 0x02 << (8U),
    TWI_Slave_SendData = 0x03 << (8U),

    TWI_Master_Idle = 0x00 << (8U),
    TWI_Master_SendAddress = 0x01 << (8U),
    TWI_Master_SendData = 0x02 << (8U),
    TWI_Master_ReceivedaData = 0x03 << (8U),
} TWI_StateMachine_TypeDef;
# 486 "../hal/SC32F1X/inc\\sc32f1xxx_twi.h"
typedef enum {
    TWI_IT_INT = (uint32_t)(0x1L << (0U)),
    TWI_IT_QTWIE = (uint32_t)(0x1 << (8U)),
} TWI_IT_TypeDef;
# 499 "../hal/SC32F1X/inc\\sc32f1xxx_twi.h"
typedef enum {
    TWI_DMAReq_RX = (uint32_t)(0x1L << (6U)),
    TWI_DMAReq_TX = (uint32_t)(0x1L << (7U)),
} TWI_DMAReq_TypeDef;
# 516 "../hal/SC32F1X/inc\\sc32f1xxx_twi.h"
typedef enum {
    TWI_FLAG_TXRXnE =
        (uint16_t)(0x1L << (12U)),
    TWI_FLAG_GCA = (uint16_t)(0x1L << (13U)),
    TWI_FLAG_QTWIF = (uint8_t)(0x1L << (0U)),

} TWI_FLAG_TypeDef;
# 563 "../hal/SC32F1X/inc\\sc32f1xxx_twi.h"
typedef struct {
    uint16_t
        TWI_Ack;


    uint16_t TWI_Prescaler;



    uint16_t TWI_Stretch;



    uint16_t TWI_GeneralCall;



    uint32_t TWI_SlaveAdress;


} TWI_InitTypeDef;
# 598 "../hal/SC32F1X/inc\\sc32f1xxx_twi.h"
void TWI_DeInit(TWI_TypeDef * TWIx);
void TWI_Init(TWI_TypeDef * TWIx, TWI_InitTypeDef * TWI_InitStruct);
void TWI_StructInit(TWI_InitTypeDef * TWI_InitStruct);
void TWI_Cmd(TWI_TypeDef * TWIx, FunctionalState NewState);
void TWI_AcknowledgeConfig(TWI_TypeDef * TWIx, FunctionalState NewState);
void TWI_GeneralCallCmd(TWI_TypeDef * TWIx, FunctionalState NewState);
void TWI_StretchClockConfig(TWI_TypeDef * TWIx, FunctionalState NewState);
void TWI_SetNbytes(TWI_TypeDef * TWIx, uint8_t Nbytes);
uint8_t TWI_GetNbytes(TWI_TypeDef * TWIx);

void TWI_GenerateSTART(TWI_TypeDef * TWIx, FunctionalState NewState);
void TWI_GenerateSTOP(TWI_TypeDef * TWIx, FunctionalState NewState);
void TWI_Send7bitAddress(TWI_TypeDef * TWIx, uint8_t Address, TWI_Command_TypeDef TWI_Command);
void TWI_SendData(TWI_TypeDef * TWIx, uint8_t Data);
uint8_t TWI_ReceiveData(TWI_TypeDef * TWIx);


void TWI_PinRemapConfig(TWI_TypeDef * TWIx, TWI_PinRemap_TypeDef TWI_Remap);


void TWI_ITConfig(TWI_TypeDef * TWIx, uint16_t TWI_IT, FunctionalState NewState);
FlagStatus TWI_GetFlagStatus(TWI_TypeDef * TWIx, TWI_FLAG_TypeDef TWI_FLAG);
TWI_StateMachine_TypeDef TWI_GetStateMachine(TWI_TypeDef * TWIx);
void TWI_ClearFlag(TWI_TypeDef * TWIx, TWI_FLAG_TypeDef TWI_FLAG);
void TWI_DMACmd(TWI_TypeDef * TWIx, TWI_DMAReq_TypeDef TWI_DMAReq, FunctionalState NewState);
# 38 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_wdt.h" 1
# 54 "../hal/SC32F1X/inc\\sc32f1xxx_wdt.h"
typedef enum {
    WDT_OverTime_500MS = (uint8_t)0x00U
                         << (0U),
    WDT_OverTime_250MS = (uint8_t)0x01U
                         << (0U),
    WDT_OverTime_125MS = (uint8_t)0x02U
                         << (0U),
    WDT_OverTime_62_5MS = (uint8_t)0x03U
                          << (0U),
    WDT_OverTime_31_5MS = (uint8_t)0x04U
                          << (0U),
    WDT_OverTime_15_75MS = (uint8_t)0x05U
                           << (0U),
    WDT_OverTime_7_88MS = (uint8_t)0x06U
                          << (0U),
    WDT_OverTime_3_94MS = (uint8_t)0x07U
                          << (0U),
} WDT_OverTime_TypeDef;
# 92 "../hal/SC32F1X/inc\\sc32f1xxx_wdt.h"
void WDT_DeInit(void);
void WDT_SetOverTime(WDT_OverTime_TypeDef WDT_OverTime);
void WDT_Cmd(FunctionalState NewState);


void WDT_SetReload(void);
# 39 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_btm.h" 1
# 54 "../hal/SC32F1X/inc\\sc32f1xxx_btm.h"
typedef enum {
    BTM_FreqSelect_15_625MS = 0x00U
                              << (0U),
    BTM_FreqSelect_31_25MS = 0x01U
                             << (0U),
    BTM_FreqSelect_62_5MS =
        0x02U << (0U),
    BTM_FreqSelect_125MS = 0x03U << (0U),
    BTM_FreqSelect_250MS = 0x04U << (0U),
    BTM_FreqSelect_500MS = 0x05U << (0U),
    BTM_FreqSelect_1S = 0x06U << (0U),
    BTM_FreqSelect_2S = 0x07U << (0U),
    BTM_FreqSelect_4S = 0x08U << (0U),
    BTM_FreqSelect_8S = 0x09U << (0U),
    BTM_FreqSelect_16S = 0x0AU << (0U),
    BTM_FreqSelect_32S = 0x0BU << (0U),
} BTM_FreqSelect_TypeDef;
# 86 "../hal/SC32F1X/inc\\sc32f1xxx_btm.h"
typedef enum {
    BTM_IT_INT = (uint32_t)(0x1L << (6U)),
} BTM_IT_TypeDef;
# 98 "../hal/SC32F1X/inc\\sc32f1xxx_btm.h"
typedef enum {
    BTM_FLAG_IF = (uint8_t)(0x1L << (0U)),
} BTM_FLAG_TypeDef;
# 125 "../hal/SC32F1X/inc\\sc32f1xxx_btm.h"
void BTM_DeInit(BTM_TypeDef * BTMx);
void BTM_FSConfig(BTM_TypeDef * BTMx, BTM_FreqSelect_TypeDef BTM_FreqSelect);
void BTM_Cmd(BTM_TypeDef * BTMx, FunctionalState NewState);


void BTM_ITConfig(BTM_TypeDef * BTMx, uint16_t BTM_IT, FunctionalState NewState);
FlagStatus BTM_GetFlagStatus(BTM_TypeDef * BTMx, BTM_FLAG_TypeDef BTM_FLAG);
void BTM_ClearFlag(BTM_TypeDef * BTMx, BTM_FLAG_TypeDef BTM_FLAG);
# 40 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_crc.h" 1
# 55 "../hal/SC32F1X/inc\\sc32f1xxx_crc.h"
typedef enum {
    DEFAULT_Polynomial_Enable =
        ((uint8_t)0x00U),
    DEFAULT_Polynomial_Disable =
        ((uint8_t)0x01U),
} DEFAULT_Polynomial_TypeDef;
# 71 "../hal/SC32F1X/inc\\sc32f1xxx_crc.h"
typedef enum {
    DEFAULT_InitValue_Enable = ((uint8_t)0x00U),
    DEFAULT_InitValue_Disable = ((uint8_t)0x01U),
} DEFAULT_InitValue_TypeDef;
# 85 "../hal/SC32F1X/inc\\sc32f1xxx_crc.h"
typedef enum {
    CRC_POLYSIZE_7B = 0x03U << (6U),
    CRC_POLYSIZE_8B = 0x02U << (6U),
    CRC_POLYSIZE_16B = 0x01U << (6U),
    CRC_POLYSIZE_32B = 0x00U << (6U),
} CRC_POLYSIZE_TypeDef;
# 103 "../hal/SC32F1X/inc\\sc32f1xxx_crc.h"
typedef enum {
    CRC_InputData_Format_BYTES = 0x00000001U,
    CRC_InputData_Format_HALFWORDS = 0x00000002U,
    CRC_InputData_Format_WORDS = 0x00000003U,
} CRC_InputData_Format_TypeDef;
# 126 "../hal/SC32F1X/inc\\sc32f1xxx_crc.h"
typedef struct {
    uint16_t
        DefaultPolynomialUse;







    uint16_t
        DefaultInitValueUse;





    uint32_t GeneratingPolynomial;






    uint32_t InitValue;


    uint32_t CRCSize;


} CRC_InitTypeDef;
# 191 "../hal/SC32F1X/inc\\sc32f1xxx_crc.h"
void CRC_DeInit(void);
void CRC_Init(CRC_InitTypeDef * CRC_InitStruct);
void CRC_PolynomialSizeSelect(CRC_POLYSIZE_TypeDef CRC_PolSize);
void CRC_SetInitRegister(uint32_t CRC_InitValue);
void CRC_SetPolynomial(uint32_t CRC_Pol);


void CRC_ResetDR(void);
uint32_t CRC_CalcCRC(uint32_t CRC_Data);
uint32_t CRC_CalcCRC16bits(uint16_t CRC_Data);
uint32_t CRC_CalcCRC8bits(uint8_t CRC_Data);
uint32_t CRC_GetCRC(void);
uint32_t CRC_Accumulate(CRC_InputData_Format_TypeDef InputDataFormat,
                        uint32_t pBuffer[],
                        uint32_t BufferLength);
uint32_t CRC_Calculate(CRC_InputData_Format_TypeDef InputDataFormat,
                       uint32_t pBuffer[],
                       uint32_t BufferLength);
# 41 "../hal/SC32F1X/inc\\sc32_conf.h" 2

# 1 "../hal/SC32F1X/inc\\sc32f1xxx_pwm.h" 1
# 54 "../hal/SC32F1X/inc\\sc32f1xxx_pwm.h"
typedef enum {
    PWM_PRESCALER_DIV1 = (uint16_t)(0x00U << (0U)),
    PWM_PRESCALER_DIV2 = (uint16_t)(0x01U << (0U)),
    PWM_PRESCALER_DIV4 = (uint16_t)(0x02U << (0U)),
    PWM_PRESCALER_DIV8 = (uint16_t)(0x03U << (0U)),
    PWM_PRESCALER_DIV16 =
        (uint16_t)(0x04U << (0U)),
    PWM_PRESCALER_DIV32 =
        (uint16_t)(0x05U << (0U)),
    PWM_PRESCALER_DIV64 =
        (uint16_t)(0x06U << (0U)),
    PWM_PRESCALER_DIV128 =
        (uint16_t)(0x07U << (0U)),
} PWM_Prescaler_TypeDef;
# 82 "../hal/SC32F1X/inc\\sc32f1xxx_pwm.h"
typedef enum {
    PWM_AlignmentMode_Edge = (uint16_t)(0x00U << (6U)),
    PWM_AlignmentMode_Center =
        (uint16_t)(0x01U << (6U)),
} PWM_AlignedMode_TypeDef;
# 97 "../hal/SC32F1X/inc\\sc32f1xxx_pwm.h"
typedef enum {
    PWM_WorkMode_Independent =
        (uint16_t)(0x00U << (5U)),
    PWM_WorkMode_Complementary =
        (uint16_t)(0x01U << (5U)),
} PWM_WorkMode_TypeDef;
# 113 "../hal/SC32F1X/inc\\sc32f1xxx_pwm.h"
typedef enum {
    PWMChannel_Less = 0x00000000UL,
    PWM_Channel_0 = (int32_t)0x00000001UL,
    PWM_Channel_1 = (int32_t)0x00000002UL,
    PWM_Channel_2 = (int32_t)0x00000004UL,
    PWM_Channel_3 = (int32_t)0x00000008UL,
    PWM_Channel_4 = (int32_t)0x00000010UL,
    PWM_Channel_5 = (int32_t)0x00000020UL,
    PWM_Channel_6 = (int32_t)0x00000040UL,
    PWM_Channel_7 = (int32_t)0x00000080UL,
    PWM_Channel_All = (int32_t)0x000000FFUL,
} PWM_Channel_Typedef;
# 134 "../hal/SC32F1X/inc\\sc32f1xxx_pwm.h"
typedef enum {
    PWM_FDMode_Latch =
        (uint16_t)(0x00U << (5U)),
    PWM_FDMode_Immediate =
        (uint16_t)(0x01U << (5U)),
} PWM_FDMode_TypeDef;
# 149 "../hal/SC32F1X/inc\\sc32f1xxx_pwm.h"
typedef enum {
    PWM_FDVoltage_Low =
        (uint16_t)(0x00U << (4U)),
    PWM_FDVoltage_High =
        (uint16_t)(0x01U << (4U)),
} PWM_FDVoltage_TypeDef;
# 165 "../hal/SC32F1X/inc\\sc32f1xxx_pwm.h"
typedef enum {
    PWM_FilteringTime_0us =
        (uint16_t)(0x00U << (0U)),

    PWM_FilteringTime_1us =
        (uint16_t)(0x01U << (0U)),

    PWM_FilteringTime_4us =
        (uint16_t)(0x02U << (0U)),

    PWM_FilteringTime_16us =
        (uint16_t)(0x03U << (0U)),

} PWM_FDFilteringTime_TypeDef;
# 190 "../hal/SC32F1X/inc\\sc32f1xxx_pwm.h"
typedef enum {
    PWM_IT_INTEN = (uint16_t)(0x1L << (8U)),
} PWM_IT_TypeDef;
# 203 "../hal/SC32F1X/inc\\sc32f1xxx_pwm.h"
typedef enum {
    PWM_Flag_PWMIF = (uint8_t)(0x1L << (0U)),
    PWM_Flag_FLTSTA = (uint8_t)(0x1L << (1U)),
} PWM_Flag_TypeDef;
# 238 "../hal/SC32F1X/inc\\sc32f1xxx_pwm.h"
typedef struct {
    uint16_t PWM_Prescaler;



    uint16_t PWM_AlignedMode;



    uint16_t PWM_WorkMode;



    uint16_t PWM_Cycle;


    uint32_t PWM_OutputChannel;



    uint32_t PWM_LowPolarityChannl;


} PWM_InitTypeDef;







typedef struct {
    uint16_t PWM_FDMode;


    uint16_t PWM_FDVoltage;


    uint16_t PWM_FDFilteringTime;


} PWM_FDInitTypeDef;
# 294 "../hal/SC32F1X/inc\\sc32f1xxx_pwm.h"
void PWM_DeInit(PWM_TypeDef * PWMx);
void PWM_StructInit(PWM_InitTypeDef * PWM_InitStruct);
void PWM_Init(PWM_TypeDef * PWMx, PWM_InitTypeDef * PWM_InitStruct);
void PWM_Cmd(PWM_TypeDef * PWMx, FunctionalState NewState);
void PWM_SetCycle(PWM_TypeDef * PWMx, uint32_t PWM_Cycle);
uint16_t PWM_GetCycle(PWM_TypeDef * PWMx);
void PWM_SetPrescaler(PWM_TypeDef * PWMx, PWM_Prescaler_TypeDef PWM_Prescaler);
PWM_Prescaler_TypeDef PWM_GetPrescaler(PWM_TypeDef * PWMx);
void PWM_SetDuty(PWM_TypeDef * PWMx, PWM_Channel_Typedef PWM_Channel, uint16_t PWM_Duty);
uint16_t PWM_GetDuty(PWM_TypeDef * PWMx, PWM_Channel_Typedef PWM_Channel);
void PWM_RisingDeadTimeConfig(PWM_TypeDef * PWMx, uint8_t PWM_RisingDeadTime);
void PWM_FallingDeadTimeConfig(PWM_TypeDef * PWMx, uint8_t PWM_FallingDeadTime);


void PWM_FDStructInit(PWM_FDInitTypeDef * PWM_FDInitStruct);
void PWM_FDInit(PWM_TypeDef * PWMx, PWM_FDInitTypeDef * PWM_FDInitStruct);
void PWM_FDCmd(PWM_TypeDef * PWMx, FunctionalState NewState);


void PWM_ITConfig(PWM_TypeDef * PWMx, uint16_t PWM_IT, FunctionalState NewState);
FlagStatus PWM_GetFlagStatus(PWM_TypeDef * PWMx, uint16_t PWM_FLAG);
void PWM_ClearFlag(PWM_TypeDef * PWMx, uint16_t PWM_FLAG);
# 43 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_ledpwm.h" 1
# 54 "../hal/SC32F1X/inc\\sc32f1xxx_ledpwm.h"
typedef enum {
    LEDPWM_PRESCALER_DIV1 =
        (uint16_t)(0x00U << (0U)),
    LEDPWM_PRESCALER_DIV2 =
        (uint16_t)(0x01U << (0U)),
    LEDPWM_PRESCALER_DIV4 =
        (uint16_t)(0x02U << (0U)),
    LEDPWM_PRESCALER_DIV8 =
        (uint16_t)(0x03U << (0U)),
    LEDPWM_PRESCALER_DIV16 =
        (uint16_t)(0x04U << (0U)),
    LEDPWM_PRESCALER_DIV32 =
        (uint16_t)(0x05U << (0U)),
    LEDPWM_PRESCALER_DIV64 =
        (uint16_t)(0x06U << (0U)),
    LEDPWM_PRESCALER_DIV128 =
        (uint16_t)(0x07U << (0U)),
    LEDPWM_PRESCALER_DIV256 =
        (uint16_t)(0x08U << (0U)),
} LEDPWM_Prescaler_TypeDef;
# 88 "../hal/SC32F1X/inc\\sc32f1xxx_ledpwm.h"
typedef enum {
    LEDPWM_AlignmentMode_Edge =
        (uint16_t)(0x00U << (6U)),
    LEDPWM_AlignmentMode_Center =
        (uint16_t)(0x01U << (6U)),
} LEDPWM_AlignedMode_TypeDef;
# 144 "../hal/SC32F1X/inc\\sc32f1xxx_ledpwm.h"
typedef enum {
    LEDPWMChannel_Less = 0x00000000UL,
    LEDPWM_Channel_0 = (int32_t)0x00000001UL,
    LEDPWM_Channel_1 = (int32_t)0x00000002UL,
    LEDPWM_Channel_2 = (int32_t)0x00000004UL,
    LEDPWM_Channel_3 = (int32_t)0x00000008UL,
    LEDPWM_Channel_4 = (int32_t)0x00000010UL,
    LEDPWM_Channel_5 = (int32_t)0x00000020UL,
    LEDPWM_Channel_6 = (int32_t)0x00000040UL,
    LEDPWM_Channel_7 = (int32_t)0x00000080UL,
    LEDPWM_Channel_8 = (int32_t)0x00000100UL,
    LEDPWM_Channel_9 = (int32_t)0x00000200UL,
    LEDPWM_Channel_10 = (int32_t)0x00000400UL,
    LEDPWM_Channel_11 = (int32_t)0x00000800UL,
    LEDPWM_Channel_12 = (int32_t)0x00001000UL,
    LEDPWM_Channel_13 = (int32_t)0x00002000UL,
    LEDPWM_Channel_14 = (int32_t)0x00004000UL,
    LEDPWM_Channel_15 = (int32_t)0x00008000UL,
    LEDPWM_Channel_16 = (int32_t)0x00010000UL,
    LEDPWM_Channel_17 = (int32_t)0x00020000UL,
    LEDPWM_Channel_18 = (int32_t)0x00040000UL,
    LEDPWM_Channel_19 = (int32_t)0x00080000UL,
    LEDPWM_Channel_20 = (int32_t)0x00100000UL,
    LEDPWM_Channel_21 = (int32_t)0x00200000UL,
    LEDPWM_Channel_22 = (int32_t)0x00400000UL,
    LEDPWM_Channel_23 = (int32_t)0x00800000UL,
    LEDPWM_Channel_24 = (int32_t)0x01000000UL,
    LEDPWM_Channel_25 = (int32_t)0x02000000UL,
    LEDPWM_Channel_26 = (int32_t)0x04000000UL,
    LEDPWM_Channel_27 = (int32_t)0x08000000UL,
    LEDPWM_Channel_28 = (int32_t)0x10000000UL,
    LEDPWM_Channel_29 = (int32_t)0x20000000UL,
    LEDPWM_Channel_30 = (int32_t)0x40000000UL,
    LEDPWM_Channel_31 = (int32_t)0x80000000UL,
    LEDPWM_Channel_0_31 = (int32_t)0xFFFFFFFFUL,
    LEDPWM_Channel_32 = (int32_t)0x80000001UL,
    LEDPWM_Channel_33 = (int32_t)0x80000002UL,
    LEDPWM_Channel_34 = (int32_t)0x80000004UL,
    LEDPWM_Channel_35 = (int32_t)0x80000008UL,
    LEDPWM_Channel_36 = (int32_t)0x80000010UL,
    LEDPWM_Channel_37 = (int32_t)0x80000020UL,
    LEDPWM_Channel_38 = (int32_t)0x80000040UL,
    LEDPWM_Channel_32_38 = (int32_t)0x8000007FUL,
} LEDPWM_Channel_Typedef;
# 198 "../hal/SC32F1X/inc\\sc32f1xxx_ledpwm.h"
typedef enum {
    LEDPWM_IT_INTEN = (uint16_t)(0x1L << (8U)),
} LEDPWM_IT_TypeDef;
# 211 "../hal/SC32F1X/inc\\sc32f1xxx_ledpwm.h"
typedef enum {
    LEDPWM_Flag_LEDPWMIF = (uint8_t)(0xFL << (0U)),
} LEDPWM_Flag_TypeDef;
# 235 "../hal/SC32F1X/inc\\sc32f1xxx_ledpwm.h"
typedef struct {
    uint16_t LEDPWM_Prescaler;



    uint16_t LEDPWM_AlignedMode;



    uint8_t LEDPWM_Cycle;


    uint64_t LEDPWM_OutputChannel;



    uint64_t LEDPWM_LowPolarityChannl;



    uint32_t LEDPWM_OutputChannel0;



    uint32_t LEDPWM_OutputChannel1;



    uint32_t LEDPWM_LowPolarityChannl0;



    uint32_t LEDPWM_LowPolarityChannl1;



} LEDPWM_InitTypeDef;
# 285 "../hal/SC32F1X/inc\\sc32f1xxx_ledpwm.h"
void LEDPWM_DeInit(void);
void LEDPWM_StructInit(LEDPWM_InitTypeDef * LEDPWM_InitStruct);
void LEDPWM_Init(LEDPWM_InitTypeDef * LEDPWM_InitStruct);
void LEDPWM_Cmd(FunctionalState NewState);
void LEDPWM_SetCycle(uint8_t LEDPWM_Cycle);
uint8_t LEDPWM_GetCycle(void);
void LEDPWM_SetPrescaler(LEDPWM_Prescaler_TypeDef LEDPWM_Prescaler);
LEDPWM_Prescaler_TypeDef LEDPWM_GetPrescaler(void);
void LEDPWM_SetDuty(LEDPWM_Channel_Typedef LEDPWM_Channel, uint8_t LEDPWM_Duty);
uint8_t LEDPWM_GetDuty(LEDPWM_Channel_Typedef LEDPWM_Channel);


void LEDPWM_ITConfig(uint16_t LEDPWM_IT, FunctionalState NewState);
FlagStatus LEDPWM_GetFlagStatus(uint16_t LEDPWM_FLAG);
void LEDPWM_ClearFlag(uint16_t LEDPWM_FLAG);
# 44 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_lcd.h" 1
# 55 "../hal/SC32F1X/inc\\sc32f1xxx_lcd.h"
typedef enum {
    LCD_FrameFre_A32Hz =
        (uint32_t)((0x00U << (8U)) |
                   (0x1L << (4U))),
    LCD_FrameFre_A64Hz =
        (uint32_t)((0x01U << (8U)) |
                   (0x1L << (4U))),
    LCD_FrameFre_A128Hz =
        (uint32_t)((0x02U << (8U)) |
                   (0x1L << (4U))),
    LCD_FrameFre_B64Hz =
        (uint32_t)(0x00U << (8U)),
    LCD_FrameFre_B128Hz =
        (uint32_t)(0x01U << (8U)),
    LCD_FrameFre_B256Hz =
        (uint32_t)(0x02U << (8U)),
    LCD_FrameFre_ACustom =
        (uint32_t)((0x1L << (15U)) |
                   (0x1L << (4U))),
    LCD_FrameFre_BCustom =
        (uint32_t)((0x1L << (15U))),
} LCD_FrameFre_TypeDef;
# 105 "../hal/SC32F1X/inc\\sc32f1xxx_lcd.h"
typedef enum {
    LCD_Duty_1_8 = (uint32_t)(0x00U << (4U)),
    LCD_Duty_1_6 = (uint32_t)(0x01U << (4U)),
    LCD_Duty_1_5 = (uint32_t)(0x02U << (4U)),
    LCD_Duty_1_4_SEG0_34COM4_7 =
        (uint32_t)(0x03U << (4U)),
    LCD_Duty_1_4_SEG4_34COM0_3 = (uint32_t)((0x03U << (4U)) |
                                            (0x1L << (7U))),
} LCD_Duty_TypeDef;
# 126 "../hal/SC32F1X/inc\\sc32f1xxx_lcd.h"
typedef enum {
    LCD_Bias_1_4 =
        (uint32_t)(0x00U << (1U)),
    LCD_Bias_1_3 =
        (uint32_t)(0x01U << (1U)),
} LCD_Bias_TypeDef;
# 141 "../hal/SC32F1X/inc\\sc32f1xxx_lcd.h"
typedef enum {
    LCD_VOIRSIF_Disable = (uint32_t)(0x00U << (3U)),
    LCD_VOIRSIF_Enable = (uint32_t)(0x01U << (3U)),
} LCD_VOIRSIF_TypeDef;
# 155 "../hal/SC32F1X/inc\\sc32f1xxx_lcd.h"
typedef enum {
    LCD_ResSel_33K =
        (uint8_t)(0x00U
                  << (3U)),
    LCD_ResSel_100K =
        (uint8_t)(0x01U
                  << (3U)),
    LCD_ResSel_300K =
        (uint8_t)(0x02U
                  << (3U)),
    LCD_ResSel_800K =
        (uint8_t)(0x03U
                  << (3U)),
} LCD_ResSel_TypeDef;
# 219 "../hal/SC32F1X/inc\\sc32f1xxx_lcd.h"
typedef enum {
    LCD_Channel_Less = (int32_t)0x00000000U,
    LCD_Channel_0 = (int32_t)0x00000001U,
    LCD_Channel_1 = (int32_t)0x00000002U,
    LCD_Channel_2 = (int32_t)0x00000004U,
    LCD_Channel_3 = (int32_t)0x00000008U,
    LCD_Channel_4 = (int32_t)0x00000010U,
    LCD_Channel_5 = (int32_t)0x00000020U,
    LCD_Channel_6 = (int32_t)0x00000040U,
    LCD_Channel_7 = (int32_t)0x00000080U,
    LCD_Channel_8 = (int32_t)0x00000100U,
    LCD_Channel_9 = (int32_t)0x00000200U,
    LCD_Channel_10 = (int32_t)0x00000400U,
    LCD_Channel_11 = (int32_t)0x00000800U,
    LCD_Channel_12 = (int32_t)0x00001000U,
    LCD_Channel_13 = (int32_t)0x00002000U,
    LCD_Channel_14 = (int32_t)0x00004000U,
    LCD_Channel_15 = (int32_t)0x00008000U,
    LCD_Channel_16 = (int32_t)0x00010000U,
    LCD_Channel_17 = (int32_t)0x00020000U,
    LCD_Channel_18 = (int32_t)0x00040000U,
    LCD_Channel_19 = (int32_t)0x00080000U,
    LCD_Channel_20 = (int32_t)0x00100000U,
    LCD_Channel_21 = (int32_t)0x00200000U,
    LCD_Channel_22 = (int32_t)0x00400000U,
    LCD_Channel_23 = (int32_t)0x00800000U,
    LCD_Channel_24 = (int32_t)0x01000000U,
    LCD_Channel_25 = (int32_t)0x02000000U,
    LCD_Channel_26 = (int32_t)0x04000000U,
    LCD_Channel_27 = (int32_t)0x08000000U,
    LCD_Channel_28 = (int32_t)0x10000000U,
    LCD_Channel_29 = (int32_t)0x20000000U,
    LCD_Channel_30 = (int32_t)0x40000000U,
    LCD_Channel_31 = (int32_t)0x80000000U,
} LCD_Channel_Typedef;
# 301 "../hal/SC32F1X/inc\\sc32f1xxx_lcd.h"
typedef enum {
    LCD_RAMRegister_0 = 0x00000000U,
    LCD_RAMRegister_1 = 0x00000001U,
    LCD_RAMRegister_2 = 0x00000002U,
    LCD_RAMRegister_3 = 0x00000003U,
    LCD_RAMRegister_4 = 0x00000004U,
    LCD_RAMRegister_5 = 0x00000005U,
    LCD_RAMRegister_6 = 0x00000006U,
    LCD_RAMRegister_7 = 0x00000007U,
    LCD_RAMRegister_8 = 0x00000008U,
    LCD_RAMRegister_9 = 0x00000009U,
    LCD_RAMRegister_10 = 0x0000000AU,
    LCD_RAMRegister_11 = 0x0000000BU,
    LCD_RAMRegister_12 = 0x0000000CU,
    LCD_RAMRegister_13 = 0x0000000DU,
    LCD_RAMRegister_14 = 0x0000000EU,
    LCD_RAMRegister_15 = 0x0000000FU,
    LCD_RAMRegister_16 = 0x00000010U,
    LCD_RAMRegister_17 = 0x00000011U,
    LCD_RAMRegister_18 = 0x00000012U,
    LCD_RAMRegister_19 = 0x00000013U,
    LCD_RAMRegister_20 = 0x00000014U,
    LCD_RAMRegister_21 = 0x00000015U,
    LCD_RAMRegister_22 = 0x00000016U,
    LCD_RAMRegister_23 = 0x00000017U,
    LCD_RAMRegister_24 = 0x00000018U,
    LCD_RAMRegister_25 = 0x00000019U,
    LCD_RAMRegister_26 = 0x0000001AU,
    LCD_RAMRegister_27 = 0x0000001BU,
    LCD_RAMRegister_28 = 0x0000001CU,
    LCD_RAMRegister_29 = 0x0000001DU,
    LCD_RAMRegister_30 = 0x0000001EU,
    LCD_RAMRegister_31 = 0x0000001FU,
    LCD_RAMRegister_32 = 0x00000020U,
    LCD_RAMRegister_33 = 0x00000021U,
    LCD_RAMRegister_34 = 0x00000022U,

} LCD_RAMRegister_Typedef;



typedef enum {
    LCD_COMEN_0 = 0x00000001U,
    LCD_COMEN_1 = 0x00000002U,
    LCD_COMEN_2 = 0x00000004U,
    LCD_COMEN_3 = 0x00000008U,
    LCD_COMEN_4 = 0x00000010U,
    LCD_COMEN_5 = 0x00000020U,
    LCD_COMEN_6 = 0x00000040U,
    LCD_COMEN_7 = 0x00000080U,
} LCD_COMEN_Typedef;
# 370 "../hal/SC32F1X/inc\\sc32f1xxx_lcd.h"
typedef struct {
    uint16_t LCD_FrameFre;



    uint16_t LCD_Duty;



    uint16_t LCD_VOIRSIF;



    uint16_t LCD_Bias;



    uint16_t LCD_ResSel;



    uint16_t LCD_Voltage;



    uint32_t LCD_ComPin;







    uint64_t LCD_SegPin;



} LCD_InitTypeDef;
# 422 "../hal/SC32F1X/inc\\sc32f1xxx_lcd.h"
void LCD_DeInit(void);
void LCD_Init(LCD_InitTypeDef * LCD_InitStruct);
void LCD_StructInit(LCD_InitTypeDef * LCD_InitStruct);
void LCD_Cmd(FunctionalState NewState);


void LCD_COMConfig(LCD_COMEN_Typedef COMSelect, FunctionalState NewState);
void LCD_SEGConfig(uint64_t SEGSelect, FunctionalState NewState);
void LCD_Write(LCD_RAMRegister_Typedef LCD_RAMRegister, uint8_t LCD_Data);
void LCD_CustomModeScan(void);
# 45 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_led.h" 1
# 55 "../hal/SC32F1X/inc\\sc32f1xxx_led.h"
typedef enum {
    LED_FrameFre_A32Hz =
        (uint32_t)((0x00U << (8U)) |
                   (0x1L << (4U))),
    LED_FrameFre_A64Hz =
        (uint32_t)((0x01U << (8U)) |
                   (0x1L << (4U))),
    LED_FrameFre_A128Hz =
        (uint32_t)((0x02U << (8U)) |
                   (0x1L << (4U))),
    LED_FrameFre_B64Hz =
        (uint32_t)(0x00U << (8U)),
    LED_FrameFre_B128Hz =
        (uint32_t)(0x01U << (8U)),
    LED_FrameFre_B256Hz =
        (uint32_t)(0x02U << (8U)),
    LED_FrameFre_ACustom =
        (uint32_t)((0x1L << (15U)) |
                   (0x1L << (4U))),
    LED_FrameFre_BCustom =
        (uint32_t)((0x1L << (15U))),
} LED_FrameFre_TypeDef;
# 105 "../hal/SC32F1X/inc\\sc32f1xxx_led.h"
typedef enum {
    LED_Duty_1_8 = (uint32_t)(0x00U << (4U)),
    LED_Duty_1_6 = (uint32_t)(0x01U << (4U)),
    LED_Duty_1_5 = (uint32_t)(0x02U << (4U)),
    LED_Duty_1_4_SEG0_34COM4_7 =
        (uint32_t)(0x03U << (4U)),
    LED_Duty_1_4_SEG4_34COM0_3 = (uint32_t)((0x03U << (4U)) |
                                            (0x1L << (7U))),
} LED_Duty_TypeDef;
# 165 "../hal/SC32F1X/inc\\sc32f1xxx_led.h"
typedef enum {
    LED_Channel_Less = (int32_t)0x00000000U,
    LED_Channel_0 = (int32_t)0x00000001U,
    LED_Channel_1 = (int32_t)0x00000002U,
    LED_Channel_2 = (int32_t)0x00000004U,
    LED_Channel_3 = (int32_t)0x00000008U,
    LED_Channel_4 = (int32_t)0x00000010U,
    LED_Channel_5 = (int32_t)0x00000020U,
    LED_Channel_6 = (int32_t)0x00000040U,
    LED_Channel_7 = (int32_t)0x00000080U,
    LED_Channel_8 = (int32_t)0x00000100U,
    LED_Channel_9 = (int32_t)0x00000200U,
    LED_Channel_10 = (int32_t)0x00000400U,
    LED_Channel_11 = (int32_t)0x00000800U,
    LED_Channel_12 = (int32_t)0x00001000U,
    LED_Channel_13 = (int32_t)0x00002000U,
    LED_Channel_14 = (int32_t)0x00004000U,
    LED_Channel_15 = (int32_t)0x00008000U,
    LED_Channel_16 = (int32_t)0x00010000U,
    LED_Channel_17 = (int32_t)0x00020000U,
    LED_Channel_18 = (int32_t)0x00040000U,
    LED_Channel_19 = (int32_t)0x00080000U,
    LED_Channel_20 = (int32_t)0x00100000U,
    LED_Channel_21 = (int32_t)0x00200000U,
    LED_Channel_22 = (int32_t)0x00400000U,
    LED_Channel_23 = (int32_t)0x00800000U,
    LED_Channel_24 = (int32_t)0x01000000U,
    LED_Channel_25 = (int32_t)0x02000000U,
    LED_Channel_26 = (int32_t)0x04000000U,
    LED_Channel_27 = (int32_t)0x08000000U,
    LED_Channel_28 = (int32_t)0x10000000U,
    LED_Channel_29 = (int32_t)0x20000000U,
    LED_Channel_30 = (int32_t)0x40000000U,
    LED_Channel_31 = (int32_t)0x80000000U,
} LED_Channel_Typedef;
# 246 "../hal/SC32F1X/inc\\sc32f1xxx_led.h"
typedef enum {
    LED_RAMRegister_0 = 0x00000000U,
    LED_RAMRegister_1 = 0x00000001U,
    LED_RAMRegister_2 = 0x00000002U,
    LED_RAMRegister_3 = 0x00000003U,
    LED_RAMRegister_4 = 0x00000004U,
    LED_RAMRegister_5 = 0x00000005U,
    LED_RAMRegister_6 = 0x00000006U,
    LED_RAMRegister_7 = 0x00000007U,
    LED_RAMRegister_8 = 0x00000008U,
    LED_RAMRegister_9 = 0x00000009U,
    LED_RAMRegister_10 = 0x0000000AU,
    LED_RAMRegister_11 = 0x0000000BU,
    LED_RAMRegister_12 = 0x0000000CU,
    LED_RAMRegister_13 = 0x0000000DU,
    LED_RAMRegister_14 = 0x0000000EU,
    LED_RAMRegister_15 = 0x0000000FU,
    LED_RAMRegister_16 = 0x00000010U,
    LED_RAMRegister_17 = 0x00000011U,
    LED_RAMRegister_18 = 0x00000012U,
    LED_RAMRegister_19 = 0x00000013U,
    LED_RAMRegister_20 = 0x00000014U,
    LED_RAMRegister_21 = 0x00000015U,
    LED_RAMRegister_22 = 0x00000016U,
    LED_RAMRegister_23 = 0x00000017U,
    LED_RAMRegister_24 = 0x00000018U,
    LED_RAMRegister_25 = 0x00000019U,
    LED_RAMRegister_26 = 0x0000001AU,
    LED_RAMRegister_27 = 0x0000001BU,
    LED_RAMRegister_28 = 0x0000001CU,
    LED_RAMRegister_29 = 0x0000001DU,
    LED_RAMRegister_30 = 0x0000001EU,
    LED_RAMRegister_31 = 0x0000001FU,
    LED_RAMRegister_32 = 0x00000020U,
    LED_RAMRegister_33 = 0x00000021U,
    LED_RAMRegister_34 = 0x00000022U,
    LED_RAMRegister_35 = 0x00000023U,

} LED_RAMRegister_Typedef;






typedef enum {
    LED_COMEN_0 = 0x00000001U,
    LED_COMEN_1 = 0x00000002U,
    LED_COMEN_2 = 0x00000004U,
    LED_COMEN_3 = 0x00000008U,
    LED_COMEN_4 = 0x00000010U,
    LED_COMEN_5 = 0x00000020U,
    LED_COMEN_6 = 0x00000040U,
    LED_COMEN_7 = 0x00000080U,
} LED_COMEN_Typedef;
# 315 "../hal/SC32F1X/inc\\sc32f1xxx_led.h"
typedef struct {
    uint16_t LED_FrameFre;



    uint16_t LED_Duty;



    uint32_t LED_ComPin;







    uint64_t LED_SegPin;



} LED_InitTypeDef;
# 351 "../hal/SC32F1X/inc\\sc32f1xxx_led.h"
void LED_DeInit(void);
void LED_Init(LED_InitTypeDef * LCD_InitStruct);
void LED_StructInit(LED_InitTypeDef * LED_InitStruct);
void LED_Cmd(FunctionalState NewState);


void LED_COMConfig(LED_COMEN_Typedef COMSelect, FunctionalState NewState);
void LED_SEGConfig(uint64_t SEGSelect, FunctionalState NewState);
void LED_Write(LED_RAMRegister_Typedef LED_RAMRegister, uint8_t LED_Data);
void LED_CustomModeScan(void);
# 46 "../hal/SC32F1X/inc\\sc32_conf.h" 2

# 1 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h" 1
# 54 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h"
typedef enum {
    TIM_PRESCALER_1 = (uint16_t)(0x00U << (8U)),
    TIM_PRESCALER_2 = (uint16_t)(0x01U << (8U)),
    TIM_PRESCALER_4 = (uint16_t)(0x02U << (8U)),
    TIM_PRESCALER_8 = (uint16_t)(0x03U << (8U)),
    TIM_PRESCALER_16 = (uint16_t)(0x04U << (8U)),
    TIM_PRESCALER_32 = (uint16_t)(0x05U << (8U)),
    TIM_PRESCALER_64 = (uint16_t)(0x06U << (8U)),
    TIM_PRESCALER_128 = (uint16_t)(0x07U << (8U)),
} TIM_Prescaler_TypeDef;
# 77 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h"
typedef enum {
    TIM_WorkMode_Timer = (uint16_t)(0x00U << (1U)),
    TIM_WorkMode_Counter = (uint16_t)(0x01U << (1U)),
} TIM_WorkMode_Typedef;
# 90 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h"
typedef enum {
    TIM_CounterMode_Up = (uint16_t)(0x00U << (6U)),
    TIM_CounterMode_Down_UP =
        (uint16_t)(0x01U << (6U)),
} TIM_CounterMode_Typedef;
# 105 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h"
typedef enum {
    TIM_EXENX_Disable = (uint16_t)(0x00U << (5U)),
    TIM_EXENX_Enable = (uint16_t)(0x01U << (5U)),
} TIM_EXENX_Typedef;
# 118 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h"
typedef enum {
    TIM_RICPin_Disable =
        (uint16_t)(0x00U << (2U)),
    TIM_RICPin_Tn =
        (uint16_t)(0x01U << (2U)),
} TIM_RICPIN_Typedef;
# 133 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h"
typedef enum {
    TIM_FICPin_Disable = (uint16_t)(0x00U),
    TIM_FICPin_Tn = (uint16_t)((0x1L << (3U))),
    TIM_FICPin_TnEx =
        (uint16_t)((0x1L << (5U)) | (0x1L << (4U))),
} TIM_FICPIN_Typedef;
# 150 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h"
typedef enum {
    TIM_PWMChannel_Less = (uint16_t)0x00,
    TIM_PWMChannel_PWMB = (uint16_t)0x01,
    TIM_PWMChannel_PWMA = (uint16_t)0x02,
    TIM_PWMChannel_ALL = (uint16_t)0x03,
} TIM_PWMChannel_Typedef;
# 166 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h"
typedef enum {
    TIM_PinRemap_Default = (uint32_t)(0x00 << (19U)),
    TIM_PinRemap_A = (uint32_t)(0x01 << (19U)),



} TIM_PinRemap_TypeDef;
# 189 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h"
typedef enum {
    TIM_IT_INTEN = (uint8_t)(0x1L << (0U)),
    TIM_IT_TI = (uint8_t)(0x1L << (1U)),
    TIM_IT_EXR = (uint8_t)(0x1L << (2U)),
    TIM_IT_EXF = (uint8_t)(0x1L << (3U)),
} TIM_IT_TypeDef;
# 204 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h"
typedef enum {
    TIM_Flag_TI = (uint8_t)0x01,
    TIM_Flag_EXR = (uint8_t)0x02,
    TIM_Flag_EXF = (uint8_t)0x04,
} TIM_Flag_TypeDef;
# 221 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h"
typedef enum {
    TIM_DMAReq_TI = (uint8_t)(0x1L << (4U)),
    TIM_DMAReq_CAPR = (uint8_t)(0x1L << (5U)),
    TIM_DMAReq_CAPF = (uint8_t)(0x1L << (6U)),
} TIM_DMAReq_TypeDef;
# 295 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h"
typedef struct {
    uint16_t TIM_Prescaler;


    uint16_t
        TIM_WorkMode;


    uint16_t
        TIM_CounterMode;


    uint16_t TIM_EXENX;


    uint16_t TIM_Preload;




} TIM_TimeBaseInitTypeDef;







typedef struct {
    uint16_t TIM_RICPIN;


    uint16_t TIM_FICPIN;


} TIM_IC_InitTypeDef;







typedef struct {
    uint16_t TIM_PWMOutputChannl;



    uint16_t TIM_PWMLowPolarityChannl;



} TIM_PWM_InitTypeDef;
# 362 "../hal/SC32F1X/inc\\sc32f1xxx_tim.h"
void TIM_DeInit(TIM_TypeDef * TIMx);
void TIM_TIMBaseInit(TIM_TypeDef * TIMx, TIM_TimeBaseInitTypeDef * TIM_TimeBaseInitStruct);
void TIM_TimeBaseStructInit(TIM_TimeBaseInitTypeDef * TIM_TimeBaseInitStruct);
void TIM_SetCounter(TIM_TypeDef * TIMx, uint32_t Counter);
uint32_t TIM_GetCounter(TIM_TypeDef * TIMx);
void TIM_SetAutoreload(TIM_TypeDef * TIMx, uint16_t Autoreload);
uint16_t TIM_GetAutoreload(TIM_TypeDef * TIMx);
void TIM_SetPerscaler(TIM_TypeDef * TIMx, TIM_Prescaler_TypeDef TIM_Perscaler);
TIM_Prescaler_TypeDef TIM_GetPrescaler(TIM_TypeDef * TIMx);
void TIM_Cmd(TIM_TypeDef * TIMx, FunctionalState NewState);


void TIM_ICInit(TIM_TypeDef * TIMx, TIM_IC_InitTypeDef * TIM_IC_InitStruct);
void TIM_ICStructInit(TIM_IC_InitTypeDef * TIM_IC_InitStruct);
void TIM_ICCmd(TIM_TypeDef * TIMx, FunctionalState NewState);
uint32_t TIM_GetRisingCapture(TIM_TypeDef * TIMx);
uint32_t TIM_GetFailingCapture(TIM_TypeDef * TIMx);


void TIM_PWMInit(TIM_TypeDef * TIMx, TIM_PWM_InitTypeDef * TIM_PWM_InitStruct);
void TIM_PWMStructInit(TIM_PWM_InitTypeDef * TIM_PWM_InitStruct);
void TIM_PWMSetDuty(TIM_TypeDef * TIMx,
                        TIM_PWMChannel_Typedef TIM_PWMChannel,
                        uint16_t PWM_DutyValue);
uint16_t TIM_PWMGetDuty(TIM_TypeDef * TIMx, TIM_PWMChannel_Typedef TIM_PWMChannel);


void TIM_ClockOutputCmd(TIM_TypeDef * TIMx, FunctionalState NewState);



void TIM_PinRemapConfig(TIM_TypeDef * TIMx, TIM_PinRemap_TypeDef TIM_Remap);


void TIM_ITConfig(TIM_TypeDef * TIMx, uint16_t TIM_IT, FunctionalState NewState);
FlagStatus TIM_GetFlagStatus(TIM_TypeDef * TIMx, TIM_Flag_TypeDef TIM_FLAG);
void TIM_ClearFlag(TIM_TypeDef * TIMx, uint16_t TIM_FLAG);
void TIM_DMACmd(TIM_TypeDef * TIMx, uint16_t TIM_DMAReq, FunctionalState NewState);
# 48 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h" 1
# 55 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
typedef enum {
    DMA_Priority_LOW = ((uint32_t)0x00U << (0U)),
    DMA_Priority_MEDIUM = ((uint32_t)0x01U << (0U)),
    DMA_Priority_HIGH = ((uint32_t)0x02U << (0U)),
    DMA_Priority_VERY_HIGH = ((uint32_t)0x03U << (0U)),
} DMA_Priority_TypeDef;
# 72 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
typedef enum {
    DMA_CircularMode_Disable = ((uint32_t)0x00U << (4U)),
    DMA_CircularMode_Enable = ((uint32_t)0x01U << (4U)),
} DMA_CircularMode_TypeDef;
# 86 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
typedef enum {
    DMA_DataSize_Byte =
        ((uint32_t)0x00U << (2U)),
    DMA_DataSize_HalfWord =
        ((uint32_t)0x01U << (2U)),
    DMA_DataSize_Word =
        ((uint32_t)0x02U << (2U)),
} DMA_DataSize_TypeDef;
# 105 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
typedef enum {
    DMA_TargetMode_FIXED =
        ((uint32_t)0x00U << (8U)),
    DMA_TargetMode_INC =
        ((uint32_t)0x01U << (8U)),
    DMA_TargetMode_DEC =
        ((uint32_t)0x02U << (8U)),
    DMA_TargetMode_INC_CIRC =
        ((uint32_t)0x03U << (8U)),
} DMA_TargetMode_TypeDef;
# 126 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
typedef enum {
    DMA_SourceMode_FIXED =
        ((uint32_t)0x00U << (10U)),
    DMA_SourceMode_INC =
        ((uint32_t)0x01U << (10U)),
    DMA_SourceMode_DEC =
        ((uint32_t)0x02U << (10U)),
    DMA_SourceMode_INC_CIRC =
        ((uint32_t)0x03U << (10U)),
} DMA_SourceMode_TypeDef;
# 147 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
typedef enum {
    DMA_Burst_Disable = ((uint16_t)0x00000000),
    DMA_Burst_1B =
        (((uint16_t)0x07U << (12U)) | (0x1L << (15U))),
    DMA_Burst_2B =
        (((uint16_t)0x06U << (12U)) | (0x1L << (15U))),
    DMA_Burst_4B =
        (((uint16_t)0x05U << (12U)) | (0x1L << (15U))),
    DMA_Burst_8B =
        (((uint16_t)0x04U << (12U)) | (0x1L << (15U))),
    DMA_Burst_16B =
        (((uint16_t)0x03U << (12U)) | (0x1L << (15U))),
    DMA_Burst_32B =
        (((uint16_t)0x02U << (12U)) | (0x1L << (15U))),
    DMA_Burst_64B =
        (((uint16_t)0x01U << (12U)) | (0x1L << (15U))),
    DMA_Burst_128B =
        (((uint16_t)0x00U << (12U)) | (0x1L << (15U))),
} DMA_Burst_TypeDef;
# 178 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
typedef enum {
    DMA_Request_Null = ((uint32_t)0x0000U << (24U)),
    DMA_Request_UART0_TX = ((uint32_t)0x0002U << (24U)),
    DMA_Request_UART0_RX = ((uint32_t)0x0003U << (24U)),
    DMA_Request_UART1_TX = ((uint32_t)0x0004U << (24U)),
    DMA_Request_UART1_RX = ((uint32_t)0x0005U << (24U)),
# 193 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
    DMA_Request_TWI_QSPI0_TX =
        ((uint32_t)0x000CU << (24U)),
    DMA_Request_TWI_QSPI0_RX =
        ((uint32_t)0x000DU << (24U)),
    DMA_Request_TWI_QSPI1_TX =
        ((uint32_t)0x000EU << (24U)),
    DMA_Request_TWI_QSPI1_RX =
        ((uint32_t)0x000FU << (24U)),
    DMA_Request_TWI_SPI2_TX =
        ((uint32_t)0x0014U << (24U)),
    DMA_Request_TWI_SPI2_RX =
        ((uint32_t)0x0015U << (24U)),

    DMA_Request_TIM1_TI = ((uint32_t)0x0021U << (24U)),
    DMA_Request_TIM1_CAPF =
        ((uint32_t)0x0022U << (24U)),
    DMA_Request_TIM1_CAPR =
        ((uint32_t)0x0023U << (24U)),
    DMA_Request_TIM2_TI = ((uint32_t)0x0024U << (24U)),
    DMA_Request_TIM2_CAPF =
        ((uint32_t)0x0025U << (24U)),
    DMA_Request_TIM2_CAPR =
        ((uint32_t)0x0026U << (24U)),
    DMA_Request_TIM6_TI = ((uint32_t)0x0030U << (24U)),
    DMA_Request_TIM6_CAPF =
        ((uint32_t)0x0031U << (24U)),
    DMA_Request_TIM6_CAPR =
        ((uint32_t)0x0032U << (24U)),
    DMA_Request_ADC = ((uint32_t)0x003BU << (24U)),

    DMA_Request_DMA0 = ((uint32_t)0x003CU << (24U)),
    DMA_Request_DMA1 = ((uint32_t)0x003DU << (24U)),
    DMA_Request_DMA2 = ((uint32_t)0x003EU << (24U)),
    DMA_Request_DMA3 = ((uint32_t)0x003FU << (24U)),




} DMA_Request_TypeDef;
# 240 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
typedef enum {
    DMA_State_IDLE = ((uint32_t)0x00U << (4U)),
    DMA_State_SOURCE = ((uint32_t)0x01U << (4U)),
    DMA_State_BUSY =
        ((uint32_t)0x02U << (4U)),

    DMA_State_DESTINATION =
        ((uint32_t)0x03U << (4U)),
    DMA_State_HANG = ((uint32_t)0x04U << (4U)),
    DMA_State_PAUSE = ((uint32_t)0x05U << (4U)),
    DMA_State_BURST = ((uint32_t)0x06U << (4U)),
    DMA_State_STOP = ((uint32_t)0x07U << (4U)),
} DMA_State_TypeDef;
# 269 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
typedef enum {
    DMA_IT_INTEN = ((uint32_t)(0x1L << (16U))),
    DMA_IT_TCIE = ((uint32_t)(0x1L << (17U))),
    DMA_IT_HTIE = ((uint32_t)(0x1L << (18U))),
    DMA_IT_TEIE = ((uint32_t)(0x1L << (19U))),
} DMA_IT_TypeDef;
# 284 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
typedef enum {
    DMA_FLAG_GIF = ((uint8_t)(0x1L << (0U))),
    DMA_FLAG_TCIF =
        ((uint8_t)(0x1L << (1U))),
    DMA_FLAG_HTIF = ((uint8_t)(0x1L << (2U))),
    DMA_FLAG_TEIF = ((uint8_t)(0x1L << (3U))),
} DMA_Flag_TypeDef;
# 304 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
typedef enum {
    DMA_DMAReq_CHRQ = (uint32_t)(0x1L << (23U)),
} DMA_DMAReq_TypeDef;
# 324 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
typedef struct {
    uint16_t DMA_Priority;



    uint16_t DMA_CircularMode;



    uint16_t DMA_DataSize;



    uint16_t DMA_TargetMode;



    uint16_t DMA_SourceMode;



    uint16_t DMA_Burst;



    uint32_t
        DMA_BufferSize;

    uint32_t DMA_Request;



    uint32_t DMA_SrcAddress;

    uint32_t DMA_DstAddress;

} DMA_InitTypeDef;
# 386 "../hal/SC32F1X/inc\\sc32f1xxx_dma.h"
void DMA_DeInit(DMA_TypeDef * DMAx);
void DMA_Init(DMA_TypeDef * DMAx, DMA_InitTypeDef * DMA_InitStruct);
void DMA_StructInit(DMA_InitTypeDef * DMA_InitStruct);
void DMA_Cmd(DMA_TypeDef * DMAx, FunctionalState NewState);
void DMA_PauseCmd(DMA_TypeDef * DMAx, FunctionalState NewState);
void DMA_CHRQCmd(DMA_TypeDef * DMAx, FunctionalState NewState);
void DMA_ChannelReset(DMA_TypeDef * DMAx);

void DMA_SetSrcAddress(DMA_TypeDef * DMAx, uint32_t SrcAddress);
void DMA_SetDstAddress(DMA_TypeDef * DMAx, uint32_t DstAddress);
void DMA_SetCurrDataCounter(DMA_TypeDef * DMAx, uint32_t Counter);
uint32_t DMA_GetCurrDataCounter(DMA_TypeDef * DMAx);
void DMA_SoftwareTrigger(DMA_TypeDef * DMAx);


DMA_State_TypeDef DMA_GetStatus(DMA_TypeDef * DMAx);
void DMA_ITConfig(DMA_TypeDef * DMAx, uint32_t DMA_IT, FunctionalState NewState);
FlagStatus DMA_GetFlagStatus(DMA_TypeDef * DMAx, DMA_Flag_TypeDef DMA_FLAG);
void DMA_ClearFlag(DMA_TypeDef * DMAx, uint32_t DMA_FLAG);
void DMA_DMACmd(DMA_TypeDef * DMAx, uint32_t DMA_DMARequest, FunctionalState NewState);
# 49 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_pwr.h" 1
# 54 "../hal/SC32F1X/inc\\sc32f1xxx_pwr.h"
typedef enum {
    PWR_IDLEEntry_WFI = ((uint8_t)0x01),
    PWR_IDLEEntry_WFE = ((uint8_t)0x02),

} PWR_IDLEEntry_TypeDef;
# 68 "../hal/SC32F1X/inc\\sc32f1xxx_pwr.h"
typedef enum {
    PWR_STOPEntry_WFI = ((uint8_t)0x01),
    PWR_STOPEntry_WFE = ((uint8_t)0x02),

} PWR_STOPEntry_TypeDef;
# 89 "../hal/SC32F1X/inc\\sc32f1xxx_pwr.h"
void PWR_EnterIDLEMode(uint8_t PWR_IDLEEntry);
void PWR_EnterSTOPMode(uint8_t PWR_STOPEntry);
# 50 "../hal/SC32F1X/inc\\sc32_conf.h" 2

# 1 "../hal/SC32F1X/inc\\sc32f1xxx_op.h" 1
# 50 "../hal/SC32F1X/inc\\sc32f1xxx_op.h"
typedef enum {
    OP_Output_OFF = (uint16_t)(0x00U << (1U)),
    OP_Output_ON = (uint16_t)(0x01U << (1U)),
} OP_Output_TypeDef;






typedef enum {
    OP_Negative_OPN = (uint16_t)(0x00U << (3U)),
    OP_Negative_PGA = (uint16_t)(0x01U << (3U)),
} OP_Negative_TypeDef;
# 75 "../hal/SC32F1X/inc\\sc32f1xxx_op.h"
typedef enum {
    OP_Posittive_OPP0 =
        (uint16_t)(0x00U << (5U)),
    OP_Posittive_OPP1 =
        (uint16_t)(0x01U << (5U)),
    OP_Posittive_VSS = (uint16_t)(0x02U << (5U)),
    OP_Posittive_1_2V = (uint16_t)(0x03U << (5U)),
    OP_Posittive_VDD = (uint16_t)(0x04U << (5U)),
} OP_Posittive_TypeDef;
# 93 "../hal/SC32F1X/inc\\sc32f1xxx_op.h"
typedef enum {
    OP_PGAGain_NonInvert8_Invert7 =
        (uint16_t)(0x00U << (8U)),
    OP_PGAGain_NonInvert16_Invert15 =
        (uint16_t)(0x01U << (8U)),
    OP_PGAGain_NonInvert32_Invert31 =
        (uint16_t)(0x02U << (8U)),
    OP_PGAGain_NonInvert64_Invert63 =
        (uint16_t)(0x03U << (8U)),

} OP_PGAGain_TypeDef;
# 113 "../hal/SC32F1X/inc\\sc32f1xxx_op.h"
typedef enum {
    OP_FDBResisrance_VSS =
        (uint16_t)(0x00U << (12U)),
    OP_FDBResisrance_OPN =
        (uint16_t)(0x01U << (12U)),
    OP_FDBResisrance_VDD =
        (uint16_t)(0x02U << (12U)),

} OP_FDBRESISTANCE_TypeDef;







typedef enum {
    OP_ShortCircuit_OFF = (uint32_t)(0x00U << (23U)),
    OP_ShortCircuit_ON = (uint32_t)(0x01U << (23U)),
} OP_ShortCircuit_TypeDef;
# 151 "../hal/SC32F1X/inc\\sc32f1xxx_op.h"
typedef struct {
    uint32_t OP_ShortCircuit;


    uint16_t OP_FDBResisrance;


    uint16_t
        OP_PGAGain;


    uint16_t OP_Posittive;


    uint16_t OP_Negative;


    uint16_t OP_Output;



} OP_InitTypeDef;
# 518 "../hal/SC32F1X/inc\\sc32f1xxx_op.h"
void OP_DeInit(OP_TypeDef * OPx);
void OP_Init(OP_TypeDef * PGAx, OP_InitTypeDef * OP_InitStruct);
void OP_Cmd(OP_TypeDef * OPx, FunctionalState NewState);


void OP_OffsetTrimConfig(OP_TypeDef * OPx, uint32_t OP_TrimValueH, uint32_t OP_TrimValueL);
void OP_GainSelection(OP_TypeDef * OPx, OP_PGAGain_TypeDef PGAGain);
void OP_OutputSelection(OP_TypeDef * OPx, OP_Output_TypeDef OPOutput);

ErrorStatus OP_OffsetSet(OP_TypeDef * OPx);
# 52 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_can.h" 1
# 51 "../hal/SC32F1X/inc\\sc32f1xxx_can.h"
typedef enum {
    CAN_Standard_format =
        (uint8_t)(0x00 << (7U)),
    CAN_Extended_format = (uint8_t)(0x01 << (7U)),
} CAN_IDEMODE_Typedef;






typedef enum {
    CAN_Data_frame = (uint8_t)(0x0L << (6U)),
    CAN_Remote_frame = (uint8_t)(0x1L << (6U)),
} CAN_RTRMODE_Typedef;





typedef enum {
    CAN_Standard_frame = (uint8_t)(0x00 << (5U)),
    CAN_FD_frame = (uint8_t)(0x01 << (5U)),
} CAN_FDFMODE_Typedef;





typedef enum {
    CAN_Disable_BRS =
        (uint8_t)(0x00 << (4U)),
    CAN_Enable_BRS =
        (uint8_t)(0x01 << (4U)),
} CAN_BRSMODE_Typedef;





typedef enum {
    CAN_TPSS_Enable =
        (uint32_t)(0x00 << (4U)),
    CAN_TPSS_Disable =
        (uint32_t)(0x01 << (4U)),
} CAN_PTB_AutoRetrans_TypeDef;






typedef enum {
    CAN_TSSS_Enable =
        (uint32_t)(0x00 << (3U)),
    CAN_TSSS_Disable =
        (uint32_t)(0x01 << (3U)),
} CAN_STB_AutoRetrans_TypeDef;






typedef enum {
    CAN_TBUFTx_PTB = (uint32_t)(0x00 << (15U)),
    CAN_TBUFTx_STB = (uint32_t)(0x01 << (15U)),
} CANTBUF_TypeDef;





typedef enum {
    CAN_STBBUF_Empty = (uint32_t)(0x00 << (16U)),
    CAN_STBBUF_LessOrEqual_4 = (uint32_t)(0x01 << (16U)),
    CAN_STBBUF_GreaterOrEqual_5 = (uint32_t)(0x02 << (16U)),
    CAN_STBBUF_Equal_8 = (uint32_t)(0x03 << (16U)),
} CAN_BUFSIZE_TypeDef;







typedef enum {
    CAN_TxDisable = (uint32_t)(0x00 << (15U)),
    CAN_TxEnable = (uint32_t)(0x01 << (15U)),
} CANTXEN_TypeDef;




typedef enum {
    CAN_RxDisable =
        (uint32_t)(0x00 << (14U)),
    CAN_RxEnable =
        (uint32_t)(0x01 << (14U)),
} CANRXEN_TypeDef;




typedef enum {
    CAN_ROM_Old = (uint32_t)(0x00 << (30U)),
    CAN_ROM_New = (uint32_t)(0x01 << (30U)),
} CANROM_TypeDef;





typedef enum {
    CAN_Fliter0 = 0x00,
    CAN_Fliter1 = 0x01,
    CAN_Fliter2 = 0x02,
    CAN_Fliter3 = 0x03,
    CAN_Fliter4 = 0x04,
    CAN_Fliter5 = 0x05,
    CAN_Fliter6 = 0x06,
    CAN_Fliter7 = 0x07,
} FliterNumber;
# 182 "../hal/SC32F1X/inc\\sc32f1xxx_can.h"
typedef enum {
    CAN_Fliter_Standard = (uint8_t)(0x00),
    CAN_Fliter_Extension =
        (uint8_t)(0x01),
    CAN_Fliter_Default = (uint8_t)(0x02),
} FliterFrame_TypeDef;







typedef enum {
    CAN_TxFIFO = (uint32_t)(0x00 << (21U)),
    CAN_IDPriority = (uint32_t)(0x01 << (21U)),
} CANTSMODE_TypeDef;





typedef enum {
    CAN_INTEN = (uint32_t)(0x01 << (0U)),
    CAN_EIEEN = (uint32_t)(0x01 << (1U)),
    CAN_TSIEEN = (uint32_t)(0x01 << (2U)),

    CAN_TPIEEN = (uint32_t)(0x01 << (3U)),

    CAN_RAFIEEN = (uint32_t)(0x01 << (4U)),

    CAN_RFIEEN =
        (uint32_t)(0x01 << (5U)),
    CAN_ROIEEN =
        (uint32_t)(0x01 << (6U)),
    CAN_RIEEN =
        (uint32_t)(0x01 << (7U)),
    CAN_BEIEEN = (uint32_t)(0x01 << (17U)),
    CAN_ALIEEN = (uint32_t)(0x01 << (19U)),

    CAN_EPIEEN = (uint32_t)(0x01 << (21U)),
} CAN_INT_TypeDef;
# 233 "../hal/SC32F1X/inc\\sc32f1xxx_can.h"
typedef enum {
    CAN_FlAG_TSFF = (uint32_t)(0x01 << (0U)),
    CAN_FlAG_AIF = (uint32_t)(0x01 << (8U)),
    CAN_FlAG_EIF = (uint32_t)(0x01 << (9U)),
    CAN_FlAG_TSIF = (uint32_t)(0x01 << (10U)),
    CAN_FlAG_TPIF = (uint32_t)(0x01 << (11U)),
    CAN_FlAG_RAFIF = (uint32_t)(0x01 << (12U)),
    CAN_FlAG_RFIF = (uint32_t)(0x01 << (13U)),
    CAN_FlAG_ROIF = (uint32_t)(0x01 << (14U)),
    CAN_FlAG_RIF = (uint32_t)(0x01 << (15U)),
    CAN_FlAG_BEIF = (uint32_t)(0x01 << (16U)),
    CAN_FlAG_ALIF = (uint32_t)(0x01 << (18U)),
    CAN_FlAG_EPIF = (uint32_t)(0x01 << (20U)),
    CAN_FlAG_EPASS = (uint32_t)(0x01 << (22U)),
    CAN_FlAG_EWARN = (uint32_t)(0x01 << (23U)),
} CAN_FLAG_TypeDef;
# 260 "../hal/SC32F1X/inc\\sc32f1xxx_can.h"
typedef enum {
    CAN_TimeStampDisable =
        (uint32_t)(0x00 << (8U)),
    CAN_TimeStampEnable =
        (uint32_t)(0x01 << (8U)),
} CANTimeStamp_TypeDef;





typedef enum {
    CAN_TimeStampCntDisable =
        (uint16_t)(0x00 << (11U)),
    CAN_TimeStampCntEnable =
        (uint16_t)(0x01 << (11U)),
} CANTimeStampCnt_TypeDef;






typedef enum {
    CAN_TimeStampPosition_SOF =
        (uint16_t)(0x00 << (9U)),

    CAN_TimeStampPosition_EOF =
        (uint16_t)(0x01 << (9U)),

} CANTimeStampPosition_TypeDef;







typedef enum {
    CAN_DLC_0 = 0x00,
    CAN_DLC_1 = 0x01,
    CAN_DLC_2 = 0x02,
    CAN_DLC_3 = 0x03,
    CAN_DLC_4 = 0x04,
    CAN_DLC_5 = 0x05,
    CAN_DLC_6 = 0x06,
    CAN_DLC_7 = 0x07,
    CAN_DLC_8 = 0x08,
    CAN_DLC_12 = 0x09,
    CAN_DLC_16 = 0x0A,
    CAN_DLC_20 = 0x0B,
    CAN_DLC_24 = 0x0C,
    CAN_DLC_32 = 0x0D,
    CAN_DLC_48 = 0x0E,
    CAN_DLC_64 = 0x0F,
} CAN_DLC;



typedef enum {
    CAN_TransMod_TPE = (uint16_t)(0x01 << (12U)),
    CAN_TransMod_TSONE = (uint16_t)(0x01 << (10U)),
    CAN_TransMod_TSALL = (uint16_t)(0x01 << (9U)),
} CAN_TransMod_TypeDef;






typedef enum {
    CAN_BOSCH = (uint32_t)(0x00 << (23U)),
    CAN_ISO = (uint32_t)(0x01 << (23U)),
} CANFD_ISO_MODE_TypeDef;




typedef enum {
    CAN_Baudrate_125kHz = 125000,
    CAN_Baudrate_250kHz = 250000,
    CAN_Baudrate_500kHz = 500000,
    CAN_Baudrate_800kHz = 800000,
    CAN_Baudrate_1000kHz = 1000000,
} CAN_BaudRate;




typedef enum {
    CAN_Normal = 0,
    CAN_Listenonly,
    CAN_StandBy,
    CAN_LoopBack,
    CAN_LoopBackIn,
    CAN_LoopBackSack,
} ModSelect_TypeDef;




typedef enum {
    CAN_NoError = 0,
    CAN_BitError,
    CAN_FormatError,
    CAN_FillError,
    CAN_AckError,
    CAN_CrcError,
    CAN_OtherError,
    CAN_NoUpdata,
} CANErrorInfo_TypeDef;
# 382 "../hal/SC32F1X/inc\\sc32f1xxx_can.h"
typedef struct {
    uint32_t CAN_TXID;
    uint32_t Tx_msg[16];
    uint16_t Data_len;
    uint8_t CAN_RTR;
    uint8_t CAN_FDF;
    uint8_t CAN_BRS;
    uint8_t CAN_IDE;
    uint8_t Tx_msg_len;
} CanTxMsg;




typedef struct {
    uint32_t CAN_RXID;
    uint32_t Rx_msg[16];
    uint16_t Data_len;
    uint8_t CAN_ESI;
    uint8_t CAN_KOER;
    uint8_t CAN_TX;
    uint8_t CAN_IDE;
    uint8_t CAN_RTR;
    uint8_t CAN_FDF;
    uint8_t CAN_BRS;
} CanRxMsg;




typedef struct {
    uint32_t S_SJW;

    uint32_t S_SEG1;

    uint32_t S_SEG2;

    uint32_t S_PRESCALER;

    uint32_t F_SJW;

    uint32_t F_SEG1;

    uint32_t F_SEG2;

    uint32_t F_PRESCALER;

    uint32_t
        CANFDFrame;


    uint32_t
        CANROMSelect;

    uint32_t
        CAN_MOD;


    uint32_t CANTSMODESelect;



    uint32_t CANFDISOSelect;



    uint16_t CANTimeStampPositon;



    uint16_t
        CANTBUFSelect;


    FunctionalState
        CANTXEN;


    FunctionalState
        CANRXEN;


    FunctionalState
        CANTimeStampEN;


    FunctionalState
        CANTimeStampCntEN;


    FunctionalState
        CAN_PTB_AutoRetrans;


    FunctionalState
        CAN_STB_AutoRetrans;


} CAN_InitTypeDef;




typedef struct {
    uint32_t Acode;
    uint32_t Amask;
    uint8_t CAN_Fliter;
    uint8_t CANFliterFrame;
} CAN_FliterTypeDef;
# 558 "../hal/SC32F1X/inc\\sc32f1xxx_can.h"
void CAN_DeInit(CAN_TypeDef * CANx);
void CAN_Init(CAN_TypeDef * CANx, CAN_InitTypeDef * CAN_InitStruct);
void CAN_StructInit(CAN_InitTypeDef * CAN_InitStruct);
void CAN_TBUFSelect(CAN_TypeDef * CANx, CANTBUF_TypeDef CANTBUF);
ErrorStatus CAN_FBaudRate_Select(CAN_TypeDef * CANx,
                                 uint32_t CAN_Clk,
                                 uint32_t CAN_FPrescaler,
                                 uint32_t BaudRate);
ErrorStatus CAN_SBaudRate_Select(CAN_TypeDef * CANx,
                                 uint32_t CAN_Clk,
                                 uint32_t CAN_FPrescaler,
                                 uint32_t BaudRate);
void CAN_FDMODECmd(CAN_TypeDef * CANx, FunctionalState NewState);
void CAN_Trans_Select(CAN_TypeDef * CANx, CAN_TransMod_TypeDef TransModSelect);
void CAN_RxThresholdConfig(CAN_TypeDef * CANx, int Rth);
void CAN_RxDataALLStorageMode(CAN_TypeDef * CANx, FunctionalState NewState);
void CAN_PTBAutoRetransMode(CAN_TypeDef * CANx, FunctionalState NewState);
void CAN_STBAutoRetransMode(CAN_TypeDef * CANx, FunctionalState NewState);
void CAN_FliterInit(CAN_TypeDef * CANx, CAN_FliterTypeDef * CAN_FliterStruct);
void CAN_ModeSelect(CAN_TypeDef * CANx, ModSelect_TypeDef CAN_MOD);

void CAN_Trans_Init(CAN_TypeDef * CANx, CanTxMsg * CAN_Tx_msg);
void CAN_TxDCompensateCmd(CAN_TypeDef * CANx, FunctionalState NewState);
void CAN_TransStop(CAN_TypeDef * CANx);
void CAN_PTBTransStop(CAN_TypeDef * CANx);
uint32_t CAN_ReadBuffDataSize(CAN_TypeDef * CANx);
void CAN_RecieveConfig(CAN_TypeDef * CANx, CanRxMsg * RxMessage);
uint8_t CAN_ReadErrorCode(CAN_TypeDef * CANx);
uint8_t CAN_ReadALC(CAN_TypeDef * CANx);

void CAN_ITConfig(CAN_TypeDef * CANx, uint32_t CAN_IT, FunctionalState NewState);
FlagStatus CAN_GetFlagStatus(CAN_TypeDef * CANx, uint32_t CAN_Flag);
void CAN_ClearFlag(CAN_TypeDef * CANx, uint32_t CAN_Flag);
FlagStatus CAN_GetRACTIVE(CAN_TypeDef * CANx);
FlagStatus CAN_GetTACTIVE(CAN_TypeDef * CANx);

void CAN_ErrorThresholdconfig(CAN_TypeDef * CANx, uint8_t Errorcnt);
uint8_t CAN_GetTECNT(CAN_TypeDef * CANx);
uint8_t CAN_GetRECNT(CAN_TypeDef * CANx);
void CAN_ResetCmd(CAN_TypeDef * CANx, FunctionalState NewState);

void CAN_TIMEPOSConfig(CAN_TypeDef * CANx, CANTimeStampPosition_TypeDef CANTimeStampPosition);
void CAN_TIMEENCmd(CAN_TypeDef * CANx, FunctionalState NewState);
void CAN_TIMECounterCmd(CAN_TypeDef * CANx, FunctionalState NewState);
# 53 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 1 "../hal/SC32F1X/inc\\sc32f1xxx_qspi.h" 1
# 42 "../hal/SC32F1X/inc\\sc32f1xxx_qspi.h"
typedef enum {
    QSPI_SShift_OFF =
        (uint32_t)(0x00U << (27U)),
    QSPI_SShift_HalfClock =
        (uint32_t)(0x01U << (27U)),

} QSPI_SShift_TypeDef;
# 57 "../hal/SC32F1X/inc\\sc32f1xxx_qspi.h"
typedef enum {
    QSPI_Prescaler_1 =
        0x00U << (8U),
    QSPI_Prescaler_2 =
        0x01U << (8U),
    QSPI_Prescaler_4 =
        0x02U << (8U),
    QSPI_Prescaler_8 =
        0x03U << (8U),
    QSPI_Prescaler_16 =
        0x04U << (8U),
    QSPI_Prescaler_32 =
        0x05U << (8U),
    QSPI_Prescaler_64 =
        0x06U << (8U),
    QSPI_Prescaler_128 =
        0x07U << (8U),
    QSPI_Prescaler_256 =
        0x08U << (8U),
    QSPI_Prescaler_512 =
        0x09U << (8U),
    QSPI_Prescaler_1024 =
        0x0AU << (8U),
    QSPI_Prescaler_2048 =
        (uint16_t)(0x0BU << (8U)),

    QSPI_Prescaler_4096 =
        (uint16_t)(0x0CU << (8U)),

} QSPI_Prescaler_TypeDef;
# 105 "../hal/SC32F1X/inc\\sc32f1xxx_qspi.h"
typedef enum {
    QSPI_DWidth_8bit =
        (uint32_t)(0x00U << (28U)),

    QSPI_DWidth_16bit =
        (uint32_t)(0x01U << (28U)),

    QSPI_DWidth_24bit =
        (uint32_t)(0x02U << (28U)),

    QSPI_DWidth_32bit =
        (uint32_t)(0x03U << (28U)),

} QSPI_DWidth_TypeDef;
# 128 "../hal/SC32F1X/inc\\sc32f1xxx_qspi.h"
typedef enum {
    QSPI_LMode_0Line =
        (uint32_t)(0x00U
                   << (30UL)),
    QSPI_LMode_1Line =
        (uint32_t)(0x01U
                   << (30UL)),
    QSPI_LMode_2Line =
        (int32_t)(0x02UL
                  << (30UL)),
    QSPI_LMode_4Line =
        (int32_t)(0x03UL
                  << (30UL)),
} QSPI_LMode_TypeDef;
# 151 "../hal/SC32F1X/inc\\sc32f1xxx_qspi.h"
typedef enum {
    QSPI_Mode_SPI =
        (uint32_t)(0x01U << (22U)),
    QSPI_Mode_QSPI =
        (uint32_t)(0x02U << (22U)),
    QSPI_Mode_QSPISTRT =
        (uint32_t)((0x03U << (22U)) | (0x1L << (25U)) |
                   (0x1L << (24U))),
    QSPI_Mode_QSPISTRR =
        (uint32_t)((0x03U << (22U)) | (0x1L << (26U)) |
                   (0x1L << (24U))),
} QSPI_Mode_TypeDef;
# 172 "../hal/SC32F1X/inc\\sc32f1xxx_qspi.h"
typedef enum {
    QSPI_CPMode_Low =
        (uint32_t)((0x00U << (20U)) |
                   (0x00U
                    << (19U))),


    QSPI_CPMode_High =
        (uint32_t)((0x01U << (20U)) |
                   (0x01U
                    << (19U))),


} QSPI_CPMode_TypeDef;
# 195 "../hal/SC32F1X/inc\\sc32f1xxx_qspi.h"
typedef enum {
    QSPI_RW_Write = (uint32_t)((
        0x00U << (21U))),
    QSPI_RW_Read = (uint32_t)((
        0x01U << (21U))),

} QSPI_RW_TypeDef;







typedef enum {
    QSPI_CLKONLY_OFF = (uint32_t)((
        0x00U << (17U))),
    QSPI_CLKONLY_ON = (uint32_t)((
        0x01U << (17U))),

} QSPI_CLKONLY_TypeDef;
# 224 "../hal/SC32F1X/inc\\sc32f1xxx_qspi.h"
typedef enum {
    QSPI_IT_INTEN = (uint32_t)
        (0x1 << (0U)),
    QSPI_IT_RXNE =
        (uint32_t)(0x1 << (1U)),

    QSPI_IT_TB = (uint32_t)(0x1 << (2U)),

    QSPI_IT_RX = (uint32_t)(0x1 << (3U)),

    QSPI_IT_RXH = (uint32_t)(0x1 << (4U)),

    QSPI_IT_TXH = (uint32_t)(0x1 << (5U)),

    QSPI_IT_QTWIE = (uint32_t)
        (0x1 << (8U)),
} QSPI_IT_TypeDef;
# 252 "../hal/SC32F1X/inc\\sc32f1xxx_qspi.h"
typedef enum {
    QSPI_Flag_RINEIF = (uint32_t)
        (0x1L << (1U)),
    QSPI_Flag_TXEIF =
        (uint32_t)(0x1L << (2U)),
    QSPI_Flag_RXFIF = (uint32_t)
        (0x1L << (3U)),
    QSPI_Flag_RXHIF = (uint32_t)
        (0x1L << (4U)),
    QSPI_Flag_TXHIF = (uint32_t)
        (0x1L << (5U)),
    QSPI_Flag_DLUFIF = (uint32_t)(0x1L << (6U)),
    QSPI_Flag_WCOL =
        (uint32_t)(0x1L << (7U)),
    QSPI_FLAG_QTWIF =
        (uint8_t)(0x1L << (0U)),
    QSPI_Flag_BUSY = (uint32_t)(0x1L << (15U)),
} QSPI_FLAG_TypeDef;
# 282 "../hal/SC32F1X/inc\\sc32f1xxx_qspi.h"
typedef enum {
    QSPI_DMAReq_RX =
        (uint32_t)(0x1 << (6U)),
    QSPI_DMAReq_TX =
        (uint32_t)(0x1 << (7U)),
} QSPI_DMAReq_TypeDef;
# 301 "../hal/SC32F1X/inc\\sc32f1xxx_qspi.h"
typedef struct {
    uint32_t QSPI_SShift;


    uint32_t QSPI_Prescaler;


    uint32_t QSPI_DWidth;


    int32_t QSP_LMode;


    uint32_t QSPI_Mode;



    uint32_t QSPI_CPMode;


    uint32_t QSPI_RW;


    uint32_t QSPI_CLKONLY;



} QSPI_InitTypeDef;






void QSPI_DeInit(QSPI_TypeDef *QSPIx);
void QSPI_StructInit(QSPI_InitTypeDef *QSPI_InitStruct);
void QSPI_Init(QSPI_TypeDef *QSPIx, QSPI_InitTypeDef *QSPI_InitStruct);
void QSPI_Cmd(QSPI_TypeDef *QSPIx, FunctionalState NewState);


void QSPI_SetDataLength(QSPI_TypeDef *QSPIx, QSPI_DWidth_TypeDef QSPI_DWidth);
void QSPI_LModeSelect(QSPI_TypeDef *QSPIx, QSPI_LMode_TypeDef QSPI_LMode);
void QSPI_ModeSelect(QSPI_TypeDef *QSPIx, QSPI_Mode_TypeDef QSPI_Mode);
void QSPI_SetDataLength(QSPI_TypeDef *QSPIx, QSPI_DWidth_TypeDef QSPI_DWidth);
void QSPI_Write_ComSet(QSPI_TypeDef *QSPIx,
                       QSPI_LMode_TypeDef LMODE,
                       QSPI_DWidth_TypeDef DWIDTH,
                       QSPI_CLKONLY_TypeDef CLKONLY);
void QSPI_SendData8(QSPI_TypeDef *QSPIx, uint8_t Data);
void QSPI_SendData16(QSPI_TypeDef *QSPIx, uint16_t Data);
void QSPI_SendData32(QSPI_TypeDef *QSPIx, uint32_t Data);
void QSPI_SendDataFIFO(QSPI_TypeDef *QSPIx, uint32_t *Data, uint16_t length);
void QSPI_SendMultipleData(QSPI_TypeDef *QSPIx,
                           uint32_t *buf,
                           uint32_t length);
void QSPI_Read_ComSet(QSPI_TypeDef *QSPIx,
                      int32_t LMODE,
                      uint32_t DWIDTH,
                      uint32_t length);
void QSPI_CLKONLYSet(QSPI_TypeDef *QSPIx, uint32_t CLKONLY);
uint8_t QSPI_ReceiveData8(QSPI_TypeDef *QSPIx);
uint16_t QSPI_ReceiveData16(QSPI_TypeDef *QSPIx);
uint32_t QSPI_ReceiveData32(QSPI_TypeDef *QSPIx);
void QSPI_Receivelen(QSPI_TypeDef *QSPIx, uint32_t datalen);
void QSPI_ReceiveDataFIFO(QSPI_TypeDef *QSPIx,
                          uint32_t *Data,
                          uint16_t length);
void QSPI_ReceiveMultipleData(QSPI_TypeDef *QSPIx,
                              uint32_t *buf,
                              uint32_t length);


void QSPI_ITConfig(QSPI_TypeDef *QSPIx,
                   uint32_t QSPI_IT,
                   FunctionalState NewState);
FlagStatus QSPI_GetFlagStatus(QSPI_TypeDef *QSPIx,
                              QSPI_FLAG_TypeDef QSPI_FLAG);
void QSPI_ClearFlag(QSPI_TypeDef *QSPIx, uint32_t QSPI_FLAG);
void QSPI_DMACmd(QSPI_TypeDef *QSPIx,
                 QSPI_DMAReq_TypeDef QSPI_DMAReq,
                 FunctionalState NewState);
# 54 "../hal/SC32F1X/inc\\sc32_conf.h" 2
# 36 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h" 2
# 55 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
typedef enum {
    ADC_ConvMode_Single = (uint16_t)(0x00 << (11U)),


    ADC_ConvMode_Continuous =
        (uint16_t)(0x01 << (11U)),



} ADC_ConvMode_TypeDef;
# 75 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
typedef enum {


    ADC_Prescaler_3CLOCK =
        (uint32_t)(0x04 << (16U)),
    ADC_Prescaler_6CLOCK =
        (uint32_t)(0x05 << (16U)),
    ADC_Prescaler_16CLOCK =
        (uint32_t)(0x06 << (16U)),
    ADC_Prescaler_32CLOCK =
        (uint32_t)(0x07 << (16U)),
# 104 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
} ADC_Prescaler_TypeDef;
# 125 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
typedef enum {
    ADC_Channel_0 = (uint16_t)0x00,
    ADC_Channel_1 = (uint16_t)0x01,
    ADC_Channel_2 = (uint16_t)0x02,
    ADC_Channel_3 = (uint16_t)0x03,
    ADC_Channel_4 = (uint16_t)0x04,

    ADC_Channel_5 = (uint16_t)0x05,
    ADC_Channel_6 = (uint16_t)0x06,

    ADC_Channel_7 = (uint16_t)0x07,
    ADC_Channel_8 = (uint16_t)0x08,
    ADC_Channel_9 = (uint16_t)0x09,
    ADC_Channel_10 = (uint16_t)0x0A,
    ADC_Channel_11 = (uint16_t)0x0B,
    ADC_Channel_12 = (uint16_t)0x0C,
    ADC_Channel_13 = (uint16_t)0x0D,

    ADC_Channel_14 = (uint16_t)0x0E,

    ADC_Channel_15 = (uint16_t)0x0F,





    ADC_Channel_16 = (uint16_t)0x10,
    ADC_Channel_17 = (uint16_t)0x11,
    ADC_Channel_OP = (uint16_t)0x1E,
    ADC_Channel_VDD_D4 = (uint16_t)0x1F,
# 165 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
} ADC_ChannelTypedef;
# 227 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
typedef enum {
    ADC_Thresholds_Channel_Less = (uint32_t)0x00000000,
    ADC_Thresholds_Channel_0 = (uint32_t)0x00000001,
    ADC_Thresholds_Channel_1 = (uint32_t)0x00000002,
    ADC_Thresholds_Channel_2 = (uint32_t)0x00000004,
    ADC_Thresholds_Channel_3 = (uint32_t)0x00000008,
    ADC_Thresholds_Channel_4 = (uint32_t)0x00000010,
    ADC_Thresholds_Channel_5 = (uint32_t)0x00000020,
    ADC_Thresholds_Channel_6 = (uint32_t)0x00000040,
    ADC_Thresholds_Channel_7 = (uint32_t)0x00000080,
    ADC_Thresholds_Channel_8 = (uint32_t)0x00000100,
    ADC_Thresholds_Channel_9 = (uint32_t)0x00000200,
    ADC_Thresholds_Channel_10 = (uint32_t)0x00000400,
    ADC_Thresholds_Channel_11 = (uint32_t)0x00000800,
    ADC_Thresholds_Channel_12 = (uint32_t)0x00001000,
    ADC_Thresholds_Channel_13 = (uint32_t)0x00002000,
    ADC_Thresholds_Channel_14 = (uint32_t)0x00004000,
    ADC_Thresholds_Channel_15 = (uint32_t)0x00008000,
    ADC_Thresholds_Channel_All = (uint32_t)0x0000FFFF,
} ADC_Thresholds_Channel_Typedef;





typedef enum {
    ADC_SQGroup_0 = (uint32_t)0x0000,
} ADC_SQGroup_Typedef;
# 264 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
typedef enum {
    ADC_SQRank_0 = (uint32_t)0x0000,
    ADC_SQRank_1 = (uint32_t)0x0001,
    ADC_SQRank_2 = (uint32_t)0x0002,
    ADC_SQRank_3 = (uint32_t)0x0003,
    ADC_SQRank_4 = (uint32_t)0x0004,
    ADC_SQRank_5 = (uint32_t)0x0005,
    ADC_SQRank_6 = (uint32_t)0x0006,
    ADC_SQRank_7 = (uint32_t)0x0007,
    ADC_SQRank_8 = (uint32_t)0x0008,
    ADC_SQRank_9 = (uint32_t)0x0009,
    ADC_SQRank_10 = (uint32_t)0x000A,
    ADC_SQRank_11 = (uint32_t)0x000B,
    ADC_SQRank_12 = (uint32_t)0x000C,
    ADC_SQRank_13 = (uint32_t)0x000D,
    ADC_SQRank_14 = (uint32_t)0x000E,
    ADC_SQRank_15 = (uint32_t)0x000F,
} ADC_SQRank_Typedef;
# 292 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
typedef enum {
    ADC_EAIN_Less = (uint32_t)0x00000000,
    ADC_EAIN_0 = (uint32_t)0x00000001,
    ADC_EAIN_1 = (uint32_t)0x00000002,
    ADC_EAIN_2 = (uint32_t)0x00000004,
    ADC_EAIN_3 = (uint32_t)0x00000008,
    ADC_EAIN_4 = (uint32_t)0x00000010,
    ADC_EAIN_5 = (uint32_t)0x00000020,
    ADC_EAIN_6 = (uint32_t)0x00000040,
    ADC_EAIN_7 = (uint32_t)0x00000080,
    ADC_EAIN_8 = (uint32_t)0x00000100,
    ADC_EAIN_9 = (uint32_t)0x00000200,
    ADC_EAIN_10 = (uint32_t)0x0000400,
    ADC_EAIN_11 = (uint32_t)0x0000800,
    ADC_EAIN_12 = (uint32_t)0x00001000,
    ADC_EAIN_13 = (uint32_t)0x00002000,
    ADC_EAIN_14 = (uint32_t)0x00004000,
    ADC_EAIN_15 = (uint32_t)0x00008000,




    ADC_EAIN_16 = (uint32_t)0x00010000,
    ADC_EAIN_17 = (uint32_t)0x00020000,
    ADC_EAIN_All = (uint32_t)0x0003FFFF,




} ADC_EAIN_Typedef;
# 331 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
typedef enum {


    ADC_VREF_VDD = (uint32_t)(0x00 << (20U)),
    ADC_VREF_2_048V = (uint32_t)(0x01 << (20U)),
    ADC_VREF_1_024V = (uint32_t)(0x02 << (20U)),
    ADC_VREF_2_4V = (uint32_t)(0x03 << (20U))





} ADC_VREF_TypeDef;
# 359 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
typedef enum {


    ADC_IT_ADCIF = (uint16_t)(0x1UL << (8U)),
# 372 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
} ADC_IT_TypeDef;
# 382 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
typedef enum {


    ADC_Flag_ADCIF = (uint8_t)(0x01UL << (0U)),
# 395 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
    ADC_Flag_OVERRUN = (int)0x80000000UL,
} ADC_FLAG_TypeDef;
# 430 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
typedef struct {
    uint32_t ADC_Prescaler;



    uint32_t ADC_EAIN;



    uint32_t ADC_VREF;



    uint16_t ADC_ConvMode;


} ADC_InitTypeDef;
# 461 "../hal/SC32F1X/inc\\sc32f1xxx_adc.h"
void ADC_DeInit(ADC_TypeDef * ADCx);
void ADC_Init(ADC_TypeDef * ADCx, ADC_InitTypeDef * ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef * ADC_InitStruct);
void ADC_Cmd(ADC_TypeDef * ADCx, FunctionalState NewState);
void ADC_ConvModeConfig(ADC_TypeDef * ADCx, ADC_ConvMode_TypeDef ADC_ConvMode);
void ADC_SetChannel(ADC_TypeDef * ADCx, ADC_ChannelTypedef ADC_Channel);
ADC_ChannelTypedef ADC_GetChannel(ADC_TypeDef * ADCx);


uint16_t ADC_GetConversionValue(ADC_TypeDef * ADCx);
void ADC_SoftwareStartConv(ADC_TypeDef * ADCx);


void ADC_ITConfig(ADC_TypeDef * ADCx, uint16_t ADC_IT, FunctionalState NewState);
FlagStatus ADC_GetFlagStatus(ADC_TypeDef * ADCx, uint32_t ADC_FLAG);
void ADC_ClearFlag(ADC_TypeDef * ADCx, uint32_t ADC_FLAG);
void ADC_DMACmd(ADC_TypeDef * ADCx, FunctionalState NewState);
# 28 "../hal/SC32F1X/src/sc32f1xxx_adc.c" 2
# 46 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
void ADC_DeInit(ADC_TypeDef * ADCx) {



    ((void)0U);

    ADCx->ADC_CFG = (uint32_t)0x00000000U;
    ADCx->ADC_CON = (uint32_t)0x00000000U;
    ADCx->ADC_VALUE = (uint32_t)0x00000000U;
    ADCx->ADC_STS = (uint32_t)0x00000001U;
# 65 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
}
# 75 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
void ADC_Init(ADC_TypeDef * ADCx, ADC_InitTypeDef * ADC_InitStruct) {


    uint32_t tmpreg;

    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);

    tmpreg = ADCx->ADC_CON;
    tmpreg &= ~((0x1FUL << (0U)) | (0x1UL << (11U)) | (0x7UL << (16U)) | (0x3UL << (20U)));
    tmpreg |=
        (ADC_InitStruct->ADC_Prescaler | ADC_InitStruct->ADC_VREF | ADC_InitStruct->ADC_ConvMode);
    ADCx->ADC_CON = tmpreg;
    ADCx->ADC_CFG = ADC_InitStruct->ADC_EAIN;
# 109 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
}







void ADC_StructInit(ADC_InitTypeDef * ADC_InitStruct) {

    ADC_InitStruct->ADC_ConvMode = ADC_ConvMode_Single;
    ADC_InitStruct->ADC_EAIN = ADC_EAIN_Less;
    ADC_InitStruct->ADC_Prescaler = ADC_Prescaler_3CLOCK;

    ADC_InitStruct->ADC_VREF = ADC_VREF_VDD;



}
# 138 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
void ADC_Cmd(ADC_TypeDef * ADCx, FunctionalState NewState) {

    ((void)0U);
    ((void)0U);

    if (NewState != DISABLE) {

        ADCx->ADC_CON |= (0x1UL << (15U));
    } else {

        ADCx->ADC_CON &= (uint32_t)~(0x1UL << (15U));
    }
}
# 167 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
void ADC_ConvModeConfig(ADC_TypeDef * ADCx, ADC_ConvMode_TypeDef ADC_ConvMode) {

    ((void)0U);

    if (ADC_ConvMode != ADC_ConvMode_Single) {

        ADCx->ADC_CON |= (0x1UL << (11U));
    } else {

        ADCx->ADC_CON &= (uint32_t)~(0x1UL << (11U));
    }
}
# 214 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
void ADC_SetChannel(ADC_TypeDef * ADCx, ADC_ChannelTypedef ADC_Channel) {


    uint32_t tmpreg;

    ((void)0U);

    tmpreg = ADCx->ADC_CON;
    tmpreg &= (uint32_t)~((0x1FUL << (0U)));


    tmpreg |= ADC_Channel;

    ADCx->ADC_CON = tmpreg;






}
# 269 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
ADC_ChannelTypedef ADC_GetChannel(ADC_TypeDef * ADCx) {



    ((void)0U);


    return (ADC_ChannelTypedef)(ADCx->ADC_CON & (0x1FUL << (0U)));







}
# 308 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
void ADC_SoftwareStartConv(ADC_TypeDef * ADCx) {

    ((void)0U);


    ADCx->ADC_CON |= (0x1UL << (7U));
}







uint16_t ADC_GetConversionValue(ADC_TypeDef * ADCx) {

    ((void)0U);

    return (uint16_t)ADCx->ADC_VALUE;
}
# 364 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
void ADC_ITConfig(ADC_TypeDef * ADCx, uint16_t ADC_IT, FunctionalState NewState) {

    ((void)0U);
    ((void)0U);
    ((void)0U);


    if (NewState != DISABLE) {

        ADCx->ADC_CON |= ADC_IT;
    } else {

        ADCx->ADC_CON &= (uint32_t)~ADC_IT;
    }
# 387 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
}
# 407 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
FlagStatus ADC_GetFlagStatus(ADC_TypeDef * ADCx, uint32_t ADC_FLAG) {
    ITStatus bitstatus = RESET;

    ((void)0U);

    if ((ADCx->ADC_STS & ADC_FLAG) != (uint16_t)RESET) {
        bitstatus = SET;
    } else {
        bitstatus = RESET;
    }
    return bitstatus;
}
# 436 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
void ADC_ClearFlag(ADC_TypeDef * ADCx, uint32_t ADC_FLAG) {

    ((void)0U);


    ADCx->ADC_STS = (uint32_t)ADC_FLAG;
}
# 453 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
void ADC_DMACmd(ADC_TypeDef * ADCx, FunctionalState NewState) {



    ((void)0U);

    if (NewState != DISABLE) {

        ADCx->ADC_CON |= (uint32_t)(0x1UL << (12U));
    } else {

        ADCx->ADC_CON &= (uint32_t)~(0x1UL << (12U));
    }
# 478 "../hal/SC32F1X/src/sc32f1xxx_adc.c"
}
