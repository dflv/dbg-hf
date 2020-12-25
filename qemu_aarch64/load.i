# 1 "../../src/load.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 357 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../../src/load.c" 2








# 1 "../../inc/hf/load.h" 1
# 11 "../../inc/hf/load.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 1 3
# 35 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 3
typedef long int ptrdiff_t;
# 46 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 3
typedef long unsigned int size_t;
# 74 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 3
typedef unsigned int wchar_t;
# 102 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 3
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/__stddef_max_align_t.h" 1 3
# 19 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/__stddef_max_align_t.h" 3
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 103 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 2 3
# 12 "../../inc/hf/load.h" 2
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdint.h" 1 3
# 96 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdint.h" 3
typedef long int int64_t;

typedef long unsigned int uint64_t;
# 110 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdint.h" 3
typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;
typedef int64_t int_fast64_t;
typedef uint64_t uint_fast64_t;
# 167 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdint.h" 3
typedef int int32_t;




typedef unsigned int uint32_t;
# 184 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdint.h" 3
typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;
typedef int32_t int_fast32_t;
typedef uint32_t uint_fast32_t;
# 205 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdint.h" 3
typedef short int16_t;

typedef unsigned short uint16_t;







typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;
typedef int16_t int_fast16_t;
typedef uint16_t uint_fast16_t;





typedef signed char int8_t;

typedef unsigned char uint8_t;





typedef int8_t int_least8_t;
typedef uint8_t uint_least8_t;
typedef int8_t int_fast8_t;
typedef uint8_t uint_fast8_t;
# 249 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdint.h" 3
typedef long int intptr_t;






typedef long unsigned int uintptr_t;





typedef long int intmax_t;
typedef long unsigned int uintmax_t;
# 13 "../../inc/hf/load.h" 2

# 1 "../../inc/hf/boot_params.h" 1
# 11 "../../inc/hf/boot_params.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdbool.h" 1 3
# 12 "../../inc/hf/boot_params.h" 2

# 1 "../../inc/hf/arch/cpu.h" 1
# 12 "../../inc/hf/arch/cpu.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 1 3
# 13 "../../inc/hf/arch/cpu.h" 2


# 1 "../../src/arch/aarch64/inc/hf/arch/types.h" 1
# 11 "../../src/arch/aarch64/inc/hf/arch/types.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdalign.h" 1 3
# 12 "../../src/arch/aarch64/inc/hf/arch/types.h" 2


# 1 "../../inc/vmapi/hf/ffa.h" 1
# 11 "../../inc/vmapi/hf/ffa.h"
# 1 "../../inc/vmapi/hf/types.h" 1
# 23 "../../inc/vmapi/hf/types.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 1 3
# 24 "../../inc/vmapi/hf/types.h" 2


# 1 "../../src/arch/aarch64/inc/hf/arch/vmid_base.h" 1
# 27 "../../inc/vmapi/hf/types.h" 2

typedef uintptr_t hf_ipaddr_t;
# 12 "../../inc/vmapi/hf/ffa.h" 2
# 87 "../../inc/vmapi/hf/ffa.h"
enum ffa_data_access {
 FFA_DATA_ACCESS_NOT_SPECIFIED,
 FFA_DATA_ACCESS_RO,
 FFA_DATA_ACCESS_RW,
 FFA_DATA_ACCESS_RESERVED,
};

enum ffa_instruction_access {
 FFA_INSTRUCTION_ACCESS_NOT_SPECIFIED,
 FFA_INSTRUCTION_ACCESS_NX,
 FFA_INSTRUCTION_ACCESS_X,
 FFA_INSTRUCTION_ACCESS_RESERVED,
};

enum ffa_memory_type {
 FFA_MEMORY_NOT_SPECIFIED_MEM,
 FFA_MEMORY_DEVICE_MEM,
 FFA_MEMORY_NORMAL_MEM,
};

enum ffa_memory_cacheability {
 FFA_MEMORY_CACHE_RESERVED = 0x0,
 FFA_MEMORY_CACHE_NON_CACHEABLE = 0x1,
 FFA_MEMORY_CACHE_RESERVED_1 = 0x2,
 FFA_MEMORY_CACHE_WRITE_BACK = 0x3,
 FFA_MEMORY_DEV_NGNRNE = 0x0,
 FFA_MEMORY_DEV_NGNRE = 0x1,
 FFA_MEMORY_DEV_NGRE = 0x2,
 FFA_MEMORY_DEV_GRE = 0x3,
};

enum ffa_memory_shareability {
 FFA_MEMORY_SHARE_NON_SHAREABLE,
 FFA_MEMORY_SHARE_RESERVED,
 FFA_MEMORY_OUTER_SHAREABLE,
 FFA_MEMORY_INNER_SHAREABLE,
};

typedef uint8_t ffa_memory_access_permissions_t;





typedef uint8_t ffa_memory_attributes_t;
# 162 "../../inc/vmapi/hf/ffa.h"
static inline void ffa_set_data_access_attr(ffa_memory_access_permissions_t *attr, const enum ffa_data_access perm) { *attr = (*attr & ~(((0x3U) << (0x0U)))) | ((perm << (0x0U)) & ((0x3U) << (0x0U))); }

static inline enum ffa_data_access ffa_get_data_access_attr( ffa_memory_access_permissions_t attr) { return (enum ffa_data_access)((attr & ((0x3U) << (0x0U))) >> (0x0U)); }


static inline void ffa_set_instruction_access_attr(ffa_memory_access_permissions_t *attr, const enum ffa_instruction_access perm) { *attr = (*attr & ~(((0x3U) << (0x2U)))) | ((perm << (0x2U)) & ((0x3U) << (0x2U))); }

static inline enum ffa_instruction_access ffa_get_instruction_access_attr( ffa_memory_access_permissions_t attr) { return (enum ffa_instruction_access)((attr & ((0x3U) << (0x2U))) >> (0x2U)); }


static inline void ffa_set_memory_type_attr(ffa_memory_attributes_t *attr, const enum ffa_memory_type perm) { *attr = (*attr & ~(((0x3U) << (0x4U)))) | ((perm << (0x4U)) & ((0x3U) << (0x4U))); }

static inline enum ffa_memory_type ffa_get_memory_type_attr( ffa_memory_attributes_t attr) { return (enum ffa_memory_type)((attr & ((0x3U) << (0x4U))) >> (0x4U)); }


static inline void ffa_set_memory_cacheability_attr(ffa_memory_attributes_t *attr, const enum ffa_memory_cacheability perm) { *attr = (*attr & ~(((0x3U) << (0x2U)))) | ((perm << (0x2U)) & ((0x3U) << (0x2U))); }

static inline enum ffa_memory_cacheability ffa_get_memory_cacheability_attr( ffa_memory_attributes_t attr) { return (enum ffa_memory_cacheability)((attr & ((0x3U) << (0x2U))) >> (0x2U)); }


static inline void ffa_set_memory_shareability_attr(ffa_memory_attributes_t *attr, const enum ffa_memory_shareability perm) { *attr = (*attr & ~(((0x3U) << (0x0U)))) | ((perm << (0x0U)) & ((0x3U) << (0x0U))); }

static inline enum ffa_memory_shareability ffa_get_memory_shareability_attr( ffa_memory_attributes_t attr) { return (enum ffa_memory_shareability)((attr & ((0x3U) << (0x0U))) >> (0x0U)); }
# 194 "../../inc/vmapi/hf/ffa.h"
typedef uint16_t ffa_vm_id_t;





typedef uint64_t ffa_memory_handle_t;





typedef ffa_vm_id_t ffa_vm_count_t;


typedef uint16_t ffa_vcpu_index_t;





typedef ffa_vcpu_index_t ffa_vcpu_count_t;


struct ffa_value {
 uint64_t func;
 uint64_t arg1;
 uint64_t arg2;
 uint64_t arg3;
 uint64_t arg4;
 uint64_t arg5;
 uint64_t arg6;
 uint64_t arg7;
};

static inline ffa_vm_id_t ffa_msg_send_sender(struct ffa_value args)
{
 return (args.arg1 >> 16) & 0xffff;
}

static inline ffa_vm_id_t ffa_msg_send_receiver(struct ffa_value args)
{
 return args.arg1 & 0xffff;
}

static inline uint32_t ffa_msg_send_size(struct ffa_value args)
{
 return args.arg3;
}

static inline uint32_t ffa_msg_send_attributes(struct ffa_value args)
{
 return args.arg4;
}

static inline ffa_memory_handle_t ffa_assemble_handle(uint32_t a1, uint32_t a2)
{
 return (uint64_t)a1 | (uint64_t)a2 << 32;
}

static inline ffa_memory_handle_t ffa_mem_success_handle(struct ffa_value args)
{
 return ffa_assemble_handle(args.arg2, args.arg3);
}

static inline ffa_memory_handle_t ffa_frag_handle(struct ffa_value args)
{
 return ffa_assemble_handle(args.arg1, args.arg2);
}

static inline struct ffa_value ffa_mem_success(ffa_memory_handle_t handle)
{
 return (struct ffa_value){.func = 0x84000061,
      .arg2 = (uint32_t)handle,
      .arg3 = (uint32_t)(handle >> 32)};
}

static inline ffa_vm_id_t ffa_vm_id(struct ffa_value args)
{
 return (args.arg1 >> 16) & 0xffff;
}

static inline ffa_vcpu_index_t ffa_vcpu_index(struct ffa_value args)
{
 return args.arg1 & 0xffff;
}

static inline uint64_t ffa_vm_vcpu(ffa_vm_id_t vm_id,
       ffa_vcpu_index_t vcpu_index)
{
 return ((uint32_t)vm_id << 16) | vcpu_index;
}

static inline ffa_vm_id_t ffa_frag_sender(struct ffa_value args)
{
 return (args.arg4 >> 16) & 0xffff;
}
# 299 "../../inc/vmapi/hf/ffa.h"
struct ffa_uuid {
 uint32_t uuid[4];
};

static inline void ffa_uuid_init(uint32_t w0, uint32_t w1, uint32_t w2,
     uint32_t w3, struct ffa_uuid *uuid)
{
 uuid->uuid[0] = w0;
 uuid->uuid[1] = w1;
 uuid->uuid[2] = w2;
 uuid->uuid[3] = w3;
}

static inline _Bool ffa_uuid_equal(const struct ffa_uuid *uuid1,
      const struct ffa_uuid *uuid2)
{
 return (uuid1->uuid[0] == uuid2->uuid[0]) &&
        (uuid1->uuid[1] == uuid2->uuid[1]) &&
        (uuid1->uuid[2] == uuid2->uuid[2]) &&
        (uuid1->uuid[3] == uuid2->uuid[3]);
}

static inline _Bool ffa_uuid_is_null(const struct ffa_uuid *uuid)
{
 return (uuid->uuid[0] == 0) && (uuid->uuid[1] == 0) &&
        (uuid->uuid[2] == 0) && (uuid->uuid[3] == 0);
}
# 334 "../../inc/vmapi/hf/ffa.h"
typedef uint32_t ffa_partition_properties_t;
# 351 "../../inc/vmapi/hf/ffa.h"
struct ffa_partition_info {
 ffa_vm_id_t vm_id;
 ffa_vcpu_count_t vcpu_count;
 ffa_partition_properties_t properties;
};






struct ffa_memory_region_constituent {




 uint64_t address;

 uint32_t page_count;

 uint32_t reserved;
};





struct ffa_composite_memory_region {





 uint32_t page_count;




 uint32_t constituent_count;

 uint64_t reserved_0;

 struct ffa_memory_region_constituent constituents[];
};


typedef uint8_t ffa_memory_receiver_flags_t;





struct ffa_memory_region_attributes {

 ffa_vm_id_t receiver;




 ffa_memory_access_permissions_t permissions;




 ffa_memory_receiver_flags_t flags;
};


typedef uint32_t ffa_memory_region_flags_t;
# 449 "../../inc/vmapi/hf/ffa.h"
struct ffa_memory_access {
 struct ffa_memory_region_attributes receiver_permissions;




 uint32_t composite_memory_region_offset;
 uint64_t reserved_0;
};







struct ffa_memory_region {




 ffa_vm_id_t sender;
 ffa_memory_attributes_t attributes;

 uint8_t reserved_0;

 ffa_memory_region_flags_t flags;
 ffa_memory_handle_t handle;




 uint64_t tag;

 uint32_t reserved_1;




 uint32_t receiver_count;






 struct ffa_memory_access receivers[];
};






struct ffa_mem_relinquish {
 ffa_memory_handle_t handle;
 ffa_memory_region_flags_t flags;
 uint32_t endpoint_count;
 ffa_vm_id_t endpoints[];
};





static inline struct ffa_composite_memory_region *
ffa_memory_region_get_composite(struct ffa_memory_region *memory_region,
    uint32_t receiver_index)
{
 uint32_t offset = memory_region->receivers[receiver_index]
      .composite_memory_region_offset;

 if (offset == 0) {
  return ((void*)0);
 }

 return (struct ffa_composite_memory_region *)((uint8_t *)memory_region +
            offset);
}

static inline uint32_t ffa_mem_relinquish_init(
 struct ffa_mem_relinquish *relinquish_request,
 ffa_memory_handle_t handle, ffa_memory_region_flags_t flags,
 ffa_vm_id_t sender)
{
 relinquish_request->handle = handle;
 relinquish_request->flags = flags;
 relinquish_request->endpoint_count = 1;
 relinquish_request->endpoints[0] = sender;
 return sizeof(struct ffa_mem_relinquish) + sizeof(ffa_vm_id_t);
}

uint32_t ffa_memory_region_init(
 struct ffa_memory_region *memory_region, size_t memory_region_max_size,
 ffa_vm_id_t sender, ffa_vm_id_t receiver,
 const struct ffa_memory_region_constituent constituents[],
 uint32_t constituent_count, uint32_t tag,
 ffa_memory_region_flags_t flags, enum ffa_data_access data_access,
 enum ffa_instruction_access instruction_access,
 enum ffa_memory_type type, enum ffa_memory_cacheability cacheability,
 enum ffa_memory_shareability shareability, uint32_t *fragment_length,
 uint32_t *total_length);
uint32_t ffa_memory_retrieve_request_init(
 struct ffa_memory_region *memory_region, ffa_memory_handle_t handle,
 ffa_vm_id_t sender, ffa_vm_id_t receiver, uint32_t tag,
 ffa_memory_region_flags_t flags, enum ffa_data_access data_access,
 enum ffa_instruction_access instruction_access,
 enum ffa_memory_type type, enum ffa_memory_cacheability cacheability,
 enum ffa_memory_shareability shareability);
uint32_t ffa_memory_lender_retrieve_request_init(
 struct ffa_memory_region *memory_region, ffa_memory_handle_t handle,
 ffa_vm_id_t sender);
_Bool ffa_retrieved_memory_region_init(
 struct ffa_memory_region *response, size_t response_max_size,
 ffa_vm_id_t sender, ffa_memory_attributes_t attributes,
 ffa_memory_region_flags_t flags, ffa_memory_handle_t handle,
 ffa_vm_id_t receiver, ffa_memory_access_permissions_t permissions,
 uint32_t page_count, uint32_t total_constituent_count,
 const struct ffa_memory_region_constituent constituents[],
 uint32_t fragment_constituent_count, uint32_t *total_length,
 uint32_t *fragment_length);
uint32_t ffa_memory_fragment_init(
 struct ffa_memory_region_constituent *fragment,
 size_t fragment_max_size,
 const struct ffa_memory_region_constituent constituents[],
 uint32_t constituent_count, uint32_t *fragment_length);
# 15 "../../src/arch/aarch64/inc/hf/arch/types.h" 2
# 1 "../../inc/hf/static_assert.h" 1
# 16 "../../src/arch/aarch64/inc/hf/arch/types.h" 2








typedef uint64_t pte_t;


typedef uintptr_t uintpaddr_t;


typedef uintptr_t uintvaddr_t;


typedef uint64_t uintreg_t;


typedef uint64_t cpu_id_t;


typedef uint64_t arch_features_t;






struct float_reg {
 _Alignas(16) uint64_t low;
 uint64_t high;
};

_Static_assert(sizeof(struct float_reg) == 16,
       "Ensure float register type is 128 bits.");


struct arch_vm {






 ffa_vcpu_index_t last_vcpu_on_cpu[8];
 arch_features_t trapped_features;




 struct {
  uintreg_t id_aa64mmfr1_el1;
  uintreg_t id_aa64pfr0_el1;
  uintreg_t id_aa64dfr0_el1;
  uintreg_t id_aa64isar1_el1;
 } tid3_masks;
};


struct arch_regs {

 uintreg_t r[31];
 uintreg_t pc;
 uintreg_t spsr;






 struct {
  uintreg_t vmpidr_el2;
  uintreg_t csselr_el1;
  uintreg_t sctlr_el1;
  uintreg_t actlr_el1;
  uintreg_t cpacr_el1;
  uintreg_t ttbr0_el1;
  uintreg_t ttbr1_el1;
  uintreg_t tcr_el1;
  uintreg_t esr_el1;
  uintreg_t afsr0_el1;
  uintreg_t afsr1_el1;
  uintreg_t far_el1;
  uintreg_t mair_el1;
  uintreg_t vbar_el1;
  uintreg_t contextidr_el1;
  uintreg_t tpidr_el0;
  uintreg_t tpidrro_el0;
  uintreg_t tpidr_el1;
  uintreg_t amair_el1;
  uintreg_t cntkctl_el1;
  uintreg_t sp_el0;
  uintreg_t sp_el1;
  uintreg_t elr_el1;
  uintreg_t spsr_el1;
  uintreg_t par_el1;
  uintreg_t hcr_el2;
  uintreg_t cnthctl_el2;
  uintreg_t vttbr_el2;
  uintreg_t mdcr_el2;
  uintreg_t mdscr_el1;
  uintreg_t pmccfiltr_el0;
  uintreg_t pmcr_el0;
  uintreg_t pmcntenset_el0;
  uintreg_t pmintenset_el1;
 } lazy;


 struct float_reg fp[32];
 uintreg_t fpsr;
 uintreg_t fpcr;


 struct {
  uintreg_t ich_hcr_el2;
  uintreg_t icc_sre_el2;
 } gic;





 struct {
  uintreg_t cntv_cval_el0;
  uintreg_t cntv_ctl_el0;
 } peripherals;
};
# 16 "../../inc/hf/arch/cpu.h" 2

# 1 "../../inc/hf/addr.h" 1
# 11 "../../inc/hf/addr.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 1 3
# 12 "../../inc/hf/addr.h" 2




# 1 "../../inc/hf/check.h" 1
# 11 "../../inc/hf/check.h"
# 1 "../../inc/hf/panic.h" 1
# 11 "../../inc/hf/panic.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdnoreturn.h" 1 3
# 12 "../../inc/hf/panic.h" 2

_Noreturn void panic(const char *fmt, ...);
# 12 "../../inc/hf/check.h" 2
# 17 "../../inc/hf/addr.h" 2


typedef struct {
 uintpaddr_t pa;
} paddr_t;


typedef struct {
 uintpaddr_t ipa;
} ipaddr_t;


typedef struct {
 uintvaddr_t va;
} vaddr_t;




static inline paddr_t pa_init(uintpaddr_t p)
{
 return (paddr_t){.pa = p};
}




static inline uintpaddr_t pa_addr(paddr_t pa)
{
 return pa.pa;
}




static inline paddr_t pa_add(paddr_t pa, size_t n)
{
 return pa_init(pa_addr(pa) + n);
}




static inline paddr_t pa_subtract(paddr_t pa, size_t n)
{
 return pa_init(pa_addr(pa) - n);
}




static inline size_t pa_difference(paddr_t start, paddr_t end)
{
 return pa_addr(end) - pa_addr(start);
}




static inline ipaddr_t ipa_init(uintpaddr_t ipa)
{
 return (ipaddr_t){.ipa = ipa};
}




static inline paddr_t pa_sub(paddr_t pa, size_t n)
{
 do { if (!((uintptr_t)pa_addr(pa) >= n)) { panic("assertion failed (%s) at %s:%d", "(uintptr_t)pa_addr(pa) >= n", "../../inc/hf/addr.h", 86); } } while (0);
 return pa_init(pa_addr(pa) - n);
}




static inline uintpaddr_t ipa_addr(ipaddr_t ipa)
{
 return ipa.ipa;
}




static inline ipaddr_t ipa_add(ipaddr_t ipa, size_t n)
{
 return ipa_init(ipa_addr(ipa) + n);
}




static inline vaddr_t va_init(uintvaddr_t v)
{
 return (vaddr_t){.va = v};
}




static inline uintvaddr_t va_addr(vaddr_t va)
{
 return va.va;
}




static inline vaddr_t va_from_pa(paddr_t pa)
{
 return va_init(pa_addr(pa));
}




static inline ipaddr_t ipa_from_pa(paddr_t pa)
{
 return ipa_init(pa_addr(pa));
}




static inline paddr_t pa_from_va(vaddr_t va)
{
 return pa_init(va_addr(va));
}




static inline paddr_t pa_from_ipa(ipaddr_t ipa)
{
 return pa_init(ipa_addr(ipa));
}




static inline vaddr_t va_from_ptr(const void *p)
{
 return (vaddr_t){.va = (uintvaddr_t)p};
}






static inline void *ptr_from_va(vaddr_t va)
{
 return (void *)va_addr(va);
}
# 18 "../../inc/hf/arch/cpu.h" 2
# 1 "../../inc/hf/vcpu.h" 1
# 12 "../../inc/hf/vcpu.h"
# 1 "../../inc/hf/spinlock.h" 1
# 18 "../../inc/hf/spinlock.h"
# 1 "../../src/arch/aarch64/inc/hf/arch/spinlock.h" 1
# 27 "../../src/arch/aarch64/inc/hf/arch/spinlock.h"
struct spinlock {
 volatile uint32_t v;
};



static inline void sl_lock(struct spinlock *l)
{
 register uintreg_t tmp1;
 register uintreg_t tmp2;






 __asm__ volatile(
  "	mov	%w2, #1\n"
  "	sevl\n"
  "1:	wfe\n"
  "2:	ldaxr	%w1, [%3]\n"
  "	cbnz	%w1, 1b\n"
  "	stxr	%w1, %w2, [%3]\n"
  "	cbnz	%w1, 2b\n"
  : "+m"(*l), "=&r"(tmp1), "=&r"(tmp2)
  : "r"(l)
  : "cc");
}

static inline void sl_unlock(struct spinlock *l)
{




 __asm__ volatile("stlr wzr, [%1]" : "=m"(*l) : "r"(l) : "cc");
}
# 19 "../../inc/hf/spinlock.h" 2

static inline void sl_init(struct spinlock *l)
{
 *l = ((struct spinlock){.v = 0});
}





static inline void sl_lock_both(struct spinlock *a, struct spinlock *b)
{
 if (a < b) {
  sl_lock(a);
  sl_lock(b);
 } else {
  sl_lock(b);
  sl_lock(a);
 }
}
# 13 "../../inc/hf/vcpu.h" 2






enum vcpu_state {

 VCPU_STATE_OFF,


 VCPU_STATE_READY,


 VCPU_STATE_RUNNING,


 VCPU_STATE_BLOCKED_MAILBOX,


 VCPU_STATE_BLOCKED_INTERRUPT,


 VCPU_STATE_ABORTED,
};

struct interrupts {

 uint32_t interrupt_enabled[64 / 32];

 uint32_t interrupt_pending[64 / 32];





 uint32_t enabled_and_pending_count;
};

struct vcpu_fault_info {
 ipaddr_t ipaddr;
 vaddr_t vaddr;
 vaddr_t pc;
 uint32_t mode;
};

struct vcpu {
 struct spinlock lock;






 enum vcpu_state state;

 struct cpu *cpu;
 struct vm *vm;
 struct arch_regs regs;
 struct interrupts interrupts;






 _Bool regs_available;
# 88 "../../inc/hf/vcpu.h"
 ffa_vm_id_t direct_request_origin_vm_id;
};


struct vcpu_locked {
 struct vcpu *vcpu;
};


struct two_vcpu_locked {
 struct vcpu_locked vcpu1;
 struct vcpu_locked vcpu2;
};

struct vcpu_locked vcpu_lock(struct vcpu *vcpu);
struct two_vcpu_locked vcpu_lock_both(struct vcpu *vcpu1, struct vcpu *vcpu2);
void vcpu_unlock(struct vcpu_locked *locked);
void vcpu_init(struct vcpu *vcpu, struct vm *vm);
void vcpu_on(struct vcpu_locked vcpu, ipaddr_t entry, uintreg_t arg);
ffa_vcpu_index_t vcpu_index(const struct vcpu *vcpu);
_Bool vcpu_is_off(struct vcpu_locked vcpu);
_Bool vcpu_secondary_reset_and_start(struct vcpu *vcpu, ipaddr_t entry,
        uintreg_t arg);

_Bool vcpu_handle_page_fault(const struct vcpu *current,
       struct vcpu_fault_info *f);

struct vcpu *vcpu_get_other_world_counterpart(struct vcpu *current);
# 19 "../../inc/hf/arch/cpu.h" 2







void arch_regs_reset(struct vcpu *vcpu);
# 35 "../../inc/hf/arch/cpu.h"
void arch_regs_set_pc_arg(struct arch_regs *r, ipaddr_t pc, uintreg_t arg);







void arch_regs_set_retval(struct arch_regs *r, struct ffa_value v);







struct ffa_value arch_regs_get_args(struct arch_regs *regs);




void arch_cpu_init(void);
# 14 "../../inc/hf/boot_params.h" 2

# 1 "../../inc/hf/fdt.h" 1
# 11 "../../inc/hf/fdt.h"
# 1 "../../inc/hf/memiter.h" 1
# 12 "../../inc/hf/memiter.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 1 3
# 13 "../../inc/hf/memiter.h" 2


struct memiter {
 const char *next;
 const char *limit;
};

void memiter_init(struct memiter *it, const void *data, size_t size);
_Bool memiter_parse_uint(struct memiter *it, uint64_t *value);
_Bool memiter_parse_str(struct memiter *it, struct memiter *str);
_Bool memiter_iseq(const struct memiter *it, const char *str);
_Bool memiter_advance(struct memiter *it, size_t v);
_Bool memiter_restrict(struct memiter *it, size_t v);
_Bool memiter_consume(struct memiter *it, size_t v, struct memiter *newit);

const void *memiter_base(const struct memiter *it);
size_t memiter_size(const struct memiter *it);
# 12 "../../inc/hf/fdt.h" 2
# 1 "../../inc/hf/string.h" 1
# 12 "../../inc/hf/string.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 1 3
# 13 "../../inc/hf/string.h" 2
# 22 "../../inc/hf/string.h"
enum string_return_code {
 STRING_SUCCESS,
 STRING_ERROR_INVALID_INPUT,
 STRING_ERROR_TOO_LONG,
};
# 35 "../../inc/hf/string.h"
struct string {
 char data[32];
};







enum string_return_code string_init(struct string *str,
        const struct memiter *data);
void string_init_empty(struct string *str);
_Bool string_is_empty(const struct string *str);
const char *string_data(const struct string *str);
_Bool string_eq(const struct string *str, const struct memiter *data);
# 13 "../../inc/hf/fdt.h" 2







struct fdt {
 struct memiter buf;
};




struct fdt_node {
 struct fdt fdt;
 int offset;
};



_Bool fdt_size_from_header(const void *ptr, size_t *val);

_Bool fdt_init_from_ptr(struct fdt *fdt, const void *ptr, size_t len);
_Bool fdt_init_from_memiter(struct fdt *fdt, const struct memiter *it);
void fdt_fini(struct fdt *fdt);

const void *fdt_base(const struct fdt *fdt);
size_t fdt_size(const struct fdt *fdt);

_Bool fdt_find_node(const struct fdt *fdt, const char *path,
     struct fdt_node *node);
_Bool fdt_is_compatible(struct fdt_node *node, const char *compat);
_Bool fdt_address_size(const struct fdt_node *node, size_t *addr_size);
_Bool fdt_size_size(const struct fdt_node *node, size_t *size);

_Bool fdt_first_child(struct fdt_node *node);
_Bool fdt_next_sibling(struct fdt_node *node);
_Bool fdt_find_child(struct fdt_node *node, const struct string *name);

_Bool fdt_read_property(const struct fdt_node *node, const char *name,
         struct memiter *data);
_Bool fdt_read_number(const struct fdt_node *node, const char *name,
       uint64_t *val);
_Bool fdt_parse_number(struct memiter *data, size_t size, uint64_t *val);
# 16 "../../inc/hf/boot_params.h" 2
# 1 "../../inc/hf/mm.h" 1
# 15 "../../inc/hf/mm.h"
# 1 "../../inc/hf/arch/mm.h" 1
# 12 "../../inc/hf/arch/mm.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 1 3
# 13 "../../inc/hf/arch/mm.h" 2
# 30 "../../inc/hf/arch/mm.h"
pte_t arch_mm_absent_pte(uint8_t level);




pte_t arch_mm_table_pte(uint8_t level, paddr_t pa);




pte_t arch_mm_block_pte(uint8_t level, paddr_t pa, uint64_t attrs);




_Bool arch_mm_is_block_allowed(uint8_t level);





_Bool arch_mm_pte_is_present(pte_t pte, uint8_t level);






_Bool arch_mm_pte_is_valid(pte_t pte, uint8_t level);





_Bool arch_mm_pte_is_block(pte_t pte, uint8_t level);




_Bool arch_mm_pte_is_table(pte_t pte, uint8_t level);





paddr_t arch_mm_clear_pa(paddr_t pa);




paddr_t arch_mm_block_from_pte(pte_t pte, uint8_t level);




paddr_t arch_mm_table_from_pte(pte_t pte, uint8_t level);




uint64_t arch_mm_pte_attrs(pte_t pte, uint8_t level);




uint64_t arch_mm_combine_table_entry_attrs(uint64_t table_attrs,
        uint64_t block_attrs);




void arch_mm_invalidate_stage1_range(vaddr_t va_begin, vaddr_t va_end);




void arch_mm_invalidate_stage2_range(ipaddr_t va_begin, ipaddr_t va_end);






void arch_mm_flush_dcache(void *base, size_t size);




uint8_t arch_mm_stage1_max_level(void);




uint8_t arch_mm_stage2_max_level(void);
# 133 "../../inc/hf/arch/mm.h"
uint8_t arch_mm_stage1_root_table_count(void);




uint8_t arch_mm_stage2_root_table_count(void);




uint64_t arch_mm_mode_to_stage1_attrs(uint32_t mode);




uint64_t arch_mm_mode_to_stage2_attrs(uint32_t mode);




uint32_t arch_mm_stage2_attrs_to_mode(uint64_t attrs);




_Bool arch_mm_init(paddr_t table);




uint32_t arch_mm_extra_attributes_from_vm(ffa_vm_id_t id);
# 16 "../../inc/hf/mm.h" 2


# 1 "../../inc/hf/mpool.h" 1
# 12 "../../inc/hf/mpool.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 1 3
# 13 "../../inc/hf/mpool.h" 2



struct mpool {
 struct spinlock lock;
 size_t entry_size;
 struct mpool_chunk *chunk_list;
 struct mpool_entry *entry_list;
 struct mpool *fallback;
};

void mpool_enable_locks(void);
void mpool_init(struct mpool *p, size_t entry_size);
void mpool_init_from(struct mpool *p, struct mpool *from);
void mpool_init_with_fallback(struct mpool *p, struct mpool *fallback);
void mpool_fini(struct mpool *p);
_Bool mpool_add_chunk(struct mpool *p, void *begin, size_t size);
void *mpool_alloc(struct mpool *p);
void *mpool_alloc_contiguous(struct mpool *p, size_t count, size_t align);
void mpool_free(struct mpool *p, void *ptr);
# 19 "../../inc/hf/mm.h" 2
# 76 "../../inc/hf/mm.h"
struct mm_page_table {
 _Alignas((1 << 12)) pte_t entries[((1 << 12) / sizeof(pte_t))];
};
_Static_assert(sizeof(struct mm_page_table) == (1 << 12),
       "A page table must take exactly one page.");
_Static_assert(_Alignof(struct mm_page_table) == (1 << 12),
       "A page table must be page aligned.");

struct mm_ptable {

 paddr_t root;
};


typedef uintvaddr_t ptable_addr_t;


struct mm_stage1_locked {
 struct mm_ptable *ptable;
};

void mm_vm_enable_invalidation(void);

_Bool mm_ptable_init(struct mm_ptable *t, int flags, struct mpool *ppool);
ptable_addr_t mm_ptable_addr_space_end(int flags);

_Bool mm_vm_init(struct mm_ptable *t, struct mpool *ppool);
void mm_vm_fini(struct mm_ptable *t, struct mpool *ppool);
_Bool mm_vm_identity_map(struct mm_ptable *t, paddr_t begin, paddr_t end,
   uint32_t mode, struct mpool *ppool, ipaddr_t *ipa);
_Bool mm_vm_identity_prepare(struct mm_ptable *t, paddr_t begin, paddr_t end,
       uint32_t mode, struct mpool *ppool);
void mm_vm_identity_commit(struct mm_ptable *t, paddr_t begin, paddr_t end,
      uint32_t mode, struct mpool *ppool, ipaddr_t *ipa);
_Bool mm_vm_unmap(struct mm_ptable *t, paddr_t begin, paddr_t end,
   struct mpool *ppool);
void mm_vm_defrag(struct mm_ptable *t, struct mpool *ppool);
void mm_vm_dump(struct mm_ptable *t);
_Bool mm_vm_get_mode(struct mm_ptable *t, ipaddr_t begin, ipaddr_t end,
      uint32_t *mode);

struct mm_stage1_locked mm_lock_stage1(void);
void mm_unlock_stage1(struct mm_stage1_locked *lock);
void *mm_identity_map(struct mm_stage1_locked stage1_locked, paddr_t begin,
        paddr_t end, uint32_t mode, struct mpool *ppool);
_Bool mm_unmap(struct mm_stage1_locked stage1_locked, paddr_t begin, paddr_t end,
       struct mpool *ppool);
void mm_defrag(struct mm_stage1_locked stage1_locked, struct mpool *ppool);

_Bool mm_init(struct mpool *ppool);
# 17 "../../inc/hf/boot_params.h" 2





struct mem_range {
 paddr_t begin;
 paddr_t end;
};

struct boot_params {
 cpu_id_t cpu_ids[8];
 size_t cpu_count;
 struct mem_range mem_ranges[20];
 size_t mem_ranges_count;
 struct mem_range device_mem_ranges[10];
 size_t device_mem_ranges_count;
 paddr_t initrd_begin;
 paddr_t initrd_end;
 uintreg_t kernel_arg;
};

struct boot_params_update {
 struct mem_range reserved_ranges[20];
 size_t reserved_ranges_count;
 paddr_t initrd_begin;
 paddr_t initrd_end;
};
# 15 "../../inc/hf/load.h" 2
# 1 "../../inc/hf/cpio.h" 1
# 16 "../../inc/hf/cpio.h"
_Bool cpio_get_file(const struct memiter *cpio, const struct string *name,
     struct memiter *it);
# 16 "../../inc/hf/load.h" 2
# 1 "../../inc/hf/manifest.h" 1
# 15 "../../inc/hf/manifest.h"
# 1 "../../inc/hf/vm.h" 1
# 11 "../../inc/hf/vm.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdatomic.h" 1 3
# 33 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdatomic.h" 3
# 1 "/home/dafu/Lab/hafnium/inc/system/sys/cdefs.h" 1 3
# 34 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdatomic.h" 2 3
# 130 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdatomic.h" 3
# 1 "/home/dafu/Lab/hafnium/inc/system/sys/types.h" 1 3
# 131 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdatomic.h" 2 3
# 140 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdatomic.h" 3
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 1 3
# 141 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdatomic.h" 2 3
# 225 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdatomic.h" 3
typedef enum {
 memory_order_relaxed = 0,
 memory_order_consume = 1,
 memory_order_acquire = 2,
 memory_order_release = 3,
 memory_order_acq_rel = 4,
 memory_order_seq_cst = 5
} memory_order;





static __inline void atomic_thread_fence(memory_order __order __attribute__((unused))) {
 __c11_atomic_thread_fence(__order);
}

static __inline void atomic_signal_fence(memory_order __order __attribute__((unused))) {
 __c11_atomic_signal_fence(__order);
}
# 256 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdatomic.h" 3
typedef _Atomic(_Bool) atomic_bool;
typedef _Atomic(char) atomic_char;
typedef _Atomic(signed char) atomic_schar;
typedef _Atomic(unsigned char) atomic_uchar;
typedef _Atomic(short) atomic_short;
typedef _Atomic(unsigned short) atomic_ushort;
typedef _Atomic(int) atomic_int;
typedef _Atomic(unsigned int) atomic_uint;
typedef _Atomic(long) atomic_long;
typedef _Atomic(unsigned long) atomic_ulong;
typedef _Atomic(long long) atomic_llong;
typedef _Atomic(unsigned long long) atomic_ullong;




typedef _Atomic(wchar_t) atomic_wchar_t;
typedef _Atomic(int_least8_t) atomic_int_least8_t;
typedef _Atomic(uint_least8_t) atomic_uint_least8_t;
typedef _Atomic(int_least16_t) atomic_int_least16_t;
typedef _Atomic(uint_least16_t) atomic_uint_least16_t;
typedef _Atomic(int_least32_t) atomic_int_least32_t;
typedef _Atomic(uint_least32_t) atomic_uint_least32_t;
typedef _Atomic(int_least64_t) atomic_int_least64_t;
typedef _Atomic(uint_least64_t) atomic_uint_least64_t;
typedef _Atomic(int_fast8_t) atomic_int_fast8_t;
typedef _Atomic(uint_fast8_t) atomic_uint_fast8_t;
typedef _Atomic(int_fast16_t) atomic_int_fast16_t;
typedef _Atomic(uint_fast16_t) atomic_uint_fast16_t;
typedef _Atomic(int_fast32_t) atomic_int_fast32_t;
typedef _Atomic(uint_fast32_t) atomic_uint_fast32_t;
typedef _Atomic(int_fast64_t) atomic_int_fast64_t;
typedef _Atomic(uint_fast64_t) atomic_uint_fast64_t;
typedef _Atomic(intptr_t) atomic_intptr_t;
typedef _Atomic(uintptr_t) atomic_uintptr_t;
typedef _Atomic(size_t) atomic_size_t;
typedef _Atomic(ptrdiff_t) atomic_ptrdiff_t;
typedef _Atomic(intmax_t) atomic_intmax_t;
typedef _Atomic(uintmax_t) atomic_uintmax_t;
# 363 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdatomic.h" 3
typedef struct {
 atomic_bool __flag;
} atomic_flag;



static __inline _Bool atomic_flag_test_and_set_explicit(volatile atomic_flag *__object, memory_order __order) {
 return (__c11_atomic_exchange(&__object->__flag, 1, __order));
}

static __inline void atomic_flag_clear_explicit(volatile atomic_flag *__object, memory_order __order) {
 __c11_atomic_store(&__object->__flag, 0, __order);
}

static __inline _Bool atomic_flag_test_and_set(volatile atomic_flag *__object) {
 return (atomic_flag_test_and_set_explicit(__object, memory_order_seq_cst));
}

static __inline void atomic_flag_clear(volatile atomic_flag *__object) {
 atomic_flag_clear_explicit(__object, memory_order_seq_cst);
}
# 12 "../../inc/hf/vm.h" 2



# 1 "../../inc/hf/cpu.h" 1
# 14 "../../inc/hf/cpu.h"
struct cpu {

 cpu_id_t id;


 void *stack_bottom;


 struct spinlock lock;


 _Bool is_on;
};

void cpu_module_init(const cpu_id_t *cpu_ids, size_t count);

size_t cpu_index(struct cpu *c);
struct cpu *cpu_find_index(size_t index);
_Bool cpu_on(struct cpu *c, ipaddr_t entry, uintreg_t arg);
void cpu_off(struct cpu *c);
struct cpu *cpu_find(cpu_id_t id);
uint8_t *cpu_get_buffer(struct cpu *c);
uint32_t cpu_get_buffer_size(struct cpu *c);
# 16 "../../inc/hf/vm.h" 2
# 1 "../../inc/hf/list.h" 1
# 12 "../../inc/hf/list.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 1 3
# 13 "../../inc/hf/list.h" 2

struct list_entry {
 struct list_entry *next;
 struct list_entry *prev;
};
# 26 "../../inc/hf/list.h"
static inline void list_init(struct list_entry *e)
{
 e->next = e;
 e->prev = e;
}

static inline void list_append(struct list_entry *l, struct list_entry *e)
{
 e->next = l;
 e->prev = l->prev;

 e->next->prev = e;
 e->prev->next = e;
}

static inline void list_prepend(struct list_entry *l, struct list_entry *e)
{
 e->next = l->next;
 e->prev = l;

 e->next->prev = e;
 e->prev->next = e;
}

static inline _Bool list_empty(struct list_entry *l)
{
 return l->next == l;
}

static inline void list_remove(struct list_entry *e)
{
 e->prev->next = e->next;
 e->next->prev = e->prev;
 list_init(e);
}
# 17 "../../inc/hf/vm.h" 2
# 35 "../../inc/hf/vm.h"
enum mailbox_state {

 MAILBOX_STATE_EMPTY,


 MAILBOX_STATE_RECEIVED,


 MAILBOX_STATE_READ,
};

struct wait_entry {

 struct vm *waiting_vm;





 struct list_entry wait_links;





 struct list_entry ready_links;
};

struct mailbox {
 enum mailbox_state state;
 void *recv;
 const void *send;


 ffa_vm_id_t recv_sender;


 uint32_t recv_size;





 uint32_t recv_func;







 struct list_entry waiter_list;





 struct list_entry ready_list;
};

struct smc_whitelist {
 uint32_t smcs[32];
 uint16_t smc_count;
 _Bool permissive;
};

struct vm {
 ffa_vm_id_t id;
 struct ffa_uuid uuid;
 struct smc_whitelist smc_whitelist;


 struct spinlock lock;
 ffa_vcpu_count_t vcpu_count;
 struct vcpu vcpus[8];
 struct mm_ptable ptable;
 struct mailbox mailbox;
 char log_buffer[256];
 uint16_t log_buffer_length;





 struct wait_entry wait_entries[16];

 atomic_bool aborting;




 _Bool initialized;
 uint16_t boot_order;
 struct vm *next_boot;


 struct arch_vm arch;
};


struct vm_locked {
 struct vm *vm;
};


struct two_vm_locked {
 struct vm_locked vm1;
 struct vm_locked vm2;
};

struct vm *vm_init(ffa_vm_id_t id, ffa_vcpu_count_t vcpu_count,
     struct mpool *ppool);
_Bool vm_init_next(ffa_vcpu_count_t vcpu_count, struct mpool *ppool,
    struct vm **new_vm);
ffa_vm_count_t vm_get_count(void);
struct vm *vm_find(ffa_vm_id_t id);
struct vm *vm_find_index(uint16_t index);
struct vm_locked vm_lock(struct vm *vm);
struct two_vm_locked vm_lock_both(struct vm *vm1, struct vm *vm2);
void vm_unlock(struct vm_locked *locked);
struct vcpu *vm_get_vcpu(struct vm *vm, ffa_vcpu_index_t vcpu_index);
struct wait_entry *vm_get_wait_entry(struct vm *vm, ffa_vm_id_t for_vm);
ffa_vm_id_t vm_id_for_wait_entry(struct vm *vm, struct wait_entry *entry);
_Bool vm_id_is_current_world(ffa_vm_id_t vm_id);

_Bool vm_identity_map(struct vm_locked vm_locked, paddr_t begin, paddr_t end,
       uint32_t mode, struct mpool *ppool, ipaddr_t *ipa);
_Bool vm_identity_prepare(struct vm_locked vm_locked, paddr_t begin, paddr_t end,
    uint32_t mode, struct mpool *ppool);
void vm_identity_commit(struct vm_locked vm_locked, paddr_t begin, paddr_t end,
   uint32_t mode, struct mpool *ppool, ipaddr_t *ipa);
_Bool vm_unmap(struct vm_locked vm_locked, paddr_t begin, paddr_t end,
       struct mpool *ppool);
_Bool vm_unmap_hypervisor(struct vm_locked vm_locked, struct mpool *ppool);

void vm_update_boot(struct vm *vm);
struct vm *vm_get_first_boot(void);
# 16 "../../inc/hf/manifest.h" 2
# 34 "../../inc/hf/manifest.h"
enum run_time_el {
 EL1 = 0,
 S_EL0,
 S_EL1,
 SUPERVISOR_MODE,
 SECURE_USER_MODE,
 SECURE_SUPERVISOR_MODE
};

enum execution_state { AARCH64 = 0, AARCH32 };

enum xlat_granule { PAGE_4KB = 0, PAGE_16KB, PAGE_64KB };

enum messaging_method {
 DIRECT_MESSAGING = 0,
 INDIRECT_MESSAGING,
 BOTH_MESSAGING
};




struct memory_region {




 uintptr_t base_address;

 uint32_t page_count;

 uint32_t attributes;

 struct string name;
};

struct interrupt {
 uint32_t id;
 uint32_t attributes;
};




struct device_region {

 uintptr_t base_address;

 uint32_t page_count;

 uint32_t attributes;

 struct interrupt interrupts[4];

 uint32_t smmu_id;

 uint32_t stream_ids[4];

 _Bool exclusive_access;

 struct string name;
};





struct rx_tx {
 _Bool available;
 uint32_t rx_phandle;
 uint32_t tx_phandle;
 struct memory_region *rx_buffer;
 struct memory_region *tx_buffer;
};




struct sp_manifest {

 uint32_t ffa_version;

 struct ffa_uuid uuid;

 ffa_vm_id_t id;

 ffa_vm_id_t aux_id;




 ffa_vcpu_count_t execution_ctx_count;

 enum run_time_el run_time_el;

 enum execution_state execution_state;

 uintpaddr_t load_addr;

 size_t ep_offset;

 enum xlat_granule xlat_granule;

 uint16_t boot_order;


 struct rx_tx rxtx;


 enum messaging_method messaging_method;

 _Bool has_primary_scheduler;

 uint8_t runtime_model;

 _Bool time_slice_mem;

 uint32_t stream_ep_ids[1];


 uint8_t mem_region_count;
 struct memory_region mem_regions[8];

 uint8_t dev_region_count;
 struct device_region dev_regions[8];
};




struct sp_pkg_header {

 uint32_t magic;

 uint32_t version;

 uint32_t pm_offset;

 uint32_t pm_size;

 uint32_t img_offset;

 uint32_t img_size;
};




struct manifest_vm {

 struct string debug_name;
 struct string kernel_filename;
 struct smc_whitelist smc_whitelist;
 _Bool is_ffa_partition;
 struct sp_manifest sp;

 union {

  struct {
   uint64_t boot_address;
   struct string ramdisk_filename;
  } primary;

  struct {
   uint64_t mem_size;
   ffa_vcpu_count_t vcpu_count;
   struct string fdt_filename;
  } secondary;
 };
};




struct manifest {
 _Bool ffa_tee_enabled;
 ffa_vm_count_t vm_count;
 struct manifest_vm vm[16];
};

enum manifest_return_code {
 MANIFEST_SUCCESS = 0,
 MANIFEST_ERROR_FILE_SIZE,
 MANIFEST_ERROR_MALFORMED_DTB,
 MANIFEST_ERROR_NO_ROOT_NODE,
 MANIFEST_ERROR_NO_HYPERVISOR_FDT_NODE,
 MANIFEST_ERROR_NOT_COMPATIBLE,
 MANIFEST_ERROR_RESERVED_VM_ID,
 MANIFEST_ERROR_NO_PRIMARY_VM,
 MANIFEST_ERROR_TOO_MANY_VMS,
 MANIFEST_ERROR_PROPERTY_NOT_FOUND,
 MANIFEST_ERROR_MALFORMED_STRING,
 MANIFEST_ERROR_STRING_TOO_LONG,
 MANIFEST_ERROR_MALFORMED_INTEGER,
 MANIFEST_ERROR_INTEGER_OVERFLOW,
 MANIFEST_ERROR_MALFORMED_INTEGER_LIST,
 MANIFEST_ERROR_MALFORMED_BOOLEAN,
 MANIFEST_ERROR_MEMORY_REGION_NODE_EMPTY,
 MANIFEST_ERROR_DEVICE_REGION_NODE_EMPTY,
 MANIFEST_ERROR_RXTX_SIZE_MISMATCH,
};

enum manifest_return_code manifest_init(struct mm_stage1_locked stage1_locked,
     struct manifest *manifest,
     struct memiter *manifest_fdt,
     struct mpool *ppool);

void manifest_dump(struct manifest_vm *vm);

const char *manifest_strerror(enum manifest_return_code ret_code);
# 17 "../../inc/hf/load.h" 2




_Bool load_vms(struct mm_stage1_locked stage1_locked,
       const struct manifest *manifest, const struct memiter *cpio,
       const struct boot_params *params,
       struct boot_params_update *update, struct mpool *ppool);
# 10 "../../src/load.c" 2



# 1 "../../inc/hf/arch/other_world.h" 1
# 14 "../../inc/hf/arch/other_world.h"
void arch_other_world_init(void);
_Bool arch_other_world_vm_init(struct vm *other_world_vm, struct mpool *ppool);
struct ffa_value arch_other_world_call(struct ffa_value args);
_Bool arch_other_world_is_direct_request_valid(struct vcpu *current,
           ffa_vm_id_t sender_vm_id,
           ffa_vm_id_t receiver_vm_id);
_Bool arch_other_world_is_direct_response_valid(struct vcpu *current,
            ffa_vm_id_t sender_vm_id,
            ffa_vm_id_t receiver_vm_id);
# 14 "../../src/load.c" 2
# 1 "../../inc/hf/arch/vm.h" 1
# 16 "../../inc/hf/arch/vm.h"
void arch_vm_features_set(struct vm *vm);




ffa_partition_properties_t arch_vm_partition_properties(ffa_vm_id_t id);
# 15 "../../src/load.c" 2

# 1 "../../inc/hf/api.h" 1
# 15 "../../inc/hf/api.h"
# 1 "../../inc/vmapi/hf/call.h" 1
# 11 "../../inc/vmapi/hf/call.h"
# 1 "../../inc/vmapi/hf/abi.h" 1
# 12 "../../inc/vmapi/hf/call.h" 2







int64_t hf_call(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3);
struct ffa_value ffa_call(struct ffa_value args);




static inline struct ffa_value ffa_id_get(void)
{
 return ffa_call((struct ffa_value){.func = 0x84000069});
}
# 45 "../../inc/vmapi/hf/call.h"
static inline struct ffa_value ffa_partition_info_get(
 const struct ffa_uuid *uuid)
{
 return ffa_call((struct ffa_value){.func = 0x84000068,
        .arg1 = uuid->uuid[0],
        .arg2 = uuid->uuid[1],
        .arg3 = uuid->uuid[2],
        .arg4 = uuid->uuid[3]});
}




static inline ffa_vm_id_t hf_vm_get_id(void)
{
 return ffa_id_get().arg2;
}




static inline struct ffa_value ffa_run(ffa_vm_id_t vm_id,
           ffa_vcpu_index_t vcpu_idx)
{
 return ffa_call((struct ffa_value){.func = 0x8400006D,
        ffa_vm_vcpu(vm_id, vcpu_idx)});
}





static inline struct ffa_value ffa_yield(void)
{
 return ffa_call((struct ffa_value){.func = 0x8400006C});
}
# 97 "../../inc/vmapi/hf/call.h"
static inline struct ffa_value ffa_rxtx_map(hf_ipaddr_t send, hf_ipaddr_t recv)
{
 return ffa_call(
  (struct ffa_value){.func = 0xC4000066,
       .arg1 = send,
       .arg2 = recv,
       .arg3 = 4096 / 4096});
}
# 122 "../../inc/vmapi/hf/call.h"
static inline struct ffa_value ffa_msg_send(ffa_vm_id_t sender_vm_id,
         ffa_vm_id_t target_vm_id,
         uint32_t size, uint32_t attributes)
{
 return ffa_call((struct ffa_value){
  .func = 0x8400006E,
  .arg1 = ((uint64_t)sender_vm_id << 16) | target_vm_id,
  .arg3 = size,
  .arg4 = attributes});
}

static inline struct ffa_value ffa_mem_donate(uint32_t length,
           uint32_t fragment_length)
{
 return ffa_call((struct ffa_value){.func = 0x84000071,
        .arg1 = length,
        .arg2 = fragment_length});
}

static inline struct ffa_value ffa_mem_lend(uint32_t length,
         uint32_t fragment_length)
{
 return ffa_call((struct ffa_value){.func = 0x84000072,
        .arg1 = length,
        .arg2 = fragment_length});
}

static inline struct ffa_value ffa_mem_share(uint32_t length,
          uint32_t fragment_length)
{
 return ffa_call((struct ffa_value){.func = 0x84000073,
        .arg1 = length,
        .arg2 = fragment_length});
}

static inline struct ffa_value ffa_mem_retrieve_req(uint32_t length,
          uint32_t fragment_length)
{
 return ffa_call((struct ffa_value){.func = 0x84000074,
        .arg1 = length,
        .arg2 = fragment_length});
}

static inline struct ffa_value ffa_mem_relinquish(void)
{
 return ffa_call((struct ffa_value){.func = 0x84000076});
}

static inline struct ffa_value ffa_mem_reclaim(ffa_memory_handle_t handle,
            ffa_memory_region_flags_t flags)
{
 return ffa_call((struct ffa_value){.func = 0x84000077,
        .arg1 = (uint32_t)handle,
        .arg2 = (uint32_t)(handle >> 32),
        .arg3 = flags});
}

static inline struct ffa_value ffa_mem_frag_rx(ffa_memory_handle_t handle,
            uint32_t fragment_offset)
{

 return ffa_call((struct ffa_value){.func = 0x8400007A,
        .arg1 = (uint32_t)handle,
        .arg2 = (uint32_t)(handle >> 32),
        .arg3 = fragment_offset});
}

static inline struct ffa_value ffa_mem_frag_tx(ffa_memory_handle_t handle,
            uint32_t fragment_length)
{

 return ffa_call((struct ffa_value){.func = 0x8400007B,
        .arg1 = (uint32_t)handle,
        .arg2 = (uint32_t)(handle >> 32),
        .arg3 = fragment_length});
}
# 216 "../../inc/vmapi/hf/call.h"
static inline struct ffa_value ffa_msg_wait(void)
{
 return ffa_call((struct ffa_value){.func = 0x8400006B});
}
# 233 "../../inc/vmapi/hf/call.h"
static inline struct ffa_value ffa_msg_poll(void)
{
 return ffa_call((struct ffa_value){.func = 0x8400006A});
}
# 250 "../../inc/vmapi/hf/call.h"
static inline struct ffa_value ffa_rx_release(void)
{
 return ffa_call((struct ffa_value){.func = 0x84000065});
}
# 266 "../../inc/vmapi/hf/call.h"
static inline int64_t hf_mailbox_writable_get(void)
{
 return hf_call(0xff01, 0, 0, 0);
}
# 278 "../../inc/vmapi/hf/call.h"
static inline int64_t hf_mailbox_waiter_get(ffa_vm_id_t vm_id)
{
 return hf_call(0xff02, vm_id, 0, 0);
}






static inline int64_t hf_interrupt_enable(uint32_t intid, _Bool enable)
{
 return hf_call(0xff03, intid, enable, 0);
}






static inline uint32_t hf_interrupt_get(void)
{
 return hf_call(0xff04, 0, 0, 0);
}
# 316 "../../inc/vmapi/hf/call.h"
static inline int64_t hf_interrupt_inject(ffa_vm_id_t target_vm_id,
       ffa_vcpu_index_t target_vcpu_idx,
       uint32_t intid)
{
 return hf_call(0xff05, target_vm_id, target_vcpu_idx,
         intid);
}






static inline int64_t hf_debug_log(char c)
{
 return hf_call(0xbd000000, c, 0, 0);
}


static inline int32_t ffa_version(uint32_t requested_version)
{
 return ffa_call((struct ffa_value){.func = 0x84000063,
        .arg1 = requested_version})
  .func;
}
# 352 "../../inc/vmapi/hf/call.h"
static inline struct ffa_value ffa_features(uint32_t function_id)
{
 return ffa_call((struct ffa_value){.func = 0x84000064,
        .arg1 = function_id});
}

static inline struct ffa_value ffa_msg_send_direct_req(
 ffa_vm_id_t sender_vm_id, ffa_vm_id_t target_vm_id, uint32_t arg3,
 uint32_t arg4, uint32_t arg5, uint32_t arg6, uint32_t arg7)
{
 return ffa_call((struct ffa_value){
  .func = 0x8400006F,
  .arg1 = ((uint64_t)sender_vm_id << 16) | target_vm_id,
  .arg3 = arg3,
  .arg4 = arg4,
  .arg5 = arg5,
  .arg6 = arg6,
  .arg7 = arg7,
 });
}

static inline struct ffa_value ffa_msg_send_direct_resp(
 ffa_vm_id_t sender_vm_id, ffa_vm_id_t target_vm_id, uint32_t arg3,
 uint32_t arg4, uint32_t arg5, uint32_t arg6, uint32_t arg7)
{
 return ffa_call((struct ffa_value){
  .func = 0x84000070,
  .arg1 = ((uint64_t)sender_vm_id << 16) | target_vm_id,
  .arg3 = arg3,
  .arg4 = arg4,
  .arg5 = arg5,
  .arg6 = arg6,
  .arg7 = arg7,
 });
}
# 16 "../../inc/hf/api.h" 2


void api_init(struct mpool *ppool);
void api_regs_state_saved(struct vcpu *vcpu);
int64_t api_mailbox_writable_get(const struct vcpu *current);
int64_t api_mailbox_waiter_get(ffa_vm_id_t vm_id, const struct vcpu *current);
int64_t api_debug_log(char c, struct vcpu *current);

struct vcpu *api_preempt(struct vcpu *current);
struct vcpu *api_wait_for_interrupt(struct vcpu *current);
struct vcpu *api_vcpu_off(struct vcpu *current);
struct vcpu *api_abort(struct vcpu *current);
struct vcpu *api_wake_up(struct vcpu *current, struct vcpu *target_vcpu);

int64_t api_interrupt_enable(uint32_t intid, _Bool enable, struct vcpu *current);
uint32_t api_interrupt_get(struct vcpu *current);
int64_t api_interrupt_inject(ffa_vm_id_t target_vm_id,
        ffa_vcpu_index_t target_vcpu_idx, uint32_t intid,
        struct vcpu *current, struct vcpu **next);

struct ffa_value api_ffa_msg_send(ffa_vm_id_t sender_vm_id,
      ffa_vm_id_t receiver_vm_id, uint32_t size,
      uint32_t attributes, struct vcpu *current,
      struct vcpu **next);
struct ffa_value api_ffa_msg_recv(_Bool block, struct vcpu *current,
      struct vcpu **next);
struct ffa_value api_ffa_rx_release(struct vcpu *current, struct vcpu **next);
struct ffa_value api_vm_configure_pages(
 struct mm_stage1_locked mm_stage1_locked, struct vm_locked vm_locked,
 ipaddr_t send, ipaddr_t recv, uint32_t page_count,
 struct mpool *local_page_pool);
struct ffa_value api_ffa_rxtx_map(ipaddr_t send, ipaddr_t recv,
      uint32_t page_count, struct vcpu *current,
      struct vcpu **next);
struct ffa_value api_yield(struct vcpu *current, struct vcpu **next);
struct ffa_value api_ffa_version(uint32_t requested_version);
struct ffa_value api_ffa_partition_info_get(struct vcpu *current,
         const struct ffa_uuid *uuid);
struct ffa_value api_ffa_id_get(const struct vcpu *current);
struct ffa_value api_ffa_features(uint32_t function_id);
struct ffa_value api_ffa_run(ffa_vm_id_t vm_id, ffa_vcpu_index_t vcpu_idx,
        const struct vcpu *current, struct vcpu **next);
struct ffa_value api_ffa_mem_send(uint32_t share_func, uint32_t length,
      uint32_t fragment_length, ipaddr_t address,
      uint32_t page_count, struct vcpu *current);
struct ffa_value api_ffa_mem_retrieve_req(uint32_t length,
       uint32_t fragment_length,
       ipaddr_t address, uint32_t page_count,
       struct vcpu *current);
struct ffa_value api_ffa_mem_relinquish(struct vcpu *current);
struct ffa_value api_ffa_mem_reclaim(ffa_memory_handle_t handle,
         ffa_memory_region_flags_t flags,
         struct vcpu *current);
struct ffa_value api_ffa_mem_frag_rx(ffa_memory_handle_t handle,
         uint32_t fragment_offset,
         ffa_vm_id_t sender_vm_id,
         struct vcpu *current);
struct ffa_value api_ffa_mem_frag_tx(ffa_memory_handle_t handle,
         uint32_t fragment_length,
         ffa_vm_id_t sender_vm_id,
         struct vcpu *current);
struct ffa_value api_ffa_msg_send_direct_req(ffa_vm_id_t sender_vm_id,
          ffa_vm_id_t receiver_vm_id,
          struct ffa_value args,
          struct vcpu *current,
          struct vcpu **next);
struct ffa_value api_ffa_msg_send_direct_resp(ffa_vm_id_t sender_vm_id,
           ffa_vm_id_t receiver_vm_id,
           struct ffa_value args,
           struct vcpu *current,
           struct vcpu **next);
# 17 "../../src/load.c" 2


# 1 "../../inc/hf/dlog.h" 1
# 11 "../../inc/hf/dlog.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdarg.h" 1 3
# 14 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdarg.h" 3
typedef __builtin_va_list va_list;
# 32 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stdarg.h" 3
typedef __builtin_va_list __gnuc_va_list;
# 12 "../../inc/hf/dlog.h" 2
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 1 3
# 13 "../../inc/hf/dlog.h" 2
# 25 "../../inc/hf/dlog.h"
extern size_t dlog_buffer_offset;
extern char dlog_buffer[];

void dlog_enable_lock(void);
void dlog(const char *fmt, ...);
void vdlog(const char *fmt, va_list args);
# 62 "../../inc/hf/dlog.h"
void dlog_flush_vm_buffer(ffa_vm_id_t id, char buffer[], size_t length);
# 20 "../../src/load.c" 2
# 1 "../../inc/hf/fdt_patch.h" 1
# 16 "../../inc/hf/fdt_patch.h"
_Bool fdt_patch(struct mm_stage1_locked stage1_locked, paddr_t fdt_addr,
        struct boot_params_update *p, struct mpool *ppool);


_Bool fdt_patch_mem(struct mm_stage1_locked stage1_locked, paddr_t fdt_addr,
     size_t fdt_max_size, paddr_t mem_begin, paddr_t mem_end,
     struct mpool *ppool);
# 21 "../../src/load.c" 2
# 1 "../../inc/hf/layout.h" 1
# 16 "../../inc/hf/layout.h"
paddr_t layout_text_begin(void);
paddr_t layout_text_end(void);

paddr_t layout_rodata_begin(void);
paddr_t layout_rodata_end(void);

paddr_t layout_data_begin(void);
paddr_t layout_data_end(void);

paddr_t layout_initrd_begin(void);
paddr_t layout_initrd_end(void);

paddr_t layout_fdt_begin(void);
paddr_t layout_fdt_end(void);

paddr_t layout_image_end(void);

paddr_t layout_primary_begin(void);
# 22 "../../src/load.c" 2


# 1 "../../inc/hf/plat/console.h" 1
# 15 "../../inc/hf/plat/console.h"
void plat_console_init(void);


void plat_console_mm_init(struct mm_stage1_locked stage1_locked,
     struct mpool *ppool);


void plat_console_putchar(char c);


char plat_console_getchar(void);
# 25 "../../src/load.c" 2
# 1 "../../inc/hf/plat/iommu.h" 1
# 20 "../../inc/hf/plat/iommu.h"
_Bool plat_iommu_init(const struct fdt *fdt,
       struct mm_stage1_locked stage1_locked,
       struct mpool *ppool);
# 32 "../../inc/hf/plat/iommu.h"
_Bool plat_iommu_unmap_iommus(struct vm_locked vm_locked, struct mpool *ppool);
# 45 "../../inc/hf/plat/iommu.h"
void plat_iommu_identity_map(struct vm_locked vm_locked, paddr_t begin,
        paddr_t end, uint32_t mode);
# 26 "../../src/load.c" 2

# 1 "../../inc/hf/std.h" 1
# 11 "../../inc/hf/std.h"
# 1 "../../inc/hf/arch/std.h" 1
# 11 "../../inc/hf/arch/std.h"
# 1 "/home/dafu/Lab/hafnium/prebuilts/linux-x64/clang/lib64/clang/9.0.8/include/stddef.h" 1 3
# 12 "../../inc/hf/arch/std.h" 2




int memcmp(const void *a, const void *b, size_t n);

int strncmp(const char *a, const char *b, size_t n);
# 12 "../../inc/hf/std.h" 2

typedef size_t rsize_t;
# 29 "../../inc/hf/std.h"
void memset_s(void *dest, rsize_t destsz, int ch, rsize_t count);
void memcpy_s(void *dest, rsize_t destsz, const void *src, rsize_t count);
void memmove_s(void *dest, rsize_t destsz, const void *src, rsize_t count);

void *memchr(const void *ptr, int ch, size_t count);

size_t strnlen_s(const char *str, size_t strsz);
# 28 "../../src/load.c" 2
# 41 "../../src/load.c"
static _Bool copy_to_unmapped(struct mm_stage1_locked stage1_locked, paddr_t to,
        struct memiter *from_it, struct mpool *ppool)
{
 const void *from = memiter_base(from_it);
 size_t size = memiter_size(from_it);
 paddr_t to_end = pa_add(to, size);
 void *ptr;

 ptr = mm_identity_map(stage1_locked, to, to_end, 0x0002U, ppool);
 if (!ptr) {
  return 0;
 }

 memcpy_s(ptr, size, from, size);
 arch_mm_flush_dcache(ptr, size);

 do { if (!(mm_unmap(stage1_locked, to, to_end, ppool))) { panic("assertion failed (%s) at %s:%d", "mm_unmap(stage1_locked, to, to_end, ppool)", "../../src/load.c", 57); } } while (0);

 return 1;
}






static _Bool load_kernel(struct mm_stage1_locked stage1_locked, paddr_t begin,
   paddr_t end, const struct manifest_vm *manifest_vm,
   const struct memiter *cpio, struct mpool *ppool,
   size_t *kernel_size)
{
 struct memiter kernel;
 size_t size;

 if (!cpio_get_file(cpio, &manifest_vm->kernel_filename, &kernel)) {
  dlog("ERROR: " "Could not find kernel file \"%s\".\n", string_data(&manifest_vm->kernel_filename));

  return 0;
 }

 size = memiter_size(&kernel);
 if (pa_difference(begin, end) < size) {
  dlog("ERROR: " "Kernel is larger than available memory.\n");
  return 0;
 }

 if (!copy_to_unmapped(stage1_locked, begin, &kernel, ppool)) {
  dlog("ERROR: " "Unable to copy kernel.\n");
  return 0;
 }

 if (kernel_size) {
  *kernel_size = size;
 }

 return 1;
}




static _Bool link_rxtx_to_mailbox(struct mm_stage1_locked stage1_locked,
     struct vm_locked vm_locked, struct rx_tx rxtx,
     struct mpool *ppool)
{
 struct ffa_value ret;
 ipaddr_t send;
 ipaddr_t recv;
 uint32_t page_count;

 send = ipa_init(rxtx.tx_buffer->base_address);
 recv = ipa_init(rxtx.rx_buffer->base_address);
 page_count = rxtx.tx_buffer->page_count;

 ret = api_vm_configure_pages(stage1_locked, vm_locked, send, recv,
         page_count, ppool);
 if (ret.func != 0x84000061) {
  return 0;
 }


                                                              ;

 return 1;
}





static _Bool load_common(struct mm_stage1_locked stage1_locked,
   struct vm_locked vm_locked,
   const struct manifest_vm *manifest_vm,
   struct mpool *ppool)
{
 vm_locked.vm->smc_whitelist = manifest_vm->smc_whitelist;
 vm_locked.vm->uuid = manifest_vm->sp.uuid;

 if (manifest_vm->is_ffa_partition) {

  if (manifest_vm->sp.rxtx.available) {
   if (!link_rxtx_to_mailbox(stage1_locked, vm_locked,
        manifest_vm->sp.rxtx,
        ppool)) {
    dlog("ERROR: " "Unable to Link RX/TX buffer with " "mailbox.\n");


    return 0;
   }
  }

  vm_locked.vm->boot_order = manifest_vm->sp.boot_order;

  vm_update_boot(vm_locked.vm);
 }


 arch_vm_features_set(vm_locked.vm);

 return 1;
}




static _Bool load_primary(struct mm_stage1_locked stage1_locked,
    const struct manifest_vm *manifest_vm,
    const struct memiter *cpio,
    const struct boot_params *params, struct mpool *ppool)
{
 paddr_t primary_begin;
 ipaddr_t primary_entry;
 struct vm *vm;
 struct vm_locked vm_locked;
 struct vcpu_locked vcpu_locked;
 size_t i;
 _Bool ret;

 if (manifest_vm->is_ffa_partition) {
  primary_begin = pa_init(manifest_vm->sp.load_addr);
  primary_entry = ipa_add(ipa_from_pa(primary_begin),
     manifest_vm->sp.ep_offset);
 } else {
  primary_begin =
   (manifest_vm->primary.boot_address ==
    18446744073709551615UL)
    ? layout_primary_begin()
    : pa_init(manifest_vm->primary.boot_address);
  primary_entry = ipa_from_pa(primary_begin);
 }

 paddr_t primary_end = pa_add(primary_begin, (128 * 1024 * 1024));







 if (!string_is_empty(&manifest_vm->kernel_filename)) {
  if (!load_kernel(stage1_locked, primary_begin, primary_end,
     manifest_vm, cpio, ppool, ((void*)0))) {
   dlog("ERROR: " "Unable to load primary kernel.\n");
   return 0;
  }
 }

 if (!vm_init_next(8, ppool, &vm)) {
  dlog("ERROR: " "Unable to initialise primary VM.\n");
  return 0;
 }

 if (vm->id != ((0 + 1) + 0)) {
  dlog("ERROR: " "Primary VM was not given correct ID.\n");
  return 0;
 }

 vm_locked = vm_lock(vm);

 if (params->device_mem_ranges_count == 0) {






  dlog("WARNING: " "Device memory not provided, defaulting to 1 TB.\n");


  if (!vm_identity_map(
       vm_locked, pa_init(0),
       pa_init(1024UL * 1024 * 1024 * 1024),
       0x0001U | 0x0002U | 0x0008U, ppool, ((void*)0))) {
   dlog("ERROR: " "Unable to initialise address space for " "primary VM.\n");


   ret = 0;
   goto out;
  }
 }


 for (i = 0; i < params->mem_ranges_count; ++i) {
  if (!vm_identity_map(vm_locked, params->mem_ranges[i].begin,
         params->mem_ranges[i].end,
         0x0001U | 0x0002U | 0x0004U, ppool,
         ((void*)0))) {
   dlog("ERROR: " "Unable to initialise memory for primary " "VM.\n");


   ret = 0;
   goto out;
  }
 }


 for (i = 0; i < params->device_mem_ranges_count; ++i) {
  if (!vm_identity_map(
       vm_locked, params->device_mem_ranges[i].begin,
       params->device_mem_ranges[i].end,
       0x0001U | 0x0002U | 0x0008U, ppool, ((void*)0))) {
   dlog("Unable to initialise device memory for primary "
        "VM.\n");
   ret = 0;
   goto out;
  }
 }

 if (!load_common(stage1_locked, vm_locked, manifest_vm, ppool)) {
  ret = 0;
  goto out;
 }

 if (!vm_unmap_hypervisor(vm_locked, ppool)) {
  dlog("ERROR: " "Unable to unmap hypervisor from primary VM.\n");
  ret = 0;
  goto out;
 }

 if (!plat_iommu_unmap_iommus(vm_locked, ppool)) {
  dlog("ERROR: " "Unable to unmap IOMMUs from primary VM.\n");
  ret = 0;
  goto out;
 }

 dlog("INFO: " "Loaded primary VM with %u vCPUs, entry at %#x.\n", vm->vcpu_count, pa_addr(primary_begin));


 vcpu_locked = vcpu_lock(vm_get_vcpu(vm, 0));
 vcpu_on(vcpu_locked, primary_entry, params->kernel_arg);
 vcpu_unlock(&vcpu_locked);
 ret = 1;

out:
 vm_unlock(&vm_locked);

 return ret;
}







static _Bool load_secondary_fdt(struct mm_stage1_locked stage1_locked,
          paddr_t end, size_t fdt_max_size,
          const struct manifest_vm *manifest_vm,
          const struct memiter *cpio, struct mpool *ppool,
          paddr_t *fdt_addr, size_t *fdt_allocated_size)
{
 struct memiter fdt;
 size_t allocated_size;

 do { if (!(!string_is_empty(&manifest_vm->secondary.fdt_filename))) { panic("assertion failed (%s) at %s:%d", "!string_is_empty(&manifest_vm->secondary.fdt_filename)", "../../src/load.c", 315); } } while (0);

 if (!cpio_get_file(cpio, &manifest_vm->secondary.fdt_filename, &fdt)) {
  dlog("ERROR: " "Cannot open the secondary VM's FDT.\n");
  return 0;
 }





 allocated_size = __builtin_align_up((memiter_size(&fdt)), ((1 << 12))) + (1 << 12);

 if (allocated_size > fdt_max_size) {
  dlog("ERROR: " "FDT allocated space (%u) is more than the specified " "maximum to use (%u).\n", allocated_size, fdt_max_size);



  return 0;
 }


 *fdt_addr = pa_init(pa_addr(pa_sub(end, allocated_size)));

 dlog("INFO: " "Loading secondary FDT of allocated size %u at 0x%x.\n", allocated_size, pa_addr(*fdt_addr));


 if (!copy_to_unmapped(stage1_locked, *fdt_addr, &fdt, ppool)) {
  dlog("ERROR: " "Unable to copy FDT.\n");
  return 0;
 }

 if (fdt_allocated_size) {
  *fdt_allocated_size = allocated_size;
 }

 return 1;
}




static _Bool load_secondary(struct mm_stage1_locked stage1_locked,
      struct vm_locked primary_vm_locked,
      paddr_t mem_begin, paddr_t mem_end,
      const struct manifest_vm *manifest_vm,
      const struct memiter *cpio, struct mpool *ppool)
{
 struct vm *vm;
 struct vm_locked vm_locked;
 struct vcpu *vcpu;
 ipaddr_t secondary_entry;
 _Bool ret;
 paddr_t fdt_addr;
 _Bool has_fdt;
 size_t kernel_size = 0;
 const size_t mem_size = pa_difference(mem_begin, mem_end);







 if (!string_is_empty(&manifest_vm->kernel_filename)) {
  if (!load_kernel(stage1_locked, mem_begin, mem_end, manifest_vm,
     cpio, ppool, &kernel_size)) {
   dlog("ERROR: " "Unable to load kernel.\n");
   return 0;
  }
 }

 has_fdt = !string_is_empty(&manifest_vm->secondary.fdt_filename);
 if (has_fdt) {




  const size_t fdt_max_size =
   mem_size - __builtin_align_up((kernel_size), ((1 << 12)));

  size_t fdt_allocated_size;

  if (!load_secondary_fdt(stage1_locked, mem_end, fdt_max_size,
     manifest_vm, cpio, ppool, &fdt_addr,
     &fdt_allocated_size)) {
   dlog("ERROR: " "Unable to load FDT.\n");
   return 0;
  }

  if (!fdt_patch_mem(stage1_locked, fdt_addr, fdt_allocated_size,
       mem_begin, mem_end, ppool)) {
   dlog("ERROR: " "Unable to patch FDT.\n");
   return 0;
  }
 }

 if (!vm_init_next(manifest_vm->secondary.vcpu_count, ppool, &vm)) {
  dlog("ERROR: " "Unable to initialise VM.\n");
  return 0;
 }

 vm_locked = vm_lock(vm);


 if (!vm_identity_map(vm_locked, mem_begin, mem_end,
        0x0001U | 0x0002U | 0x0004U, ppool,
        &secondary_entry)) {
  dlog("ERROR: " "Unable to initialise memory.\n");
  ret = 0;
  goto out;
 }

 if (manifest_vm->is_ffa_partition) {
  int j = 0;
  paddr_t region_begin;
  paddr_t region_end;
  paddr_t alloc_base = mem_end;
  size_t size;
  size_t total_alloc = 0;


  while (j < manifest_vm->sp.mem_region_count) {
   size = manifest_vm->sp.mem_regions[j].page_count *
          (1 << 12);
# 448 "../../src/load.c"
   if (manifest_vm->sp.mem_regions[j].base_address ==
       18446744073709551615UL) {
    total_alloc += size;

    if (total_alloc >
        (manifest_vm->secondary.mem_size / 2)) {
     dlog("ERROR: " "Not enough space for memory-" "region allocation");


     ret = 0;
     goto out;
    }

    region_end = alloc_base;
    region_begin = pa_subtract(alloc_base, size);
    alloc_base = region_begin;

    if (!vm_identity_map(
         vm_locked, region_begin, region_end,
         manifest_vm->sp.mem_regions[j]
          .attributes,
         ppool, ((void*)0))) {
     dlog("ERROR: " "Unable to map secondary VM " "memory-region.\n");


     ret = 0;
     goto out;
    }

    dlog("INFO: " "  Memory region %#x - %#x allocated\n", region_begin, region_end);


   } else {




    region_begin =
     pa_init(manifest_vm->sp.mem_regions[j]
       .base_address);
    region_end = pa_add(region_begin, size);

    if (!vm_identity_map(
         vm_locked, region_begin, region_end,
         manifest_vm->sp.mem_regions[j]
          .attributes,
         ppool, ((void*)0))) {
     dlog("ERROR: " "Unable to map secondary VM " "memory-region.\n");


     ret = 0;
     goto out;
    }
   }


   if (!vm_unmap(primary_vm_locked, region_begin,
          region_end, ppool)) {
    dlog("ERROR: " "Unable to unmap secondary VM memory-" "region from primary VM.\n");


    ret = 0;
    goto out;
   }

   j++;
  }


  j = 0;
  while (j < manifest_vm->sp.dev_region_count) {
   region_begin = pa_init(
    manifest_vm->sp.dev_regions[j].base_address);
   size = manifest_vm->sp.dev_regions[j].page_count *
          (1 << 12);
   region_end = pa_add(region_begin, size);

   if (!vm_identity_map(
        vm_locked, region_begin, region_end,
        manifest_vm->sp.dev_regions[j].attributes,
        ppool, ((void*)0))) {
    dlog("ERROR: " "Unable to map secondary VM " "device-region.\n");


    ret = 0;
    goto out;
   }

   if (!vm_unmap(primary_vm_locked, region_begin,
          region_end, ppool)) {
    dlog("ERROR: " "Unable to unmap secondary VM device-" "region from primary VM.\n");


    ret = 0;
    goto out;
   }
   j++;
  }

  secondary_entry =
   ipa_add(secondary_entry, manifest_vm->sp.ep_offset);
 }

 if (!load_common(stage1_locked, vm_locked, manifest_vm, ppool)) {
  ret = 0;
  goto out;
 }

 dlog("INFO: " "Loaded with %u vCPUs, entry at %#x.\n", manifest_vm->secondary.vcpu_count, pa_addr(mem_begin));


 vcpu = vm_get_vcpu(vm, 0);

 if (has_fdt) {
  vcpu_secondary_reset_and_start(vcpu, secondary_entry,
            pa_addr(fdt_addr));
 } else {





  vcpu_secondary_reset_and_start(vcpu, secondary_entry, mem_size);
 }

 ret = 1;

out:
 vm_unlock(&vm_locked);

 return ret;
}






static _Bool carve_out_mem_range(struct mem_range *mem_ranges,
    size_t mem_ranges_count, uint64_t size_to_find,
    paddr_t *found_begin, paddr_t *found_end)
{
 size_t i;





 for (i = 0; i < mem_ranges_count; ++i) {
  if (size_to_find <=
      pa_difference(mem_ranges[i].begin, mem_ranges[i].end)) {




   *found_end = mem_ranges[i].end;
   *found_begin = pa_init(pa_addr(mem_ranges[i].end) -
            size_to_find);
   mem_ranges[i].end = *found_begin;
   return 1;
  }
 }
 return 0;
}
# 620 "../../src/load.c"
static _Bool update_reserved_ranges(struct boot_params_update *update,
       const struct mem_range *before,
       const struct mem_range *after,
       size_t mem_ranges_count)
{
 size_t i;

 for (i = 0; i < mem_ranges_count; ++i) {
  if (pa_addr(after[i].begin) > pa_addr(before[i].begin)) {
   if (update->reserved_ranges_count >= 20) {
    dlog("ERROR: " "Too many reserved ranges after " "loading secondary VMs.\n");


    return 0;
   }
   update->reserved_ranges[update->reserved_ranges_count]
    .begin = before[i].begin;
   update->reserved_ranges[update->reserved_ranges_count]
    .end = after[i].begin;
   update->reserved_ranges_count++;
  }
  if (pa_addr(after[i].end) < pa_addr(before[i].end)) {
   if (update->reserved_ranges_count >= 20) {
    dlog("ERROR: " "Too many reserved ranges after " "loading secondary VMs.\n");


    return 0;
   }
   update->reserved_ranges[update->reserved_ranges_count]
    .begin = after[i].end;
   update->reserved_ranges[update->reserved_ranges_count]
    .end = before[i].end;
   update->reserved_ranges_count++;
  }
 }

 return 1;
}

static _Bool init_other_world_vm(struct mpool *ppool)
{
 struct vm *other_world_vm;
 size_t i;






 other_world_vm = vm_init(0x8000, 8, ppool);
 do { if (!(other_world_vm != ((void*)0))) { panic("assertion failed (%s) at %s:%d", "other_world_vm != NULL", "../../src/load.c", 670); } } while (0);

 for (i = 0; i < 8; i++) {
  struct vcpu *vcpu = vm_get_vcpu(other_world_vm, i);
  struct cpu *cpu = cpu_find_index(i);

  vcpu->cpu = cpu;
 }

 return arch_other_world_vm_init(other_world_vm, ppool);
}




_Bool load_vms(struct mm_stage1_locked stage1_locked,
       const struct manifest *manifest, const struct memiter *cpio,
       const struct boot_params *params,
       struct boot_params_update *update, struct mpool *ppool)
{
 struct vm *primary;
 struct mem_range mem_ranges_available[20];
 struct vm_locked primary_vm_locked;
 size_t i;
 _Bool success = 1;





 if (vm_id_is_current_world(((0 + 1) + 0))) {
  if (!load_primary(stage1_locked,
      &manifest->vm[0], cpio,
      params, ppool)) {
   dlog("ERROR: " "Unable to load primary VM.\n");
   return 0;
  }
 }

 if (!init_other_world_vm(ppool)) {
  return 0;
 }

 _Static_assert(
  sizeof(mem_ranges_available) == sizeof(params->mem_ranges),
  "mem_range arrays must be the same size for memcpy.");
 _Static_assert(sizeof(mem_ranges_available) < 500,
        "This will use too much stack, either make "
        "MAX_MEM_RANGES smaller or change this.");
 memcpy_s(mem_ranges_available, sizeof(mem_ranges_available),
   params->mem_ranges, sizeof(params->mem_ranges));


 for (i = 0; i < params->mem_ranges_count; ++i) {
  mem_ranges_available[i].end = pa_init(__builtin_align_down((pa_addr(mem_ranges_available[i].end)), ((1 << 12))));

 }

 primary = vm_find(((0 + 1) + 0));
 primary_vm_locked = vm_lock(primary);

 for (i = 0; i < manifest->vm_count; ++i) {
  const struct manifest_vm *manifest_vm = &manifest->vm[i];
  ffa_vm_id_t vm_id = (0 + 1) + i;
  uint64_t mem_size;
  paddr_t secondary_mem_begin;
  paddr_t secondary_mem_end;

  if (vm_id == ((0 + 1) + 0)) {
   continue;
  }

  dlog("INFO: " "Loading VM id %#x: %s.\n", vm_id, manifest_vm->debug_name);


  mem_size = __builtin_align_up((manifest_vm->secondary.mem_size), ((1 << 12)));

  if (manifest_vm->is_ffa_partition) {
   secondary_mem_begin =
    pa_init(manifest_vm->sp.load_addr);
   secondary_mem_end =
    pa_init(manifest_vm->sp.load_addr + mem_size);
  } else if (!carve_out_mem_range(mem_ranges_available,
      params->mem_ranges_count,
      mem_size, &secondary_mem_begin,
      &secondary_mem_end)) {
   dlog("ERROR: " "Not enough memory (%u bytes).\n", mem_size);
   continue;
  }

  if (!load_secondary(stage1_locked, primary_vm_locked,
        secondary_mem_begin, secondary_mem_end,
        manifest_vm, cpio, ppool)) {
   dlog("ERROR: " "Unable to load VM.\n");
   continue;
  }


  if (!vm_unmap(primary_vm_locked, secondary_mem_begin,
         secondary_mem_end, ppool)) {
   dlog("ERROR: " "Unable to unmap secondary VM from primary " "VM.\n");


   success = 0;
   break;
  }
 }

 vm_unlock(&primary_vm_locked);

 if (!success) {
  return 0;
 }
# 791 "../../src/load.c"
 return update_reserved_ranges(update, params->mem_ranges,
          mem_ranges_available,
          params->mem_ranges_count);
}
