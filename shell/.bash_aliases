alias open="xdg-open"
alias cm="catkin_make -C ~/catkin_ws/"
alias trunk="cd ~/catkin_ws/src/"

alias dev="ssh ramwij@lnxdev01"

alias astart="roslaunch agv_stage agv_lab.launch"
alias agv-teleop="rosrun teleop_twist_keyboard teleop_twist_keyboard.py cmd_vel:=nav_cmd_vel"
alias agv2-teleop="rosrun teleop_twist_keyboard teleop_twist_keyboard.py __ns:=robot_0 cmd_vel:=nav_cmd_vel"

alias debug-recovery="rosservice call /move_base/set_logger_level ros.move_base.move_base_recovery Debug"
