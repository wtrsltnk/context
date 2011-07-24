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
CND_CONF=win32Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/PackageFromDirectory.o \
	${OBJECTDIR}/FileSystem.o \
	${OBJECTDIR}/FileFromDirectory.o \
	${OBJECTDIR}/PackageFromWad.o \
	${OBJECTDIR}/PackageFromPak.o \
	${OBJECTDIR}/File.o \
	${OBJECTDIR}/Item.o \
	${OBJECTDIR}/Package.o \
	${OBJECTDIR}/FileFromMemory.o \
	${OBJECTDIR}/FilePath.o


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
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libfilesystem.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libfilesystem.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libfilesystem.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libfilesystem.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libfilesystem.a

${OBJECTDIR}/PackageFromDirectory.o: PackageFromDirectory.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/PackageFromDirectory.o PackageFromDirectory.cpp

${OBJECTDIR}/FileSystem.o: FileSystem.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/FileSystem.o FileSystem.cpp

${OBJECTDIR}/FileFromDirectory.o: FileFromDirectory.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/FileFromDirectory.o FileFromDirectory.cpp

${OBJECTDIR}/PackageFromWad.o: PackageFromWad.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/PackageFromWad.o PackageFromWad.cpp

${OBJECTDIR}/PackageFromPak.o: PackageFromPak.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/PackageFromPak.o PackageFromPak.cpp

${OBJECTDIR}/File.o: File.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/File.o File.cpp

${OBJECTDIR}/Item.o: Item.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/Item.o Item.cpp

${OBJECTDIR}/Package.o: Package.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/Package.o Package.cpp

${OBJECTDIR}/FileFromMemory.o: FileFromMemory.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/FileFromMemory.o FileFromMemory.cpp

${OBJECTDIR}/FilePath.o: FilePath.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/FilePath.o FilePath.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libfilesystem.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
