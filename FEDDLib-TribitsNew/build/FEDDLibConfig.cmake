# @HEADER
# ************************************************************************
#
#            TriBITS: Tribal Build, Integrate, and Test System
#                    Copyright 2013 Sandia Corporation
#
#
# Under the terms of Contract DE-AC04-94AL85000 with Sandia Corporation,
# the U.S. Government retains certain rights in this software.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#
# 1. Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution.
#
# 3. Neither the name of the Corporation nor the names of the
# contributors may be used to endorse or promote products derived from
# this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY SANDIA CORPORATION "AS IS" AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL SANDIA CORPORATION OR THE
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# ************************************************************************
# @HEADER

GET_FILENAME_COMPONENT(_FEDDLib_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
GET_FILENAME_COMPONENT(_FEDDLib_PREFIX "${_FEDDLib_DIR}" PATH)
SET(FEDDLib_DIR "${_FEDDLib_PREFIX}/lib/cmake/FEDDLib")
MESSAGE(WARNING "FEDDLibConfig.cmake has moved.  "
  "It now exists at a location under the installation prefix where the "
  "find_package command looks by default (<prefix>/lib/cmake/FEDDLib).  "
  "This compatibility file exists at the old location (<prefix>/include) "
  "to present this message and load the file from its new location."
  "\n"
  "The find_package() call that loaded this file did so because its "
  "cached result variable, FEDDLib_DIR, is set to\n"
  "  ${_FEDDLib_DIR}\n"
  "I'm locally setting FEDDLib_DIR to\n"
  "  ${FEDDLib_DIR}\n"
  "and loading FEDDLibConfig.cmake from its new location.  "
  "One may suppress this warning by setting the above value in the cache.  "
  "However, the application needs modification permanently fix the issue.  "
  "The find_package() call that loaded this file may have the form\n"
  "  find_package(FEDDLib REQUIRED PATHS \${FEDDLib_PATH}/include)\n"
  "Change it to the form\n"
  "  set(CMAKE_PREFIX_PATH \${FEDDLib_PATH} \${CMAKE_PREFIX_PATH})\n"
  "  find_package(FEDDLib REQUIRED)\n"
  "to find FEDDLibConfig.cmake in its new location in future builds "
  "while still honoring the FEDDLib_PATH option for this application."
  )
INCLUDE(${FEDDLib_DIR}/FEDDLibConfig.cmake)
