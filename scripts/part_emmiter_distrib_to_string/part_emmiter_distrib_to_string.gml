///part_emmiter_distrib_to_string( ps_distr )
function part_emmiter_distrib_to_string(argument0) {

	switch(argument0){
		case ps_distr_linear: return "ps_distr_linear"; break;
		case ps_distr_gaussian: return "ps_distr_gaussian"; break;
		case ps_distr_invgaussian: return "ps_distr_invgaussian"; break;
	}



}
