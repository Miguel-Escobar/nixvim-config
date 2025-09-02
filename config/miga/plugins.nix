{...}: {
  ### HARDTIME.NVIM ###
  plugins.hardtime = {
    enable = true;
  };

  keymaps = [
    {
      key = "<Leader>ht";
      action = "<cmd> Hardtime toggle <CR>";
      mode = "n";
      options.desc = "Hardtime: toggle";
    }
  ];
}
