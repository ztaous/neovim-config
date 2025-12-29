    local map = vim.keymap.set

    -- Basic
    map("n", "<leader>w", "<cmd>write<cr>", { desc = "Save" })
    map("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })

    -- Better window movement
    map("n", "<C-h>", "<C-w>h", { desc = "Go left" })
    map("n", "<C-j>", "<C-w>j", { desc = "Go down" })
    map("n", "<C-k>", "<C-w>k", { desc = "Go up" })
    map("n", "<C-l>", "<C-w>l", { desc = "Go right" })

    -- Window splits
    map("n", "<leader>wh", "<cmd>split<cr>", { desc = "Window: split" })
    map("n", "<leader>wv", "<cmd>vsplit<cr>", { desc = "Window: vsplit" })
    map("n", "<leader>wc", "<cmd>close<cr>", { desc = "Window: close" })

    -- Tab pages (workspaces)
    map("n", "<leader>wt", "<cmd>tabnew<cr>", { desc = "Window: new tab page" })
    map("n", "<leader>w]", "<cmd>tabnext<cr>", { desc = "Window: next tab page" })
    map("n", "<leader>w[", "<cmd>tabprev<cr>", { desc = "Window: prev tab page" })
    map("n", "<leader>wx", "<cmd>tabclose<cr>", { desc = "Window: close tab page" })

    -- Terminal management
    map("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Terminal (float)" })
    map("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Terminal (horizontal)" })
    map("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "Terminal (vertical)" })
    map("n", "<leader>ts", "<cmd>TermSelect<cr>", { desc = "Terminal: select" })
    map("n", "<leader>tn", "<cmd>ToggleTermSetName<cr>", { desc = "Terminal: name" })

    -- Code
    map("n", "<leader>cf", function() require("conform").format({ lsp_format = "fallback" }) end, { desc = "Code: format" })
    map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code: action" })
    map("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Code: rename" })

    -- Explorer
    map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Explorer" })

    -- Git (safe minimal)
    map("n", "<leader>gh", "<cmd>Gitsigns preview_hunk<cr>", { desc = "Git: preview hunk" })
    map("n", "<leader>gs", function() require("gitsigns").stage_buffer() end, { desc = "Git: stage file" })

    map("n", "<leader>gH", function()
    local ok = vim.fn.confirm("Discard this hunk?", "&Yes\n&No", 2)
        if ok == 1 then
            require("gitsigns").reset_hunk()
        end
    end, { desc = "Git: reset hunk (confirm)" })

    map("n", "<leader>gR", function()
    local ok = vim.fn.confirm("Discard ALL changes in this file?", "&Yes\n&No", 2)
        if ok == 1 then
            require("gitsigns").reset_buffer()
        end
    end, { desc = "Git: reset file (confirm)" })


    -- Home
    map("n", "<leader>h", "<cmd>Alpha<cr>", { desc = "Home" })

    -- Lazy
    map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

