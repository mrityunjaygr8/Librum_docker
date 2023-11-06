FROM debian

WORKDIR /librum

RUN apt update && \
  apt install -y make cmake python3-venv g++ qt6-base-dev && \ 
  git clone https://github.com/Librum-Reader/Librum.git --recursive && \
  cd Librum && \
  mkdir build-Release && cd build-Release && \
  cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=Off -DCMAKE_PREFIX_PATH=<path/to/Qt> ..
  

