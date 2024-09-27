{ ... }:
let
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
  });
in
{
  imports = [
    nixvim.nixosModules.nixvim
  ];

  programs.nixvim = {
    enable = true;

    imports = [
      ./nixvim/opts.nix
      ./nixvim/keymaps.nix
      ./nixvim/plugins/gitsigns.nix
      ./nixvim/plugins/telescope.nix
      ./nixvim/plugins/treesitter.nix
      ./nixvim/plugins/cmp.nix
      ./nixvim/plugins/lsp.nix
      ./nixvim/plugins/lualine.nix
      ./nixvim/plugins/indent-blankline.nix
    ];

    plugins.web-devicons.enable = true;
    plugins.bufferline.enable = true;
    plugins.nix.enable = true;
    plugins.trouble.enable = true;
    plugins.lsp-format.enable = true;
    plugins.luasnip.enable = true;
    plugins.cmp_luasnip.enable = true;
    plugins.comment.enable = true;
    plugins.autoclose.enable = true;
  };
}
