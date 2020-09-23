newSubtracter_inst : newSubtracter PORT MAP (
		add_sub	 => add_sub_sig,
		dataa	 => dataa_sig,
		datab	 => datab_sig,
		overflow	 => overflow_sig,
		result	 => result_sig
	);
