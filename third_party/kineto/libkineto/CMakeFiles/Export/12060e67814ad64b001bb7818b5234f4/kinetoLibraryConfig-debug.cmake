#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "kineto" for configuration "Debug"
set_property(TARGET kineto APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(kineto PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libkineto.a"
  )

list(APPEND _cmake_import_check_targets kineto )
list(APPEND _cmake_import_check_files_for_kineto "${_IMPORT_PREFIX}/lib/libkineto.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
