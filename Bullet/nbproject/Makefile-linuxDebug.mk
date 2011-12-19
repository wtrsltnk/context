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
	${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleMesh.o \
	${OBJECTDIR}/BulletDynamics/ConstraintSolver/btContactConstraint.o \
	${OBJECTDIR}/BulletSoftBody/btDefaultSoftBodySolver.o \
	${OBJECTDIR}/MiniCL/MiniCL.o \
	${OBJECTDIR}/LinearMath/btAlignedAllocator.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexPointCloudShape.o \
	${OBJECTDIR}/BulletCollision/BroadphaseCollision/btBroadphaseProxy.o \
	${OBJECTDIR}/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.o \
	${OBJECTDIR}/BulletCollision/Gimpact/btTriangleShapeEx.o \
	${OBJECTDIR}/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btGhostObject.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btCollisionObject.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.o \
	${OBJECTDIR}/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btEmptyShape.o \
	${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btCapsuleShape.o \
	${OBJECTDIR}/BulletCollision/BroadphaseCollision/btDbvt.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o \
	${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.o \
	${OBJECTDIR}/BulletCollision/Gimpact/btGImpactQuantizedBvh.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.o \
	${OBJECTDIR}/BulletCollision/BroadphaseCollision/btQuantizedBvh.o \
	${OBJECTDIR}/BulletCollision/Gimpact/gim_box_set.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btSimulationIslandManager.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/SphereTriangleDetector.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btCylinderShape.o \
	${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.o \
	${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btPersistentManifold.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btBox2dShape.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btBoxBoxDetector.o \
	${OBJECTDIR}/BulletCollision/Gimpact/gim_tri_collision.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btCollisionShape.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.o \
	${OBJECTDIR}/BulletDynamics/ConstraintSolver/btTypedConstraint.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btOptimizedBvh.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexInternalShape.o \
	${OBJECTDIR}/LinearMath/btGeometryUtil.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btInternalEdgeUtility.o \
	${OBJECTDIR}/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btConcaveShape.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btSphereShape.o \
	${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.o \
	${OBJECTDIR}/BulletCollision/Gimpact/gim_contact.o \
	${OBJECTDIR}/BulletDynamics/ConstraintSolver/btUniversalConstraint.o \
	${OBJECTDIR}/LinearMath/btSerializer.o \
	${OBJECTDIR}/LinearMath/btConvexHullComputer.o \
	${OBJECTDIR}/BulletCollision/BroadphaseCollision/btAxisSweep3.o \
	${OBJECTDIR}/BulletDynamics/Vehicle/btWheelInfo.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btCollisionWorld.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexHullShape.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btStridingMeshInterface.o \
	${OBJECTDIR}/BulletCollision/BroadphaseCollision/btSimpleBroadphase.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.o \
	${OBJECTDIR}/BulletSoftBody/btSoftBody.o \
	${OBJECTDIR}/BulletSoftBody/btSoftSoftCollisionAlgorithm.o \
	${OBJECTDIR}/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.o \
	${OBJECTDIR}/BulletCollision/Gimpact/btContactProcessing.o \
	${OBJECTDIR}/BulletSoftBody/btSoftBodyHelpers.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btStaticPlaneShape.o \
	${OBJECTDIR}/BulletCollision/Gimpact/btGImpactShape.o \
	${OBJECTDIR}/BulletDynamics/ConstraintSolver/btConeTwistConstraint.o \
	${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.o \
	${OBJECTDIR}/BulletCollision/Gimpact/gim_memory.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexShape.o \
	${OBJECTDIR}/BulletDynamics/ConstraintSolver/btHinge2Constraint.o \
	${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btConvexCast.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleCallback.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btUniformScalingShape.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexPolyhedron.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btBoxShape.o \
	${OBJECTDIR}/BulletDynamics/ConstraintSolver/btHingeConstraint.o \
	${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.o \
	${OBJECTDIR}/BulletDynamics/Vehicle/btRaycastVehicle.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.o \
	${OBJECTDIR}/BulletCollision/Gimpact/btGImpactBvh.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleMeshShape.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btUnionFind.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btConeShape.o \
	${OBJECTDIR}/MiniCL/MiniCLTask/MiniCLTask.o \
	${OBJECTDIR}/LinearMath/btQuickprof.o \
	${OBJECTDIR}/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.o \
	${OBJECTDIR}/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.o \
	${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btRaycastCallback.o \
	${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.o \
	${OBJECTDIR}/BulletSoftBody/btSoftRigidDynamicsWorld.o \
	${OBJECTDIR}/BulletSoftBody/btSoftRigidCollisionAlgorithm.o \
	${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btGjkEpa2.o \
	${OBJECTDIR}/LinearMath/btConvexHull.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btTetrahedronShape.o \
	${OBJECTDIR}/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.o \
	${OBJECTDIR}/BulletDynamics/Dynamics/btSimpleDynamicsWorld.o \
	${OBJECTDIR}/BulletCollision/BroadphaseCollision/btOverlappingPairCache.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btMultiSphereShape.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btMinkowskiSumShape.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.o \
	${OBJECTDIR}/BulletDynamics/ConstraintSolver/btSliderConstraint.o \
	${OBJECTDIR}/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.o \
	${OBJECTDIR}/BulletDynamics/Dynamics/Bullet-C-API.o \
	${OBJECTDIR}/BulletDynamics/Dynamics/btRigidBody.o \
	${OBJECTDIR}/BulletCollision/BroadphaseCollision/btDbvtBroadphase.o \
	${OBJECTDIR}/BulletDynamics/Character/btKinematicCharacterController.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btManifoldResult.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.o \
	${OBJECTDIR}/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btConvex2dShape.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.o \
	${OBJECTDIR}/BulletCollision/BroadphaseCollision/btDispatcher.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btCompoundShape.o \
	${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btCollisionDispatcher.o \
	${OBJECTDIR}/BulletCollision/Gimpact/btGenericPoolAllocator.o \
	${OBJECTDIR}/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.o \
	${OBJECTDIR}/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.o \
	${OBJECTDIR}/MiniCL/MiniCLTaskScheduler.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleBuffer.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btShapeHull.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.o \
	${OBJECTDIR}/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.o


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

${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleMesh.o: BulletCollision/CollisionShapes/btTriangleMesh.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleMesh.o BulletCollision/CollisionShapes/btTriangleMesh.cpp

${OBJECTDIR}/BulletDynamics/ConstraintSolver/btContactConstraint.o: BulletDynamics/ConstraintSolver/btContactConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/ConstraintSolver/btContactConstraint.o BulletDynamics/ConstraintSolver/btContactConstraint.cpp

${OBJECTDIR}/BulletSoftBody/btDefaultSoftBodySolver.o: BulletSoftBody/btDefaultSoftBodySolver.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletSoftBody/btDefaultSoftBodySolver.o BulletSoftBody/btDefaultSoftBodySolver.cpp

${OBJECTDIR}/MiniCL/MiniCL.o: MiniCL/MiniCL.cpp 
	${MKDIR} -p ${OBJECTDIR}/MiniCL
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/MiniCL/MiniCL.o MiniCL/MiniCL.cpp

${OBJECTDIR}/LinearMath/btAlignedAllocator.o: LinearMath/btAlignedAllocator.cpp 
	${MKDIR} -p ${OBJECTDIR}/LinearMath
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/LinearMath/btAlignedAllocator.o LinearMath/btAlignedAllocator.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexPointCloudShape.o: BulletCollision/CollisionShapes/btConvexPointCloudShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexPointCloudShape.o BulletCollision/CollisionShapes/btConvexPointCloudShape.cpp

${OBJECTDIR}/BulletCollision/BroadphaseCollision/btBroadphaseProxy.o: BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/BroadphaseCollision/btBroadphaseProxy.o BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp

${OBJECTDIR}/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.o: BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/Dynamics
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.o BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp

${OBJECTDIR}/BulletCollision/Gimpact/btTriangleShapeEx.o: BulletCollision/Gimpact/btTriangleShapeEx.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/Gimpact/btTriangleShapeEx.o BulletCollision/Gimpact/btTriangleShapeEx.cpp

${OBJECTDIR}/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.o: BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.o BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.o: BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.o BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btGhostObject.o: BulletCollision/CollisionDispatch/btGhostObject.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btGhostObject.o BulletCollision/CollisionDispatch/btGhostObject.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.o: BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.o BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btCollisionObject.o: BulletCollision/CollisionDispatch/btCollisionObject.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btCollisionObject.o BulletCollision/CollisionDispatch/btCollisionObject.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.o: BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.o BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp

${OBJECTDIR}/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.o: BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.o BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btEmptyShape.o: BulletCollision/CollisionShapes/btEmptyShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btEmptyShape.o BulletCollision/CollisionShapes/btEmptyShape.cpp

${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o: BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btCapsuleShape.o: BulletCollision/CollisionShapes/btCapsuleShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btCapsuleShape.o BulletCollision/CollisionShapes/btCapsuleShape.cpp

${OBJECTDIR}/BulletCollision/BroadphaseCollision/btDbvt.o: BulletCollision/BroadphaseCollision/btDbvt.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/BroadphaseCollision/btDbvt.o BulletCollision/BroadphaseCollision/btDbvt.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o: BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp

${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.o: BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.o BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.o: BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.o BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.cpp

${OBJECTDIR}/BulletCollision/Gimpact/btGImpactQuantizedBvh.o: BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/Gimpact/btGImpactQuantizedBvh.o BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.o: BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.o BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.cpp

${OBJECTDIR}/BulletCollision/BroadphaseCollision/btQuantizedBvh.o: BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/BroadphaseCollision/btQuantizedBvh.o BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp

${OBJECTDIR}/BulletCollision/Gimpact/gim_box_set.o: BulletCollision/Gimpact/gim_box_set.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/Gimpact/gim_box_set.o BulletCollision/Gimpact/gim_box_set.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btSimulationIslandManager.o: BulletCollision/CollisionDispatch/btSimulationIslandManager.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btSimulationIslandManager.o BulletCollision/CollisionDispatch/btSimulationIslandManager.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/SphereTriangleDetector.o: BulletCollision/CollisionDispatch/SphereTriangleDetector.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/SphereTriangleDetector.o BulletCollision/CollisionDispatch/SphereTriangleDetector.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btCylinderShape.o: BulletCollision/CollisionShapes/btCylinderShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btCylinderShape.o BulletCollision/CollisionShapes/btCylinderShape.cpp

${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.o: BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.o BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.cpp

${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btPersistentManifold.o: BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btPersistentManifold.o BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btBox2dShape.o: BulletCollision/CollisionShapes/btBox2dShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btBox2dShape.o BulletCollision/CollisionShapes/btBox2dShape.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btBoxBoxDetector.o: BulletCollision/CollisionDispatch/btBoxBoxDetector.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btBoxBoxDetector.o BulletCollision/CollisionDispatch/btBoxBoxDetector.cpp

${OBJECTDIR}/BulletCollision/Gimpact/gim_tri_collision.o: BulletCollision/Gimpact/gim_tri_collision.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/Gimpact/gim_tri_collision.o BulletCollision/Gimpact/gim_tri_collision.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btCollisionShape.o: BulletCollision/CollisionShapes/btCollisionShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btCollisionShape.o BulletCollision/CollisionShapes/btCollisionShape.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.o: BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.o BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp

${OBJECTDIR}/BulletDynamics/ConstraintSolver/btTypedConstraint.o: BulletDynamics/ConstraintSolver/btTypedConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/ConstraintSolver/btTypedConstraint.o BulletDynamics/ConstraintSolver/btTypedConstraint.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.o: BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.o BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btOptimizedBvh.o: BulletCollision/CollisionShapes/btOptimizedBvh.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btOptimizedBvh.o BulletCollision/CollisionShapes/btOptimizedBvh.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexInternalShape.o: BulletCollision/CollisionShapes/btConvexInternalShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexInternalShape.o BulletCollision/CollisionShapes/btConvexInternalShape.cpp

${OBJECTDIR}/LinearMath/btGeometryUtil.o: LinearMath/btGeometryUtil.cpp 
	${MKDIR} -p ${OBJECTDIR}/LinearMath
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/LinearMath/btGeometryUtil.o LinearMath/btGeometryUtil.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btInternalEdgeUtility.o: BulletCollision/CollisionDispatch/btInternalEdgeUtility.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btInternalEdgeUtility.o BulletCollision/CollisionDispatch/btInternalEdgeUtility.cpp

${OBJECTDIR}/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.o: BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.o BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btConcaveShape.o: BulletCollision/CollisionShapes/btConcaveShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btConcaveShape.o BulletCollision/CollisionShapes/btConcaveShape.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btSphereShape.o: BulletCollision/CollisionShapes/btSphereShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btSphereShape.o BulletCollision/CollisionShapes/btSphereShape.cpp

${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.o: BulletCollision/NarrowPhaseCollision/btGjkConvexCast.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.o BulletCollision/NarrowPhaseCollision/btGjkConvexCast.cpp

${OBJECTDIR}/BulletCollision/Gimpact/gim_contact.o: BulletCollision/Gimpact/gim_contact.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/Gimpact/gim_contact.o BulletCollision/Gimpact/gim_contact.cpp

${OBJECTDIR}/BulletDynamics/ConstraintSolver/btUniversalConstraint.o: BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/ConstraintSolver/btUniversalConstraint.o BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp

${OBJECTDIR}/LinearMath/btSerializer.o: LinearMath/btSerializer.cpp 
	${MKDIR} -p ${OBJECTDIR}/LinearMath
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/LinearMath/btSerializer.o LinearMath/btSerializer.cpp

${OBJECTDIR}/LinearMath/btConvexHullComputer.o: LinearMath/btConvexHullComputer.cpp 
	${MKDIR} -p ${OBJECTDIR}/LinearMath
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/LinearMath/btConvexHullComputer.o LinearMath/btConvexHullComputer.cpp

${OBJECTDIR}/BulletCollision/BroadphaseCollision/btAxisSweep3.o: BulletCollision/BroadphaseCollision/btAxisSweep3.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/BroadphaseCollision/btAxisSweep3.o BulletCollision/BroadphaseCollision/btAxisSweep3.cpp

${OBJECTDIR}/BulletDynamics/Vehicle/btWheelInfo.o: BulletDynamics/Vehicle/btWheelInfo.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/Vehicle
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/Vehicle/btWheelInfo.o BulletDynamics/Vehicle/btWheelInfo.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btCollisionWorld.o: BulletCollision/CollisionDispatch/btCollisionWorld.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btCollisionWorld.o BulletCollision/CollisionDispatch/btCollisionWorld.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexHullShape.o: BulletCollision/CollisionShapes/btConvexHullShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexHullShape.o BulletCollision/CollisionShapes/btConvexHullShape.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.o: BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.o BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btStridingMeshInterface.o: BulletCollision/CollisionShapes/btStridingMeshInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btStridingMeshInterface.o BulletCollision/CollisionShapes/btStridingMeshInterface.cpp

${OBJECTDIR}/BulletCollision/BroadphaseCollision/btSimpleBroadphase.o: BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/BroadphaseCollision/btSimpleBroadphase.o BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.o: BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.o BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.cpp

${OBJECTDIR}/BulletSoftBody/btSoftBody.o: BulletSoftBody/btSoftBody.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletSoftBody/btSoftBody.o BulletSoftBody/btSoftBody.cpp

${OBJECTDIR}/BulletSoftBody/btSoftSoftCollisionAlgorithm.o: BulletSoftBody/btSoftSoftCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletSoftBody/btSoftSoftCollisionAlgorithm.o BulletSoftBody/btSoftSoftCollisionAlgorithm.cpp

${OBJECTDIR}/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.o: BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.o BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp

${OBJECTDIR}/BulletCollision/Gimpact/btContactProcessing.o: BulletCollision/Gimpact/btContactProcessing.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/Gimpact/btContactProcessing.o BulletCollision/Gimpact/btContactProcessing.cpp

${OBJECTDIR}/BulletSoftBody/btSoftBodyHelpers.o: BulletSoftBody/btSoftBodyHelpers.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletSoftBody/btSoftBodyHelpers.o BulletSoftBody/btSoftBodyHelpers.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btStaticPlaneShape.o: BulletCollision/CollisionShapes/btStaticPlaneShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btStaticPlaneShape.o BulletCollision/CollisionShapes/btStaticPlaneShape.cpp

${OBJECTDIR}/BulletCollision/Gimpact/btGImpactShape.o: BulletCollision/Gimpact/btGImpactShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/Gimpact/btGImpactShape.o BulletCollision/Gimpact/btGImpactShape.cpp

${OBJECTDIR}/BulletDynamics/ConstraintSolver/btConeTwistConstraint.o: BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/ConstraintSolver/btConeTwistConstraint.o BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp

${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.o: BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.o BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.cpp

${OBJECTDIR}/BulletCollision/Gimpact/gim_memory.o: BulletCollision/Gimpact/gim_memory.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/Gimpact/gim_memory.o BulletCollision/Gimpact/gim_memory.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexShape.o: BulletCollision/CollisionShapes/btConvexShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexShape.o BulletCollision/CollisionShapes/btConvexShape.cpp

${OBJECTDIR}/BulletDynamics/ConstraintSolver/btHinge2Constraint.o: BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/ConstraintSolver/btHinge2Constraint.o BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp

${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btConvexCast.o: BulletCollision/NarrowPhaseCollision/btConvexCast.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btConvexCast.o BulletCollision/NarrowPhaseCollision/btConvexCast.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleCallback.o: BulletCollision/CollisionShapes/btTriangleCallback.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleCallback.o BulletCollision/CollisionShapes/btTriangleCallback.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btUniformScalingShape.o: BulletCollision/CollisionShapes/btUniformScalingShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btUniformScalingShape.o BulletCollision/CollisionShapes/btUniformScalingShape.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexPolyhedron.o: BulletCollision/CollisionShapes/btConvexPolyhedron.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btConvexPolyhedron.o BulletCollision/CollisionShapes/btConvexPolyhedron.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btBoxShape.o: BulletCollision/CollisionShapes/btBoxShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btBoxShape.o BulletCollision/CollisionShapes/btBoxShape.cpp

${OBJECTDIR}/BulletDynamics/ConstraintSolver/btHingeConstraint.o: BulletDynamics/ConstraintSolver/btHingeConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/ConstraintSolver/btHingeConstraint.o BulletDynamics/ConstraintSolver/btHingeConstraint.cpp

${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.o: BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.o BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.cpp

${OBJECTDIR}/BulletDynamics/Vehicle/btRaycastVehicle.o: BulletDynamics/Vehicle/btRaycastVehicle.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/Vehicle
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/Vehicle/btRaycastVehicle.o BulletDynamics/Vehicle/btRaycastVehicle.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.o: BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.o BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.cpp

${OBJECTDIR}/BulletCollision/Gimpact/btGImpactBvh.o: BulletCollision/Gimpact/btGImpactBvh.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/Gimpact/btGImpactBvh.o BulletCollision/Gimpact/btGImpactBvh.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleMeshShape.o: BulletCollision/CollisionShapes/btTriangleMeshShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleMeshShape.o BulletCollision/CollisionShapes/btTriangleMeshShape.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.o: BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.o BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.o: BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.o BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btUnionFind.o: BulletCollision/CollisionDispatch/btUnionFind.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btUnionFind.o BulletCollision/CollisionDispatch/btUnionFind.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btConeShape.o: BulletCollision/CollisionShapes/btConeShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btConeShape.o BulletCollision/CollisionShapes/btConeShape.cpp

${OBJECTDIR}/MiniCL/MiniCLTask/MiniCLTask.o: MiniCL/MiniCLTask/MiniCLTask.cpp 
	${MKDIR} -p ${OBJECTDIR}/MiniCL/MiniCLTask
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/MiniCL/MiniCLTask/MiniCLTask.o MiniCL/MiniCLTask/MiniCLTask.cpp

${OBJECTDIR}/LinearMath/btQuickprof.o: LinearMath/btQuickprof.cpp 
	${MKDIR} -p ${OBJECTDIR}/LinearMath
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/LinearMath/btQuickprof.o LinearMath/btQuickprof.cpp

${OBJECTDIR}/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.o: BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.o BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp

${OBJECTDIR}/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.o: BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.o BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.cpp

${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btRaycastCallback.o: BulletCollision/NarrowPhaseCollision/btRaycastCallback.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btRaycastCallback.o BulletCollision/NarrowPhaseCollision/btRaycastCallback.cpp

${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.o: BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.o BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp

${OBJECTDIR}/BulletSoftBody/btSoftRigidDynamicsWorld.o: BulletSoftBody/btSoftRigidDynamicsWorld.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletSoftBody/btSoftRigidDynamicsWorld.o BulletSoftBody/btSoftRigidDynamicsWorld.cpp

${OBJECTDIR}/BulletSoftBody/btSoftRigidCollisionAlgorithm.o: BulletSoftBody/btSoftRigidCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletSoftBody
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletSoftBody/btSoftRigidCollisionAlgorithm.o BulletSoftBody/btSoftRigidCollisionAlgorithm.cpp

${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btGjkEpa2.o: BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btGjkEpa2.o BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp

${OBJECTDIR}/LinearMath/btConvexHull.o: LinearMath/btConvexHull.cpp 
	${MKDIR} -p ${OBJECTDIR}/LinearMath
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/LinearMath/btConvexHull.o LinearMath/btConvexHull.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btTetrahedronShape.o: BulletCollision/CollisionShapes/btTetrahedronShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btTetrahedronShape.o BulletCollision/CollisionShapes/btTetrahedronShape.cpp

${OBJECTDIR}/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.o: BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.o BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.o: BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.o BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.cpp

${OBJECTDIR}/BulletDynamics/Dynamics/btSimpleDynamicsWorld.o: BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/Dynamics
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/Dynamics/btSimpleDynamicsWorld.o BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp

${OBJECTDIR}/BulletCollision/BroadphaseCollision/btOverlappingPairCache.o: BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/BroadphaseCollision/btOverlappingPairCache.o BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btMultiSphereShape.o: BulletCollision/CollisionShapes/btMultiSphereShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btMultiSphereShape.o BulletCollision/CollisionShapes/btMultiSphereShape.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btMinkowskiSumShape.o: BulletCollision/CollisionShapes/btMinkowskiSumShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btMinkowskiSumShape.o BulletCollision/CollisionShapes/btMinkowskiSumShape.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.o: BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.o BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp

${OBJECTDIR}/BulletDynamics/ConstraintSolver/btSliderConstraint.o: BulletDynamics/ConstraintSolver/btSliderConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/ConstraintSolver/btSliderConstraint.o BulletDynamics/ConstraintSolver/btSliderConstraint.cpp

${OBJECTDIR}/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.o: BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.o BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp

${OBJECTDIR}/BulletDynamics/Dynamics/Bullet-C-API.o: BulletDynamics/Dynamics/Bullet-C-API.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/Dynamics
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/Dynamics/Bullet-C-API.o BulletDynamics/Dynamics/Bullet-C-API.cpp

${OBJECTDIR}/BulletDynamics/Dynamics/btRigidBody.o: BulletDynamics/Dynamics/btRigidBody.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/Dynamics
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/Dynamics/btRigidBody.o BulletDynamics/Dynamics/btRigidBody.cpp

${OBJECTDIR}/BulletCollision/BroadphaseCollision/btDbvtBroadphase.o: BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/BroadphaseCollision/btDbvtBroadphase.o BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp

${OBJECTDIR}/BulletDynamics/Character/btKinematicCharacterController.o: BulletDynamics/Character/btKinematicCharacterController.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/Character
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/Character/btKinematicCharacterController.o BulletDynamics/Character/btKinematicCharacterController.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btManifoldResult.o: BulletCollision/CollisionDispatch/btManifoldResult.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btManifoldResult.o BulletCollision/CollisionDispatch/btManifoldResult.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.o: BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.o BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.cpp

${OBJECTDIR}/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.o: BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletDynamics/ConstraintSolver
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.o BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btConvex2dShape.o: BulletCollision/CollisionShapes/btConvex2dShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btConvex2dShape.o BulletCollision/CollisionShapes/btConvex2dShape.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.o: BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.o BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.o: BulletCollision/CollisionShapes/btHeightfieldTerrainShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.o BulletCollision/CollisionShapes/btHeightfieldTerrainShape.cpp

${OBJECTDIR}/BulletCollision/BroadphaseCollision/btDispatcher.o: BulletCollision/BroadphaseCollision/btDispatcher.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/BroadphaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/BroadphaseCollision/btDispatcher.o BulletCollision/BroadphaseCollision/btDispatcher.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btCompoundShape.o: BulletCollision/CollisionShapes/btCompoundShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btCompoundShape.o BulletCollision/CollisionShapes/btCompoundShape.cpp

${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.o: BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.o BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btCollisionDispatcher.o: BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btCollisionDispatcher.o BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp

${OBJECTDIR}/BulletCollision/Gimpact/btGenericPoolAllocator.o: BulletCollision/Gimpact/btGenericPoolAllocator.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/Gimpact/btGenericPoolAllocator.o BulletCollision/Gimpact/btGenericPoolAllocator.cpp

${OBJECTDIR}/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.o: BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionDispatch
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.o BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.cpp

${OBJECTDIR}/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.o: BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/Gimpact
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.o BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp

${OBJECTDIR}/MiniCL/MiniCLTaskScheduler.o: MiniCL/MiniCLTaskScheduler.cpp 
	${MKDIR} -p ${OBJECTDIR}/MiniCL
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/MiniCL/MiniCLTaskScheduler.o MiniCL/MiniCLTaskScheduler.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleBuffer.o: BulletCollision/CollisionShapes/btTriangleBuffer.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btTriangleBuffer.o BulletCollision/CollisionShapes/btTriangleBuffer.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btShapeHull.o: BulletCollision/CollisionShapes/btShapeHull.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btShapeHull.o BulletCollision/CollisionShapes/btShapeHull.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.o: BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.o BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.cpp

${OBJECTDIR}/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.o: BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp 
	${MKDIR} -p ${OBJECTDIR}/BulletCollision/CollisionShapes
	${RM} $@.d
	$(COMPILE.cc) -g -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.o BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp

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
