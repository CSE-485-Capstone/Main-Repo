# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/haxx/Code/Main-Repo/VideoComparer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/haxx/Code/Main-Repo/VideoComparer

# Include any dependencies generated for this target.
include CMakeFiles/VideoComparer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/VideoComparer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VideoComparer.dir/flags.make

CMakeFiles/VideoComparer.dir/VideoComparer.cpp.o: CMakeFiles/VideoComparer.dir/flags.make
CMakeFiles/VideoComparer.dir/VideoComparer.cpp.o: VideoComparer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/haxx/Code/Main-Repo/VideoComparer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/VideoComparer.dir/VideoComparer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VideoComparer.dir/VideoComparer.cpp.o -c /home/haxx/Code/Main-Repo/VideoComparer/VideoComparer.cpp

CMakeFiles/VideoComparer.dir/VideoComparer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VideoComparer.dir/VideoComparer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/haxx/Code/Main-Repo/VideoComparer/VideoComparer.cpp > CMakeFiles/VideoComparer.dir/VideoComparer.cpp.i

CMakeFiles/VideoComparer.dir/VideoComparer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VideoComparer.dir/VideoComparer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/haxx/Code/Main-Repo/VideoComparer/VideoComparer.cpp -o CMakeFiles/VideoComparer.dir/VideoComparer.cpp.s

CMakeFiles/VideoComparer.dir/TestBed.cpp.o: CMakeFiles/VideoComparer.dir/flags.make
CMakeFiles/VideoComparer.dir/TestBed.cpp.o: TestBed.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/haxx/Code/Main-Repo/VideoComparer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/VideoComparer.dir/TestBed.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VideoComparer.dir/TestBed.cpp.o -c /home/haxx/Code/Main-Repo/VideoComparer/TestBed.cpp

CMakeFiles/VideoComparer.dir/TestBed.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VideoComparer.dir/TestBed.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/haxx/Code/Main-Repo/VideoComparer/TestBed.cpp > CMakeFiles/VideoComparer.dir/TestBed.cpp.i

CMakeFiles/VideoComparer.dir/TestBed.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VideoComparer.dir/TestBed.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/haxx/Code/Main-Repo/VideoComparer/TestBed.cpp -o CMakeFiles/VideoComparer.dir/TestBed.cpp.s

CMakeFiles/VideoComparer.dir/TestAbsDiff.cpp.o: CMakeFiles/VideoComparer.dir/flags.make
CMakeFiles/VideoComparer.dir/TestAbsDiff.cpp.o: TestAbsDiff.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/haxx/Code/Main-Repo/VideoComparer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/VideoComparer.dir/TestAbsDiff.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VideoComparer.dir/TestAbsDiff.cpp.o -c /home/haxx/Code/Main-Repo/VideoComparer/TestAbsDiff.cpp

CMakeFiles/VideoComparer.dir/TestAbsDiff.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VideoComparer.dir/TestAbsDiff.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/haxx/Code/Main-Repo/VideoComparer/TestAbsDiff.cpp > CMakeFiles/VideoComparer.dir/TestAbsDiff.cpp.i

CMakeFiles/VideoComparer.dir/TestAbsDiff.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VideoComparer.dir/TestAbsDiff.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/haxx/Code/Main-Repo/VideoComparer/TestAbsDiff.cpp -o CMakeFiles/VideoComparer.dir/TestAbsDiff.cpp.s

# Object files for target VideoComparer
VideoComparer_OBJECTS = \
"CMakeFiles/VideoComparer.dir/VideoComparer.cpp.o" \
"CMakeFiles/VideoComparer.dir/TestBed.cpp.o" \
"CMakeFiles/VideoComparer.dir/TestAbsDiff.cpp.o"

# External object files for target VideoComparer
VideoComparer_EXTERNAL_OBJECTS =

VideoComparer: CMakeFiles/VideoComparer.dir/VideoComparer.cpp.o
VideoComparer: CMakeFiles/VideoComparer.dir/TestBed.cpp.o
VideoComparer: CMakeFiles/VideoComparer.dir/TestAbsDiff.cpp.o
VideoComparer: CMakeFiles/VideoComparer.dir/build.make
VideoComparer: /usr/local/lib/libopencv_gapi.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_stitching.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_aruco.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_bgsegm.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_bioinspired.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_ccalib.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_cudabgsegm.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_cudafeatures2d.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_cudaobjdetect.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_cudastereo.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_dnn_objdetect.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_dnn_superres.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_dpm.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_face.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_freetype.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_fuzzy.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_hdf.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_hfs.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_img_hash.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_intensity_transform.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_line_descriptor.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_quality.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_rapid.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_reg.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_rgbd.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_saliency.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_stereo.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_structured_light.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_superres.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_surface_matching.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_tracking.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_videostab.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_viz.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_xfeatures2d.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_xobjdetect.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_xphoto.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_shape.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_highgui.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_datasets.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_plot.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_text.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_dnn.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_ml.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_phase_unwrapping.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_cudacodec.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_videoio.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_cudaoptflow.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_cudalegacy.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_cudawarping.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_optflow.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_ximgproc.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_video.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_imgcodecs.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_objdetect.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_calib3d.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_features2d.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_flann.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_photo.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_cudaimgproc.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_cudafilters.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_imgproc.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_cudaarithm.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_core.so.4.3.0
VideoComparer: /usr/local/lib/libopencv_cudev.so.4.3.0
VideoComparer: CMakeFiles/VideoComparer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/haxx/Code/Main-Repo/VideoComparer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable VideoComparer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VideoComparer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VideoComparer.dir/build: VideoComparer

.PHONY : CMakeFiles/VideoComparer.dir/build

CMakeFiles/VideoComparer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VideoComparer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VideoComparer.dir/clean

CMakeFiles/VideoComparer.dir/depend:
	cd /home/haxx/Code/Main-Repo/VideoComparer && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/haxx/Code/Main-Repo/VideoComparer /home/haxx/Code/Main-Repo/VideoComparer /home/haxx/Code/Main-Repo/VideoComparer /home/haxx/Code/Main-Repo/VideoComparer /home/haxx/Code/Main-Repo/VideoComparer/CMakeFiles/VideoComparer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/VideoComparer.dir/depend
