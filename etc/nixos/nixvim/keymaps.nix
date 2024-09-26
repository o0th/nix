{
  globals.mapleader = " ";
  keymaps = [
    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>bprev<cr>";
    }
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>bnext<cr>";
    }
    {
      mode = "n";
      key = "<S-c>";
      action = "<cmd>bd<cr>";
    }
    {
      mode = "i";
      key = "jk";
      action = "<esc>";
    }
  ];
}
