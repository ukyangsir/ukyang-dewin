-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-06-05
-- Description:

return {
    root_dir = function()
        return vim.fn.getcwd()
    end,
    -- -- 禁用 Pyright 的诊断信息（只使用 pylint）
    -- handlers = {
    --     ---@diagnostic disable-next-line: unused-vararg
    --     ["textDocument/publishDiagnostics"] = function(...)
    --     end
    -- },
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off"
            }
        }
    }
}
