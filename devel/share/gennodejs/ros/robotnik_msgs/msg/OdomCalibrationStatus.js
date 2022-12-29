// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class OdomCalibrationStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_calculating = null;
      this.remaining_time = null;
      this.left_radius = null;
      this.right_radius = null;
      this.wheels_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('is_calculating')) {
        this.is_calculating = initObj.is_calculating
      }
      else {
        this.is_calculating = false;
      }
      if (initObj.hasOwnProperty('remaining_time')) {
        this.remaining_time = initObj.remaining_time
      }
      else {
        this.remaining_time = 0.0;
      }
      if (initObj.hasOwnProperty('left_radius')) {
        this.left_radius = initObj.left_radius
      }
      else {
        this.left_radius = 0.0;
      }
      if (initObj.hasOwnProperty('right_radius')) {
        this.right_radius = initObj.right_radius
      }
      else {
        this.right_radius = 0.0;
      }
      if (initObj.hasOwnProperty('wheels_distance')) {
        this.wheels_distance = initObj.wheels_distance
      }
      else {
        this.wheels_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OdomCalibrationStatus
    // Serialize message field [is_calculating]
    bufferOffset = _serializer.bool(obj.is_calculating, buffer, bufferOffset);
    // Serialize message field [remaining_time]
    bufferOffset = _serializer.float32(obj.remaining_time, buffer, bufferOffset);
    // Serialize message field [left_radius]
    bufferOffset = _serializer.float32(obj.left_radius, buffer, bufferOffset);
    // Serialize message field [right_radius]
    bufferOffset = _serializer.float32(obj.right_radius, buffer, bufferOffset);
    // Serialize message field [wheels_distance]
    bufferOffset = _serializer.float32(obj.wheels_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OdomCalibrationStatus
    let len;
    let data = new OdomCalibrationStatus(null);
    // Deserialize message field [is_calculating]
    data.is_calculating = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [remaining_time]
    data.remaining_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left_radius]
    data.left_radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_radius]
    data.right_radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheels_distance]
    data.wheels_distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/OdomCalibrationStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd03e7379e89cf43254443e594855bbde';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_calculating             # true when node is calculating the odometry parameters
    float32 remaining_time          # remaining time in seconds for obtaining odometry values
    
    float32 left_radius             # radius of the left wheel in meters
    float32 right_radius            # radius of the right wheel in meters
    float32 wheels_distance         # distance between the two wheels of the robot in meters
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OdomCalibrationStatus(null);
    if (msg.is_calculating !== undefined) {
      resolved.is_calculating = msg.is_calculating;
    }
    else {
      resolved.is_calculating = false
    }

    if (msg.remaining_time !== undefined) {
      resolved.remaining_time = msg.remaining_time;
    }
    else {
      resolved.remaining_time = 0.0
    }

    if (msg.left_radius !== undefined) {
      resolved.left_radius = msg.left_radius;
    }
    else {
      resolved.left_radius = 0.0
    }

    if (msg.right_radius !== undefined) {
      resolved.right_radius = msg.right_radius;
    }
    else {
      resolved.right_radius = 0.0
    }

    if (msg.wheels_distance !== undefined) {
      resolved.wheels_distance = msg.wheels_distance;
    }
    else {
      resolved.wheels_distance = 0.0
    }

    return resolved;
    }
};

module.exports = OdomCalibrationStatus;
