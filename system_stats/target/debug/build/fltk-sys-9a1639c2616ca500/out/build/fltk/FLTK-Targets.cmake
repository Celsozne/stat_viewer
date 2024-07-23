# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.8)
   message(FATAL_ERROR "CMake >= 2.8.0 required")
endif()
if(CMAKE_VERSION VERSION_LESS "2.8.3")
   message(FATAL_ERROR "CMake >= 2.8.3 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.8.3...3.23)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_cmake_targets_defined "")
set(_cmake_targets_not_defined "")
set(_cmake_expected_targets "")
foreach(_cmake_expected_target IN ITEMS fltk::z fltk::png fltk::jpeg fltk::fltk fltk::forms fltk::images)
  list(APPEND _cmake_expected_targets "${_cmake_expected_target}")
  if(TARGET "${_cmake_expected_target}")
    list(APPEND _cmake_targets_defined "${_cmake_expected_target}")
  else()
    list(APPEND _cmake_targets_not_defined "${_cmake_expected_target}")
  endif()
endforeach()
unset(_cmake_expected_target)
if(_cmake_targets_defined STREQUAL _cmake_expected_targets)
  unset(_cmake_targets_defined)
  unset(_cmake_targets_not_defined)
  unset(_cmake_expected_targets)
  unset(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT _cmake_targets_defined STREQUAL "")
  string(REPLACE ";" ", " _cmake_targets_defined_text "${_cmake_targets_defined}")
  string(REPLACE ";" ", " _cmake_targets_not_defined_text "${_cmake_targets_not_defined}")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_cmake_targets_defined_text}\nTargets not yet defined: ${_cmake_targets_not_defined_text}\n")
endif()
unset(_cmake_targets_defined)
unset(_cmake_targets_not_defined)
unset(_cmake_expected_targets)


# Create imported target fltk::z
add_library(fltk::z STATIC IMPORTED)

# Create imported target fltk::png
add_library(fltk::png STATIC IMPORTED)

set_target_properties(fltk::png PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "HAVE_PNG_H=1;HAVE_PNG_GET_VALID=1;HAVE_PNG_SET_TRNS_TO_ALPHA=1"
  INTERFACE_INCLUDE_DIRECTORIES "/home/xerox1/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.32/cfltk/fltk/png"
  INTERFACE_LINK_LIBRARIES "fltk::z"
)

# Create imported target fltk::jpeg
add_library(fltk::jpeg STATIC IMPORTED)

set_target_properties(fltk::jpeg PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/xerox1/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.32/cfltk/fltk/jpeg"
)

# Create imported target fltk::fltk
add_library(fltk::fltk STATIC IMPORTED)

set_target_properties(fltk::fltk PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/xerox1/Documents/GitHub/stat_viewer/system_stats/target/debug/build/fltk-sys-9a1639c2616ca500/out/build/fltk/src/..;/home/xerox1/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.32/cfltk/fltk/src/.."
  INTERFACE_LINK_DIRECTORIES "/home/xerox1/Documents/GitHub/stat_viewer/system_stats/target/debug/build/fltk-sys-9a1639c2616ca500/out/build/fltk/src/../lib"
  INTERFACE_LINK_LIBRARIES "/usr/lib/x86_64-linux-gnu/libdl.a;/usr/lib/x86_64-linux-gnu/libSM.so;/usr/lib/x86_64-linux-gnu/libICE.so;/usr/lib/x86_64-linux-gnu/libX11.so;/usr/lib/x86_64-linux-gnu/libXext.so;/usr/lib/x86_64-linux-gnu/libXinerama.so;/usr/lib/x86_64-linux-gnu/libXfixes.so;/usr/lib/x86_64-linux-gnu/libXcursor.so;/usr/lib/x86_64-linux-gnu/libXrender.so;/usr/lib/x86_64-linux-gnu/libpango-1.0.so;/usr/lib/x86_64-linux-gnu/libpangocairo-1.0.so;/usr/lib/x86_64-linux-gnu/libgobject-2.0.so;/usr/lib/x86_64-linux-gnu/libglib-2.0.so;/usr/lib/x86_64-linux-gnu/libharfbuzz.so;/usr/lib/x86_64-linux-gnu/libcairo.so;/usr/lib/x86_64-linux-gnu/libpangoxft-1.0.so;/usr/lib/x86_64-linux-gnu/libpangoft2-1.0.so;/usr/lib/x86_64-linux-gnu/libfontconfig.so;/usr/lib/x86_64-linux-gnu/libfreetype.so;/usr/lib/x86_64-linux-gnu/libXft.so"
)

# Create imported target fltk::forms
add_library(fltk::forms STATIC IMPORTED)

set_target_properties(fltk::forms PROPERTIES
  INTERFACE_LINK_LIBRARIES "fltk::fltk"
)

# Create imported target fltk::images
add_library(fltk::images STATIC IMPORTED)

set_target_properties(fltk::images PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/xerox1/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.32/cfltk/fltk/jpeg"
  INTERFACE_LINK_LIBRARIES "fltk::fltk;\$<LINK_ONLY:fltk::png>;\$<LINK_ONLY:fltk::jpeg>"
)

# Import target "fltk::z" for configuration "Debug"
set_property(TARGET fltk::z APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(fltk::z PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "/home/xerox1/Documents/GitHub/stat_viewer/system_stats/target/debug/build/fltk-sys-9a1639c2616ca500/out/build/fltk/lib/libfltk_z.a"
  )

# Import target "fltk::png" for configuration "Debug"
set_property(TARGET fltk::png APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(fltk::png PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "/home/xerox1/Documents/GitHub/stat_viewer/system_stats/target/debug/build/fltk-sys-9a1639c2616ca500/out/build/fltk/lib/libfltk_png.a"
  )

# Import target "fltk::jpeg" for configuration "Debug"
set_property(TARGET fltk::jpeg APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(fltk::jpeg PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "/home/xerox1/Documents/GitHub/stat_viewer/system_stats/target/debug/build/fltk-sys-9a1639c2616ca500/out/build/fltk/lib/libfltk_jpeg.a"
  )

# Import target "fltk::fltk" for configuration "Debug"
set_property(TARGET fltk::fltk APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(fltk::fltk PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C;CXX"
  IMPORTED_LOCATION_DEBUG "/home/xerox1/Documents/GitHub/stat_viewer/system_stats/target/debug/build/fltk-sys-9a1639c2616ca500/out/build/fltk/lib/libfltk.a"
  )

# Import target "fltk::forms" for configuration "Debug"
set_property(TARGET fltk::forms APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(fltk::forms PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "/home/xerox1/Documents/GitHub/stat_viewer/system_stats/target/debug/build/fltk-sys-9a1639c2616ca500/out/build/fltk/lib/libfltk_forms.a"
  )

# Import target "fltk::images" for configuration "Debug"
set_property(TARGET fltk::images APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(fltk::images PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "/home/xerox1/Documents/GitHub/stat_viewer/system_stats/target/debug/build/fltk-sys-9a1639c2616ca500/out/build/fltk/lib/libfltk_images.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)