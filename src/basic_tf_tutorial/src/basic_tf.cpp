#include <ros/ros.h>
#include <tf/transform_datatypes.h>
#include <tf/transform_broadcaster.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "basic_tf_node");
    ros::NodeHandle n;

    ros::Rate loop_rate(60);

    tf::TransformBroadcaster broadcaster;

    while (ros::ok())
    {
        broadcaster.sendTransform(tf::StampedTransform(
            tf::Transform(tf::Quaternion(0.0, 0.0, 0.0, 1.0), tf::Vector3(1.0, 0.0, 0.0)),
            ros::Time::now(),
            "parent_link",
            "child_link"));

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}

