require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true,
    },
})

require("neorg").setup({
    load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.neorgcmd"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    notes = "~/notes",
                },
                default_workspace = "notes",
            },
        },
    },
})
vim.wo.foldlevel = 99
vim.wo.conceallevel = 2
