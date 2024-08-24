# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.nodejs_20
    pkgs.nodePackages.pnpm
    pkgs.git
    pkgs.bun
    pkgs.openssl

    # terminal
    pkgs.zsh
    pkgs.fzf
    pkgs.eza
    pkgs.bat
    pkgs.tldr
    pkgs.btop
    pkgs.neovim
    pkgs.zoxide
    pkgs.thefuck
    pkgs.starship
    pkgs.fira-code
    pkgs.meslo-lgs-nf
  ];
  # Sets environment variables in the workspace
  env = { };
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "nerosiar.just-black"
      "Catppuccin.catppuccin-vsc"
      "esbenp.prettier-vscode"
      "PKief.material-icon-theme"
      "jock.svg"
      "usernamehw.errorlens"
      "yoavbls.pretty-ts-errors"
      "bradlc.vscode-tailwindcss"
      "formulahendry.auto-rename-tag"
      "dsznajder.es7-react-js-snippets"
      "Supermaven.supermaven"
      "Prisma.prisma-insider"
    ];
    # Enable previews
    # previews = {
    #   enable = true;
    #   previews = [
    #     {
    #       # Example: run "npm run dev" with PORT set to IDX's defined port for previews,
    #       # and show it in IDX's web preview panel
    #       command = ["npm" "run" "dev"];
    #       manager = "web";
    #       id = "web";
    #       env = {
    #         # Environment variables to set for your server
    #         PORT = "$PORT";
    #       };
    #     }
    #   ];
    # };
    # Workspace lifecycle hooks
    workspace = {
      # Commands to execute when the workspace is created and opened for the first time.
      onCreate = {
        # Example: install JS dependencies from NPM
        idx-init = "git clone https://github.com/kaushiksahu18/idx && cp ./idx/.zshrc ~/ && rm -rf ./idx && source ~/.zshrc";
        starship-config = "starship preset pure-preset -o ~/.config/starship.toml";
      };
      # Commands to execute whenever the workspace is opened.
      onStart = {
        # Example: start a background task to watch and re-build backend code
      };
    };
  };
}