// Generated by gencpp from file roboteq_motor_controller_driver/config_srvRequest.msg
// DO NOT EDIT!


#ifndef ROBOTEQ_MOTOR_CONTROLLER_DRIVER_MESSAGE_CONFIG_SRVREQUEST_H
#define ROBOTEQ_MOTOR_CONTROLLER_DRIVER_MESSAGE_CONFIG_SRVREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboteq_motor_controller_driver
{
template <class ContainerAllocator>
struct config_srvRequest_
{
  typedef config_srvRequest_<ContainerAllocator> Type;

  config_srvRequest_()
    : userInput()
    , channel(0)
    , value(0)  {
    }
  config_srvRequest_(const ContainerAllocator& _alloc)
    : userInput(_alloc)
    , channel(0)
    , value(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _userInput_type;
  _userInput_type userInput;

   typedef int64_t _channel_type;
  _channel_type channel;

   typedef int64_t _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct config_srvRequest_

typedef ::roboteq_motor_controller_driver::config_srvRequest_<std::allocator<void> > config_srvRequest;

typedef boost::shared_ptr< ::roboteq_motor_controller_driver::config_srvRequest > config_srvRequestPtr;
typedef boost::shared_ptr< ::roboteq_motor_controller_driver::config_srvRequest const> config_srvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator1> & lhs, const ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator2> & rhs)
{
  return lhs.userInput == rhs.userInput &&
    lhs.channel == rhs.channel &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator1> & lhs, const ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboteq_motor_controller_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a5c97ca1b6a015aed92731bf989a346a";
  }

  static const char* value(const ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa5c97ca1b6a015aeULL;
  static const uint64_t static_value2 = 0xd92731bf989a346aULL;
};

template<class ContainerAllocator>
struct DataType< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboteq_motor_controller_driver/config_srvRequest";
  }

  static const char* value(const ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string userInput\n"
"int64 channel\n"
"int64 value\n"
;
  }

  static const char* value(const ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.userInput);
      stream.next(m.channel);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct config_srvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboteq_motor_controller_driver::config_srvRequest_<ContainerAllocator>& v)
  {
    s << indent << "userInput: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.userInput);
    s << indent << "channel: ";
    Printer<int64_t>::stream(s, indent + "  ", v.channel);
    s << indent << "value: ";
    Printer<int64_t>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTEQ_MOTOR_CONTROLLER_DRIVER_MESSAGE_CONFIG_SRVREQUEST_H