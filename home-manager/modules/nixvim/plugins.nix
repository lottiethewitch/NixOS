{ ... }:

{
  programs.nixvim = {

	plugins = {

	  bufferline.enable = true;

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

	  comfy-line-numbers = {
		enable = true;
	  };

	  conform-nvim = {
		enable = true;
	  };

	  dap = {
		enable = true;
		autoLoad = true;
	  };

	  dap-ui = {
		enable = true;
		autoLoad = true;
	  };

	  diffview.enable = true;

	  emmet = {
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

	  gitgutter = {
		enable = true;
		recommendedSettings = true;
	  };

	  gitsigns.enable = true;

	  harpoon.enable = true;

	  lualine.enable = true;

	  indent-blankline.enable = true;

	  lint = {
		enable = true;
		autoLoad = true;
	  };

	  lsp = {
		inlayHints = true;
		enable = true;
		servers = {

		  clangd = {
			enable = true;
		  };

		  jedi_language_server = {
			enable = true;
		  };

		  tflint = {
			enable = true;
		  };

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
		  emmet_language_server.enable = true;
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
		  nixd = {
			enable = true;
		  };
		  postgres_lsp.enable = true;
		  cssls.enable = true;
		  jdtls.enable = true;
		};
	  };

	  lspkind = {
		enable = true;
	  };

	  luasnip = {
		enable = true;
		autoLoad = true;
	  };

	  marks.enable = true;

	  nvim-tree = {
		enable = true;
		autoLoad = true;
		autoClose = false;
		openOnSetup = true;
		openOnSetupFile = true; # I like seeing my file tree 
	  };

	  rainbow = {
		enable = true;
		autoLoad = true;
	  };

	  render-markdown = {
		enable = true;
		autoLoad = true;
	  };

	  spring-boot = {
		enable = true;
		autoLoad = true; # I get that this makes load times longer but im lazy
	  };
	  treesitter = {
		enable = true;
		nixGrammars = true;
		indent.enable = true;
		grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
		  ruby
		  elixir
		  heex
		  eex
		  html
		  css
		  java
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
		  python
		];
	  };

	  telescope.enable = true;

	  vimtex = {
		enable = true;
	  };

	  web-devicons = {
		enable = true;
		autoLoad = true;
	  };
	};
  };

}
