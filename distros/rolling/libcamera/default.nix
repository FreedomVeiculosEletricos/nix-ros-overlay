
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, libyaml, meson, openssl, pkg-config, python3, python3Packages, udev }:
buildRosPackage {
  pname = "ros-rolling-libcamera";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/rolling/libcamera/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "fd929eda59d4bd5cadd7ad405189e584528137883e9acbe0f1364c774fbf2741";
  };

  buildType = "meson";
  buildInputs = [ git meson pkg-config python3Packages.jinja2 python3Packages.ply python3Packages.pybind11 python3Packages.pyyaml ];
  propagatedBuildInputs = [ libyaml openssl python3 udev ];
  nativeBuildInputs = [ git meson pkg-config ];

  meta = {
    description = "An open source camera stack and framework for Linux, Android, and ChromeOS";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
