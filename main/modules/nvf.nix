{pkgs, lib,...}: 
{
  vim = {
    theme = {
      enable = true;
      name = "gruvbox";
      style = "dark";
    };
  };
  telescope.enable = true;
}
