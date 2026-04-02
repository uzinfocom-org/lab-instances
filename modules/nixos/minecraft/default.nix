{
  config,
  pkgs,
  ...
}: {
  services.minecraft-server = {
    package = pkgs.minecraftServers.vanilla-1-21;
    enable = true;

    eula = true;
    openFirewall = true;
    declarative = true;
    whitelist = {
      username1 = "3e220001-9544-48bb-8fd0-ca7139727207";
      wolf4am = "75b46c6c-bdbd-42ce-818e-43e94af0c043";
      akmal = "8fac1980-4242-4e3f-8efc-cf7c8c969dbf";
      let_rec = "9298739e-1971-4482-99d3-2e6020955416";
    };

    serverProperties = {
      server-port = 25565;
      difficulty = 3;
      gamemode = 1;
      max-players = 10;
      motd = "NixOS Minecraft server!";
      white-list = true;
      allow-cheats = true;
      view-distance = 30;
    };
    jvmOpts = "-Xms2048M -Xmx10G";
  };
}
