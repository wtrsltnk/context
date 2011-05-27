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
CC=gcc.exe
CCC=g++.exe
CXX=g++.exe
FC=gfortran
AS=as.exe

# Macros
CND_PLATFORM=MinGW-Windows
CND_CONF=win32Release
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
LDLIBSOPTIONS=-L../Common/dist/win32Release/MinGW-Windows -lCommon -L../Context/dist/win32Release/MinGW-Windows -lContext

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/contexttest.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/contexttest.exe: ../Common/dist/win32Release/MinGW-Windows/libCommon.dll

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/contexttest.exe: ../Context/dist/win32Release/MinGW-Windows/libContext.dll

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/contexttest.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/contexttest ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -I../Context -I../Common -MMD -MP -MF $@.d -o ${OBJECTDIR}/main.o main.cpp

${OBJECTDIR}/ContextTest.o: ContextTest.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -I../Context -I../Common -MMD -MP -MF $@.d -o ${OBJECTDIR}/ContextTest.o ContextTest.cpp

# Subprojects
.build-subprojects:
	cd ../Common && ${MAKE}  -f Makefile CONF=win32Release
	cd ../Context && ${MAKE}  -f Makefile CONF=win32Release

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/contexttest.exe

# Subprojects
.clean-subprojects:
	cd ../Common && ${MAKE}  -f Makefile CONF=win32Release clean
	cd ../Context && ${MAKE}  -f Makefile CONF=win32Release clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
