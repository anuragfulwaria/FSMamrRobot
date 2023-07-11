// Auto-generated. Do not edit!

// (in-package roboteq_motor_controller_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class channel_values {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type channel_values
    // Serialize message field [value]
    bufferOffset = _arraySerializer.int64(obj.value, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type channel_values
    let len;
    let data = new channel_values(null);
    // Deserialize message field [value]
    data.value = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.value.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboteq_motor_controller_driver/channel_values';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67631b021b5d5374cfd8a5bd8b56428a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[] value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new channel_values(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = []
    }

    return resolved;
    }
};

module.exports = channel_values;
