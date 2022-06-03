-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-06-03
-- Description:

local colors = {
    color = 'none',
    Search = "#FC867",
    Error = "#FD6883",
    Warn = "#FFD886",
    Info = "A9DC76",
    Hint = "#78DCE8",
    Misc = "#AB9DF2"
}

require("scrollbar").setup(
    {
        handle = {
            -- 滚动条颜色
            color = colors.color
        },
        marks = {
            -- 诊断颜色，需要 LSP 支持
            Search = {color = colors.Search},
            Error = {color = colors.Error},
            Warn = {color = colors.Warn},
            Info = {color = colors.Info},
            Hint = {color = colors.Hint},
            Misc = {color = colors.Misc}
        }
    }
)
