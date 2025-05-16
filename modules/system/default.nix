{ ... }:

{
  imports = [
    ./docker.nix
    ./programs.nix
  ];

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = [
    # pkgs.vscode - hydenix's vscode version
    # pkgs.userPkgs.vscode - your personal nixpkgs version
    inputs.ghostty.packages.x86_64-linux.default
    vim
    neovim
    pkg-config
    git
    docker-compose
    wget
    deno
    go
    rustup
    mold
    gnumake
    gcc
    cmake
    llvmPackages_19.llvm
    llvmPackages_19.clang
    llvmPackages_19.clang-tools
    zed-editor
    telegram-desktop
    postman
    vlc
  ];
}
