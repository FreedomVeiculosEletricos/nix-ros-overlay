
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, message-generation, message-runtime, pkg-config, rosconsole, roscpp-serialization, roscpp-traits, rosgraph-msgs, roslang, rostime, std-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-roscpp";
  version = "1.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/roscpp/1.17.3-1.tar.gz";
    name = "1.17.3-1.tar.gz";
    sha256 = "bbbddfc179a7f81e612f96034676066295bf502445acff771434203e5c84d3ad";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation pkg-config roslang ];
  propagatedBuildInputs = [ boost cpp-common message-runtime rosconsole roscpp-serialization roscpp-traits rosgraph-msgs rostime std-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "roscpp is a C++ implementation of ROS. It provides
    a <a href=\"http://wiki.ros.org/Client%20Libraries\">client
    library</a> that enables C++ programmers to quickly interface with
    ROS <a href=\"http://ros.org/wiki/Topics\">Topics</a>,
    <a href=\"http://ros.org/wiki/Services\">Services</a>,
    and <a href=\"http://ros.org/wiki/Parameter Server\">Parameters</a>.

    roscpp is the most widely used ROS client library and is designed to
    be the high-performance library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
