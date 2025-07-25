
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, talos-controller-configuration, talos-description-calibration, talos-description-inertial, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-talos-description";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_description/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "a025084fe0361eee29917fffcd8c83d9201244bcb1ebe8499d4fb88276b220d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ launch launch-pal launch-param-builder launch-ros talos-controller-configuration talos-description-calibration talos-description-inertial xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The talos_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
