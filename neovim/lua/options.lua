local options = {
	mouse="a",
	smartindent,
  termguicolors=true,
	tabstop=2,
	shiftwidth=2,
	softtabstop=2,
	termguicolors=true,
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

vim.cmd 'let g:airline_theme = "wombat"'
vim.cmd 'let g:airline#extensions#tabline#enabled = 1'
vim.cmd 'let g:airline_powerline_fonts = 1'
