# Install script for directory: /content/pytorch/third_party/kineto/libkineto

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/content/pytorch/torch")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY MESSAGE_NEVER FILES "/content/lib/libkineto.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kineto" TYPE FILE MESSAGE_NEVER FILES
    "/content/pytorch/third_party/kineto/libkineto/include/AbstractConfig.h"
    "/content/pytorch/third_party/kineto/libkineto/include/ActivityProfilerInterface.h"
    "/content/pytorch/third_party/kineto/libkineto/include/ActivityTraceInterface.h"
    "/content/pytorch/third_party/kineto/libkineto/include/ActivityType.h"
    "/content/pytorch/third_party/kineto/libkineto/include/Config.h"
    "/content/pytorch/third_party/kineto/libkineto/include/ClientInterface.h"
    "/content/pytorch/third_party/kineto/libkineto/include/GenericTraceActivity.h"
    "/content/pytorch/third_party/kineto/libkineto/include/IActivityProfiler.h"
    "/content/pytorch/third_party/kineto/libkineto/include/ILoggerObserver.h"
    "/content/pytorch/third_party/kineto/libkineto/include/ITraceActivity.h"
    "/content/pytorch/third_party/kineto/libkineto/include/LoggingAPI.h"
    "/content/pytorch/third_party/kineto/libkineto/include/TraceSpan.h"
    "/content/pytorch/third_party/kineto/libkineto/include/ThreadUtil.h"
    "/content/pytorch/third_party/kineto/libkineto/include/libkineto.h"
    "/content/pytorch/third_party/kineto/libkineto/include/time_since_epoch.h"
    "/content/pytorch/third_party/kineto/libkineto/include/output_base.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/kineto/kinetoLibraryConfig.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/kineto/kinetoLibraryConfig.cmake"
         "/content/third_party/kineto/libkineto/CMakeFiles/Export/12060e67814ad64b001bb7818b5234f4/kinetoLibraryConfig.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/kineto/kinetoLibraryConfig-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/kineto/kinetoLibraryConfig.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/kineto" TYPE FILE MESSAGE_NEVER FILES "/content/third_party/kineto/libkineto/CMakeFiles/Export/12060e67814ad64b001bb7818b5234f4/kinetoLibraryConfig.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/kineto" TYPE FILE MESSAGE_NEVER FILES "/content/third_party/kineto/libkineto/CMakeFiles/Export/12060e67814ad64b001bb7818b5234f4/kinetoLibraryConfig-debug.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/content/third_party/kineto/libkineto/third_party/dynolog/dynolog/src/ipcfabric/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/content/third_party/kineto/libkineto/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
