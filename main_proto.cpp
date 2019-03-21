#include <iostream>
#include <fstream>
#include "first.pb.h"



int main(int argc, char **argv){

 GOOGLE_PROTOBUF_VERIFY_VERSION;


std::fstream file("base.db",  std::ios::trunc |std::ios::out | std::ios::binary);
if(!file)
{
  std::cout << "Can not open db" << std::endl;
  exit(1);
}


 tutorial::Person p;
 p.set_id(4);
 p.set_email("pablo1234@interiaxxx.pl");
 p.set_name("MirekKonieczny");
 p.SerializeToOstream(&file);

 file.close();

tutorial::Person p_read;

 std::fstream file2("base.db" , std::ios::in | std::ios::binary);
 if(!file2)
 {
   std::cout << "Error read base" << std::endl;
   exit(1);
 }

 if(!p_read.ParseFromIstream(&file2))
 {
   std::cout << "Error parser "<< std::endl;
   exit(1);
 }

 std::cout <<  p_read.email() << std::endl;

file2.close();





  return 0;
}
