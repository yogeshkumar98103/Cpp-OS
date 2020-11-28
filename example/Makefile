OS_DIR  = ../os
OS_BUILD_DIR = ${OS_DIR}/build

include ${OS_BUILD_DIR}/constants.mk

QEMU = qemu-system-arm

SRC_DIR = src
INC_DIR = include
OBJ_DIR = objects
BIN_DIR = bin

SRC_FILES = ${wildcard ${SRC_DIR}/*.cpp}
INC_FILES = ${wildcard ${INC_DIR}/example/*.h}
OBJ_FILES = ${patsubst ${SRC_DIR}/%.cpp, ${OBJ_DIR}/%.o, ${SRC_FILES}}

CUR_DIR = ${shell pwd}
export OS_ELF = ${CUR_DIR}/${BIN_DIR}/os.elf 
export EXT_OBJ_FILES = ${patsubst %.o, ${CUR_DIR}/%.o, ${OBJ_FILES}}

link: ${OS_ELF}
	
compile: ${BIN_DIR} ${OBJ_DIR} ${OBJ_FILES} ${INC_FILES}
	@${MAKE} -C ${OS_BUILD_DIR} compile

${OBJ_DIR}/%.o: ${SRC_DIR}/%.cpp 
	@echo Building $<
	@${CXX} ${CXXFLAGS} -I${OS_DIR}/${OS_INC_DIR} -I${INC_DIR} -c $< -o $@ ${CXXSRCFLAGS}

run: ${OS_ELF}
	@${QEMU} -append 'console=ttyS0' -nographic -m 1G -M raspi2 -serial mon:stdio -kernel ${OS_ELF}

${OS_ELF}: ${BIN_DIR} ${OBJ_DIR} ${OBJ_FILES} ${INC_FILES}
	@${MAKE} -C ${OS_BUILD_DIR} link

${OBJ_DIR}:
	@mkdir -p ${OBJ_DIR}

${BIN_DIR}:
	@mkdir -p ${BIN_DIR}

clean:
	@rm -rf ${OBJ_DIR} ${BIN_DIR}

deepclean:
	@rm -rf ${OBJ_DIR} ${BIN_DIR}
	@${MAKE} -C ${OS_BUILD_DIR} clean
