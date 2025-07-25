
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-visualization-msgs";
  version = "1.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/visualization_msgs/1.13.2-1.tar.gz";
    name = "1.13.2-1.tar.gz";
    sha256 = "0e6979ea5079388785849469b9baf9e2ae85c63d849a2d9f225f5461aebe0008";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "visualization_msgs is a set of messages used by higher level packages, such as <a href=\"/wiki/rviz\">rviz</a>, that deal in visualization-specific data.

    The main messages in visualization_msgs is <tt>visualization_msgs/Marker</tt>.
    The marker message is used to send visualization &quot;markers&quot; such as boxes, spheres, arrows, lines, etc. to a visualization environment such as <a href=\"http:///www.ros.org/wiki/rviz\">rviz</a>.
    See the rviz tutorial <a href=\"http://www.ros.org/wiki/rviz/Tutorials\">rviz tutorials</a> for more information.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
