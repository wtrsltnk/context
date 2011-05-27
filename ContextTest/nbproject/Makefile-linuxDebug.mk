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
	${OBJECTDIR}/main.o \
	${OBJECTDIR}/ContextTest.o


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
LDLIBSOPTIONS=-Wl,-rpath ../Context/dist/linuxDebug/GNU-Linux-x86 -L../Context/dist/linuxDebug/GNU-Linux-x86 -lContext -Wl,-rpath ../Common/dist/linuxDebug/GNU-Linux-x86 -L../Common/dist/linuxDebug/GNU-Linux-x86 -lCommon

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/contexttest

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/contexttest: ../Context/dist/linuxDebug/GNU-Linux-x86/libContext.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/contexttest: ../Common/dist/linuxDebug/GNU-Linux-x86/libCommon.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/contexttest: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/contexttest ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I../Context -I../Common -MMD -MP -MF $@.d -o ${OBJECTDIR}/main.o main.cpp

${OBJECTDIR}/ContextTest.o: ContextTest.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I../Context -I../Common -MMD -MP -MF $@.d -o ${OBJECTDIR}/ContextTest.o ContextTest.cpp

# Subprojects
.build-subprojects:
	cd ../Context && ${MAKE}  -f Makefile CONF=linuxDebug
	cd ../Common && ${MAKE}  -f Makefile CONF=linuxDebug

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/contexttest

# Subprojects
.clean-subprojects:
	cd ../Context && ${MAKE}  -f Makefile CONF=linuxDebug clean
	cd ../Common && ${MAKE}  -f Makefile CONF=linuxDebug clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
