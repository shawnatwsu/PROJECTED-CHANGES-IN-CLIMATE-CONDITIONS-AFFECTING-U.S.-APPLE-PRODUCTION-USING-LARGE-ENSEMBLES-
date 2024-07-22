#!/bin/bash
#BATCH --partition=kamiak
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=50G
#SBATCH --output=test_job.out
#SBATCH --ntasks-per-node=1
#SBATCH --time 72:00:00
#SBATCH --job-name=regrid_array2
#SBATCH --mail-type=ALL
#SBATCH --mail-user=shawn_preston@wsu.edu


# Then regrid the adjusted GridMET dataset to the CESM2 grid
cdo remapcon,/home/shawn_preston/tmax/cesm2_grid.txt /data/lab/singh/data/shawn_cpc_data/tmax/tmax.1979.nc /home/shawn_preston/tmax/1979_grid_to_cesmcon1_.nc


