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
    })

  -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
    -- add ~org~ to ignore_install
    -- require('nvim-treesitter.configs').setup({
    --  ensure_installed = 'all',
    --  ignore_install = { 'org' },
    -- })
  end,
}
