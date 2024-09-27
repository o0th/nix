{ pkgs, ... }:
{
  plugins.treesitter-context.enable = true;
  plugins.treesitter-textobjects.enable = true;
  plugins.treesitter = {
    enable = true;

    settings = {
      indent = { enable = true; };
      highlight = { enable = true; };
    };
    
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };
}
