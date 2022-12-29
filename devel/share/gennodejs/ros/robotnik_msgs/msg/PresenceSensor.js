// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PresenceSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pose = null;
      this.sensor_id = null;
      this.sensor_type = null;
      this.detected_id = null;
      this.zone = null;
      this.enabled = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = '';
      }
      if (initObj.hasOwnProperty('sensor_type')) {
        this.sensor_type = initObj.sensor_type
      }
      else {
        this.sensor_type = '';
      }
      if (initObj.hasOwnProperty('detected_id')) {
        this.detected_id = initObj.detected_id
      }
      else {
        this.detected_id = '';
      }
      if (initObj.hasOwnProperty('zone')) {
        this.zone = initObj.zone
      }
      else {
        this.zone = '';
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = false;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PresenceSensor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.string(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [sensor_type]
    bufferOffset = _serializer.string(obj.sensor_type, buffer, bufferOffset);
    // Serialize message field [detected_id]
    bufferOffset = _serializer.string(obj.detected_id, buffer, bufferOffset);
    // Serialize message field [zone]
    bufferOffset = _serializer.string(obj.zone, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = _serializer.bool(obj.enabled, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.bool(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PresenceSensor
    let len;
    let data = new PresenceSensor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sensor_type]
    data.sensor_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detected_id]
    data.detected_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [zone]
    data.zone = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.sensor_id);
    length += _getByteLength(object.sensor_type);
    length += _getByteLength(object.detected_id);
    length += _getByteLength(object.zone);
    return length + 74;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/PresenceSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd655196d2d8c595af378ef8e462eca4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PresenceSensor(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = ''
    }

    if (msg.sensor_type !== undefined) {
      resolved.sensor_type = msg.sensor_type;
    }
    else {
      resolved.sensor_type = ''
    }

    if (msg.detected_id !== undefined) {
      resolved.detected_id = msg.detected_id;
    }
    else {
      resolved.detected_id = ''
    }

    if (msg.zone !== undefined) {
      resolved.zone = msg.zone;
    }
    else {
      resolved.zone = ''
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = false
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = false
    }

    return resolved;
    }
};

// Constants for message
PresenceSensor.Constants = {
  CAMERA: 'camera',
  PHOTOCELL: 'photocell',
}

module.exports = PresenceSensor;
