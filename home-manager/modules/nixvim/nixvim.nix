{ config, pkgs, inputs, ... }:

{
  imports = [
   inputs.nixvim.homeModules.nixvim
 ];

 home.shellAliases.v = "nvim";

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    nixpkgs.useGlobalPackages = true;
    viAlias = true;
    vimAlias = true;

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

   cmp = {
        enable = true;
        autoEnableSources = true;
	autoLoad = true;
        settings.sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
        ];
      };

    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp-buffer.enable = true;

    cmake-tools.enable = true;

    colorizer.enable = true;

    dap = {
      enable = true;
      autoLoad = true;
    };

    dap-ui = {
      enable = true;
      autoLoad = true;
    };
      
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

      harpoon.enable = true;

      bufferline.enable = true;
      lualine.enable = true;
      
      lsp = {
        inlayHints = true;
        enable = true;
        servers = {
          rust_analyzer = {
            enable = true;
            installCargo = true;
            installRustc = true;        
          };  
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
          csharp_ls.enable = true;
          java_language_server.enable = true;
          html.enable = true;
          kotlin_language_server.enable = true;
          ts_ls.enable = true;
          eslint.enable = true;
          nil_ls.enable = true;
          lua_ls.enable = true;
	  bashls.enable = true;
	  jsonls.enable = true;
          nixd.enable = true;
	  postgres_lsp.enable = true;
	  cssls.enable = true;
        };
      };

      luasnip = {
	enable = true;
	autoLoad = true;
      };

      marks.enable = true;

      nvim-tree = {
        enable = true;
        autoLoad = true;
	openOnSetup = true;
      };

      rainbow = {
	enable = true;
      	autoLoad = true;
      };

      treesitter = {
        enable = true;
        nixGrammars = true;
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
      telescope.enable = true;
      web-devicons = {
	enable = true;
	autoLoad = true;
      };
    };
  };
}
