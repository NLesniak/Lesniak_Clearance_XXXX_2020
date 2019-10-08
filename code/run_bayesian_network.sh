#!/bin/sh
#PBS -N bn_run_100819

#PBS -l nodes=1:ppn=1,mem=46gb
#PBS -l walltime=400:00:00

#PBS -j oe
#PBS -m a
#PBS -V
#PBS -M nlesniak@umich.edu

#PBS -l qos=flux
#PBS -q fluxod
#PBS -A pschloss_fluxod

#PBS -t 1-7

cd $PBS_O_WORKDIR

echo "Starting set" $PBS_ARRAYID 

Rscript code/getbayesian_network.R $PBS_ARRAYID 

echo "Script complete"

qstat -f $PBS_JOBID 
