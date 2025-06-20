#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ONNX::onnx" for configuration "Debug"
set_property(TARGET ONNX::onnx APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ONNX::onnx PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libonnx.a"
  )

list(APPEND _cmake_import_check_targets ONNX::onnx )
list(APPEND _cmake_import_check_files_for_ONNX::onnx "${_IMPORT_PREFIX}/lib/libonnx.a" )

# Import target "ONNX::onnx_proto" for configuration "Debug"
set_property(TARGET ONNX::onnx_proto APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ONNX::onnx_proto PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libonnx_proto.a"
  )

list(APPEND _cmake_import_check_targets ONNX::onnx_proto )
list(APPEND _cmake_import_check_files_for_ONNX::onnx_proto "${_IMPORT_PREFIX}/lib/libonnx_proto.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
