sudo apt-get update && sudo apt-get --assume-yes upgrade
sudo apt-get  --assume-yes install screen build-essential gcc g++ make binutils python3-pip
sudo apt-get --assume-yes install software-properties-common vim screen htop imagemagick

# Cuda
wget https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda-repo-ubuntu1804-10-0-local-10.0.130-410.48_1.0-1_amd64
sudo dpkg -i cuda-repo-ubuntu1804-10-0-local-10.0.130-410.48_1.0-1_amd64
sudo apt-key add /var/cuda-repo-10-0-local-10.0.130-410.48/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda
nvidia-smi

# Nvtop
sudo apt-get --assume-yes install cmake libncurses5-dev
git clone https://github.com/Syllo/nvtop.git
mkdir -p nvtop/build && cd nvtop/build
cmake ..
make
sudo make install
nvtop
