.PHONY: clean All Project_Title Project_Build

All: Project_Title Project_Build

Project_Title:
	@echo "----------Building project:[ apt32f102 - BuildSet ]----------"

Project_Build:
	@make -r -f apt32f102.mk -j 6 -C  D:/OneDrive/Works/Work_Storage/Project/MCU/APT32F102/APT32F102_Lib/LIB_Release/APT32F102x_StdPeriph_Lib_V1_17/Source 


clean:
	@echo "----------Cleaning project:[ apt32f102 - BuildSet ]----------"

