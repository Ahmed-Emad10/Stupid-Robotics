// Generated by gencpp from file robotnik_msgs/WatchdogStatusArray.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_WATCHDOGSTATUSARRAY_H
#define ROBOTNIK_MSGS_MESSAGE_WATCHDOGSTATUSARRAY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robotnik_msgs/WatchdogStatus.h>

namespace robotnik_msgs
{
template <class ContainerAllocator>
struct WatchdogStatusArray_
{
  typedef WatchdogStatusArray_<ContainerAllocator> Type;

  WatchdogStatusArray_()
    : status()  {
    }
  WatchdogStatusArray_(const ContainerAllocator& _alloc)
    : status(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> >> _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> const> ConstPtr;

}; // struct WatchdogStatusArray_

typedef ::robotnik_msgs::WatchdogStatusArray_<std::allocator<void> > WatchdogStatusArray;

typedef boost::shared_ptr< ::robotnik_msgs::WatchdogStatusArray > WatchdogStatusArrayPtr;
typedef boost::shared_ptr< ::robotnik_msgs::WatchdogStatusArray const> WatchdogStatusArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator1> & lhs, const ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator1> & lhs, const ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotnik_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1df2dbf9ebcb5eb8dc5708907e8cc240";
  }

  static const char* value(const ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1df2dbf9ebcb5eb8ULL;
  static const uint64_t static_value2 = 0xdc5708907e8cc240ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_msgs/WatchdogStatusArray";
  }

  static const char* value(const ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "WatchdogStatus[] status\n"
"\n"
"================================================================================\n"
"MSG: robotnik_msgs/WatchdogStatus\n"
"string id\n"
"# False if it's ok, True if fails\n"
"bool timed_out\n"
"string description\n"
;
  }

  static const char* value(const ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WatchdogStatusArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_msgs::WatchdogStatusArray_<ContainerAllocator>& v)
  {
    s << indent << "status[]" << std::endl;
    for (size_t i = 0; i < v.status.size(); ++i)
    {
      s << indent << "  status[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> >::stream(s, indent + "    ", v.status[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_WATCHDOGSTATUSARRAY_H
