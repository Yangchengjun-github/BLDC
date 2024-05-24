##
## Auto Generated makefile by CDK
## Do not modify this file, and any manual changes will be erased!!!   
##
## BuildSet
ProjectName            :=apt32f102
ConfigurationName      :=BuildSet
WorkspacePath          :=./
ProjectPath            :=./
IntermediateDirectory  :=Obj
OutDir                 :=$(IntermediateDirectory)
User                   :=Yang
Date                   :=5/24/2024
CDKPath                :=../../../../../../../CDK
ToolchainPath          :=C:/CDKRepo/Toolchain/CKV2ElfMinilib/V3.10.29/R/
LinkerName             :=csky-elfabiv2-gcc
LinkerNameoption       :=
SIZE                   :=csky-elfabiv2-size
READELF                :=csky-elfabiv2-readelf
CHECKSUM               :=crc32
SharedObjectLinkerName :=
ObjectSuffix           :=.o
DependSuffix           :=.d
PreprocessSuffix       :=.i
DisassemSuffix         :=.asm
IHexSuffix             :=.ihex
BinSuffix              :=.bin
ExeSuffix              :=.elf
LibSuffix              :=.a
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
ElfInfoSwitch          :=-hlS
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
UnPreprocessorSwitch   :=-U
SourceSwitch           :=-c 
ObjdumpSwitch          :=-S
ObjcopySwitch          :=-O ihex
ObjcopyBinSwitch       :=-O binary
OutputFile             :=Release_APT32F102
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=apt32f102.txt
MakeDirCommand         :=mkdir
LinkOptions            := -mcpu=ck801  -nostartfiles -Wl,--gc-sections -T"$(ProjectPath)/ckcpu.ld"
LinkOtherFlagsOption   := 
IncludePackagePath     :=
IncludeCPath           := $(IncludeSwitch)../../../../../../../CDK/CSKY/csi/csi_core/csi_cdk/ $(IncludeSwitch)../../../../../../../CDK/CSKY/csi/csi_core/include/ $(IncludeSwitch)../../../../../../../CDK/CSKY/csi/csi_driver/include/ $(IncludeSwitch). $(IncludeSwitch)include  
IncludeAPath           := $(IncludeSwitch)../../../../../../../CDK/CSKY/csi/csi_core/csi_cdk/ $(IncludeSwitch)../../../../../../../CDK/CSKY/csi/csi_core/include/ $(IncludeSwitch)../../../../../../../CDK/CSKY/csi/csi_driver/include/ $(IncludeSwitch).  
Libs                   := -Wl,--start-group  -Wl,--end-group $(LibrarySwitch)_102TKey_1_17 $(LibrarySwitch)_102ClkCalib_1_04 $(LibrarySwitch)m  
ArLibs                 := "lib_102TKey_1_17" "lib_102ClkCalib_1_04" "libm" 
PackagesLibPath        :=
LibPath                :=$(LibraryPathSwitch).  $(PackagesLibPath) 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       :=csky-elfabiv2-ar rcu
CXX      :=csky-elfabiv2-g++
CC       :=csky-elfabiv2-gcc
AS       :=csky-elfabiv2-gcc
OBJDUMP  :=csky-elfabiv2-objdump
OBJCOPY  :=csky-elfabiv2-objcopy
CXXFLAGS := -mcpu=ck801   $(PreprocessorSwitch)CONFIG_CSKY_MMU=0   $(UnPreprocessorSwitch)__CSKY_ABIV2__  -Os  -g  -ffunction-sections -mistack 
CFLAGS   := -mcpu=ck801   $(PreprocessorSwitch)CONFIG_CSKY_MMU=0   $(UnPreprocessorSwitch)__CSKY_ABIV2__  -Os  -g  -ffunction-sections -mistack 
ASFLAGS  := -mcpu=ck801   $(PreprocessorSwitch)CONFIG_CKCPU_MMU=0   $(UnPreprocessorSwitch)__CSKY_ABIV2__  -Wa,--gdwarf2    


Objects0=$(IntermediateDirectory)/arch_crt0$(ObjectSuffix) $(IntermediateDirectory)/arch_mem_init$(ObjectSuffix) $(IntermediateDirectory)/arch_apt32f102_iostring$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_syscon$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_gpio$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_lpt$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_crc$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_wwdt$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_countera$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_et$(ObjectSuffix) \
	$(IntermediateDirectory)/FWlib_apt32f102_bt$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_gpt$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_sio$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_spi$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_uart$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_i2c$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_ept$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_rtc$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_adc$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_ifc$(ObjectSuffix) \
	$(IntermediateDirectory)/FWlib_apt32f102_tkey_parameter$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_coret$(ObjectSuffix) $(IntermediateDirectory)/apt32f102_initial$(ObjectSuffix) $(IntermediateDirectory)/apt32f102_interrupt$(ObjectSuffix) $(IntermediateDirectory)/main$(ObjectSuffix) $(IntermediateDirectory)/bldc$(ObjectSuffix) $(IntermediateDirectory)/drivers_apt32f102$(ObjectSuffix) $(IntermediateDirectory)/drivers_apt32f102_ck801$(ObjectSuffix) $(IntermediateDirectory)/__rt_entry$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all
all: $(IntermediateDirectory)/$(OutputFile)

$(IntermediateDirectory)/$(OutputFile):  $(Objects) Always_Link 
	$(LinkerName) $(OutputSwitch) $(IntermediateDirectory)/$(OutputFile)$(ExeSuffix) $(LinkerNameoption) -Wl,--ckmap=$(ProjectPath)/Lst/$(OutputFile).map  @$(ObjectsFileList)  $(LinkOptions) $(LibPath) $(Libs) $(LinkOtherFlagsOption)
	-@mv $(ProjectPath)/Lst/$(OutputFile).map $(ProjectPath)/Lst/$(OutputFile).temp && $(READELF) $(ElfInfoSwitch) $(ProjectPath)/Obj/$(OutputFile)$(ExeSuffix) > $(ProjectPath)/Lst/$(OutputFile).map && echo ====================================================================== >> $(ProjectPath)/Lst/$(OutputFile).map && cat $(ProjectPath)/Lst/$(OutputFile).temp >> $(ProjectPath)/Lst/$(OutputFile).map && rm -rf $(ProjectPath)/Lst/$(OutputFile).temp
	$(OBJCOPY) $(ObjcopySwitch) $(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)  $(ProjectPath)/Obj/$(OutputFile)$(IHexSuffix) 
	$(OBJDUMP) $(ObjdumpSwitch) $(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)  > $(ProjectPath)/Lst/$(OutputFile)$(DisassemSuffix) 
	@echo size of target:
	@$(SIZE) $(ProjectPath)$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix) 
	@echo -n checksum value of target:  
	@$(CHECKSUM) $(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix) 
	@$(ProjectName).modify.bat $(IntermediateDirectory) $(OutputFile)$(ExeSuffix) 

Always_Link:


##
## Objects
##
$(IntermediateDirectory)/arch_crt0$(ObjectSuffix): arch/crt0.S  
	$(AS) $(SourceSwitch) arch/crt0.S $(ASFLAGS) -MMD -MP -MT$(IntermediateDirectory)/arch_crt0$(ObjectSuffix) -MF$(IntermediateDirectory)/arch_crt0$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/arch_crt0$(ObjectSuffix) $(IncludeAPath) $(IncludePackagePath)
Lst/arch_crt0$(PreprocessSuffix): arch/crt0.S
	$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/arch_crt0$(PreprocessSuffix) arch/crt0.S

$(IntermediateDirectory)/arch_mem_init$(ObjectSuffix): arch/mem_init.c  
	$(CC) $(SourceSwitch) arch/mem_init.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/arch_mem_init$(ObjectSuffix) -MF$(IntermediateDirectory)/arch_mem_init$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/arch_mem_init$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/arch_mem_init$(PreprocessSuffix): arch/mem_init.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/arch_mem_init$(PreprocessSuffix) arch/mem_init.c

$(IntermediateDirectory)/arch_apt32f102_iostring$(ObjectSuffix): arch/apt32f102_iostring.c  
	$(CC) $(SourceSwitch) arch/apt32f102_iostring.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/arch_apt32f102_iostring$(ObjectSuffix) -MF$(IntermediateDirectory)/arch_apt32f102_iostring$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/arch_apt32f102_iostring$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/arch_apt32f102_iostring$(PreprocessSuffix): arch/apt32f102_iostring.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/arch_apt32f102_iostring$(PreprocessSuffix) arch/apt32f102_iostring.c

$(IntermediateDirectory)/FWlib_apt32f102_syscon$(ObjectSuffix): FWlib/apt32f102_syscon.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_syscon.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_syscon$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_syscon$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_syscon$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_syscon$(PreprocessSuffix): FWlib/apt32f102_syscon.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_syscon$(PreprocessSuffix) FWlib/apt32f102_syscon.c

$(IntermediateDirectory)/FWlib_apt32f102_gpio$(ObjectSuffix): FWlib/apt32f102_gpio.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_gpio.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_gpio$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_gpio$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_gpio$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_gpio$(PreprocessSuffix): FWlib/apt32f102_gpio.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_gpio$(PreprocessSuffix) FWlib/apt32f102_gpio.c

$(IntermediateDirectory)/FWlib_apt32f102_lpt$(ObjectSuffix): FWlib/apt32f102_lpt.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_lpt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_lpt$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_lpt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_lpt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_lpt$(PreprocessSuffix): FWlib/apt32f102_lpt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_lpt$(PreprocessSuffix) FWlib/apt32f102_lpt.c

$(IntermediateDirectory)/FWlib_apt32f102_crc$(ObjectSuffix): FWlib/apt32f102_crc.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_crc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_crc$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_crc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_crc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_crc$(PreprocessSuffix): FWlib/apt32f102_crc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_crc$(PreprocessSuffix) FWlib/apt32f102_crc.c

$(IntermediateDirectory)/FWlib_apt32f102_wwdt$(ObjectSuffix): FWlib/apt32f102_wwdt.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_wwdt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_wwdt$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_wwdt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_wwdt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_wwdt$(PreprocessSuffix): FWlib/apt32f102_wwdt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_wwdt$(PreprocessSuffix) FWlib/apt32f102_wwdt.c

$(IntermediateDirectory)/FWlib_apt32f102_countera$(ObjectSuffix): FWlib/apt32f102_countera.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_countera.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_countera$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_countera$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_countera$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_countera$(PreprocessSuffix): FWlib/apt32f102_countera.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_countera$(PreprocessSuffix) FWlib/apt32f102_countera.c

$(IntermediateDirectory)/FWlib_apt32f102_et$(ObjectSuffix): FWlib/apt32f102_et.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_et.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_et$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_et$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_et$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_et$(PreprocessSuffix): FWlib/apt32f102_et.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_et$(PreprocessSuffix) FWlib/apt32f102_et.c

$(IntermediateDirectory)/FWlib_apt32f102_bt$(ObjectSuffix): FWlib/apt32f102_bt.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_bt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_bt$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_bt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_bt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_bt$(PreprocessSuffix): FWlib/apt32f102_bt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_bt$(PreprocessSuffix) FWlib/apt32f102_bt.c

$(IntermediateDirectory)/FWlib_apt32f102_gpt$(ObjectSuffix): FWlib/apt32f102_gpt.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_gpt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_gpt$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_gpt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_gpt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_gpt$(PreprocessSuffix): FWlib/apt32f102_gpt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_gpt$(PreprocessSuffix) FWlib/apt32f102_gpt.c

$(IntermediateDirectory)/FWlib_apt32f102_sio$(ObjectSuffix): FWlib/apt32f102_sio.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_sio.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_sio$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_sio$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_sio$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_sio$(PreprocessSuffix): FWlib/apt32f102_sio.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_sio$(PreprocessSuffix) FWlib/apt32f102_sio.c

$(IntermediateDirectory)/FWlib_apt32f102_spi$(ObjectSuffix): FWlib/apt32f102_spi.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_spi.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_spi$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_spi$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_spi$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_spi$(PreprocessSuffix): FWlib/apt32f102_spi.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_spi$(PreprocessSuffix) FWlib/apt32f102_spi.c

$(IntermediateDirectory)/FWlib_apt32f102_uart$(ObjectSuffix): FWlib/apt32f102_uart.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_uart.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_uart$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_uart$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_uart$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_uart$(PreprocessSuffix): FWlib/apt32f102_uart.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_uart$(PreprocessSuffix) FWlib/apt32f102_uart.c

$(IntermediateDirectory)/FWlib_apt32f102_i2c$(ObjectSuffix): FWlib/apt32f102_i2c.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_i2c.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_i2c$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_i2c$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_i2c$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_i2c$(PreprocessSuffix): FWlib/apt32f102_i2c.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_i2c$(PreprocessSuffix) FWlib/apt32f102_i2c.c

$(IntermediateDirectory)/FWlib_apt32f102_ept$(ObjectSuffix): FWlib/apt32f102_ept.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_ept.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_ept$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_ept$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_ept$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_ept$(PreprocessSuffix): FWlib/apt32f102_ept.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_ept$(PreprocessSuffix) FWlib/apt32f102_ept.c

$(IntermediateDirectory)/FWlib_apt32f102_rtc$(ObjectSuffix): FWlib/apt32f102_rtc.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_rtc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_rtc$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_rtc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_rtc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_rtc$(PreprocessSuffix): FWlib/apt32f102_rtc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_rtc$(PreprocessSuffix) FWlib/apt32f102_rtc.c

$(IntermediateDirectory)/FWlib_apt32f102_adc$(ObjectSuffix): FWlib/apt32f102_adc.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_adc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_adc$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_adc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_adc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_adc$(PreprocessSuffix): FWlib/apt32f102_adc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_adc$(PreprocessSuffix) FWlib/apt32f102_adc.c

$(IntermediateDirectory)/FWlib_apt32f102_ifc$(ObjectSuffix): FWlib/apt32f102_ifc.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_ifc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_ifc$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_ifc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_ifc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_ifc$(PreprocessSuffix): FWlib/apt32f102_ifc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_ifc$(PreprocessSuffix) FWlib/apt32f102_ifc.c

$(IntermediateDirectory)/FWlib_apt32f102_tkey_parameter$(ObjectSuffix): FWlib/apt32f102_tkey_parameter.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_tkey_parameter.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_tkey_parameter$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_tkey_parameter$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_tkey_parameter$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_tkey_parameter$(PreprocessSuffix): FWlib/apt32f102_tkey_parameter.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_tkey_parameter$(PreprocessSuffix) FWlib/apt32f102_tkey_parameter.c

$(IntermediateDirectory)/FWlib_apt32f102_coret$(ObjectSuffix): FWlib/apt32f102_coret.c  
	$(CC) $(SourceSwitch) FWlib/apt32f102_coret.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_coret$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_coret$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_coret$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_coret$(PreprocessSuffix): FWlib/apt32f102_coret.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_coret$(PreprocessSuffix) FWlib/apt32f102_coret.c

$(IntermediateDirectory)/apt32f102_initial$(ObjectSuffix): apt32f102_initial.c  
	$(CC) $(SourceSwitch) apt32f102_initial.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/apt32f102_initial$(ObjectSuffix) -MF$(IntermediateDirectory)/apt32f102_initial$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/apt32f102_initial$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/apt32f102_initial$(PreprocessSuffix): apt32f102_initial.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/apt32f102_initial$(PreprocessSuffix) apt32f102_initial.c

$(IntermediateDirectory)/apt32f102_interrupt$(ObjectSuffix): apt32f102_interrupt.c  
	$(CC) $(SourceSwitch) apt32f102_interrupt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/apt32f102_interrupt$(ObjectSuffix) -MF$(IntermediateDirectory)/apt32f102_interrupt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/apt32f102_interrupt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/apt32f102_interrupt$(PreprocessSuffix): apt32f102_interrupt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/apt32f102_interrupt$(PreprocessSuffix) apt32f102_interrupt.c

$(IntermediateDirectory)/main$(ObjectSuffix): main.c  
	$(CC) $(SourceSwitch) main.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/main$(ObjectSuffix) -MF$(IntermediateDirectory)/main$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/main$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/main$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/main$(PreprocessSuffix) main.c

$(IntermediateDirectory)/bldc$(ObjectSuffix): bldc.c  
	$(CC) $(SourceSwitch) bldc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/bldc$(ObjectSuffix) -MF$(IntermediateDirectory)/bldc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/bldc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/bldc$(PreprocessSuffix): bldc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/bldc$(PreprocessSuffix) bldc.c

$(IntermediateDirectory)/drivers_apt32f102$(ObjectSuffix): drivers/apt32f102.c  
	$(CC) $(SourceSwitch) drivers/apt32f102.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_apt32f102$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_apt32f102$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_apt32f102$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_apt32f102$(PreprocessSuffix): drivers/apt32f102.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_apt32f102$(PreprocessSuffix) drivers/apt32f102.c

$(IntermediateDirectory)/drivers_apt32f102_ck801$(ObjectSuffix): drivers/apt32f102_ck801.c  
	$(CC) $(SourceSwitch) drivers/apt32f102_ck801.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_apt32f102_ck801$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_apt32f102_ck801$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_apt32f102_ck801$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_apt32f102_ck801$(PreprocessSuffix): drivers/apt32f102_ck801.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_apt32f102_ck801$(PreprocessSuffix) drivers/apt32f102_ck801.c


$(IntermediateDirectory)/__rt_entry$(ObjectSuffix): $(IntermediateDirectory)/__rt_entry$(DependSuffix)
	@$(AS) $(SourceSwitch) $(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) $(IncludeAPath)
$(IntermediateDirectory)/__rt_entry$(DependSuffix):
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) -MF$(IntermediateDirectory)/__rt_entry$(DependSuffix) -MM $(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S

-include $(IntermediateDirectory)/*$(DependSuffix)
