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
CND_CONF=win32Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btRaycastCallback.o \
	${OBJECTDIR}/src/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletDynamics/Character/btKinematicCharacterController.o \
	${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.o \
	${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btCapsuleShape.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btBox2dShape.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.o \
	${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o \
	${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.o \
	${OBJECTDIR}/src/BulletDynamics/Vehicle/btRaycastVehicle.o \
	${OBJECTDIR}/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btOptimizedBvh.o \
	${OBJECTDIR}/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleBuffer.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btMultiSphereShape.o \
	${OBJECTDIR}/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btCollisionWorld.o \
	${OBJECTDIR}/src/BulletDynamics/Dynamics/Bullet-C-API.o \
	${OBJECTDIR}/src/LinearMath/btConvexHull.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btInternalEdgeUtility.o \
	${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o \
	${OBJECTDIR}/src/MiniCL/MiniCLTask/MiniCLTask.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btSimulationIslandManager.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleMeshShape.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexHullShape.o \
	${OBJECTDIR}/src/BulletCollision/Gimpact/btGImpactBvh.o \
	${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletDynamics/Dynamics/btRigidBody.o \
	${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.o \
	${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btDbvt.o \
	${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btGhostObject.o \
	${OBJECTDIR}/src/BulletSoftBody/btSoftRigidCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.o \
	${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.o \
	${OBJECTDIR}/src/BulletCollision/Gimpact/gim_box_set.o \
	${OBJECTDIR}/src/LinearMath/btQuickprof.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConeShape.o \
	${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btAxisSweep3.o \
	${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btCollisionShape.o \
	${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.o \
	${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.o \
	${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.o \
	${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.o \
	${OBJECTDIR}/src/BulletSoftBody/btSoftRigidDynamicsWorld.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.o \
	${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btTypedConstraint.o \
	${OBJECTDIR}/src/BulletSoftBody/btDefaultSoftBodySolver.o \
	${OBJECTDIR}/src/LinearMath/btConvexHullComputer.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btCollisionObject.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btUniformScalingShape.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btSphereShape.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTetrahedronShape.o \
	${OBJECTDIR}/src/BulletSoftBody/btSoftSoftCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o \
	${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvex2dShape.o \
	${OBJECTDIR}/src/LinearMath/btAlignedAllocator.o \
	${OBJECTDIR}/src/BulletCollision/Gimpact/gim_contact.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexPointCloudShape.o \
	${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.o \
	${OBJECTDIR}/src/MiniCL/MiniCL.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btMinkowskiSumShape.o \
	${OBJECTDIR}/src/BulletCollision/Gimpact/btContactProcessing.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btEmptyShape.o \
	${OBJECTDIR}/src/LinearMath/btGeometryUtil.o \
	${OBJECTDIR}/src/BulletDynamics/Vehicle/btWheelInfo.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btConvexCast.o \
	${OBJECTDIR}/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.o \
	${OBJECTDIR}/src/BulletCollision/Gimpact/btGenericPoolAllocator.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.o \
	${OBJECTDIR}/src/LinearMath/btSerializer.o \
	${OBJECTDIR}/src/BulletCollision/Gimpact/btTriangleShapeEx.o \
	${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btUnionFind.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btCylinderShape.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/SphereTriangleDetector.o \
	${OBJECTDIR}/src/MiniCL/MiniCLTaskScheduler.o \
	${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.o \
	${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btSliderConstraint.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletCollision/Gimpact/btGImpactShape.o \
	${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleMesh.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConcaveShape.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btBoxBoxDetector.o \
	${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btContactConstraint.o \
	${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btDispatcher.o \
	${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.o \
	${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btManifoldResult.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btStridingMeshInterface.o \
	${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.o \
	${OBJECTDIR}/src/BulletSoftBody/btSoftBody.o \
	${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.o \
	${OBJECTDIR}/src/BulletSoftBody/btSoftBodyHelpers.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btCompoundShape.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btShapeHull.o \
	${OBJECTDIR}/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleCallback.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexShape.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexInternalShape.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btBoxShape.o \
	${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btHingeConstraint.o \
	${OBJECTDIR}/src/BulletCollision/Gimpact/gim_memory.o \
	${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.o \
	${OBJECTDIR}/src/BulletCollision/CollisionShapes/btStaticPlaneShape.o \
	${OBJECTDIR}/src/BulletCollision/Gimpact/gim_tri_collision.o


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
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libbullet.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libbullet.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libbullet.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libbullet.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libbullet.a

${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btRaycastCallback.o: src/BulletCollision/NarrowPhaseCollision/btRaycastCallback.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btRaycastCallback.o src/BulletCollision/NarrowPhaseCollision/btRaycastCallback.cpp

${OBJECTDIR}/src/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.o: src/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.o src/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletDynamics/Character/btKinematicCharacterController.o: src/BulletDynamics/Character/btKinematicCharacterController.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/Character
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/Character/btKinematicCharacterController.o src/BulletDynamics/Character/btKinematicCharacterController.cpp

${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.o: src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.o src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp

${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.o: src/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.o src/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btCapsuleShape.o: src/BulletCollision/CollisionShapes/btCapsuleShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btCapsuleShape.o src/BulletCollision/CollisionShapes/btCapsuleShape.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btBox2dShape.o: src/BulletCollision/CollisionShapes/btBox2dShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btBox2dShape.o src/BulletCollision/CollisionShapes/btBox2dShape.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.o: src/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.o src/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.cpp

${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o: src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp

${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.o: src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.o src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp

${OBJECTDIR}/src/BulletDynamics/Vehicle/btRaycastVehicle.o: src/BulletDynamics/Vehicle/btRaycastVehicle.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/Vehicle
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/Vehicle/btRaycastVehicle.o src/BulletDynamics/Vehicle/btRaycastVehicle.cpp

${OBJECTDIR}/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.o: src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.o src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btOptimizedBvh.o: src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btOptimizedBvh.o src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp

${OBJECTDIR}/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.o: src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/Dynamics
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.o src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleBuffer.o: src/BulletCollision/CollisionShapes/btTriangleBuffer.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleBuffer.o src/BulletCollision/CollisionShapes/btTriangleBuffer.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btMultiSphereShape.o: src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btMultiSphereShape.o src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp

${OBJECTDIR}/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.o: src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.o src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.o: src/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.o src/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btCollisionWorld.o: src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btCollisionWorld.o src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp

${OBJECTDIR}/src/BulletDynamics/Dynamics/Bullet-C-API.o: src/BulletDynamics/Dynamics/Bullet-C-API.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/Dynamics
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/Dynamics/Bullet-C-API.o src/BulletDynamics/Dynamics/Bullet-C-API.cpp

${OBJECTDIR}/src/LinearMath/btConvexHull.o: src/LinearMath/btConvexHull.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/LinearMath
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/LinearMath/btConvexHull.o src/LinearMath/btConvexHull.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.o: src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.o src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btInternalEdgeUtility.o: src/BulletCollision/CollisionDispatch/btInternalEdgeUtility.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btInternalEdgeUtility.o src/BulletCollision/CollisionDispatch/btInternalEdgeUtility.cpp

${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.o: src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.o src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o: src/BulletCollision/CollisionShapes/btConvexPolyhedron.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o src/BulletCollision/CollisionShapes/btConvexPolyhedron.cpp

${OBJECTDIR}/src/MiniCL/MiniCLTask/MiniCLTask.o: src/MiniCL/MiniCLTask/MiniCLTask.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/MiniCL/MiniCLTask
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/MiniCL/MiniCLTask/MiniCLTask.o src/MiniCL/MiniCLTask/MiniCLTask.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btSimulationIslandManager.o: src/BulletCollision/CollisionDispatch/btSimulationIslandManager.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btSimulationIslandManager.o src/BulletCollision/CollisionDispatch/btSimulationIslandManager.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.o: src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.o src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleMeshShape.o: src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleMeshShape.o src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexHullShape.o: src/BulletCollision/CollisionShapes/btConvexHullShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexHullShape.o src/BulletCollision/CollisionShapes/btConvexHullShape.cpp

${OBJECTDIR}/src/BulletCollision/Gimpact/btGImpactBvh.o: src/BulletCollision/Gimpact/btGImpactBvh.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/Gimpact/btGImpactBvh.o src/BulletCollision/Gimpact/btGImpactBvh.cpp

${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.o: src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.o src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.o: src/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.o src/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletDynamics/Dynamics/btRigidBody.o: src/BulletDynamics/Dynamics/btRigidBody.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/Dynamics
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/Dynamics/btRigidBody.o src/BulletDynamics/Dynamics/btRigidBody.cpp

${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.o: src/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.o src/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.cpp

${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btDbvt.o: src/BulletCollision/BroadphaseCollision/btDbvt.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btDbvt.o src/BulletCollision/BroadphaseCollision/btDbvt.cpp

${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.o: src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.o src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btGhostObject.o: src/BulletCollision/CollisionDispatch/btGhostObject.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btGhostObject.o src/BulletCollision/CollisionDispatch/btGhostObject.cpp

${OBJECTDIR}/src/BulletSoftBody/btSoftRigidCollisionAlgorithm.o: src/BulletSoftBody/btSoftRigidCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletSoftBody/btSoftRigidCollisionAlgorithm.o src/BulletSoftBody/btSoftRigidCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.o: src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.o src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp

${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.o: src/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.o src/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.cpp

${OBJECTDIR}/src/BulletCollision/Gimpact/gim_box_set.o: src/BulletCollision/Gimpact/gim_box_set.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/Gimpact/gim_box_set.o src/BulletCollision/Gimpact/gim_box_set.cpp

${OBJECTDIR}/src/LinearMath/btQuickprof.o: src/LinearMath/btQuickprof.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/LinearMath
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/LinearMath/btQuickprof.o src/LinearMath/btQuickprof.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConeShape.o: src/BulletCollision/CollisionShapes/btConeShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConeShape.o src/BulletCollision/CollisionShapes/btConeShape.cpp

${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btAxisSweep3.o: src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btAxisSweep3.o src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp

${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.o: src/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.o src/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btCollisionShape.o: src/BulletCollision/CollisionShapes/btCollisionShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btCollisionShape.o src/BulletCollision/CollisionShapes/btCollisionShape.cpp

${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.o: src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.o src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp

${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.o: src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.o src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp

${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.o: src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.o src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.o: src/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.o src/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.cpp

${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.o: src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.o src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp

${OBJECTDIR}/src/BulletSoftBody/btSoftRigidDynamicsWorld.o: src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletSoftBody/btSoftRigidDynamicsWorld.o src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.o: src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.o src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp

${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btTypedConstraint.o: src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btTypedConstraint.o src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp

${OBJECTDIR}/src/BulletSoftBody/btDefaultSoftBodySolver.o: src/BulletSoftBody/btDefaultSoftBodySolver.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletSoftBody/btDefaultSoftBodySolver.o src/BulletSoftBody/btDefaultSoftBodySolver.cpp

${OBJECTDIR}/src/LinearMath/btConvexHullComputer.o: src/LinearMath/btConvexHullComputer.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/LinearMath
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/LinearMath/btConvexHullComputer.o src/LinearMath/btConvexHullComputer.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btCollisionObject.o: src/BulletCollision/CollisionDispatch/btCollisionObject.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btCollisionObject.o src/BulletCollision/CollisionDispatch/btCollisionObject.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.o: src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.o src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btUniformScalingShape.o: src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btUniformScalingShape.o src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.o: src/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.o src/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btSphereShape.o: src/BulletCollision/CollisionShapes/btSphereShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btSphereShape.o src/BulletCollision/CollisionShapes/btSphereShape.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.o: src/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.o src/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTetrahedronShape.o: src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTetrahedronShape.o src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp

${OBJECTDIR}/src/BulletSoftBody/btSoftSoftCollisionAlgorithm.o: src/BulletSoftBody/btSoftSoftCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletSoftBody/btSoftSoftCollisionAlgorithm.o src/BulletSoftBody/btSoftSoftCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.o: src/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.o src/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o: src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp

${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.o: src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.o src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvex2dShape.o: src/BulletCollision/CollisionShapes/btConvex2dShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvex2dShape.o src/BulletCollision/CollisionShapes/btConvex2dShape.cpp

${OBJECTDIR}/src/LinearMath/btAlignedAllocator.o: src/LinearMath/btAlignedAllocator.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/LinearMath
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/LinearMath/btAlignedAllocator.o src/LinearMath/btAlignedAllocator.cpp

${OBJECTDIR}/src/BulletCollision/Gimpact/gim_contact.o: src/BulletCollision/Gimpact/gim_contact.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/Gimpact/gim_contact.o src/BulletCollision/Gimpact/gim_contact.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.o: src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.o src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.o: src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.o src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexPointCloudShape.o: src/BulletCollision/CollisionShapes/btConvexPointCloudShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexPointCloudShape.o src/BulletCollision/CollisionShapes/btConvexPointCloudShape.cpp

${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.o: src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.o src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp

${OBJECTDIR}/src/MiniCL/MiniCL.o: src/MiniCL/MiniCL.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/MiniCL
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/MiniCL/MiniCL.o src/MiniCL/MiniCL.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.o: src/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.o src/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btMinkowskiSumShape.o: src/BulletCollision/CollisionShapes/btMinkowskiSumShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btMinkowskiSumShape.o src/BulletCollision/CollisionShapes/btMinkowskiSumShape.cpp

${OBJECTDIR}/src/BulletCollision/Gimpact/btContactProcessing.o: src/BulletCollision/Gimpact/btContactProcessing.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/Gimpact/btContactProcessing.o src/BulletCollision/Gimpact/btContactProcessing.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btEmptyShape.o: src/BulletCollision/CollisionShapes/btEmptyShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btEmptyShape.o src/BulletCollision/CollisionShapes/btEmptyShape.cpp

${OBJECTDIR}/src/LinearMath/btGeometryUtil.o: src/LinearMath/btGeometryUtil.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/LinearMath
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/LinearMath/btGeometryUtil.o src/LinearMath/btGeometryUtil.cpp

${OBJECTDIR}/src/BulletDynamics/Vehicle/btWheelInfo.o: src/BulletDynamics/Vehicle/btWheelInfo.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/Vehicle
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/Vehicle/btWheelInfo.o src/BulletDynamics/Vehicle/btWheelInfo.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.o: src/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.o src/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btConvexCast.o: src/BulletCollision/NarrowPhaseCollision/btConvexCast.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btConvexCast.o src/BulletCollision/NarrowPhaseCollision/btConvexCast.cpp

${OBJECTDIR}/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.o: src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/Dynamics
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.o src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.o: src/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.o src/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.o: src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.o src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp

${OBJECTDIR}/src/BulletCollision/Gimpact/btGenericPoolAllocator.o: src/BulletCollision/Gimpact/btGenericPoolAllocator.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/Gimpact/btGenericPoolAllocator.o src/BulletCollision/Gimpact/btGenericPoolAllocator.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.o: src/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.o src/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.cpp

${OBJECTDIR}/src/LinearMath/btSerializer.o: src/LinearMath/btSerializer.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/LinearMath
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/LinearMath/btSerializer.o src/LinearMath/btSerializer.cpp

${OBJECTDIR}/src/BulletCollision/Gimpact/btTriangleShapeEx.o: src/BulletCollision/Gimpact/btTriangleShapeEx.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/Gimpact/btTriangleShapeEx.o src/BulletCollision/Gimpact/btTriangleShapeEx.cpp

${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.o: src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.o src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.o: src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.o src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btUnionFind.o: src/BulletCollision/CollisionDispatch/btUnionFind.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btUnionFind.o src/BulletCollision/CollisionDispatch/btUnionFind.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btCylinderShape.o: src/BulletCollision/CollisionShapes/btCylinderShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btCylinderShape.o src/BulletCollision/CollisionShapes/btCylinderShape.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/SphereTriangleDetector.o: src/BulletCollision/CollisionDispatch/SphereTriangleDetector.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/SphereTriangleDetector.o src/BulletCollision/CollisionDispatch/SphereTriangleDetector.cpp

${OBJECTDIR}/src/MiniCL/MiniCLTaskScheduler.o: src/MiniCL/MiniCLTaskScheduler.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/MiniCL
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/MiniCL/MiniCLTaskScheduler.o src/MiniCL/MiniCLTaskScheduler.cpp

${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.o: src/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.o src/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.cpp

${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btSliderConstraint.o: src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btSliderConstraint.o src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.o: src/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.o src/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletCollision/Gimpact/btGImpactShape.o: src/BulletCollision/Gimpact/btGImpactShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/Gimpact/btGImpactShape.o src/BulletCollision/Gimpact/btGImpactShape.cpp

${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.o: src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.o src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleMesh.o: src/BulletCollision/CollisionShapes/btTriangleMesh.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleMesh.o src/BulletCollision/CollisionShapes/btTriangleMesh.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.o: src/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.o src/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.o: src/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.o src/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConcaveShape.o: src/BulletCollision/CollisionShapes/btConcaveShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConcaveShape.o src/BulletCollision/CollisionShapes/btConcaveShape.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btBoxBoxDetector.o: src/BulletCollision/CollisionDispatch/btBoxBoxDetector.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btBoxBoxDetector.o src/BulletCollision/CollisionDispatch/btBoxBoxDetector.cpp

${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btContactConstraint.o: src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btContactConstraint.o src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp

${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btDispatcher.o: src/BulletCollision/BroadphaseCollision/btDispatcher.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btDispatcher.o src/BulletCollision/BroadphaseCollision/btDispatcher.cpp

${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.o: src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.o src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp

${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btManifoldResult.o: src/BulletCollision/CollisionDispatch/btManifoldResult.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionDispatch/btManifoldResult.o src/BulletCollision/CollisionDispatch/btManifoldResult.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btStridingMeshInterface.o: src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btStridingMeshInterface.o src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp

${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.o: src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.o src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp

${OBJECTDIR}/src/BulletSoftBody/btSoftBody.o: src/BulletSoftBody/btSoftBody.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletSoftBody/btSoftBody.o src/BulletSoftBody/btSoftBody.cpp

${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.o: src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.o src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp

${OBJECTDIR}/src/BulletSoftBody/btSoftBodyHelpers.o: src/BulletSoftBody/btSoftBodyHelpers.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletSoftBody/btSoftBodyHelpers.o src/BulletSoftBody/btSoftBodyHelpers.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btCompoundShape.o: src/BulletCollision/CollisionShapes/btCompoundShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btCompoundShape.o src/BulletCollision/CollisionShapes/btCompoundShape.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btShapeHull.o: src/BulletCollision/CollisionShapes/btShapeHull.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btShapeHull.o src/BulletCollision/CollisionShapes/btShapeHull.cpp

${OBJECTDIR}/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.o: src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.o src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleCallback.o: src/BulletCollision/CollisionShapes/btTriangleCallback.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btTriangleCallback.o src/BulletCollision/CollisionShapes/btTriangleCallback.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexShape.o: src/BulletCollision/CollisionShapes/btConvexShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexShape.o src/BulletCollision/CollisionShapes/btConvexShape.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexInternalShape.o: src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btConvexInternalShape.o src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btBoxShape.o: src/BulletCollision/CollisionShapes/btBoxShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btBoxShape.o src/BulletCollision/CollisionShapes/btBoxShape.cpp

${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btHingeConstraint.o: src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btHingeConstraint.o src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp

${OBJECTDIR}/src/BulletCollision/Gimpact/gim_memory.o: src/BulletCollision/Gimpact/gim_memory.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/Gimpact/gim_memory.o src/BulletCollision/Gimpact/gim_memory.cpp

${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.o: src/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.o src/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.cpp

${OBJECTDIR}/src/BulletCollision/CollisionShapes/btStaticPlaneShape.o: src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/CollisionShapes/btStaticPlaneShape.o src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp

${OBJECTDIR}/src/BulletCollision/Gimpact/gim_tri_collision.o: src/BulletCollision/Gimpact/gim_tri_collision.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/BulletCollision/Gimpact/gim_tri_collision.o src/BulletCollision/Gimpact/gim_tri_collision.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libbullet.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
