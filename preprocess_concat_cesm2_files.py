import xarray as xr  # Import xarray for handling multi-dimensional arrays
import numpy as np  # Import numpy for numerical operations

# Define the file paths explicitly
files = [
    "cesm2_files.nc"  # List of files to be concatenated
]

# Initialize an empty list to hold datasets
datasets = []

# Load each file as a dataset and append to the list
for file in files:
    ds = xr.open_dataset(file)  # Open the dataset
    datasets.append(ds)  # Append the dataset to the list

# Concatenate the datasets along the time dimension
ds_concat = xr.concat(datasets, dim="time")  # Concatenate datasets

# Define the output file path
output_file = "output_concatenated_file.nc"  # Specify the output file name

# Save the concatenated dataset to the specified file
ds_concat.to_netcdf(output_file)  # Save the concatenated dataset to a NetCDF file

print(f"Concatenated dataset saved to {output_file}")  # Print a confirmation message

# Close the datasets to free up resources
for ds in datasets:
    ds.close()  # Close each dataset
