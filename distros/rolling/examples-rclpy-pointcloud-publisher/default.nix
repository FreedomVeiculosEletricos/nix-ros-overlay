
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, sensor-msgs, sensor-msgs-py, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-pointcloud-publisher";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_pointcloud_publisher/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "59e39aaa10839f07a5a7dee558814514e2f3d785f7d8c094e041dc7ccca9252d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy rclpy sensor-msgs sensor-msgs-py std-msgs ];

  meta = {
    description = "Example on how to publish a Pointcloud2 message";
    license = with lib.licenses; [ asl20 ];
  };
}
