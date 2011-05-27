#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_CONF=linuxDebug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/UserInput.o \
	${OBJECTDIR}/GlContext.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-Wl,-rpath ../Common/dist/linuxDebug/GNU-Linux-x86 -L../Common/dist/linuxDebug/GNU-Linux-x86 -lCommon -lXxf86vm

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libContext.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libContext.so: ../Common/dist/linuxDebug/GNU-Linux-x86/libCommon.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libContext.so: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -shared -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libContext.so -fPIC ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/UserInput.o: UserInput.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I../Common -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/UserInput.o UserInput.cpp

${OBJECTDIR}/GlContext.o: GlContext.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I../Common -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/GlContext.o GlContext.cpp

# Subprojects
.build-subprojects:
	cd ../Common && ${MAKE}  -f Makefile CONF=linuxDebug

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libContext.so

# Subprojects
.clean-subprojects:
	cd ../Common && ${MAKE}  -f Makefile CONF=linuxDebug clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
