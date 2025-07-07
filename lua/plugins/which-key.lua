return {
   n = {
     ["<leader>o"] = {
      name = "Org Mode",
      t = { "<cmd>lua require('orgmode').action('todo.toggle')<CR>", "Toggle TODO"},
    },
   },
 }
