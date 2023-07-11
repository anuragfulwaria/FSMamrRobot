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

class maintenance_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.userInput = null;
    }
    else {
      if (initObj.hasOwnProperty('userInput')) {
        this.userInput = initObj.userInput
      }
      else {
        this.userInput = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type maintenance_srvRequest
    // Serialize message field [userInput]
    bufferOffset = _serializer.string(obj.userInput, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type maintenance_srvRequest
    let len;
    let data = new maintenance_srvRequest(null);
    // Deserialize message field [userInput]
    data.userInput = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.userInput);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboteq_motor_controller_driver/maintenance_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '496f17af5819e1381095351bc4e11fc3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string userInput
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new maintenance_srvRequest(null);
    if (msg.userInput !== undefined) {
      resolved.userInput = msg.userInput;
    }
    else {
      resolved.userInput = ''
    }

    return resolved;
    }
};

class maintenance_srvResponse {
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
    // Serializes a message object of type maintenance_srvResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type maintenance_srvResponse
    let len;
    let data = new maintenance_srvResponse(null);
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
    return 'roboteq_motor_controller_driver/maintenance_srvResponse';
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
    const resolved = new maintenance_srvResponse(null);
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
  Request: maintenance_srvRequest,
  Response: maintenance_srvResponse,
  md5sum() { return 'cf026a2baaf512cfffd561e78c18a0ec'; },
  datatype() { return 'roboteq_motor_controller_driver/maintenance_srv'; }
};
