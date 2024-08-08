This dataset is derived from research on the reactivity of PDGFR-B+ cells in a mouse model of cerebral ischemia. The experiments were performed at XXX under the supervision of XXX. This data was produced and organized by Dr. Daniel Manrique-Castano (https://orcid.org/0000-0002-1912-1764), Postdoctoral Fellow (dmanriquecastano@gmail.com). 

This folder contains low resolution images used for illustration in the scientific article. They are derived from high resolution images in the Zenodo repository (10.5281/zenodo.10553084) under the names "Confocal_20x_ROIs_Ki67-Pdgfrb-CD31.zip" These low resolution images were generated from .czi files using the "Confocal_20x_ROIs_Ki67_Pdgfrb_CD31_GenerateZplane_PNG.ijm" macro available in this same folder. 

File naming convention:

Taking as an example: "Td05_7D_MCAO_Ctx_Ki67.tif"

- Td05: Unique animal identifier
- 7D: Days post-ischemia to which the brain was harvested (Possible values: 0D, 3D, 7D).
- MCAO: Experimental condition (Possible values: MCAO = Middle cerebral artery occlusion (30 minutes), Sham = Control animals without injury).
- Ctx: Imaged region (Possible values: Peri = Cortical perilesion, Str = Injured striatum, Ctx = Injured cortex).
- Ki67: Stained marker (Possible values: Ki67 = Ki67-antibody labeled, Pdgfrb = Pdgfrb-endogenous TdTomato transgenic labeling, CD31 = CD31-antibody labeled, Ki67_Pdgfrb_CD31 = Ki67(green), PDGFR-B(red), CD31(Cyan) composited images.

The folders Outlines and Crops were generated in Cell profiler using the "Widefield_10x_Ipsiateral_Ki67-Pdgfrb_Coloc.cpproj" pipeline in this same folder. They contain outlines of Ki67/PDGFR-B colocalized cells.

This collection also contains the following folders:

Ki67-Pdgfrb_Objects: Contain PDGFR-B (gray image) and Ki67-detected objects (in colors).
Ki67-Pdgfrb_Outlines: Contain outlines (green) of Ki67+ cells colocalized with perivascular (attached to CD31+ vessels) PDGFR-B+ cells.
Pdgfrb-CD31_Objects: Contain CD31 (gray image) and PDGFR-B-detected objects (in colors).


The images in these folders were generated using the "Confocal_20x_ROIs_Ki67_Pdgfrb_CD31_Coloc.ijm.cpproj" available in this same collection.


Note: 

**Note 1: Please refer to the associated research article or OSF repository (https://osf.io/74mqn/) for additional information.


