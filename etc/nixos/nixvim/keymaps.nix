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
      mode = "n";
      key = "<leader>w";
      action = "<cmd>w<cr>";
    }
    {
      mode = "n";
      key = "<leader>wq";
      action = "<cmd>wq<cr>";
    }
    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>q<cr>";
    }
    {
      mode = "n";
      key = "<leader>qq";
      action = "<cmd>q!<cr>";
    }
    {
      mode = "i";
      key = "jk";
      action = "<esc>";
    }
    {
      mode = "n";
      key = "<A-h>";
      action = "<C-w>h";
    }
    {
      mode = "n";
      key = "<A-j>";
      action = "<C-w>j";
    }
    {
      mode = "n";
      key = "<A-k>";
      action = "<C-w>k";
    }
    {
      mode = "n";
      key = "<A-l>";
      action = "<C-w>l";
    }
  ];
}
