# build-glog-for-android
build glog for android with ndk.

thanks to https://github.com/jefby/build-glog-for-android


## How To

```
git clone https://github.com/google/glog/
cd glog 
git checkout  v0.3.5
cd ..

# 这里我没有编译gflags，因为暂时不需要，glog可以选择不让gflag参加编译，检测不到就不让他参加。
# build-glog.sh里的很多path和参数要根据自己需要和实际情况改一改。

git clone https://github.com/gflags/gflags
cd gflags
git checkout v2.2.1
cd ..

## set NDK_ROOT
bash build-glog.sh
```

