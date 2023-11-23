# Install script for directory: /home/igor/labs/mois/kursach2sem/ostis-geography/problem-solver/cxx/modules

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/AdminModule/cmake_install.cmake")
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/dance_studiosModule/cmake_install.cmake")
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/PotteryModule/cmake_install.cmake")
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/RiversModule/cmake_install.cmake")
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/VitebskVillagesModule/cmake_install.cmake")
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/StatusAndDistrictSearchModule/cmake_install.cmake")
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/VillagesModule/cmake_install.cmake")
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/StreetSearchAgentModule/cmake_install.cmake")
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/SchoolSearchAgentModule/cmake_install.cmake")
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/PharmacySearchByCityAndRegionAgentModule/cmake_install.cmake")
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/MuseumsRegionSearchModule/cmake_install.cmake")
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/hotelModule/cmake_install.cmake")
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/SearchEconomicPathAgentModule/cmake_install.cmake")
  include("/home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/SearchFastestWayAgentModule/cmake_install.cmake")

endif()

