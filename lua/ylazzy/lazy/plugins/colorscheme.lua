return {
  "slugbyte/lackluster.nvim",
  lazy = false,
  priority = 1000,
  init = function()
    local lackluster = require("lackluster")

    -- !must called setup() before setting the colorscheme!
    lackluster.setup({
      tweak_syntax = {
        comment = lackluster.color.gray4, -- or gray5
      },
      tweak_background = {
        normal = 'none',
        telescope = 'none',
        menu = lackluster.color.gray3,
        popup = 'default',
      },
      -- tweak_color allows you to overwrite the default colors in the lackluster theme
      tweak_color = {
        -- you can set a value to a custom hexcode like' #aaaa77' (hashtag required)
        -- or if the value is 'default' or nil it will use lackluster's default color
        -- lack = "#aaaa77",
        lack = "default", 
        luster = "default",
        orange = "default",
        yellow = "default",
        green = "default",
        blue = "default",
        red = "default",
        -- WARN: Watchout! messing with grays is probs a bad idea, its very easy to shoot yourself in the foot!
        -- black = "default",
        -- gray1 = "default",
        -- gray2 = "default",
        -- gray3 = "default",
        -- gray4 = "default",
        -- gray5 = "default",
        -- gray6 = "default",
        -- gray7 = "default",
        -- gray8 = "default",
        -- gray9 = "default",

      },
    })
    -- tweak_highlight allows you to update or overwrite the value passed into
    -- vim.api.nvim_set_hl which allows you to have complete control over modifying all
    -- highlights on a granular level.
    tweak_highlight = {
      -- modify @keyword's highlights to be bold and italic
      ["@keyword"] = {
        overwrite = false, -- overwrite falsey will extend/update lackluster's defaults (nil also does this)
        bold = true,
        italic = true,
        -- see `:help nvim_set_hl` for all possible keys
      },
      -- overwrite @function to link to @keyword
      ["@function"] = {
        overwrite = true, -- overwrite == true will force overwrite lackluster's default highlights
        link = "@keyword",
      },
    },
    -- vim.cmd.colorscheme("lackluster")
    vim.cmd.colorscheme("lackluster-hack") -- my favorite
    -- vim.cmd.colorscheme("lackluster-mint")
  end,
}
