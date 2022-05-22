-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-05-22
-- Description:


require("todo-comments").setup(
    {
        keywords = {
            -- alt ： 别名
            FIX = {
                icon = " ",
                color = "#DC2626",
                alt = {"FIXME", "BUG", "FIXIT", "ISSUE", "!"}
            },
            TODO = {icon = " ", color = "#10B981"},
            HACK = {icon = " ", color = "#7C3AED"},
            WARN = {icon = " ", color = "#FBBF24", alt = {"WARNING", "XXX"}},
            PERF = {icon = " ", color = "#FC9868", alt = {"OPTIM", "PERFORMANCE", "OPTIMIZE"}},
            NOTE = {icon = " ", color = "#2563EB", alt = {"INFO"}}
        }
    }
)
--
