// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BatteryDockingStatus = require('./BatteryDockingStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BatteryDockingStatusStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new BatteryDockingStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryDockingStatusStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = BatteryDockingStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryDockingStatusStamped
    let len;
    let data = new BatteryDockingStatusStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = BatteryDockingStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += BatteryDockingStatus.getMessageSize(object.status);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/BatteryDockingStatusStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9b376e82e9d778484349573af188b1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    BatteryDockingStatus status
    
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
    MSG: robotnik_msgs/BatteryDockingStatus
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
    const resolved = new BatteryDockingStatusStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = BatteryDockingStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new BatteryDockingStatus()
    }

    return resolved;
    }
};

module.exports = BatteryDockingStatusStamped;
