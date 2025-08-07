{...}: {
  globals.mapleader = " ";
  keymaps = [
    {
      key = "<Leader>y";
      mode = "n";
      action = "<cmd>Yazi cwd<cr>";
      options.desc = "Open yazi at the current working directory";
    }
    {
      key = "<Leader>ff";
      action = "<cmd> Telescope find_files <CR>";
      mode = "n";
      options.desc = "Telescope: find files";
    }
    {
      key = "<Leader>fg";
      action = "<cmd> Telescope live_grep <CR>";
      mode = "n";
      options.desc = "Telescope: content search";
    }
    {
      key = "<Leader>fb";
      action = "<cmd> Telescope buffers <CR>";
      mode = "n";
      options.desc = "Telescope: buffers search";
    }
    {
      key = "<Leader>fh";
      action = "<cmd> Telescope help_tags <CR>";
      mode = "n";
      options.desc = "Telescope: help tags";
    }
    {
      key = "<Leader>zz";
      action = "<cmd> ZenMode <CR>";
      mode = "n";
      options.desc = "Zen mode: toggle";
    }
    {
      key = "<Leader>fe";
      action = "<cmd> lua MiniFiles.open() <CR>";
      mode = "n";
      options.desc = "Open Mini file editor";
    }
    {
      key = "<Leader>fmt";
      action = "<cmd> lua conform.format() <CR>";
      mode = "n";
      options.desc = "Format file";
    }
    {
      key = "<Leader>as";
      action = "<cmd> ASToggle <CR>";
      mode = "n";
      options.desc = "Auto Save: toggle";
    }
  ];
}
