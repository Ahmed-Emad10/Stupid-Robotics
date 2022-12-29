// Auto-generated. Do not edit!

// (in-package robotnik_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let ReturnMessage = require('../msg/ReturnMessage.js');

//-----------------------------------------------------------

class SetTransformRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tf = null;
    }
    else {
      if (initObj.hasOwnProperty('tf')) {
        this.tf = initObj.tf
      }
      else {
        this.tf = new geometry_msgs.msg.Transform();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTransformRequest
    // Serialize message field [tf]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.tf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTransformRequest
    let len;
    let data = new SetTransformRequest(null);
    // Deserialize message field [tf]
    data.tf = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/SetTransformRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '470d1b6b1231a033d37ede5826ea44d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Transform tf
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new SetTransformRequest(null);
    if (msg.tf !== undefined) {
      resolved.tf = geometry_msgs.msg.Transform.Resolve(msg.tf)
    }
    else {
      resolved.tf = new geometry_msgs.msg.Transform()
    }

    return resolved;
    }
};

class SetTransformResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = new ReturnMessage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTransformResponse
    // Serialize message field [ret]
    bufferOffset = ReturnMessage.serialize(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTransformResponse
    let len;
    let data = new SetTransformResponse(null);
    // Deserialize message field [ret]
    data.ret = ReturnMessage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ReturnMessage.getMessageSize(object.ret);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/SetTransformResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cc59476b1732f75af5b4512acb5adbe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_msgs/ReturnMessage ret
    
    ================================================================================
    MSG: robotnik_msgs/ReturnMessage
    bool success
    string message
    int16 code
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTransformResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = ReturnMessage.Resolve(msg.ret)
    }
    else {
      resolved.ret = new ReturnMessage()
    }

    return resolved;
    }
};

module.exports = {
  Request: SetTransformRequest,
  Response: SetTransformResponse,
  md5sum() { return '61ad79feddff9614e02792c4bf4f26a4'; },
  datatype() { return 'robotnik_msgs/SetTransform'; }
};
