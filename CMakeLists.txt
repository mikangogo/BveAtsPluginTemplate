cmake_minimum_required(VERSION 3.10)

set(BVETS_LIBRARY_NAME "atsplugin")

project(${BVETS_LIBRARY_NAME})

set_property(
  DIRECTORY PROPERTY
  VS_STARTUP_PROJECT
  ${BVETS_LIBRARY_NAME}
)

include_directories(src)

set(BVETS_SOURCE_FILE
  src/BveAtsPlugin.c
  src/EntryPoint.cpp
)

add_library(
  ${BVETS_LIBRARY_NAME}
  SHARED
  ${BVETS_SOURCE_FILE}
)