!git config --global user.name Galuo
!git config --global user.email yaojialuox@qq.com
!git clone https://github.com/yaojialuo/final_pytorch.git
!ls -l final_pytorch
!cd final_pytorch;git add .; git commit -m "add thirdparty";git push https://@github.com/yaojialuo/final_pytorch.git   

编译libprotobuf-lite
!cd /content/pytorch/build ;make  -f third_party/protobuf/cmake/CMakeFiles/libprotobuf-lite.dir/build.make third_party/protobuf/cmake/CMakeFiles/libprotobuf-lite.dir/build
删除libprotobuf-lite
!cd /content/pytorch/build ;make  -f third_party/protobuf/cmake/CMakeFiles/libprotobuf-lite.dir/build.make third_party/protobuf/cmake/CMakeFiles/libprotobuf-lite.dir/clean


!cd pytorch;cmake -B build -DBUILD_PYTHON=True -DBUILD_TEST=False -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/content/pytorch/torch -DCMAKE_PREFIX_PATH=/usr/local/lib/python3.11/dist-packages -DPython_EXECUTABLE=/usr/bin/python3 -DTORCH_BUILD_VERSION=2.8.0a0+git8fcda2c -DUSE_AUTH_EPHEM=1 -DUSE_CUDA=0 -DUSE_DISTRIBUTED=0 -DUSE_FBGEMM=0 -DUSE_MKLDNN=0 -DUSE_NNPACK=0 -DUSE_NUMPY=True -DUSE_QNNPACK=0 -DUSE_XNNPACK=0 -DCMAKE_VERBOSE_MAKEFILE=ON

!cd /content/pytorch/build; cmake --build . --target install --config Debug -v

build c10
!cd /content/pytorch/build;/usr/bin/gmake  -f confu-deps/cpuinfo/CMakeFiles/cpuinfo.dir/build.make confu-deps/cpuinfo/CMakeFiles/cpuinfo.dir/build
!cd /content/pytorch/build;/usr/bin/gmake  -f c10/CMakeFiles/c10.dir/build.make c10/CMakeFiles/c10.dir/build

build ATEN_CPU_FILES_GEN_TARGET
!cd /content/pytorch/build;/usr/bin/gmake  -f caffe2/CMakeFiles/ATEN_CPU_FILES_GEN_TARGET.dir/build.make caffe2/CMakeFiles/ATEN_CPU_FILES_GEN_TARGET.dir/build
