#!/bin/bash

dir=~
[ "$1" != "" ] && dir="$1"   #引数があったらそこをros2_wsのある場所にする
cd $dir/ros2_ws
source /opt/ros/jazzy/setup.bash
colcon build
source install/setup.bash
timeout 10 ros2 launch mypkg talk_listen.launch.py > /tmp/mypkg.log
cat /tmp/mypkg.log           #ログを表示（失敗時の原因調査用）
cat /tmp/mypkg.log | grep 'Listen: 10'
