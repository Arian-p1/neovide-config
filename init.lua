vim.o.shellslash = true
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/paqs/opt/paq-nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/savq/paq-nvim', install_path})
end

execute 'packadd paq-nvim'

local paq = require'paq'.paq
paq 'savq/paq-nvim'

require "paq" {
    "savq/paq-nvim";
}
