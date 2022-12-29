// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaserMode = require('./LaserMode.js');
let LaserStatus = require('./LaserStatus.js');

//-----------------------------------------------------------

class SafetyModuleStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.operation_mode = null;
      this.safety_mode = null;
      this.emergency_stop = null;
      this.safety_stop = null;
      this.lasers_on_standby = null;
      this.current_speed = null;
      this.lasers_mode = null;
      this.lasers_status = null;
    }
    else {
      if (initObj.hasOwnProperty('operation_mode')) {
        this.operation_mode = initObj.operation_mode
      }
      else {
        this.operation_mode = '';
      }
      if (initObj.hasOwnProperty('safety_mode')) {
        this.safety_mode = initObj.safety_mode
      }
      else {
        this.safety_mode = '';
      }
      if (initObj.hasOwnProperty('emergency_stop')) {
        this.emergency_stop = initObj.emergency_stop
      }
      else {
        this.emergency_stop = false;
      }
      if (initObj.hasOwnProperty('safety_stop')) {
        this.safety_stop = initObj.safety_stop
      }
      else {
        this.safety_stop = false;
      }
      if (initObj.hasOwnProperty('lasers_on_standby')) {
        this.lasers_on_standby = initObj.lasers_on_standby
      }
      else {
        this.lasers_on_standby = false;
      }
      if (initObj.hasOwnProperty('current_speed')) {
        this.current_speed = initObj.current_speed
      }
      else {
        this.current_speed = 0.0;
      }
      if (initObj.hasOwnProperty('lasers_mode')) {
        this.lasers_mode = initObj.lasers_mode
      }
      else {
        this.lasers_mode = new LaserMode();
      }
      if (initObj.hasOwnProperty('lasers_status')) {
        this.lasers_status = initObj.lasers_status
      }
      else {
        this.lasers_status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SafetyModuleStatus
    // Serialize message field [operation_mode]
    bufferOffset = _serializer.string(obj.operation_mode, buffer, bufferOffset);
    // Serialize message field [safety_mode]
    bufferOffset = _serializer.string(obj.safety_mode, buffer, bufferOffset);
    // Serialize message field [emergency_stop]
    bufferOffset = _serializer.bool(obj.emergency_stop, buffer, bufferOffset);
    // Serialize message field [safety_stop]
    bufferOffset = _serializer.bool(obj.safety_stop, buffer, bufferOffset);
    // Serialize message field [lasers_on_standby]
    bufferOffset = _serializer.bool(obj.lasers_on_standby, buffer, bufferOffset);
    // Serialize message field [current_speed]
    bufferOffset = _serializer.float64(obj.current_speed, buffer, bufferOffset);
    // Serialize message field [lasers_mode]
    bufferOffset = LaserMode.serialize(obj.lasers_mode, buffer, bufferOffset);
    // Serialize message field [lasers_status]
    // Serialize the length for message field [lasers_status]
    bufferOffset = _serializer.uint32(obj.lasers_status.length, buffer, bufferOffset);
    obj.lasers_status.forEach((val) => {
      bufferOffset = LaserStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SafetyModuleStatus
    let len;
    let data = new SafetyModuleStatus(null);
    // Deserialize message field [operation_mode]
    data.operation_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [safety_mode]
    data.safety_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [emergency_stop]
    data.emergency_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [safety_stop]
    data.safety_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lasers_on_standby]
    data.lasers_on_standby = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [current_speed]
    data.current_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lasers_mode]
    data.lasers_mode = LaserMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [lasers_status]
    // Deserialize array length for message field [lasers_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lasers_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lasers_status[i] = LaserStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.operation_mode);
    length += _getByteLength(object.safety_mode);
    length += LaserMode.getMessageSize(object.lasers_mode);
    object.lasers_status.forEach((val) => {
      length += LaserStatus.getMessageSize(val);
    });
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/SafetyModuleStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '301f2f2b06f84bb7bbe649c08f21a4ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # robot safety mode
    string SAFE=safe
    #string OVERRIDABLE=overridable
    #string EMERGENCY=emergency
    string LASER_MUTE=laser_mute
    
    string OM_AUTO=auto
    string OM_MANUAL=manual
    string OM_MAINTENANCE=maintenance
    
    
    string operation_mode
    string safety_mode
    bool emergency_stop        # if e-stop is pressed
    bool safety_stop           # if system is stopped due to safety system
    bool lasers_on_standby     # if lasers don't have power
    float64 current_speed       # current speed measured by safety system
    
    robotnik_msgs/LaserMode lasers_mode
    robotnik_msgs/LaserStatus[] lasers_status
    
    ================================================================================
    MSG: robotnik_msgs/LaserMode
    string STANDARD=standard
    string DOCKING_STATION=docking_station
    string CART=cart
    string CART_DOCKING_CART=cart_docking_cart
    string DOCKING_CART=docking_cart
    string REDUCED=reduced
    string INVALID=invalid
    
    string name
    
    ================================================================================
    MSG: robotnik_msgs/LaserStatus
    string name
    bool detecting_obstacles
    bool contaminated
    bool free_warning
    # one input per each warning zone.
    # first areas are closer to the robot (i.e. more restrictive)
    bool[] warning_zones 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SafetyModuleStatus(null);
    if (msg.operation_mode !== undefined) {
      resolved.operation_mode = msg.operation_mode;
    }
    else {
      resolved.operation_mode = ''
    }

    if (msg.safety_mode !== undefined) {
      resolved.safety_mode = msg.safety_mode;
    }
    else {
      resolved.safety_mode = ''
    }

    if (msg.emergency_stop !== undefined) {
      resolved.emergency_stop = msg.emergency_stop;
    }
    else {
      resolved.emergency_stop = false
    }

    if (msg.safety_stop !== undefined) {
      resolved.safety_stop = msg.safety_stop;
    }
    else {
      resolved.safety_stop = false
    }

    if (msg.lasers_on_standby !== undefined) {
      resolved.lasers_on_standby = msg.lasers_on_standby;
    }
    else {
      resolved.lasers_on_standby = false
    }

    if (msg.current_speed !== undefined) {
      resolved.current_speed = msg.current_speed;
    }
    else {
      resolved.current_speed = 0.0
    }

    if (msg.lasers_mode !== undefined) {
      resolved.lasers_mode = LaserMode.Resolve(msg.lasers_mode)
    }
    else {
      resolved.lasers_mode = new LaserMode()
    }

    if (msg.lasers_status !== undefined) {
      resolved.lasers_status = new Array(msg.lasers_status.length);
      for (let i = 0; i < resolved.lasers_status.length; ++i) {
        resolved.lasers_status[i] = LaserStatus.Resolve(msg.lasers_status[i]);
      }
    }
    else {
      resolved.lasers_status = []
    }

    return resolved;
    }
};

// Constants for message
SafetyModuleStatus.Constants = {
  SAFE: 'safe',
  LASER_MUTE: 'laser_mute',
  OM_AUTO: 'auto',
  OM_MANUAL: 'manual',
  OM_MAINTENANCE: 'maintenance',
}

module.exports = SafetyModuleStatus;
