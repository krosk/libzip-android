FROM ubuntu:latest

# Inspired from https://github.com/docker-android-sdk/android-21
ENV DEBIAN_FRONTEND=noninteractive

ENV ANDROID_HOME      /opt/android-sdk-linux
ENV ANDROID_SDK_HOME  ${ANDROID_HOME}
ENV ANDROID_SDK_ROOT  ${ANDROID_HOME}
ENV ANDROID_SDK       ${ANDROID_HOME}

RUN dpkg --add-architecture i386 && \
    apt-get update -yqq && \
    apt-get install -y curl expect git git-svn libc6:i386 libgcc1:i386 libncurses5:i386 libstdc++6:i386 zlib1g:i386 make nano openjdk-8-jdk subversion unzip vim wget zip && \
    apt-get clean

RUN groupadd android && useradd -d /opt/android-sdk-linux -g android android

WORKDIR /opt/android-sdk-linux


# Install cmdline-tools (sdkmanager), set PATH for sdkmanager

RUN wget https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip && unzip commandlinetools-linux-7583922_latest.zip && rm commandlinetools-linux-7583922_latest.zip
# Fix required due to https://stackoverflow.com/questions/65262340/cmdline-tools-could-not-determine-sdk-root
RUN mv cmdline-tools latest && mkdir cmdline-tools && mv latest cmdline-tools/latest
ENV PATH "${PATH}:${ANDROID_HOME}/cmdline-tools/latest/bin"

# Copy licenses before installing packages via sdkmanager; provided license file covers SDK and NDK, but some additional may be required

COPY licenses /opt/android-sdk-linux/licenses

# Install build-tools (platform-tools is a dependency), set PATH for adb, zipalign and apksigner, required by build.sh

RUN yes | sdkmanager --install "platform-tools"
ENV PATH "${PATH}:${ANDROID_HOME}/platform-tools"

RUN yes | sdkmanager --install "build-tools;30.0.3"
ENV PATH "${PATH}:${ANDROID_HOME}/build-tools/30.0.3"

RUN yes | sdkmanager --install "cmake;3.18.1"
ENV PATH "${PATH}:${ANDROID_HOME}/cmake/3.18.1/bin"

# Install ndk, set PATH for ndk-build

RUN yes | sdkmanager --install "ndk;23.0.7599858"
ENV PATH "${PATH}:${ANDROID_HOME}/ndk/23.0.7599858"
ENV PATH "${PATH}:${ANDROID_HOME}/ndk/23.0.7599858/toolchains/llvm/prebuilt/linux-x86_64/bin/"
# Fix: symbolic link for objdump
# For ndk >= 21
RUN ln -s llvm-objdump ${ANDROID_HOME}/ndk/23.0.7599858/toolchains/llvm/prebuilt/linux-x86_64/bin/objdump
# For ndk < 21
#RUN ln -s x86_64-linux-android-objdump ${ANDROID_HOME}/ndk/20.1.5948944/toolchains/llvm/prebuilt/linux-x86_64/bin/objdump

