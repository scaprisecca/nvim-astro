return {
  'renerocksai/telekasten.nvim',
  dependencies = {'nvim-telescope/telescope.nvim'},
  config = function()
    require('telekasten').setup({
      home = vim.fn.expand("~/Sync/Notes/sc-vault/"), -- Replace with your preferred notes directory
    })
  end,
  opts = {
    mappings = {
      n = {
        ["<Leader>z"] = { desc = "Vault Notes"},
        ["<Leader>zf"] = { "<cmd>Telekasten find_notes<CR>", desc = "Find notes"},
        ["<Leader>zg"] = { "<cmd>Telekasten search_notes<CR>", desc = "Search notes"},
        ["<Leader>zz"] = { "<cmd>Telekasten follow_link<CR>", desc = "Follow link"},
        ["<Leader>zn"] = { "<cmd>Telekasten new_note<CR>", desc = "New note"},
        ["<Leader>zc"] = { "<cmd>Telekasten show_calendar<CR>", desc = "Show calendar"},
        ["<Leader>zb"] = { "<cmd>Telekasten show_backlinks<CR>", desc = "Show backlinks"},
        ["<Leader>zI"] = { "<cmd>Telekasten insert_img_link<CR>", desc = "Insert image link"},
        ["<Leader>zi"] = { "<cmd>Telekasten insert_link<CR>", desc = "Insert link"},
      }
    }
  }
}
