#!/bin/bash
PREFIX="riscv64-unknown-elf-"

if type ${PREFIX}as > /dev/null 2>&1
then
    AS=${PREFIX}as
elif [[ -e ../${PREFIX}as ]]
then
    AS=../${PREFIX}as
else
    echo "No riscv as found!"
    exit 1
fi
if type ${PREFIX}objcopy > /dev/null 2>&1
then
    OBJCOPY=${PREFIX}objcopy
elif [[ -e ../${PREFIX}objcopy ]]
then
    OBJCOPY=../${PREFIX}objcopy
else
    echo "No riscv objcopy found!"
    exit 1
fi
if type ${PREFIX}gcc > /dev/null 2>&1
then
    CC=${PREFIX}gcc
elif [[ -e ../${PREFIX}gcc ]]
then
    CC=../${PREFIX}gcc
else
    echo "No riscv gcc found!"
    exit 1
fi

CFLAGS="-mabi=lp64 -march=rv64i -O2 -std=gnu99 -Wno-unused -fno-builtin -Wall -nostdinc -fno-stack-protector -ffunction-sections -fdata-sections -nostartfiles"

fname=$1
if [[ ${fname: -2} == ".c" ]]
then
    OBJ="${fname%.c}.o"
    BIN="${fname%.c}.bin"
    ${CC} ${CFLAGS} ${fname} -o ${OBJ} -Tlinker.ld
    ${OBJCOPY} -O binary ${OBJ} ${BIN}
    exit
fi

if [[ ${fname: -2} == ".s" ]]
then
    OBJ="${fname%.s}.o"
    BIN="${fname%.s}.bin"
    ${CC} ${CFLAGS} ${fname} -o ${OBJ} -Tlinker.ld
    ${OBJCOPY} -O binary -j .text ${OBJ} ${BIN}
    exit
fi

echo "Usage: assembler FILE"
echo "FILE: must have .s/.c extension"
exit
