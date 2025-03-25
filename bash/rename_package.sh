path=$(dirname $0)/..
new_name=$1

echo "Renaming package to $new_name"

if [ -n "$new_name" ] ; then

    sed -i "s/ros2_msgs_template/$new_name/g" $path/README.md
    sed -i "s/ros2_msgs_template/$new_name/g" $path/package.xml
    sed -i "s/ros2_msgs_template/$new_name/g" $path/CMakeLists.txt

    sed -i "s/ros2_msgs_template/$new_name/g" $path/msg/*.msg
    sed -i "s/ros2_msgs_template/$new_name/g" $path/srv/*.srv
    sed -i "s/ros2_msgs_template/$new_name/g" $path/action/*.action

fi
