
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, curl, file, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-libcurl-vendor";
  version = "3.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/rolling/libcurl_vendor/3.8.0-1.tar.gz";
    name = "3.8.0-1.tar.gz";
    sha256 = "f2d686baa51395db36e5d859c75d1236afb1855591588d03ff8e2d5b1f42ddf1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package file ];
  propagatedBuildInputs = [ curl pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package pkg-config ];

  meta = {
    description = "Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
