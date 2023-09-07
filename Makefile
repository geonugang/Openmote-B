CONTIKI_PROJECT = sensor-test
# CONTIKI_NG_DRIVERS_SENSOR_DIR += arch/dev/sensor
# CONTIKI_TARGET_SOURCEFILES += sensor-test.c bme280-arch.c

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


