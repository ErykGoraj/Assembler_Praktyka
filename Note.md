## How to check program execution time?
On linux type in cmd "time ./compiled_asm_code"

![alt text](images/Execution_Time.png)

![alt text](images/Time_Command.png)

## Jump instructions!

Conditional jump instructions depend on the state of the flags in the `rflags` register (or `eflags` in the SASM program), which are modified by instructions like `cmp`[cite: 1]. These flags must be evaluated immediately after executing the `cmp` instruction, before they are changed by other operations[cite: 1].

### Basic Flags:
- **ZF (Zero Flag)**[cite: 1]
- **OF (Overflow Flag)**[cite: 1]
- **SF (Sign Flag)**[cite: 1]

### Jump Instructions and Flags Table (Table 7-1):

| Instruction | Flags | Meaning | Use |
| :--- | :--- | :--- | :--- |
| `je` | `ZF=1` | Jump if equal | Signed, unsigned[cite: 1] |
| `jne` | `ZF=0` | Jump if not equal | Signed, unsigned[cite: 1] |
| `jg` | `((SF XOR OF) OR ZF) = 0` | Jump if greater | Signed[cite: 1] |
| `jge` | `(SF XOR OF) = 0` | Jump if greater or equal | Signed[cite: 1] |
| `jl` | `(SF XOR OF) = 1` | Jump if lower | Signed[cite: 1] |
| `jle` | `((SF XOR OF) OR ZF) = 1` | Jump if lower or equal | Signed[cite: 1] |
| `ja` | `(CF OR ZF) = 0` | Jump if above | Unsigned[cite: 1] |
| `jae` | `CF=0` | Jump if above or equal | Unsigned[cite: 1] |
| `jb` | `CF=1` | Jump if lesser | Unsigned[cite: 1] |
| `jbe` | `(CF OR ZF) = 1` | Jump if lesser or equal | Unsigned[cite: 1] |