local options = {
	mouse="a",
	smartindent,
  termguicolors=true,
	tabstop=2,
	shiftwidth=2,
	softtabstop=2,
	title=true,
	number=true,
	relativenumber=true,
	wrap=true,
	showmatch=true,
	list=true,
	matchtime=3,
	ignorecase=true,
	smartcase=true,
	wrapscan=true,
	hlsearch=true,
	incsearch=true,
	inccommand="split",
	expandtab=true,
	wildmode="list:longest",
  infercase=true,
  wildmenu=true,
  clipboard="unnamedplus",
  backspace="indent,eol,start",
  hidden=true,
  syntax="enable",
  textwidth=0,
  history=500,
  swapfile=false,
  undofile=false,
  backup=false,
  writebackup=false,
}
for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.g.python_recommended_style = 0

vim.o.background = "dark"

vim.g.mapleader = " "
