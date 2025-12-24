local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
-- local i = ls.insert_node
local f = ls.function_node
-- react function component template
ls.add_snippets("typescriptreact", {
    s("tsr", {
        t("export default function "),
        f(function()
            return vim.fn.expand("%:t:r")
        end, {}), -- 动态获取文件名
        t({ "() {", "  return <div>" }),
        f(function()
            return vim.fn.expand("%:t:r")
        end, {}), -- 文件名再次填充
        t({ "</div>", "}" }),
    }),
})
-- vue setup template
ls.add_snippets("vue", {
    s("tsr", {
        t({ '<script lang="ts" setup></script>', "", "<template>", "  <div>" }),
        f(function()
            return vim.fn.expand("%:t:r")
        end, {}), -- 动态获取文件名
        t({ "</div>", "</template>", "<style scoped></style>" }),
    }),
})
