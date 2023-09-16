return {
    vim.api.nvim_create_user_command("BdAllOthers",
	function(opts)
	    local x = vim.api.nvim_list_bufs()
	    local current = vim.api.nvim_get_current_buf()
	    for i = 1, #x do
	      if x[i] ~= current then
		    vim.api.nvim_buf_delete(x[i], {})
	      end
	    end
	end,
	{}
    )
}
