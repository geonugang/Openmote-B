CONTIKI_PROJECT = sensor-test2
CONTIKI_TARGET_SOURCEFILES += sensor-test2.c bme280-arch.c

all: $(CONTIKI_PROJECT)

CONTIKI = ../..
include $(CONTIKI)/Makefile.dir-variables
MODULES += $(CONTIKI_NG_DRIVERS_SENSOR_DIR)/bme280
include $(CONTIKI)/Makefile.include


BSL_FLAGS += -e
ifeq ($(BOARD),openmote-b)
        BSL_FLAGS += --bootloader-invert-lines
endif
BSL_FLAGS += -w -v -b 450000


