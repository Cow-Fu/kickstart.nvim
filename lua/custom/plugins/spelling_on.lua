vim.api.nvim_create_autocmd("FileType", {
	pattern = {"markdown", "text"},
	callback = function (opts)
	    vim.opt_local.spell = true;
	    vim.opt_local.linebreak = true;
	end,
    }
)
return {}
