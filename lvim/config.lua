-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
lvim.colorscheme = "retrobox"

lvim.builtin.nvimtree.hide_dotfiles = false

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})

lvim.keys.normal_mode["<leader>u"] = ":normal! -<CR>"

lvim.plugins = {
 {
   "ThePrimeagen/harpoon",
   config = function()
     require("harpoon").setup()
     Setup_harpoon_keybindings()
   end,
 },
}




function Setup_harpoon_keybindings()
  lvim.keys.normal_mode["<leader>hm"] = ":lua require('harpoon.mark').add_file()<cr>"
  lvim.keys.normal_mode["<leader>hs"] = ":lua require('harpoon.ui').toggle_quick_menu()<cr>"
  lvim.keys.normal_mode["<leader>ht"] = ":lua require('harpoon.term').gotoTerminal(1)<cr>"
  lvim.keys.normal_mode["<leader>hr"] = ":lua require('harpoon.mark').clear_all()<cr>"
end

