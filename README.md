# Cross compilation instructions

## build dependencies

### Archlinux

```
clang
aur/mingw-w64-winpthreads-bin
aur/mingw-w64-headers-bin
```

### Ubuntu

```
# apt-get remove mingw*
wget https://launchpad.net/ubuntu/+archive/primary/+files/mingw-w64-common_6.0.0-3_all.deb
wget https://launchpad.net/ubuntu/+archive/primary/+files/mingw-w64-x86-64-dev_6.0.0-3_all.deb
dpkg -i mingw-w64-common_6.0.0-3_all.deb
dpkg -i mingw-w64-x86-64-dev_6.0.0-3_all.deb
```
## build instructions
```
git clone https://github.com/plowsec/metasploit-payloads
cd metasploit-payloads
git submodule update --init --recursive
cd c/meterpreter/source/ReflectiveDLLInjection
git fetch origin pull/7/head:pr/7 && git checkout pr/7
```


### build ReflectiveDLLInjection
```
cd ../../workspace/ReflectiveDLLInjection
mkdir CMakeBuild && cd CMakeBuild
cmake .. && make
```

### build common
```
cd ../../common
mkdir CMakeBuild && cd CMakeBuild
cmake .. && make
```

### build metsrv
```
cd ../../metsrv
mkdir CMakeBuild && cd CMakeBuild
cmake .. && make
```


### build ext_server_stdapi
```
cd ../../ext_server_stdapi
mkdir CMakeBuild && cd CMakeBuild
cmake .. && make
```



metasploit-payloads >
=====================

This is a unified repository for different Metasploit Framework payloads, which merges these repositories:

 * [C Windows/Linux Meterpreters][csource]
 * [Java/Android Meterpreters and Payloads][javasource]
 * [Python/PHP Meterpreters][frameworksource]

The Native Linux / Posix payload, Mettle, currently is developed at
https://github.com/rapid7/mettle (to be moved here at some point?)

See the individual directories for meterpreter-specific README, build instructions and license details:

 * [C Windows/Linux Meterpreters][creadme]
 * [Java/Android Meterpreters and Payloads][javareadme]

  [csource]: https://github.com/rapid7/meterpreter
  [creadme]: https://github.com/rapid7/metasploit-payloads/tree/master/c/meterpreter
  [javasource]: https://github.com/rapid7/metasploit-javapayload
  [javareadme]: https://github.com/rapid7/metasploit-payloads/tree/master/java
  [frameworksource]: https://github.com/rapid7/metasploit-framework/tree/master/data/meterpreter
  [build_icon_windows]: https://ci.metasploit.com/buildStatus/icon?job=MeterpreterWin
  [build_icon_posix]: https://travis-ci.org/rapid7/meterpreter.png?branch=master
