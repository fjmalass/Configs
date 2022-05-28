# neovim 0.5

    * lsp native
    * completion
    * autopairs
    * treesitter (for color scheme)
    * tree (nvimtree)
    * lv-comment
    * lv-galyline
    * dashboard (to start)
    * telescope ( fuzzy finder )
    * debug adapter nvim-dap vs  vimspector
    * lspsaga ()
    * lspinstall
    * snippets (friendly-snippets)
    * whichkey (show the keys)
    * better quick fix (bqf)
    * vim-devicons
    * barbar (tab bar at top)

# Libreoffice

# next cloud [2109-06-23]

     https://www.marksei.com/how-to-install-nextcloud-16-on-ubuntu/

- Uses maridb
  mysql -u root -p
  CREATE DATABASE nextcloud;
  CREATE USER 'rhypt'@'localhost' IDENTIFIED BY 'regularpassword';
  GRANT ALL PRIVILEGES ON nextcloud.\* TO 'rhypt'@'localhost';
  FLUSH PRIVILEGES;
  install

      * updates firewall (ufw)

          ufs allow http
          ufw allow https
