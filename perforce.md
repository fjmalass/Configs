# Perforce

## Client __a.k.a__  workspace Local Repo in git

1. List clients `p4 clients` (with pattern like `p4 clients -e *_fr_*`)
2. Setting the `P4Editor` like `p4 set P4EDITOR="C:\Program Files\Neovide\neovide.exe"`
3. Setting up the Client/Workspace `p4 set P4Client=francoism_fr_Toolshed`
4. Lookin up settings: `p4 set` it will show the `P4EDITOR` and `P4Client`
2. Set up client `p4 -c <with client> sync`

