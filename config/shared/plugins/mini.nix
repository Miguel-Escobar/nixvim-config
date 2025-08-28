{ ... }:
{
  plugins = {
    mini = {
      enable = true;
      modules = {
        icons = { };
        statusline = { };
        snippets = { };
        surround = { };
        basics = { };
        pairs = { };
        notify = { };
        completion = { };
        jump2d = { }; # Muy bacán, permite saltar en el texto con enter.
        starter = {
          footer = "";
          items = {
            "__unkeyed-1.telescope" = {
              __raw = "require('mini.starter').sections.telescope()";
            };
            "__unkeyed-2.sessions" = {
              __raw = "require('mini.starter').sections.sessions(5, true)";
            };
            "__unkeyed-3.recent_files" = {
              __raw = "require('mini.starter').sections.recent_files(5, true, false)";
            };
            "__unkeyed-4.builtin_actions" = {
              __raw = "require('mini.starter').sections.builtin_actions()";
            };
          };
        };
        sessions = { };
      };
      mockDevIcons = true;
    };
  };
}
