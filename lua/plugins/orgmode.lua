return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  opts = {
    -- Global setup
    -- org_agenda_files = {"~/Sync/Notes/org/**/*", '!~/Sync/Notes/org/02_areas/routines.org', '!~/Sync/Notes/org/done-list.org', '!~/Sync/Notes/org/02_areas/birthdays.org'},
    org_agenda_files = { "~/Sync/Notes/org/**/*"},
    org_default_notes_file = "~/Sync/Notes/org/00_inbox.org",
    org_startup_folded = 'showeverything',
    win_split_mode = 'float',
    org_archive_location = "~/Sync/Notes/org/done-list.org",
    org_use_property_inheritance = true,
    calendar_week_start_day = 0,

    -- Todo setup
    org_todo_keywords = {'TODO(t)', 'NEXT(n)', 'PROGRESS(p)', 'WAITING(w)', 'BACKLOG(b)', '|', 'DONE(d)', 'CANCELLED(c)'},
    org_todo_keyword_faces = {
      WAITING = ':foreground yellow',
      TODO = ':foreground green',
      NEXT = ':foreground purple',
      PROGRESS = ':foreground red'
    },
    -- Capture templates
    org_capture_templates = {
      t = {
        description = "Task",
        template = "* TODO %?\n CREATED: %u",
        target = "~/Sync/Notes/org/00_inbox.org",
      },
      n = {
        description = "Quick note",
        template = "* %u %?",
        target = "~/Sync/Notes/org/00_inbox.org",
      },
    },

    -- Agenda Settings
    org_agenda_start_on_weekday = false,
    org_priority_highest = 'A',
    org_priority_default = 'D',
    org_priority_lowest = 'D',
    org_agenda_skip_scheduled_if_done = true,
    org_agenda_skip_deadline_if_done = true,
  },
  config = function(_, opts)
    local org = require("orgmode")
    org.setup(opts)

  -- === keymaps ===
  local map = vim.keymap.set
  local leader = "<Leader>o" -- keeps Astrolike namesapce, overrides its default
  map("n", leader .. "a", "<cmd>Org agenda<CR>", {desc = "Org Agenda"})
  map("n", leader .. "c", "<cmd>Org capture<CR>", {desc = "Org Capture"})
  -- add other mappings here
  end,
}


-- Old Config
-- return {
--   'nvim-orgmode/orgmode',
--   event = 'VeryLazy',
--   ft = { 'org' },
--   config = function()
--     -- Setup orgmode
--     require('orgmode').setup({
--       org_agenda_files = '~/Sync/Notes/org-notes/**/*',
--       org_default_notes_file = '~/Sync/Notes/org-notes/inbox.org',
--       org_archive_location = '~/Sync/Note/org-notes/done-list.org',
--       org_todo_keywords = {'TODO(t)', 'NEXT(n)', 'PROG(p)', 'WAIT(w)', '|', 'DONE(d)', 'CANCELLED(c)'},
--       org_todo_keyword_faces = {
--         WAIT = ':foregound yellow',
--         TODO = ':foreground green :weight bold',
--         NEXT = ':foreground purple',
--         PROG = ':foreground red',
--       }
--     })
--
--   -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
--     -- add ~org~ to ignore_install
--     -- require('nvim-treesitter.configs').setup({
--     --  ensure_installed = 'all',
--     --  ignore_install = { 'org' },
--     -- })
--   end,
-- }
