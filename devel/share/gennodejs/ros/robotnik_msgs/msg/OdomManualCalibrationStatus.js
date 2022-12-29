// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class OdomManualCalibrationStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.odom_increment = null;
      this.real_increment = null;
      this.linear_error = null;
      this.angular_error = null;
    }
    else {
      if (initObj.hasOwnProperty('odom_increment')) {
        this.odom_increment = initObj.odom_increment
      }
      else {
        this.odom_increment = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('real_increment')) {
        this.real_increment = initObj.real_increment
      }
      else {
        this.real_increment = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('linear_error')) {
        this.linear_error = initObj.linear_error
      }
      else {
        this.linear_error = 0.0;
      }
      if (initObj.hasOwnProperty('angular_error')) {
        this.angular_error = initObj.angular_error
      }
      else {
        this.angular_error = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OdomManualCalibrationStatus
    // Serialize message field [odom_increment]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.odom_increment, buffer, bufferOffset);
    // Serialize message field [real_increment]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.real_increment, buffer, bufferOffset);
    // Serialize message field [linear_error]
    bufferOffset = _serializer.float32(obj.linear_error, buffer, bufferOffset);
    // Serialize message field [angular_error]
    bufferOffset = _serializer.float32(obj.angular_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OdomManualCalibrationStatus
    let len;
    let data = new OdomManualCalibrationStatus(null);
    // Deserialize message field [odom_increment]
    data.odom_increment = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [real_increment]
    data.real_increment = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_error]
    data.linear_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_error]
    data.angular_error = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/OdomManualCalibrationStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f77436bc07e4185538807c200cd1cc07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose odom_increment             # odometry increment since last reset
    geometry_msgs/Pose real_increment             # real increment since last reset
    
    float32 linear_error            # linear error between odom and real since last reset
    float32 angular_error           # angular error between odom and real since last reset
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OdomManualCalibrationStatus(null);
    if (msg.odom_increment !== undefined) {
      resolved.odom_increment = geometry_msgs.msg.Pose.Resolve(msg.odom_increment)
    }
    else {
      resolved.odom_increment = new geometry_msgs.msg.Pose()
    }

    if (msg.real_increment !== undefined) {
      resolved.real_increment = geometry_msgs.msg.Pose.Resolve(msg.real_increment)
    }
    else {
      resolved.real_increment = new geometry_msgs.msg.Pose()
    }

    if (msg.linear_error !== undefined) {
      resolved.linear_error = msg.linear_error;
    }
    else {
      resolved.linear_error = 0.0
    }

    if (msg.angular_error !== undefined) {
      resolved.angular_error = msg.angular_error;
    }
    else {
      resolved.angular_error = 0.0
    }

    return resolved;
    }
};

module.exports = OdomManualCalibrationStatus;
