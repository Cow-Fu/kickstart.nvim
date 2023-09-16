return {
    vim.api.nvim_create_user_command("BdAllOthers",
	function(opts)
	    local buffer_list = vim.api.nvim_list_bufs()
	    local current = vim.api.nvim_get_current_buf()
	    for i = 1, #buffer_list do
	      if buffer_list[i] ~= current then
		    vim.api.nvim_buf_delete(buffer_list[i], {})
	      end
	    end
	end,
	{}
    )
}
