# My nixvim config

i'm learning python and this is my simple nixvim configuration

# How to use

You can test my config using this command

```
nix run github:sachinchaudhary1808/nixvim-flake
```

or u can install it using this command

```
nix profile install github:sachinchaudhary1808/nixvim-flake
```

or u can clone my repo and in that repo u can run this command

```
nix run .
```

and after that if u wanna install it you can use this command in cloned directroy to install this flake

```
nix profile install .
```

and after that every change u make u just need to upgrade with this command

```
nix profile upgrade .
```

u should also check which number your nixvim-flake got when install using nix profiles.. so if it's like 0(if u haven't installed anything with nix profiles) u can just do

```
nix profile upgrade 0
```

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file
