{
  colorschemes.dracula.enable = true;
  clipboard.register = "unnamedplus";

  opts = {
    showmode = false;
    number = true;
    cursorline = false;

    scrolloff = 10;

    termguicolors = true;
    signcolumn = "yes";

    swapfile = false;
    autoread = true;
    backup = false;
    undofile = true;

    # Set tabs to 2 spaces
    tabstop = 2;
    softtabstop = 2;
    showtabline = 0;
    expandtab = true;

    # Enable auto indenting and set it to spaces
    smartindent = true;
    shiftwidth = 2;

    # Enable smart indenting (see https://stackoverflow.com/questions/1204149/smart-wrap-in-vim)
    breakindent = true;
  };
}
