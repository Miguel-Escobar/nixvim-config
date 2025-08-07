{...}: {
  plugins = {
    mini = {
      enable = true;
      modules = {
        icons = {};
        statusline = {};
        snippets = {};
        surround = {};
        basics = {};
        files = {}; # Permite ver y editar carpetas y archivos.
        pairs = {};
        notify = {};
        completion = {};
        jump2d = {}; # Muy bacán, permite saltar en el texto con enter.
        starter = {
        header = ''⠀⠀     ⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀     ⠀⠀⠀⠀⠀⣠⣾⣿⣿⣷⣀⡤⠤⠤⠤⠤⢤⣄⣀⡀⠀⠀⠀⣀⣀⡀⠀⠀⠀⠀⠀
     ⠀⠀⠀⠀⢀⣾⣿⣟⡵⠚⠉⠀⠤⠂⠀⠀⠀⠀⠀⠀⠉⠓⠦⣾⣿⣿⣿⡄⠀⠀⠀⠀
     ⠀⠀⠀⣴⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⠀⠀⠀⠘⢦⡙⢷⣜⣿⣿⣆⠀⠀⠀
     ⠀⠀⢺⣿⣿⡟⠁⠀⢀⠀⠀⡆⠀⠀⠀⠀⠀⠈⢣⡀⠀⠀⠀⠙⡼⡍⡘⣿⣿⣆⠀⠀
     ⠀⠀⠀⢹⡟⠀⠀⢀⠇⢀⡼⡇⠀⠀⠀⣤⡀⠀⠀⢱⡀⠀⠀⠀⠸⣿⡴⡘⣿⣿⣆⠀
     ⠀⠀⠀⣼⡅⠀⠀⣘⢀⡾⢥⣿⣰⠀⠀⡟⢷⡀⢷⣄⢷⡀⠀⠀⠀⢻⡞⣧⣿⡿⠋⠀
     ⠀⠀⢠⡿⡇⠀⠀⣽⣾⣤⣤⣈⢿⠆⠀⡇⠘⠹⣿⡝⢮⣇⠀⠀⠀⢸⣿⣿⡟⢱⠀⠀
     ⠀⠀⢸⠀⡏⡇⠀⣿⢱⠿⣿⣻⡝⢿⣄⢳⢐⣶⣾⣷⣾⣿⠀⠀⡇⠘⣿⠉⡄⠸⡀⠀
     ⠀⠀⡏⢸⣧⣷⠀⣿⠸⢯⣉⡾⠁⠈⠻⣾⡜⣗⠿⣭⡏⣿⠀⢀⣧⡀⣿⡄⡇⠈⡇⠀
     ⠀⢠⠇⠸⢱⡟⣆⣿⣄⠀⠀⠀⠀⠀⠀⠈⠁⠑⠖⠚⠀⣾⠀⣼⣿⠙⠇⡇⠇⠀⢇⠀
     ⠀⢸⠀⠀⢸⠀⠘⢾⣿⣗⣦⣄⣀⠰⠤⠄⠀⠀⣀⣠⢴⢧⠾⠿⠃⠀⠀⡇⠀⠀⢸⠀
     ⠀⡏⢀⠀⢸⠀⠀⠀⠀⠙⠿⣣⣾⣭⢿⣫⡿⠻⡍⠠⠟⠁⠀⠀⠀⠀⠀⡇⢀⠀⢸⠀
     ⢠⠁⢸⠀⢸⠀⠀⠀⠀⢀⣴⣿⣧⢸⢿⠇⣵⣼⣿⡄⠀⠀⠀⠀⠀⠀⠀⡇⡎⠀⠘⡇
     ⢸⠀⠸⡄⡇⠀⠀⠀⣠⣾⣿⣿⡏⣸⣸⠈⠀⢹⣿⣿⣆⠀⠀⠀⠀⠀⠀⡿⡇⠀⠀⡇
     ⡄⠀⠀⣇⢰⠀⠀⠸⢿⣿⣿⢞⠇⣟⢸⠅⡆⠘⣿⣿⣿⣧⠀⠀⠀⠀⠀⣇⡇⠀⠀⢠
     ⢁⢆⠀⠸⣼⠀⠀⠘⠋⢩⣾⣧⣶⣿⣿⣆⣼⣿⣿⣿⣻⠿⡄⠀⠀⠀⠀⣿⠁⠐⠀⢸
     ⠘⡌⣆⠀⢻⡆⠀⠀⠀⠘⠫⣟⣿⣿⣿⣿⣿⣻⣯⠟⠉⠋⠁⠀⠀⠀⢠⡏⢀⠷⠀⢸
     ⠀⠙⢿⣗⢔⢷⡀⠀⠀⠀⠀⢸⣶⣶⣿⢳⣶⣖⡇⠀⠀⠀⠀⠀⠀⠀⡼⢀⢎⡇⢠⡇
⠀     ⠀⠀⠙⠻⠲⠽⠄⠀⠀⠀⠀⣿⣿⣿⢸⣿⣿⡇⠀⠀⠀⠀⠀⢀⣞⢔⣃⣼⡴⠋⠀
⠀     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⡻⠿⢨⡿⣿⡇⠀⠀⠀⠀⠀⠉⠉⠉⠉⠁⠀⠀⠀
⠀⠀     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'';
          footer = ''            Type query to filter items
            <BS> deletes latest character from query
            <Esc> resets current query
            <Down/Up>, <C-n/p>, <M-j/k> move current item
            <CR> executes action of current item
            <C-c> closes this buffer'';
          items = {
            "__unkeyed-1.telescope" = {
              __raw = "require('mini.starter').sections.telescope()";
            };
            "__unkeyed-2.sessions" = {
              __raw = "require('mini.starter').sections.sessions(5, true)";
            };
            "__unkeyed-3.buildtin_actions" = {
              __raw = "require('mini.starter').sections.builtin_actions()";
            };
          };
        };
        sessions = {};
      };
      mockDevIcons = true;
    };
  };
}
