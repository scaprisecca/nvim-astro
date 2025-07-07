return {
  "nvim-orgmode/telescope-orgmode.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-orgmode/orgmode",
    "nvim-telescope/telescope.nvim"
  },
  config = function()
    require("telescope").load_extension("orgmode")

  -- Set keybindings for Telescope to search headings and files
  vim.keymap.set("n", "<Leader>r", require("telescope").extensions.orgmode.refile_heading)
  vim.keymap.set("n", "<Leader>fh", require("telescope").extensions.orgmode.search_headings)
  vim.keymap.set("n", "<Leader>li", require("telescope").extensions.orgmode.insert_link)
end,
}
