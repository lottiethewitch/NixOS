{ config, pkgs, inputs, ... }:

{
  imports = [
   inputs.nixvim.homeModules.nixvim
  ];
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    nixpkgs.useGlobalPackages = true;
    luaLoader.enable = true;

    extraPackages = with pkgs; [
      ripgrep
      lazygit
      fd
      gcc
      nodejs
      tree-sitter
      solargraph
      elixir-ls
      lua-language-server
    ];
  
  plugins = {
      diffview.enable = true;
      gitsigns.enable = true;
      
      fzf-lua = {
        enable = true;
        settings = {
          winopts = {
            height = 0.40;
            width = 1.00;
            row = 1.00;
            col = 0.00;
            border = "none";
            fullscreen = false;
          };
          fzf_opts = {
            "--layout" = "reverse-list";
          };
        };
      };

      bufferline.enable = true;
      lualine.enable = true;
      
      lsp = {
        enable = true;
        servers = {
          rust_analyzer.enable = true;
          elixirls.enable = true;
          solargraph = {
            enable = true;
            cmd = [ "solargraph" ];
            filetypes = [ "ruby" "eruby" ];
            rootMarkers = [
              "Gemfile"
              "Rakefile"
            ];
          };
          ts_ls.enable = true;
          eslint.enable = true;
          nil_ls.enable = true;
          lua_ls.enable = true;
        };
      };


      treesitter = {
        enable = true;
        nixGrammars = true;
        folding.enable = true;
        indent.enable = true;
        grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
          ruby
          elixir
          heex
          eex
          html
          css
          javascript
          typescript
          json
          yaml
          markdown
          markdown_inline
          lua
          vim
          vimdoc
          bash
          sql
          dockerfile
          gitignore
          regex
          toml
          xml
          nix
        ];
      };
    };
  };
}
