# Virus-associated Immunomodulation within the Merkel cell carcinoma TME is linked to Clinical Outcomes
## Code accompanying our manuscript "The Spatial Landscape of Virus-Linked Immunomodulation Resolves T-cell Infiltration patterns and Clinical Outcomes in Merkel cell carcinoma"
## Introduction
This repo consists provides two useful functions from our manuscript that we have generalized to make more user-friendly for the broader community: 

The following describes how to navigate the code we provide in the “Neighborhoods” directory. The code is implemented in python3 using jupyter notebooks. Some experience with installing python packages will be required to get up and running. Only a familiarity with python is required to follow and adapt these functions for your own use.

Installation
We recommend using the free package manager Anaconda (https://www.anaconda.com) to help install the packages required to use these scripts. • Jupyter is most easily installed through Anaconda. Otherwise, one can follow the instructions here https://jupyter.org/ • The used scripts require very few dependencies. Most required packages are compiled in the Nolan-lab-built python environment SPACEc: A Streamlined, Interactive Python Workflow for Multiplexed Image Processing and Analysis (see https://doi.org/10.1101/2024.06.29.601349 and https://github.com/yuqiyuqitan/SPACEc).

Functions:
Receptor-ligand proximity analysis
Spatial context maps to reveal neighborhood interfaces associated with clinical outcomes

Files
1) Receptor_ligand_proximity_analysis_related_Fig4.ipynb — notebook for computing receptor-ligand pairs based on spatial proximity of immediate cellular neighbors
2) Spatial_context_Maps_MCC_ICBR_DM_Fig58.ipynb - notebook for generating spatial contexts from single cell type annotations in spatial proteomic datasets and correlate with clinical outcomes

### 1) Receptor-ligand proximity analysis
#### Overview
The notebook performs a spatial workflow to identify, quantify, and visualize receptor-ligand interactions (such as PD-1/PD-L1 pairs) based on cell coordinates, distance thresholds, and radius-nearest neighbors. 
It calculates paired interactions across single-cell tissue cores, correlates pair frequencies with patient clinical metadata, and generates spatial proximity plots alongside multi-channel fluorescence image crops for visual validation.

#### Input
The notebook expects single-cell AnnData and clinical metadata files:
MCC_single_cell_neighborhoods_markers.h5ad
Clin_metadata_MCC_dict.csv

##### Optional image files for visual validation (located relative to data directory):
- Multi-channel TIFF image stacks (`.tif`)
- Cell segmentation masks (`.png`)

The single-cell AnnData object (`.obs`) should contain at least:
- cellid
- x
- y
- unique_region_num
- binary ligand column (e.g., `PD1_pos`)
- binary receptor column (e.g., `PDL1_pos`)

#### Output
The notebook generates:
- Dictionary of identified receptor-ligand neighbor cell pairs per tissue core stored in `adata.uns`
- Aggregated interaction pair counts merged with clinical metadata
- Stratified box plots / swarm plots with statistical significance annotations (`.pdf`)
- 2D spatial point interaction plots for specific cell pairs
- Crop visualizations overlaying cell coordinates onto segmentation masks and fluorescence channels (e.g., PD-1, PD-L1, DAPI)

#### Requirements
Suggested Python packages:
- numpy
- pandas
- matplotlib
- seaborn
- scipy
- scikit-learn
- scanpy
- imageio
- statannot

#### Usage
Open the notebook and run all cells:
jupyter notebook Receptor_ligand_proximity_analysis_related_Fig4.ipynb


### 2) Spatial context Maps
#### Overview
The notebook performs a simple workflow to compute receptor-ligand pairs based on pixel distance and k-nearest neighbors. It computes k-nearest neighbor (k-NN) spatial windows around single cells, evaluates spatial context (cellular neighborhood) compositions using threshold-based simplex mapping, constructs directed interaction networks, and exports clinical subset analyses.

#### Input
The script expects a single-cell neighborhood annotation CSV file:
MCC_single_cell_neighborhoods_markers.csv
The input table should contain at least:
cellid
x
y
unique_core_num
cell type label column
neighborhood label column
clinical endpoints

#### Output
The notebook generates:
Directed graph network plots (.pdf) depicting spatial context combinations for specific clinical cohorts (CPI Response vs. Non-Response, Progression vs. No Progression)
Processed cohort DataFrames (.csv) containing computed spatial context combinations per cell

#### Requirements
Suggested Python packages:
- numpy
- pandas
- matplotlib
- seaborn
- scikit-learn
- scipy
- statsmodels
- networkx
- scanpy
- pydot
- cellhier (custom local package for k-NN graph neighborhoods)

#### Usage
Run the Python script directly or execute within a Jupyter Notebook environment:
Spatial_context_Maps_MCC_ICBR_DM_Fig58.ipynb
