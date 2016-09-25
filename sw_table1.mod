// Replication of Smets and Wouters (AER, 2007)
// Table 1A--Prior and Posterior Distribution of Structural Parameters
// Table 1B--Prior and Posterior Distribution of Shock Processes
// Uses
// - sw_defs.mod
// - sw_model_def.mod
// - sw_estimation_def.mod
// - usmodel_data.mat
// Jerome Williams, NYU
// June 2013
//
// This is essentially a rewrite of Smets&Wouters' own code, which is available at
// http://www.aeaweb.org/articles.php?doi=10.1257/aer.97.3.586

@#include "sw_defs.mod"
@#include "sw_model_def.mod"
@#include "sw_estimation_def.mod"

estimation(
	nograph,
	nodiagnostic,
	optim=('Algorithm','active-set'),
	datafile=usmodel_data,
	mode_compute=1,
	first_obs=71,
	presample=4,
	lik_init=2,
	prefilter=0,
	mh_replic=2000,
	mh_nblocks=2,
	mh_jscale=0.20,
	mh_drop=0.2
);
// Increase mh_replic to get a better estimation of the posterior distribution.

