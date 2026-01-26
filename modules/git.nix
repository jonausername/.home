{
  programs.git = {
    enable = true;
    settings = {
      core.pager = "less -FX";
      init.defaultBranch = "main";
      user = {
        email = "jonacorynen@gmail.com";
        name = "Jona Corynen";
      };
    };
  };
}
