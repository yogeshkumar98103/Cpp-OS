include constants.mk

OS_INC_DIR = ../include
OS_SRC_DIR = ../src
OS_OBJ_DIR = ../objects

OS_CPP_FILES = ${wildcard ${OS_SRC_DIR}/*.cpp}
OS_ASM_FILES = ${wildcard ${OS_SRC_DIR}/*.S}
OS_INC_FILES = ${wildcard ${OS_INC_DIR}/os/*.h}

OS_OBJ_FILES = ${patsubst ${OS_SRC_DIR}/%.cpp, ${OS_OBJ_DIR}/%.o, ${OS_CPP_FILES}}
OS_OBJ_FILES += ${patsubst ${OS_SRC_DIR}/%.S,  ${OS_OBJ_DIR}/%.o, ${OS_ASM_FILES}}

compile: ${OS_OBJ_DIR} ${OS_OBJ_FILES} ${OS_INC_FILES}
	@echo "Compiled"

# To use this target you need to export following variables
#
# OS_ELF	     => final elf binary name
# EXT_OBJ_FILES  => additional objects to link with. One of these objects must contain entry function
link: ${OS_ELF}

${OS_ELF}: ${OS_OBJ_DIR} ${OS_OBJ_FILES} ${OS_INC_FILES} ${EXT_OBJ_FILES}
	@echo "Linking..."
	@${CXX} -mcpu=${CPU} -T linker.ld -o ${OS_ELF} -I${OS_INC_DIR} ${LFLAGS} ${OS_OBJ_FILES} ${EXT_OBJ_FILES}

${OS_OBJ_DIR}/%.o: ${OS_SRC_DIR}/%.cpp
	@echo "Building " $<
	@${CXX} ${CXXFLAGS} -I${OS_INC_DIR} -c $< -o $@ ${CXXSRCFLAGS}

${OS_OBJ_DIR}/%.o: ${OS_SRC_DIR}/%.S
	@echo "Building " $<
	@${CXX} ${CXXFLAGS} -c $< -o $@ 

${OS_OBJ_DIR}:
	@echo "Creating Object Directory: "
	@mkdir -p ${OS_OBJ_DIR}

clean:
	@rm -rf ${OS_OBJ_DIR}