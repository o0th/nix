{
  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>ff" = {
        action = "find_files";
      };
      "<leader>fw" = {
        action = "live_grep";
      };
    };
  };
}
