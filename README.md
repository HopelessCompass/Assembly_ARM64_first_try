# Assembly_ARM64_first_try
Learning ARM64 (MacOS) Assembly

clang -arch arm64 -nostartfiles hello.s -Wl,-e,_start -o hello_run
./hello_sys
