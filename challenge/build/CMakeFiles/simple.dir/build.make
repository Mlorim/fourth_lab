# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mironpomazkov/Desktop/inf_2sem/challenge

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mironpomazkov/Desktop/inf_2sem/challenge/build

# Include any dependencies generated for this target.
include CMakeFiles/simple.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/simple.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/simple.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple.dir/flags.make

CMakeFiles/simple.dir/codegen:
.PHONY : CMakeFiles/simple.dir/codegen

CMakeFiles/simple.dir/simple.cpp.o: CMakeFiles/simple.dir/flags.make
CMakeFiles/simple.dir/simple.cpp.o: /Users/mironpomazkov/Desktop/inf_2sem/challenge/simple.cpp
CMakeFiles/simple.dir/simple.cpp.o: CMakeFiles/simple.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mironpomazkov/Desktop/inf_2sem/challenge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simple.dir/simple.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/simple.dir/simple.cpp.o -MF CMakeFiles/simple.dir/simple.cpp.o.d -o CMakeFiles/simple.dir/simple.cpp.o -c /Users/mironpomazkov/Desktop/inf_2sem/challenge/simple.cpp

CMakeFiles/simple.dir/simple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/simple.dir/simple.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mironpomazkov/Desktop/inf_2sem/challenge/simple.cpp > CMakeFiles/simple.dir/simple.cpp.i

CMakeFiles/simple.dir/simple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/simple.dir/simple.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mironpomazkov/Desktop/inf_2sem/challenge/simple.cpp -o CMakeFiles/simple.dir/simple.cpp.s

# Object files for target simple
simple_OBJECTS = \
"CMakeFiles/simple.dir/simple.cpp.o"

# External object files for target simple
simple_EXTERNAL_OBJECTS =

simple: CMakeFiles/simple.dir/simple.cpp.o
simple: CMakeFiles/simple.dir/build.make
simple: /opt/homebrew/lib/libvtkWrappingTools-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkViewsQt-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkViewsInfovis-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkPythonInterpreter-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkViewsContext2D-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkViewsCore-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkTestingRendering-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkTestingCore-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingQt-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkPythonContext2D-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingLabel-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingLOD-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingLICOpenGL2-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingImage-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingFreeTypeFontConfig-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingContextOpenGL2-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingCellGrid-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingVolumeOpenGL2-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOVeraOut-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOTecplotTable-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOSegY-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOParallelXML-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOPLY-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOOggTheora-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIONetCDF-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOMotionFX-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOParallel-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOMINC-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOLSDyna-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOImport-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOIOSS-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkioss-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOHDF-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOFLUENTCFF-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOVideo-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOMovie-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOFDS-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOInfovis-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOExportPDF-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOExportGL2PS-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingGL2PSOpenGL2-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkgl2ps-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOExodus-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOEngys-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOEnSight-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOERF-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOCityGML-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOChemistry-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOCesium3DTiles-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOCONVERGECFD-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOCGNSReader-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOAsynchronous-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOExport-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingVtkJS-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOGeometry-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingSceneGraph-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOAMR-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkInteractionImage-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkInfovisLayout-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkInfovisBoostGraphAlgorithms-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkImagingStencil-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkImagingStatistics-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkImagingMorphological-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkImagingMath-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkImagingFourier-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkGUISupportQtSQL-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOSQL-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkGUISupportQtQuick-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkGUISupportQt-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkInteractionWidgets-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingVolume-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingAnnotation-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkInteractionStyle-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkImagingHybrid-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkImagingColor-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkGeovisCore-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersTopology-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersTensor-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersSelection-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersSMP-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersPython-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersProgrammable-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersPoints-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersParallelImaging-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersTemporal-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersImaging-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkImagingGeneral-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersGeometryPreview-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersGeneric-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersFlowPaths-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersAMR-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersParallel-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersTexture-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersModeling-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkDomainsChemistryOpenGL2-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingOpenGL2-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingHyperTreeGrid-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingUI-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersHybrid-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkDomainsChemistry-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkCommonPython-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkWrappingPythonCore3.13-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkChartsCore-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkInfovisCore-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersExtraction-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkParallelDIY-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOXML-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOXMLParser-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkParallelCore-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOLegacy-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOCellGrid-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersCellGrid-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOCore-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersStatistics-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersHyperTree-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkImagingSources-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkIOImage-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkDICOMParser-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkmetaio-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingContext2D-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingFreeType-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkRenderingCore-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersSources-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkImagingCore-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersGeneral-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersVerdict-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkverdict-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersGeometry-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkCommonComputationalGeometry-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersCore-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkFiltersReduction-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkCommonExecutionModel-9.4.9.4.dylib
simple: /opt/homebrew/lib/libtheora.dylib
simple: /opt/homebrew/lib/libtheoraenc.dylib
simple: /opt/homebrew/lib/libogg.dylib
simple: /opt/homebrew/lib/libtheoradec.dylib
simple: /opt/homebrew/lib/libcgns.dylib
simple: /Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/lib/libxml2.tbd
simple: /opt/homebrew/lib/libhpdf.dylib
simple: /opt/homebrew/lib/libpng.dylib
simple: /Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/lib/libz.tbd
simple: /opt/homebrew/lib/libjsoncpp.dylib
simple: /opt/homebrew/lib/libvtkexodusII-9.4.9.4.dylib
simple: /opt/homebrew/Cellar/netcdf/4.9.2_2/lib/libnetcdf.dylib
simple: /opt/homebrew/lib/libhdf5.310.5.1.dylib
simple: /opt/homebrew/lib/libhdf5_hl.310.0.6.dylib
simple: /opt/homebrew/lib/libpugixml.1.15.dylib
simple: /opt/homebrew/lib/libboost_serialization.dylib
simple: /opt/homebrew/lib/QtSql.framework/Versions/A/QtSql
simple: /Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/lib/libsqlite3.tbd
simple: /opt/homebrew/lib/QtOpenGLWidgets.framework/Versions/A/QtOpenGLWidgets
simple: /opt/homebrew/lib/QtWidgets.framework/Versions/A/QtWidgets
simple: /opt/homebrew/lib/libfreetype.dylib
simple: /opt/homebrew/lib/QtQuick.framework/Versions/A/QtQuick
simple: /opt/homebrew/lib/QtOpenGL.framework/Versions/A/QtOpenGL
simple: /opt/homebrew/lib/QtGui.framework/Versions/A/QtGui
simple: /opt/homebrew/lib/QtQmlMeta.framework/Versions/A/QtQmlMeta
simple: /opt/homebrew/lib/QtQmlWorkerScript.framework/Versions/A/QtQmlWorkerScript
simple: /opt/homebrew/lib/QtQmlModels.framework/Versions/A/QtQmlModels
simple: /opt/homebrew/lib/QtQml.framework/Versions/A/QtQml
simple: /opt/homebrew/lib/QtNetwork.framework/Versions/A/QtNetwork
simple: /opt/homebrew/lib/QtCore.framework/Versions/A/QtCore
simple: /opt/homebrew/lib/libproj.dylib
simple: /opt/homebrew/lib/libvtkglad-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkCommonColor-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkfmt-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkCommonDataModel-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkCommonSystem-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkCommonMisc-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkCommonTransforms-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkCommonMath-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkkissfft-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkCommonCore-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtksys-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtkloguru-9.4.9.4.dylib
simple: /opt/homebrew/lib/libvtktoken-9.4.9.4.dylib
simple: /opt/homebrew/opt/python@3.13/Frameworks/Python.framework/Versions/3.13/lib/libpython3.13.dylib
simple: /Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/lib/libexpat.tbd
simple: /opt/homebrew/lib/liblz4.dylib
simple: /opt/homebrew/lib/liblzma.dylib
simple: /opt/homebrew/lib/libjpeg.dylib
simple: /opt/homebrew/lib/libtiff.dylib
simple: /opt/homebrew/lib/libdouble-conversion.dylib
simple: CMakeFiles/simple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/mironpomazkov/Desktop/inf_2sem/challenge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable simple"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple.dir/build: simple
.PHONY : CMakeFiles/simple.dir/build

CMakeFiles/simple.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple.dir/clean

CMakeFiles/simple.dir/depend:
	cd /Users/mironpomazkov/Desktop/inf_2sem/challenge/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mironpomazkov/Desktop/inf_2sem/challenge /Users/mironpomazkov/Desktop/inf_2sem/challenge /Users/mironpomazkov/Desktop/inf_2sem/challenge/build /Users/mironpomazkov/Desktop/inf_2sem/challenge/build /Users/mironpomazkov/Desktop/inf_2sem/challenge/build/CMakeFiles/simple.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/simple.dir/depend

