// Generated by gencpp from file roboteq_motor_controller_driver/maintenance_srvRequest.msg
// DO NOT EDIT!


#ifndef ROBOTEQ_MOTOR_CONTROLLER_DRIVER_MESSAGE_MAINTENANCE_SRVREQUEST_H
#define ROBOTEQ_MOTOR_CONTROLLER_DRIVER_MESSAGE_MAINTENANCE_SRVREQUEST_H


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
struct maintenance_srvRequest_
{
  typedef maintenance_srvRequest_<ContainerAllocator> Type;

  maintenance_srvRequest_()
    : userInput()  {
    }
  maintenance_srvRequest_(const ContainerAllocator& _alloc)
    : userInput(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _userInput_type;
  _userInput_type userInput;





  typedef boost::shared_ptr< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct maintenance_srvRequest_

typedef ::roboteq_motor_controller_driver::maintenance_srvRequest_<std::allocator<void> > maintenance_srvRequest;

typedef boost::shared_ptr< ::roboteq_motor_controller_driver::maintenance_srvRequest > maintenance_srvRequestPtr;
typedef boost::shared_ptr< ::roboteq_motor_controller_driver::maintenance_srvRequest const> maintenance_srvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator1> & lhs, const ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator2> & rhs)
{
  return lhs.userInput == rhs.userInput;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator1> & lhs, const ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboteq_motor_controller_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "496f17af5819e1381095351bc4e11fc3";
  }

  static const char* value(const ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x496f17af5819e138ULL;
  static const uint64_t static_value2 = 0x1095351bc4e11fc3ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboteq_motor_controller_driver/maintenance_srvRequest";
  }

  static const char* value(const ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string userInput\n"
;
  }

  static const char* value(const ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.userInput);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct maintenance_srvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboteq_motor_controller_driver::maintenance_srvRequest_<ContainerAllocator>& v)
  {
    s << indent << "userInput: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.userInput);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTEQ_MOTOR_CONTROLLER_DRIVER_MESSAGE_MAINTENANCE_SRVREQUEST_H
