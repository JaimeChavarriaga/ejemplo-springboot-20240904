# Google IDX configuration
# see: https://developers.google.com/idx/guides/customize-idx-env

{ pkgs, ... }: {

  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.graalvm-ce
    pkgs.maven
    pkgs.spring-boot-cli
    pkgs.httpie
  ];

  # Sets environment variables in the workspace
  env = {};

  # Enable IDX services
  services.docker.enable = true;

  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "vscjava.vscode-java-pack"
      "vmware.vscode-spring-boot"
      "vscjava.vscode-spring-boot-dashboard"
      "vscjava.vscode-spring-initializr"
      "rangav.vscode-thunder-client"
      "GitHub.vscode-github-actions"
    ];
    workspace = {
      # Runs when a workspace is first created with this `dev.nix` file
      onCreate = {
        install = "mvn clean install";
      };
      # Runs when a workspace is (re)started
      onStart = {
        run-server = "PORT=3000 mvn spring-boot:run";
      };
    };
  };
}

