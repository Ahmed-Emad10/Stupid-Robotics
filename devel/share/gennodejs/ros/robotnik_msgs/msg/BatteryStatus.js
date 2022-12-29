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

class BatteryStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.voltage = null;
      this.current = null;
      this.level = null;
      this.time_remaining = null;
      this.time_charging = null;
      this.is_charging = null;
      this.cell_voltages = null;
    }
    else {
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = 0.0;
      }
      if (initObj.hasOwnProperty('time_remaining')) {
        this.time_remaining = initObj.time_remaining
      }
      else {
        this.time_remaining = 0;
      }
      if (initObj.hasOwnProperty('time_charging')) {
        this.time_charging = initObj.time_charging
      }
      else {
        this.time_charging = 0;
      }
      if (initObj.hasOwnProperty('is_charging')) {
        this.is_charging = initObj.is_charging
      }
      else {
        this.is_charging = false;
      }
      if (initObj.hasOwnProperty('cell_voltages')) {
        this.cell_voltages = initObj.cell_voltages
      }
      else {
        this.cell_voltages = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryStatus
    // Serialize message field [voltage]
    bufferOffset = _serializer.float32(obj.voltage, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [level]
    bufferOffset = _serializer.float32(obj.level, buffer, bufferOffset);
    // Serialize message field [time_remaining]
    bufferOffset = _serializer.uint32(obj.time_remaining, buffer, bufferOffset);
    // Serialize message field [time_charging]
    bufferOffset = _serializer.uint32(obj.time_charging, buffer, bufferOffset);
    // Serialize message field [is_charging]
    bufferOffset = _serializer.bool(obj.is_charging, buffer, bufferOffset);
    // Serialize message field [cell_voltages]
    bufferOffset = _arraySerializer.float32(obj.cell_voltages, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryStatus
    let len;
    let data = new BatteryStatus(null);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [level]
    data.level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_remaining]
    data.time_remaining = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [time_charging]
    data.time_charging = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [is_charging]
    data.is_charging = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cell_voltages]
    data.cell_voltages = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.cell_voltages.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/BatteryStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8730315e1ea11d6ba3e264e6efe816c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 voltage			# in volts
    float32 current			# in amperes
    float32 level			# in %
    uint32 time_remaining		# in minutes
    uint32 time_charging            # in minutes 
    bool is_charging                # true when connected
    float32[] cell_voltages
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryStatus(null);
    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0.0
    }

    if (msg.time_remaining !== undefined) {
      resolved.time_remaining = msg.time_remaining;
    }
    else {
      resolved.time_remaining = 0
    }

    if (msg.time_charging !== undefined) {
      resolved.time_charging = msg.time_charging;
    }
    else {
      resolved.time_charging = 0
    }

    if (msg.is_charging !== undefined) {
      resolved.is_charging = msg.is_charging;
    }
    else {
      resolved.is_charging = false
    }

    if (msg.cell_voltages !== undefined) {
      resolved.cell_voltages = msg.cell_voltages;
    }
    else {
      resolved.cell_voltages = []
    }

    return resolved;
    }
};

module.exports = BatteryStatus;
