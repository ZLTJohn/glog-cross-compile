NDK_ROOT="/opt/android-ndk-r17c"
ABI="armeabi-v7a"
API_LEVEL="23"

GFLAGS_ROOT=$(pwd)/gfalgs
BUILD_DIR=build

cd ${GFLAGS_ROOT}
rm -rf "${BUILD_DIR}"
mkdir -p "${BUILD_DIR}"

   cmake -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON \
      -DCMAKE_TOOLCHAIN_FILE="${NDK_ROOT}/build/cmake/android.toolchain.cmake" \
      -DANDROID_NDK="${NDK_ROOT}" \
      -DANDROID_NATIVE_API_LEVEL=${API_LEVEL} \
      -DANDROID_ARM_NEON=ON \
      -DANDROID_ABI="$ABI" \
      -DCMAKE_BUILD_TYPE=Release \
      -DBUILD_TESTING=OFF \
      -DANDROID_STL="c++_shared" \
      -S . -B ${BUILD_DIR} -G "Unix Makefiles"\
      ../../

  cmake --build ${BUILD_DIR}

# needed to install to glog