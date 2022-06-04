-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-06-04
-- Description:

require("which-key").setup(
    {
        plugins = {
            spelling = {
                -- 是否接管默认 z= 的行为
                enabled = true,
                suggestions = 20
            }
        }
    }
)
