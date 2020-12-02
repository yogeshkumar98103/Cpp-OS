include constants.mk

OS_INC_DIR = ../include
OS_SRC_DIR = ../src
OS_OBJ_DIR = ../objects

LIB_SRC_DIR = ${OS_SRC_DIR}/${LIB_DIR}

OS_CPP_FILES =  ${wildcard ${OS_SRC_DIR}/*.cpp}
OS_ARCH_CPP_FILES = ${wildcard ${OS_SRC_DIR}/${AARCH}/*.cpp}
LIB_CPP_FILES = ${wildcard ${LIB_SRC_DIR}/*.cpp}

OS_ASM_FILES =  ${wildcard ${OS_SRC_DIR}/*.S}
OS_ARCH_ASM_FILES = ${wildcard ${OS_SRC_DIR}/${AARCH}/*.S}
OS_INC_FILES =  ${wildcard ${OS_INC_DIR}/os/*.h}

OS_OBJ_FILES =  ${patsubst ${OS_SRC_DIR}/%.cpp, ${OS_OBJ_DIR}/%.o, ${OS_CPP_FILES}}
OS_OBJ_FILES += ${patsubst ${OS_SRC_DIR}/${AARCH}/%.cpp, ${OS_OBJ_DIR}/%.o, ${OS_ARCH_CPP_FILES}}
OS_OBJ_FILES += ${patsubst ${OS_SRC_DIR}/%.S,  ${OS_OBJ_DIR}/%.o, ${OS_ASM_FILES}}
OS_OBJ_FILES += ${patsubst ${OS_SRC_DIR}/${AARCH}/%.S,  ${OS_OBJ_DIR}/%.o, ${OS_ARCH_ASM_FILES}}
OS_OBJ_FILES += ${patsubst ${LIB_SRC_DIR}/%.cpp,  ${OS_OBJ_DIR}/%.o, ${LIB_CPP_FILES}}

OS_LINKER_FILE = linker_${AARCH}.ld

compile: ${OS_OBJ_FILES} ${OS_INC_FILES}
	@echo "Compiled"

# To use this target you need to export following variables
#
# OS_ELF	     => final elf binary name
# EXT_OBJ_FILES  => additional objects to link with. One of these objects must contain entry function
link: ${OS_ELF}

# Link Object Files
${OS_ELF}: ${OS_OBJ_FILES} ${OS_INC_FILES} ${EXT_OBJ_FILES} ${OS_LINKER_FILE}
	@echo "Linking..."
	@${CXX} ${ARCHFLAGS} -T ${OS_LINKER_FILE} -o ${OS_ELF} -I${OS_INC_DIR} ${LFLAGS} ${OS_OBJ_FILES} ${EXT_OBJ_FILES}

# Compile .cpp Files
${OS_OBJ_DIR}/%.o: ${OS_SRC_DIR}/%.cpp
	@mkdir -p $(@D)
	@echo "Building " $<
	@${CXX} ${ARCHFLAGS} ${CXXFLAGS} -I${OS_INC_DIR} -c $< -o $@ ${CXXSRCFLAGS}

# Compile architecture dependent .cpp Files
${OS_OBJ_DIR}/%.o: ${OS_SRC_DIR}/${AARCH}/%.cpp
	@mkdir -p $(@D)
	@echo "Building " $<
	@${CXX} ${ARCHFLAGS} ${CXXFLAGS} -I${OS_INC_DIR} -c $< -o $@ ${CXXSRCFLAGS}

# Compile .S Files
${OS_OBJ_DIR}/%.o: ${OS_SRC_DIR}/%.S
	@mkdir -p $(@D)
	@echo "Building " $<
	@${CXX} ${ARCHFLAGS} ${CXXFLAGS} -c $< -o $@ 

# Compile architecture dependent .S Files
${OS_OBJ_DIR}/%.o: ${OS_SRC_DIR}/${AARCH}/%.S
	@mkdir -p $(@D)
	@echo "Building " $<
	@${CXX} ${ARCHFLAGS} ${CXXFLAGS} -c $< -o $@ 

# Compile LIB .cpp Files
${OS_OBJ_DIR}/%.o: ${LIB_SRC_DIR}/%.cpp
	@mkdir -p $(@D)
	@echo "Building " $<
	@${CXX} ${ARCHFLAGS} ${CXXFLAGS} -I${OS_INC_DIR} -I${LIB_INC_DIR} -c $< -o $@ ${CXXSRCFLAGS}


clean:
	@rm -rf ${OS_OBJ_DIR}