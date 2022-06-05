-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-06-02
-- Description:

require("nvim-lastplace").setup(
    {
        -- 哪些 buffer 类型不记录光标位置
        lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
        -- 那些文件类型不记录光标位置
        lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
        lastplace_open_folds = true
    }
)
