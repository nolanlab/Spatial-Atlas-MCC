# MCPyV-linked TME Reorganization in MCC
Code accompanying our manuscript "Spatially organized inflammatory myeloid-CD8+ T cell aggregates linked to Merkel-cell Polyomavirus driven Reorganization of the Tumor Microenvironment"

## Introduction
This repo consists of two parts: 1) Code used to generate the results for our manuscript “Spatially organized inflammatory myeloid-CD8+ T cell aggregates linked to Merkel-cell Polyomavirus driven Reorganization of the Tumor Microenvironment” and 2) Useful functions from our manuscript that we have generalized to make more user-friendly for the broader scientific community. These functions can be found in the “Receptor-ligand proximity analysis” directory.

The following describes how to navigate the code we provide in the “Neighborhoods” directory. The code is implemented in python3 using jupyter notebooks. Some experience with installing python packages will be required to get up and running. Only a familiarity with python is required to follow and adapt these functions for your own use.

## Installation
We recommend using the free package manager Anaconda (https://www.anaconda.com) to help install the packages required to use these scripts. • Jupyter is most easily installed through Anaconda. Otherwise, one can follow the instructions here https://jupyter.org/ • The used scripts require very few dependencies. Most required packages are compiled in the Nolan-lab-built python environment SPACEc: A Streamlined, Interactive Python Workflow for Multiplexed Image Processing and Analysis (see https://doi.org/10.1101/2024.06.29.601349 and https://github.com/yuqiyuqitan/SPACEc). 

## Functions:
1) Receptor-ligand proximity analysis
2) Barycentric density plot
3) Spatial context maps to reveal neighborhood interfaces associated with clinical outcomes

## Overview of code for main Figures
The following is an overview of the code in this repository. Please note that since this repository doesn't contain the necessary data that was used for the analysis, if one wishes to reproduce the result, one will need to download the data and change the file path accordingly in the code.

File Name	          Description
##### Figure1.rmd: Produces Figure 1F, 1H, 1I
##### Figure2.rmd: Produces Figure 2C, 2D, 2E, 2H
##### Figure3.rmd: Produces Figure 3B and 3C
##### Figure3.ipynb: Produces Density plot and associated statistics Figure 3E and 3F 
##### Figure4.rmd:	Produces Figure 4B, 4D
##### Receptor-ligand-proximity-analysis.ipynb: Produces Figure 4J, 4K and 4M
##### Figure 5.rmd: Produces Figure 5C, 5D and 5F
##### Figure 6.rmd: Produces Figure 6I, 6J, 6K
##### Spatial_context_maps.ipynb: Produces Figures 6G and 7J-K
##### Figure 7.rmd: Produces Figure 7F, 7H and 7I.
