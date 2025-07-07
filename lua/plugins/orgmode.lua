return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = '~/Sync/Notes/org-notes/**/*',
      org_default_notes_file = '~/Sync/Notes/org-notes/inbox.org',
      org_archive_location = '~/Sync/Note/org-notes/done-list.org',
      org_todo_keywords = {'TODO(t)', 'NEXT(n)', 'PROG(p)', 'WAIT(w)', '|', 'DONE(d)', 'CANCELLED(c)'},
      org_todo_keyword_faces = {
        WAIT = ':foregound yellow',
        TODO = ':foreground green :weight bold',
        NEXT = ':foreground purple',
        PROG = ':foreground red',
      }
    })

  -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
    -- add ~org~ to ignore_install
    -- require('nvim-treesitter.configs').setup({
    --  ensure_installed = 'all',
    --  ignore_install = { 'org' },
    -- })
  end,
}
