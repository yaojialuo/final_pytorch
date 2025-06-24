!git config --global user.name Galuo
!git config --global user.email yaojialuox@qq.com
!git clone https://github.com/yaojialuo/final_pytorch.git
!ls -l final_pytorch
!cd final_pytorch;git add .; git commit -m "add thirdparty";git push https://@github.com/yaojialuo/final_pytorch.git   

编译libprotobuf-lite
!cd /content/pytorch/build ;make  -f third_party/protobuf/cmake/CMakeFiles/libprotobuf-lite.dir/build.make third_party/protobuf/cmake/CMakeFiles/libprotobuf-lite.dir/build
删除libprotobuf-lite
!cd /content/pytorch/build ;make  -f third_party/protobuf/cmake/CMakeFiles/libprotobuf-lite.dir/build.make third_party/protobuf/cmake/CMakeFiles/libprotobuf-lite.dir/clean
