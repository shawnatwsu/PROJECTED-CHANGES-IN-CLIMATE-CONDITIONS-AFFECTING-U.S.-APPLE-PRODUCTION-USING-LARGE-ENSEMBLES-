# ReadMe for Projected Changes in Climate Conditions Affecting U.S. Apple Production
**Using Large Ensembles Code and Data by Shawn Preston - July 2024**

## Steps for Replicating Figures and Code:

### 1. Data for all 50 ensemble members per variable can be found at:
- **Minimum:** `/data/project/agaid/singh_cesm_ts/cesm_tmin_concatenated`
- **Average:** `/data/project/agaid/singh_cesm_ts/cesm_ts_concatenated`
- **Maximum:** `/data/project/agaid/singh_cesm_ts/cesm_tmax_concatenated`

Each `.nc` file in its respective directory represents an ensemble member concatenated from 1980-2064. The concatenation of the downloaded individual files (you will need to re-download new years or years outside of the scope) from 1980-2064 for each variable is found at `/data/lab/singh/data/cesm2paper_preston/CESM2Paper/concatcesmfiles`.

To download individual ensemble decadal files for any variable, you can go to:

- [CESM Community Projects Data Sets](https://www.cesm.ucar.edu/community-projects/lens2/data-sets) (Choose the component you want, for this paper, we chose Daily Atmosphere)

Here are the three links for the variables we chose:
- **Minimum:** [https://www.earthsystemgrid.org/dataset/ucar.cgd.cesm2le.atm.proc.daily_ave.TREFHTMN.html](https://www.earthsystemgrid.org/dataset/ucar.cgd.cesm2le.atm.proc.daily_ave.TREFHTMN.html)
- **Average:** [https://www.earthsystemgrid.org/dataset/ucar.cgd.cesm2le.atm.proc.daily_ave.TREFHT.html](https://www.earthsystemgrid.org/dataset/ucar.cgd.cesm2le.atm.proc.daily_ave.TREFHT.html)
- **Maximum:** [https://www.earthsystemgrid.org/dataset/ucar.cgd.cesm2le.atm.proc.daily_ave.TREFHTMX.html](https://www.earthsystemgrid.org/dataset/ucar.cgd.cesm2le.atm.proc.daily_ave.TREFHTMX.html)

### 2. To re-grid GridMET, the `.txt` and `.sh` files can be found in:
`/data/lab/singh/data/cesm2paper_preston/CESM2Paper/RegridGridmet`

You will need to install **CDO (Climate Data Operators)** to process this re-gridding, as well as have the dimensions of the CESM2 lat/lon arrays, which is already in the code.

### 3. To recreate Figures 1-8, the code to replicate them is labeled `Figure#` and can be found at:
`/data/lab/singh/data/cesm2paper_preston/CESM2Paper`

### 4. To recreate the climatology for both 1991-2020 and 2031-2060 for each of the six climate metrics, the code can be found at:
`/data/lab/singh/data/cesm2paper_preston/CESM2Paper/climatologyfunctions`

### 5. To area-weight average those climatologies to use for Figure 5, the code is found at:
`/data/lab/singh/data/cesm2paper_preston/CESM2Paper/areaweightaverageclimatology`

After creating your desired climatology from the functions folder for whichever metric you like, you can then use the area weight average folder to input your climatology `.nc` file and area-weight it for further analysis.
