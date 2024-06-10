-- In your plugin configuration file
return {
  -- Other plugins ...
  {
    "booperlv/nvim-gomove",
    config = function()
      require("gomove").setup({
        -- Default settings:
        map_defaults = true, -- Set default mappings
        reindent = true, -- Automatically reindent when moving text
        undojoin = true, -- Join undo history
        move_past_end_col = false, -- Move past end column when moving blocks
      })
    end,
  },
}
