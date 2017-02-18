##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=display2
ConfigurationName      :=Debug
WorkspacePath          :=/home/grace/Dokument/MaskinnäraProgrammering/maskinorienterad-labb3
ProjectPath            :=/home/grace/Dokument/MaskinnäraProgrammering/maskinorienterad-labb3/display2
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Grace Hopper
Date                   :=18/02/17
CodeLitePath           :=/home/grace/.codelite
LinkerName             :=/usr/local/gcc-arm/bin/arm-none-eabi-g++
SharedObjectLinkerName :=/usr/local/gcc-arm/bin/arm-none-eabi-g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName).elf
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="display2.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -nostartfiles -T$(ProjectPath)/md407-ram.x
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)gcc $(LibrarySwitch)c_nano 
ArLibs                 :=  "gcc" "c_nano" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi/lib/armv6-m $(LibraryPathSwitch)$(CodeLiteDir)/tools/gcc-arm/lib/gcc/arm-none-eabi/5.4.1/armv6-m 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/local/gcc-arm/bin/arm-none-eabi-ar rcu
CXX      := /usr/local/gcc-arm/bin/arm-none-eabi-g++
CC       := /usr/local/gcc-arm/bin/arm-none-eabi-gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -mthumb -Wall -march=armv6-m -msoft-float -Wa,-adhln=test.s $(Preprocessors)
ASFLAGS  := 
AS       := /usr/local/gcc-arm/bin/arm-none-eabi-as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IntermediateDirectory)/grafiskDisp.c$(ObjectSuffix) $(IntermediateDirectory)/gameObj.c$(ObjectSuffix) $(IntermediateDirectory)/delay.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

PostBuild:
	@echo Executing Post Build commands ...
	arm-none-eabi-objcopy -S -O srec  ./Debug/display2.elf ./Debug/display2.s19
	@echo Done

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/startup.c$(ObjectSuffix): startup.c $(IntermediateDirectory)/startup.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinnäraProgrammering/maskinorienterad-labb3/display2/startup.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/startup.c$(DependSuffix): startup.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/startup.c$(ObjectSuffix) -MF$(IntermediateDirectory)/startup.c$(DependSuffix) -MM startup.c

$(IntermediateDirectory)/startup.c$(PreprocessSuffix): startup.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/startup.c$(PreprocessSuffix) startup.c

$(IntermediateDirectory)/grafiskDisp.c$(ObjectSuffix): grafiskDisp.c $(IntermediateDirectory)/grafiskDisp.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinnäraProgrammering/maskinorienterad-labb3/display2/grafiskDisp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/grafiskDisp.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/grafiskDisp.c$(DependSuffix): grafiskDisp.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/grafiskDisp.c$(ObjectSuffix) -MF$(IntermediateDirectory)/grafiskDisp.c$(DependSuffix) -MM grafiskDisp.c

$(IntermediateDirectory)/grafiskDisp.c$(PreprocessSuffix): grafiskDisp.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/grafiskDisp.c$(PreprocessSuffix) grafiskDisp.c

$(IntermediateDirectory)/gameObj.c$(ObjectSuffix): gameObj.c $(IntermediateDirectory)/gameObj.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinnäraProgrammering/maskinorienterad-labb3/display2/gameObj.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gameObj.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gameObj.c$(DependSuffix): gameObj.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/gameObj.c$(ObjectSuffix) -MF$(IntermediateDirectory)/gameObj.c$(DependSuffix) -MM gameObj.c

$(IntermediateDirectory)/gameObj.c$(PreprocessSuffix): gameObj.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gameObj.c$(PreprocessSuffix) gameObj.c

$(IntermediateDirectory)/delay.c$(ObjectSuffix): delay.c $(IntermediateDirectory)/delay.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/grace/Dokument/MaskinnäraProgrammering/maskinorienterad-labb3/display2/delay.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/delay.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/delay.c$(DependSuffix): delay.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/delay.c$(ObjectSuffix) -MF$(IntermediateDirectory)/delay.c$(DependSuffix) -MM delay.c

$(IntermediateDirectory)/delay.c$(PreprocessSuffix): delay.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/delay.c$(PreprocessSuffix) delay.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


