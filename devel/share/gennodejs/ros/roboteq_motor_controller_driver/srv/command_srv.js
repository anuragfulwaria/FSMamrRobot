// Auto-generated. Do not edit!

// (in-package roboteq_motor_controller_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class command_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.userInput = null;
      this.channel = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('userInput')) {
        this.userInput = initObj.userInput
      }
      else {
        this.userInput = '';
      }
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type command_srvRequest
    // Serialize message field [userInput]
    bufferOffset = _serializer.string(obj.userInput, buffer, bufferOffset);
    // Serialize message field [channel]
    bufferOffset = _serializer.int64(obj.channel, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.int64(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type command_srvRequest
    let len;
    let data = new command_srvRequest(null);
    // Deserialize message field [userInput]
    data.userInput = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [channel]
    data.channel = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.userInput);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboteq_motor_controller_driver/command_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5c97ca1b6a015aed92731bf989a346a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string userInput
    int64 channel
    int64 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new command_srvRequest(null);
    if (msg.userInput !== undefined) {
      resolved.userInput = msg.userInput;
    }
    else {
      resolved.userInput = ''
    }

    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

class command_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type command_srvResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type command_srvResponse
    let len;
    let data = new command_srvResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.result);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboteq_motor_controller_driver/command_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c22f2a1ed8654a0b365f1bb3f7ff2c0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new command_srvResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: command_srvRequest,
  Response: command_srvResponse,
  md5sum() { return 'c6a1a0e621254ff7bba438d5bd95fa58'; },
  datatype() { return 'roboteq_motor_controller_driver/command_srv'; }
};
