#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ittapi::ittnotify" for configuration "Debug"
set_property(TARGET ittapi::ittnotify APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ittapi::ittnotify PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libittnotify.a"
  )

list(APPEND _cmake_import_check_targets ittapi::ittnotify )
list(APPEND _cmake_import_check_files_for_ittapi::ittnotify "${_IMPORT_PREFIX}/lib/libittnotify.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
