// Generated by gencpp from file tutorial_srvs/TutorialSrv.msg
// DO NOT EDIT!


#ifndef TUTORIAL_SRVS_MESSAGE_TUTORIALSRV_H
#define TUTORIAL_SRVS_MESSAGE_TUTORIALSRV_H

#include <ros/service_traits.h>


#include <tutorial_srvs/TutorialSrvRequest.h>
#include <tutorial_srvs/TutorialSrvResponse.h>


namespace tutorial_srvs
{

struct TutorialSrv
{

typedef TutorialSrvRequest Request;
typedef TutorialSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TutorialSrv
} // namespace tutorial_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tutorial_srvs::TutorialSrv > {
  static const char* value()
  {
    return "647560fa96f1c71577ff713e57e5f997";
  }

  static const char* value(const ::tutorial_srvs::TutorialSrv&) { return value(); }
};

template<>
struct DataType< ::tutorial_srvs::TutorialSrv > {
  static const char* value()
  {
    return "tutorial_srvs/TutorialSrv";
  }

  static const char* value(const ::tutorial_srvs::TutorialSrv&) { return value(); }
};


// service_traits::MD5Sum< ::tutorial_srvs::TutorialSrvRequest> should match
// service_traits::MD5Sum< ::tutorial_srvs::TutorialSrv >
template<>
struct MD5Sum< ::tutorial_srvs::TutorialSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tutorial_srvs::TutorialSrv >::value();
  }
  static const char* value(const ::tutorial_srvs::TutorialSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tutorial_srvs::TutorialSrvRequest> should match
// service_traits::DataType< ::tutorial_srvs::TutorialSrv >
template<>
struct DataType< ::tutorial_srvs::TutorialSrvRequest>
{
  static const char* value()
  {
    return DataType< ::tutorial_srvs::TutorialSrv >::value();
  }
  static const char* value(const ::tutorial_srvs::TutorialSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tutorial_srvs::TutorialSrvResponse> should match
// service_traits::MD5Sum< ::tutorial_srvs::TutorialSrv >
template<>
struct MD5Sum< ::tutorial_srvs::TutorialSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tutorial_srvs::TutorialSrv >::value();
  }
  static const char* value(const ::tutorial_srvs::TutorialSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tutorial_srvs::TutorialSrvResponse> should match
// service_traits::DataType< ::tutorial_srvs::TutorialSrv >
template<>
struct DataType< ::tutorial_srvs::TutorialSrvResponse>
{
  static const char* value()
  {
    return DataType< ::tutorial_srvs::TutorialSrv >::value();
  }
  static const char* value(const ::tutorial_srvs::TutorialSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TUTORIAL_SRVS_MESSAGE_TUTORIALSRV_H
