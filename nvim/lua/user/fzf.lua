local status_ok, fzflua = pcall(require, "fzf-lua")
if not status_ok then
  return
end

fzflua.setup({
    keymap = {
        fzf = {
            ["ctrl-q"] = "select-all+accept",
        },
    },
    -- previewers = {
    --     bat = {
    --         cmd = "bat",
    --         args = "--style=numbers,changes --color always",
    --         theme = 'Coldark-Dark',
    --     }
    -- },
    winopts = {
        height = 0.95,
        width = 0.95,
        preview = {
            scrollbar = false,
            default = 'bat_native'
        },
    },
    fzf_opts = {
        ["--layout"] = "default",
        -- ["--ansi"] = false, --makes fzf fast, but have some limitations
    },
    files = {
        -- cmd = 'find * -name ".git" -o -name "node_modules" -o -name "__pycache__" -prune -o -type f -print',
        -- find_opts         = [[-type f -not -path '*/\.git/*' -printf '%P\n']],
        rg_opts = "--color=never --files --hidden --follow -g '!.git'",
        fd_opts = "-t f -E node_modules -E venv -E __pycache__  -E venv",
        actions = {
            ["ctrl-e"] = function(selected)
                for i, item in ipairs(selected) do
                    local command = i == 1 and "edit" or i % 2 == 0 and "vsplit" or "split"
                    vim.cmd(string.format("%s %s", command, item))
                end
            end,
        },
    },

})
