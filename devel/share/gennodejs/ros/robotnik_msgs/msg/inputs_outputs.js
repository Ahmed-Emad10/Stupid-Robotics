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

class inputs_outputs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.digital_inputs = null;
      this.digital_outputs = null;
      this.analog_inputs = null;
      this.analog_outputs = null;
    }
    else {
      if (initObj.hasOwnProperty('digital_inputs')) {
        this.digital_inputs = initObj.digital_inputs
      }
      else {
        this.digital_inputs = [];
      }
      if (initObj.hasOwnProperty('digital_outputs')) {
        this.digital_outputs = initObj.digital_outputs
      }
      else {
        this.digital_outputs = [];
      }
      if (initObj.hasOwnProperty('analog_inputs')) {
        this.analog_inputs = initObj.analog_inputs
      }
      else {
        this.analog_inputs = [];
      }
      if (initObj.hasOwnProperty('analog_outputs')) {
        this.analog_outputs = initObj.analog_outputs
      }
      else {
        this.analog_outputs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type inputs_outputs
    // Serialize message field [digital_inputs]
    bufferOffset = _arraySerializer.bool(obj.digital_inputs, buffer, bufferOffset, null);
    // Serialize message field [digital_outputs]
    bufferOffset = _arraySerializer.bool(obj.digital_outputs, buffer, bufferOffset, null);
    // Serialize message field [analog_inputs]
    bufferOffset = _arraySerializer.float32(obj.analog_inputs, buffer, bufferOffset, null);
    // Serialize message field [analog_outputs]
    bufferOffset = _arraySerializer.float32(obj.analog_outputs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type inputs_outputs
    let len;
    let data = new inputs_outputs(null);
    // Deserialize message field [digital_inputs]
    data.digital_inputs = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [digital_outputs]
    data.digital_outputs = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [analog_inputs]
    data.analog_inputs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [analog_outputs]
    data.analog_outputs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.digital_inputs.length;
    length += object.digital_outputs.length;
    length += 4 * object.analog_inputs.length;
    length += 4 * object.analog_outputs.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/inputs_outputs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '219be75bd56b8ebdca0dfa526c3803be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[] digital_inputs
    bool[] digital_outputs
    float32[] analog_inputs
    float32[] analog_outputs
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new inputs_outputs(null);
    if (msg.digital_inputs !== undefined) {
      resolved.digital_inputs = msg.digital_inputs;
    }
    else {
      resolved.digital_inputs = []
    }

    if (msg.digital_outputs !== undefined) {
      resolved.digital_outputs = msg.digital_outputs;
    }
    else {
      resolved.digital_outputs = []
    }

    if (msg.analog_inputs !== undefined) {
      resolved.analog_inputs = msg.analog_inputs;
    }
    else {
      resolved.analog_inputs = []
    }

    if (msg.analog_outputs !== undefined) {
      resolved.analog_outputs = msg.analog_outputs;
    }
    else {
      resolved.analog_outputs = []
    }

    return resolved;
    }
};

module.exports = inputs_outputs;
