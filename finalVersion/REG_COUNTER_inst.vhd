REG_COUNTER_inst : REG_COUNTER PORT MAP (
		aload	 => aload_sig,
		clock	 => clock_sig,
		cnt_en	 => cnt_en_sig,
		data	 => data_sig,
		sload	 => sload_sig,
		q	 => q_sig
	);
