```
nix flake check --show-trace

nix build .#nixosConfigurations.nixos.config.system.build.toplevel --show-trace  # replace nixos to hostname
```
