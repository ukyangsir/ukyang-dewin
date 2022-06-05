-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-06-05
-- Description:

require("lsp_signature").setup(
    {
        bind = true,
        -- 边框样式
        handler_opts = {
            -- double、rounded、single、shadow、none
            border = "rounded"
        },
        -- 自动触发
        floating_window = true,
        -- 绑定按键
        toggle_key = "<C-p>",
        -- 虚拟提示关闭
        hint_enable = false,
        -- 正在输入的参数将如何突出显示
        hi_parameter = "LspSignatureActiveParameter",
        -- transparency = 100
    }
)
