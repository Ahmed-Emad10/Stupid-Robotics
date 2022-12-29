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

//-----------------------------------------------------------

class InverterStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ac_voltage = null;
      this.dc_voltage = null;
      this.load = null;
      this.percentage = null;
      this.temperature = null;
      this.on = null;
      this.serial_number = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ac_voltage')) {
        this.ac_voltage = initObj.ac_voltage
      }
      else {
        this.ac_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('dc_voltage')) {
        this.dc_voltage = initObj.dc_voltage
      }
      else {
        this.dc_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('load')) {
        this.load = initObj.load
      }
      else {
        this.load = 0.0;
      }
      if (initObj.hasOwnProperty('percentage')) {
        this.percentage = initObj.percentage
      }
      else {
        this.percentage = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('on')) {
        this.on = initObj.on
      }
      else {
        this.on = false;
      }
      if (initObj.hasOwnProperty('serial_number')) {
        this.serial_number = initObj.serial_number
      }
      else {
        this.serial_number = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InverterStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ac_voltage]
    bufferOffset = _serializer.float32(obj.ac_voltage, buffer, bufferOffset);
    // Serialize message field [dc_voltage]
    bufferOffset = _serializer.float32(obj.dc_voltage, buffer, bufferOffset);
    // Serialize message field [load]
    bufferOffset = _serializer.float32(obj.load, buffer, bufferOffset);
    // Serialize message field [percentage]
    bufferOffset = _serializer.float32(obj.percentage, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [on]
    bufferOffset = _serializer.bool(obj.on, buffer, bufferOffset);
    // Serialize message field [serial_number]
    bufferOffset = _serializer.string(obj.serial_number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InverterStatus
    let len;
    let data = new InverterStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ac_voltage]
    data.ac_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dc_voltage]
    data.dc_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [load]
    data.load = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [percentage]
    data.percentage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [on]
    data.on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [serial_number]
    data.serial_number = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.serial_number);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/InverterStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd693ae8f6a65a0d35c771d1a15a9e199';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header  header
    float32 ac_voltage       # Output Voltage in Volts (Mandatory)
    float32 dc_voltage       # Input Voltage in Volts (If unmeasured NaN)
    float32 load             # Current percentage load on 0 to 1 range (If unmeasured NaN)
    float32 percentage       # Charge percentage on 0 to 1 range (If unmeasured NaN)
    float32 temperature      # Current temperature in centigrads (If unmeasured NaN)
    bool    on               # True if the inverter is on
    
    string serial_number     # The best approximation of the battery serial number
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InverterStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ac_voltage !== undefined) {
      resolved.ac_voltage = msg.ac_voltage;
    }
    else {
      resolved.ac_voltage = 0.0
    }

    if (msg.dc_voltage !== undefined) {
      resolved.dc_voltage = msg.dc_voltage;
    }
    else {
      resolved.dc_voltage = 0.0
    }

    if (msg.load !== undefined) {
      resolved.load = msg.load;
    }
    else {
      resolved.load = 0.0
    }

    if (msg.percentage !== undefined) {
      resolved.percentage = msg.percentage;
    }
    else {
      resolved.percentage = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.on !== undefined) {
      resolved.on = msg.on;
    }
    else {
      resolved.on = false
    }

    if (msg.serial_number !== undefined) {
      resolved.serial_number = msg.serial_number;
    }
    else {
      resolved.serial_number = ''
    }

    return resolved;
    }
};

module.exports = InverterStatus;
