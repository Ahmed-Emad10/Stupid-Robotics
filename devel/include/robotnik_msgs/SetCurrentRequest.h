// Generated by gencpp from file robotnik_msgs/SetCurrentRequest.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_SETCURRENTREQUEST_H
#define ROBOTNIK_MSGS_MESSAGE_SETCURRENTREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robotnik_msgs/MotorCurrent.h>

namespace robotnik_msgs
{
template <class ContainerAllocator>
struct SetCurrentRequest_
{
  typedef SetCurrentRequest_<ContainerAllocator> Type;

  SetCurrentRequest_()
    : current()  {
    }
  SetCurrentRequest_(const ContainerAllocator& _alloc)
    : current(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robotnik_msgs::MotorCurrent_<ContainerAllocator>  _current_type;
  _current_type current;





  typedef boost::shared_ptr< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetCurrentRequest_

typedef ::robotnik_msgs::SetCurrentRequest_<std::allocator<void> > SetCurrentRequest;

typedef boost::shared_ptr< ::robotnik_msgs::SetCurrentRequest > SetCurrentRequestPtr;
typedef boost::shared_ptr< ::robotnik_msgs::SetCurrentRequest const> SetCurrentRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator1> & lhs, const ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator2> & rhs)
{
  return lhs.current == rhs.current;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator1> & lhs, const ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotnik_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "547e043527d4bed5832e84f185e1729c";
  }

  static const char* value(const ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x547e043527d4bed5ULL;
  static const uint64_t static_value2 = 0x832e84f185e1729cULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_msgs/SetCurrentRequest";
  }

  static const char* value(const ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "MotorCurrent current\n"
"\n"
"================================================================================\n"
"MSG: robotnik_msgs/MotorCurrent\n"
"# either can_id or name are set\n"
"# if can_id is -1, then this refers to all motors.\n"
"int32[] can_id\n"
"string[] name\n"
"float32[] continuous_current_limit # Amperes\n"
"float32[] current_peak_time # Seconds\n"
"float32[] current_peak_limit # Amperes\n"
;
  }

  static const char* value(const ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetCurrentRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_msgs::SetCurrentRequest_<ContainerAllocator>& v)
  {
    s << indent << "current: ";
    s << std::endl;
    Printer< ::robotnik_msgs::MotorCurrent_<ContainerAllocator> >::stream(s, indent + "  ", v.current);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_SETCURRENTREQUEST_H