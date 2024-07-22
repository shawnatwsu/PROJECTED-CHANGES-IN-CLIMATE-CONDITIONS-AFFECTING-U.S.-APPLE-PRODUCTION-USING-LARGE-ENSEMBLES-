#!/bin/bash
#SBATCH --partition=kamiak   
#SBATCH --job-name=YearlyDataProcessing 
#SBATCH --output=%x_%A_%a.out 
#SBATCH --error=%x_%A_%a.err 
#SBATCH --time=7-00:00:00  
#SBATCH --mail-type=ALL   
#SBATCH --mail-user=your.name@wsu.edu 
#SBATCH --array=0-43    
#SBATCH --nodes=1   
#SBATCH --ntasks-per-node=1  
#SBATCH --cpus-per-task=1  
#SBATCH --mem-per-cpu=8G  

# Calculate the year for this task
YEAR=$(expr 1979 + $SLURM_ARRAY_TASK_ID)

# Define the input and output file paths
INPUT_FILE="/home/shawn_preston/SHAWN_Data/tmmn_${YEAR}.nc"
OUTPUT_FILE="/home/shawn_preston/grid/${YEAR}gm_cesm_tmin.nc"

# Define the grid definition file path (Ensure this grid file exists and is correct)
GRID_DEF_FILE="/home/shawn_preston/tmax/cesm2_grid.txt"

# Perform regridding
cdo remapcon,${GRID_DEF_FILE} ${INPUT_FILE} ${OUTPUT_FILE}

echo "Processing complete for year: ${YEAR}"

