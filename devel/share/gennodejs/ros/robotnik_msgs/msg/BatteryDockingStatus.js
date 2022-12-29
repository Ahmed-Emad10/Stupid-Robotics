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

class BatteryDockingStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.operation_mode = null;
      this.contact_relay_status = null;
      this.charger_relay_status = null;
    }
    else {
      if (initObj.hasOwnProperty('operation_mode')) {
        this.operation_mode = initObj.operation_mode
      }
      else {
        this.operation_mode = '';
      }
      if (initObj.hasOwnProperty('contact_relay_status')) {
        this.contact_relay_status = initObj.contact_relay_status
      }
      else {
        this.contact_relay_status = false;
      }
      if (initObj.hasOwnProperty('charger_relay_status')) {
        this.charger_relay_status = initObj.charger_relay_status
      }
      else {
        this.charger_relay_status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryDockingStatus
    // Serialize message field [operation_mode]
    bufferOffset = _serializer.string(obj.operation_mode, buffer, bufferOffset);
    // Serialize message field [contact_relay_status]
    bufferOffset = _serializer.bool(obj.contact_relay_status, buffer, bufferOffset);
    // Serialize message field [charger_relay_status]
    bufferOffset = _serializer.bool(obj.charger_relay_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryDockingStatus
    let len;
    let data = new BatteryDockingStatus(null);
    // Deserialize message field [operation_mode]
    data.operation_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [contact_relay_status]
    data.contact_relay_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [charger_relay_status]
    data.charger_relay_status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.operation_mode);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/BatteryDockingStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7c3a4e25e4a4a665c4a1dd0862edfc2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Modes of operation:
    # no docking station contacts
    string MODE_DISABLED=disabled
    # Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw
    string MODE_AUTO_HW=automatic_hw
    # Unattended relay detection & activation with inputs/outputs feedback. Done by the sw
    string MODE_AUTO_SW=automatic_sw
    # Unattended relay detection & and manual activation of the charging relay
    string MODE_MANUAL_SW=manual_sw
    
    string operation_mode
    	
    bool contact_relay_status	# shows if there's contact with the charger
    bool charger_relay_status   # shows if the relay for the charge is active or not
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryDockingStatus(null);
    if (msg.operation_mode !== undefined) {
      resolved.operation_mode = msg.operation_mode;
    }
    else {
      resolved.operation_mode = ''
    }

    if (msg.contact_relay_status !== undefined) {
      resolved.contact_relay_status = msg.contact_relay_status;
    }
    else {
      resolved.contact_relay_status = false
    }

    if (msg.charger_relay_status !== undefined) {
      resolved.charger_relay_status = msg.charger_relay_status;
    }
    else {
      resolved.charger_relay_status = false
    }

    return resolved;
    }
};

// Constants for message
BatteryDockingStatus.Constants = {
  MODE_DISABLED: 'disabled',
  MODE_AUTO_HW: 'automatic_hw',
  MODE_AUTO_SW: 'automatic_sw',
  MODE_MANUAL_SW: 'manual_sw',
}

module.exports = BatteryDockingStatus;
