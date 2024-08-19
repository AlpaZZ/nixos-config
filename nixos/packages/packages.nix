{pkgs, ...}: 
{
  environment.systemPackages = with pkgs; [
    dotnet-sdk_8
    dotnet-runtime_8

    fastfetch
    polkit_gnome
    file-roller
  ];
}
