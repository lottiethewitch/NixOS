{ pkgs, inputs, ... }:

{	
  home.shellAliases.v = "nvim";

  programs.nixvim = {

	colorschemes = {
	  tokyonight.enable = true;
	};

	enable = true;   ### morgan freeman

	defaultEditor = true; ### Editor settings
	nixpkgs.useGlobalPackages = true;
	viAlias = true;
	vimAlias = true;

	luaLoader.enable = true;

	# This may not even be necessary but im lazy and dont wanna fix it
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

	### *guy who does not want to write lua voice*: Here's some lua

	extraConfigLua = ''
					 vim.opt.cursorline = true
					 vim.opt.shiftwidth = 2
					 vim.opt.tabstop = 4        
					 vim.opt.softtabstop = 1
					 vim.opt.smarttab = true
					 '';


  };
}
