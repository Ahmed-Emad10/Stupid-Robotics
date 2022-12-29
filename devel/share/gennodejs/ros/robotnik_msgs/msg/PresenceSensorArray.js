// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PresenceSensor = require('./PresenceSensor.js');

//-----------------------------------------------------------

class PresenceSensorArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensors = null;
    }
    else {
      if (initObj.hasOwnProperty('sensors')) {
        this.sensors = initObj.sensors
      }
      else {
        this.sensors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PresenceSensorArray
    // Serialize message field [sensors]
    // Serialize the length for message field [sensors]
    bufferOffset = _serializer.uint32(obj.sensors.length, buffer, bufferOffset);
    obj.sensors.forEach((val) => {
      bufferOffset = PresenceSensor.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PresenceSensorArray
    let len;
    let data = new PresenceSensorArray(null);
    // Deserialize message field [sensors]
    // Deserialize array length for message field [sensors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sensors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sensors[i] = PresenceSensor.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.sensors.forEach((val) => {
      length += PresenceSensor.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/PresenceSensorArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb0dd527b36bdf6dd7986227d34224a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_msgs/PresenceSensor[] sensors
    ================================================================================
    MSG: robotnik_msgs/PresenceSensor
    string CAMERA=camera
    string PHOTOCELL=photocell
    
    Header header
    geometry_msgs/Pose pose
    string sensor_id # Which sensor is detecting the object (which camera or which photocell)
    string sensor_type # camera or photocell
    string detected_id # if QR is being detected, in photocell would be void
    string zone 
    bool enabled # Determines if the sensor is on or off 
    bool value # Determines whether the sensor is detecting the object
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new PresenceSensorArray(null);
    if (msg.sensors !== undefined) {
      resolved.sensors = new Array(msg.sensors.length);
      for (let i = 0; i < resolved.sensors.length; ++i) {
        resolved.sensors[i] = PresenceSensor.Resolve(msg.sensors[i]);
      }
    }
    else {
      resolved.sensors = []
    }

    return resolved;
    }
};

module.exports = PresenceSensorArray;
