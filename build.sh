#!/bin/sh
cd /root
git clone https://github.com/dotnet/coreclr --depth=1 -b release/2.0.0
cd coreclr
./build.sh cross x86  skipnuget debug cmakeargs "-DSKIP_LLDBPLUGIN=true"
