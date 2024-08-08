dir = getDirectory("Choose a Directory ");
list = getFileList(dir);
run("Clear Results");
for (n=0; n<list.length; n++) {
	if (endsWith(list[n], ".czi")){	
    	bf_in_str = "open=[" + dir + list[n] + "] autoscale color_mode=Colorized rois_import=[ROI manager] split_channels view=Hyperstack stack_order=XYCZT";
    	run("Bio-Formats Importer", bf_in_str); 
    	
 		// For CD31
		selectWindow(list[n] + " - C=1");
		run("Gaussian Blur 3D...", "x=2 y=2 z=2");
		run("Z Project...", "projection=[Sum Slices]");
		run("8-bit");
		rename("CD31");
		run("Duplicate...", " ");
		bf_out_str = dir + "/Images_Tiff/"+ list[n] + "_CD31";
		saveAs("Tiff", bf_out_str);
		
			
		// For Pdgfr
		selectWindow(list[n] + " - C=2");
		run("Gaussian Blur 3D...", "x=2 y=2 z=2");
		run("Z Project...", "projection=[Sum Slices]");
		run("8-bit");
		rename("Pdgfr");
		run("Duplicate...", " ");
		bf_out_str = dir + "/Images_Tiff/"+ list[n] + "_Pdgfr";
		saveAs("Tiff", bf_out_str);
		
		// For CD13
		selectWindow(list[n] + " - C=3");
		run("Gaussian Blur 3D...", "x=2 y=2 z=2");
		run("Z Project...", "projection=[Sum Slices]");
		run("8-bit");
		rename("CD13");
		run("Duplicate...", " ");
		bf_out_str = dir + "/Images_Tiff/"+ list[n] + "_CD13";
		saveAs("Tiff", bf_out_str);
		
		run("Merge Channels...", "c1=Pdgfr c2=CD31 create keep");
		bf_out_str = dir + "/Images_Tiff/"+ list[n] + "_PDGFR_CD31";
		saveAs("Tiff", bf_out_str);
		
		run("Merge Channels...", "c1=Pdgfr c5=CD13 create keep");
		bf_out_str = dir + "/Images_Tiff/"+ list[n] + "_PDGFR_CD13";
		saveAs("Tiff", bf_out_str);
		
		run("Close All");
		
		
	   	
  	}
}  