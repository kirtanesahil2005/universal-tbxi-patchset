ifeq ($(strip $(RETRO68)),)
$(error "Set RETRO68 in your environment.")
endif

TOOLPATH = $(RETRO68)/bin
PREFIX = $(TOOLPATH)/powerpc-apple-macos-

CFLAGS = -mcpu=750 -Wall -Wextra -Os
ASFLAGS = -Wa,-m7400
LDFLAGS = -shared -Wl,-bE:source/ProcessMgrSupport.exp
LIBS = -nostdlib -lInterfaceLib -lDriverServicesLib -lVideoServicesLib -lNameRegistryLib -lPCILib

REZFLAGS = -I$(RETRO68)/RIncludes -tzsys -cMACS

TARGET = $(notdir $(CURDIR))

FILES = $(wildcard source/*.S) $(wildcard source/*.c) $(wildcard ../DriverCommon/*.S) $(wildcard ../DriverCommon/*.c)
OBJSx0 = $(FILES:source/%.S=build/%.o)
OBJSx1 = $(OBJSx0:../DriverCommon/%.S=build/%.o)
OBJSx2 = $(OBJSx1:../DriverCommon/%.c=build/%.o)
OBJS = $(OBJSx2:source/%.c=build/%.o)

AR = $(PREFIX)ar
AS = $(PREFIX)as
CC = $(PREFIX)gcc
CXX = $(PREFIX)g++
LD = $(PREFIX)ld
OBJCOPY = $(PREFIX)objcopy
RANLIB = $(PREFIX)ranlib
STRIP = $(PREFIX)strip
MAKEPEF = $(TOOLPATH)/MakePEF
REZ = $(TOOLPATH)/Rez

ifeq ($(NOMAPFILE),)
LDFLAGS += -Wl,-Map,$(TARGET).map
endif

ifneq ($(LDSCRIPT),)
LDFLAGS += -Wl,-T$(LDSCRIPT)
endif

DEPDIR = .deps

all: $(TARGET).pef
	@[ -d $(DIR_BUILD) ] || mkdir $(DIR_BUILD)

$(TARGET).pef: $(TARGET).xcoff
	@echo "  MAKEPEF   $@"
	@$(MAKEPEF) $(TARGET).xcoff -o $@

$(TARGET).xcoff: $(OBJS)
	@echo "  LINK      $@"
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $@

ifneq ($(LDSCRIPT),)
$(TARGET): $(LDSCRIPT)
endif

build/%.o: source/%.c
	@echo "  COMPILE   $<"
	@mkdir -p $(DEPDIR)
	@mkdir -p build
	@$(CC) $(CFLAGS) $(DEFINES) -Wp,-MMD,$(DEPDIR)/$(*F).d,-MQ,"$@",-MP -c $< -o $@

build/%.o: ../DriverCommon/%.c
	@echo "  COMPILE   $<"
	@mkdir -p $(DEPDIR)
	@mkdir -p build
	@$(CC) $(CFLAGS) $(DEFINES) -Wp,-MMD,$(DEPDIR)/$(*F).d,-MQ,"$@",-MP -c $< -o $@


build/%.o: source/%.s
	@echo "  ASSEMBLE  $<"
	@mkdir -p build
	@$(CC) $(CFLAGS) $(DEFINES) $(ASFLAGS) -c $< -o $@

build/%.o: ../DriverCommon/%.s
	@echo "  ASSEMBLE  $<"
	@mkdir -p build
	@$(CC) $(CFLAGS) $(DEFINES) $(ASFLAGS) -c $< -o $@


build/%.o: source/%.S
	@echo "  ASSEMBLE  $<"
	@mkdir -p build
	@$(CC) $(CFLAGS) $(DEFINES) $(ASFLAGS) -c $< -o $@

build/%.o: ../DriverCommon/%.S
	@echo "  ASSEMBLE  $<"
	@mkdir -p build
	@$(CC) $(CFLAGS) $(DEFINES) $(ASFLAGS) -c $< -o $@

clean:
	rm -rf $(DEPDIR)
	rm -f $(TARGET).* $(OBJS)

-include $(DEPDIR)/*

.PHONY: clean
