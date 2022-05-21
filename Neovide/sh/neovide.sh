# Neovide 所需软件和环境
sudo apt install -y gnupg ca-certificates \
    gcc-multilib g++-multilib cmake libssl-dev pkg-config \
    libfreetype6-dev libasound2-dev libexpat1-dev libxcb-composite0-dev \
    libbz2-dev libsndio-dev freeglut3-dev libxmu-dev libxi-dev libfontconfig1-dev \
    
# Rust 环境
curl --proto '=https' --tlsv1.2 -sSf "https://sh.rustup.rs" | sh

cp ~/ukyang-vimrelated-Windows/Neovide/sh/config ~/.cargo/
rm -rf ~/.cargo/registry/index
# Neovide
git clone git@github.com:neovide/neovide.git ~/neovide

# 编译生成 Neovide 的可执行文件
cd ~/neovide && ~/.cargo/bin/cargo build --release
