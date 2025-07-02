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

!cd pytorch;cmake -B build  -DBUILD_PYTHON=True -DBUILD_TEST=False -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/content/pytorch/torch -DCMAKE_PREFIX_PATH=/usr/local/lib/python3.11/dist-packages -DPython_EXECUTABLE=/usr/bin/python3 -DTORCH_BUILD_VERSION=2.8.0a0+git8fcda2c -DUSE_AUTH_EPHEM=1 -DUSE_CUDA=0 -DUSE_DISTRIBUTED=0 -DUSE_FBGEMM=0 -DUSE_MKLDNN=0 -DUSE_NNPACK=0 -DUSE_NUMPY=True -DUSE_QNNPACK=0 -DUSE_XNNPACK=0 -DCMAKE_VERBOSE_MAKEFILE=ON -DUSE_PYTORCH_QNNPACK=0 -DUSE_ITT=0 -DUSE_PROF=0 -DUSE_KINETO=0


set "DEBUG=1 USE_DISTRIBUTED=0 USE_MKLDNN=0 USE_CUDA=0 BUILD_TEST=0 USE_FBGEMM=0 USE_NNPACK=0 USE_QNNPACK=0 USE_XNNPACK=0 MAX_JOBS=8" python setup.py develop --cmake

git clone https://github.com/pytorch/pytorch.git
cd pytorch
git pull 



set DEBUG=1
set USE_DISTRIBUTED=0
set USE_MKLDNN=0
set USE_CUDA=0
set BUILD_TEST=0
set USE_FBGEMM=0
set USE_NNPACK=0
set USE_QNNPACK=0
set CMAKE_VERBOSE_MAKEFILE=ON
set DUSE_ITT=0
set USE_PROF=0
set USE_KINETO=0
set MAX_JOBS=4
 python setup.py develop [ --cmake]
git submodule sync
git submodule update --init --recursive

下载后打开PCbuild文件夹：
网上搜索的解决办法是更改python下面include.h里面debug模式下仍引用文python312.lib。但不是根本解决办法。比较好的是在github下载python源码进行编译：
执行get_externals.bat：
pc_build.sln
VS里面直接生成即可，生成目录在\PCbuild\amd64下

$DEBUG = 1
$USE_DISTRIBUTED = 0
$USE_MKLDNN = 0
$USE_CUDA = 0
$BUILD_TEST = 0
$USE_FBGEMM = 0
$USE_NNPACK = 0
$USE_QNNPACK = 0
$CMAKE_VERBOSE_MAKEFILE = "ON"
$DUSE_ITT = 0
$USE_PROF = 0
$USE_KINETO = 0
$MAX_JOBS = 4

conda info -e
activate py3.11.13

