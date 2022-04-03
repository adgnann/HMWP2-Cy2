#!/bin/bash

#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem=120G
#SBATCH -t 5-00:00:00

#SBATCH --account=scavenger

#SBATCH --partition=GTX980

module load schrodinger/2018-4

echo $HOSTNAME

/shared/software/schrodinger2018-4/utilities/multisim -JOBNAME desmond_md_job_7jtj_no_active_site_na_relaxation_0ns_50kcalmola2_on_protein_heavy -HOST gibbs-gtx980 -maxjob 1 -cpu 1 -m desmond_md_job_7jtj_no_active_site_na_relaxation_0ns_50kcalmola2_on_protein_heavy.msj -c desmond_md_job_7jtj_no_active_site_na_relaxation_0ns_50kcalmola2_on_protein_heavy.cfg -description "Molecular Dynamics" desmond_md_job_7jtj_no_active_site_na_relaxation_0ns_50kcalmola2_on_protein_heavy.cms -mode umbrella -set stage[1].set_family.md.jlaunch_opt=["-gpu"] -o desmond_md_job_7jtj_no_active_site_na_relaxation_0ns_50kcalmola2_on_protein_heavy-out.cms -ATTACHED
