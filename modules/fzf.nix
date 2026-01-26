{
  home.sessionVariables."FZF_COMPLETION_OPTS" = "--height=~12";

  programs.fzf = {
    enable = true;
    colors = {
      "fg" = "#c6c8d1";
      "fg+" = "#c6c8d1";
      "bg" = "#161821";
      "bg+" = "#1e2132";
      "hl" = "#b4be82";
      "hl+" = "#b4be82";
      "info" = "#a093c7";
      "marker" = "#89b8c2";
      "prompt" = "#e27878";
      "spinner" = "#6b7089";
      "pointer" = "#c6c8d1";
      "header" = "#84a0c6";
      "gutter" = "#161821";
      "border" = "#6b7089";
      "label" = "#c6c8d1";
      "query" = "#c6c8d1";
    };
    changeDirWidgetOptions = [ "--height=~12" ];
    defaultOptions = [
      "--bind=tab:toggle+down,shift-tab:toggle+up"
      "--border=none"
      "--cycle"
      "--layout=reverse"
      "--preview-border=sharp"
      "--scroll-off=3"
    ];
    fileWidgetOptions = [ "--height=~12" ];
    historyWidgetOptions = [ "--height=~12" ];
  };
}
