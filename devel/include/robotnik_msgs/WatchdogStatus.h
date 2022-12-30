// Generated by gencpp from file robotnik_msgs/WatchdogStatus.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_WATCHDOGSTATUS_H
#define ROBOTNIK_MSGS_MESSAGE_WATCHDOGSTATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotnik_msgs
{
template <class ContainerAllocator>
struct WatchdogStatus_
{
  typedef WatchdogStatus_<ContainerAllocator> Type;

  WatchdogStatus_()
    : id()
    , timed_out(false)
    , description()  {
    }
  WatchdogStatus_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , timed_out(false)
    , description(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _id_type;
  _id_type id;

   typedef uint8_t _timed_out_type;
  _timed_out_type timed_out;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _description_type;
  _description_type description;





  typedef boost::shared_ptr< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> const> ConstPtr;

}; // struct WatchdogStatus_

typedef ::robotnik_msgs::WatchdogStatus_<std::allocator<void> > WatchdogStatus;

typedef boost::shared_ptr< ::robotnik_msgs::WatchdogStatus > WatchdogStatusPtr;
typedef boost::shared_ptr< ::robotnik_msgs::WatchdogStatus const> WatchdogStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotnik_msgs::WatchdogStatus_<ContainerAllocator1> & lhs, const ::robotnik_msgs::WatchdogStatus_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.timed_out == rhs.timed_out &&
    lhs.description == rhs.description;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotnik_msgs::WatchdogStatus_<ContainerAllocator1> & lhs, const ::robotnik_msgs::WatchdogStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotnik_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6eac41b9a2552a59aabed4f2aef62b65";
  }

  static const char* value(const ::robotnik_msgs::WatchdogStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6eac41b9a2552a59ULL;
  static const uint64_t static_value2 = 0xaabed4f2aef62b65ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_msgs/WatchdogStatus";
  }

  static const char* value(const ::robotnik_msgs::WatchdogStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string id\n"
"# False if it's ok, True if fails\n"
"bool timed_out\n"
"string description\n"
;
  }

  static const char* value(const ::robotnik_msgs::WatchdogStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.timed_out);
      stream.next(m.description);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WatchdogStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_msgs::WatchdogStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_msgs::WatchdogStatus_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.id);
    s << indent << "timed_out: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.timed_out);
    s << indent << "description: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.description);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_WATCHDOGSTATUS_H