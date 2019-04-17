Q           :=@
CC          :=g++
SRCS        :=$(wildcard *.cpp)
TARGET      :=ScreenShot.exe
OBJECTS     :=
CFLAGS      :=-Iinclude
CFLAGS		+=
LIBS        :=
LDFLAGS     :=$(LIBS) -lm -mwindows -mconsole -lws2_32 -lgdiplus 

.PHONY: all
all: clean $(TARGET)

$(TARGET):
	$(Q)echo "  Building '$@' ..."
	$(Q)$(CC) $(SRCS) -o $@ $(CFLAGS) $(LDFLAGS)
	$(Q)rm -f .depend *~ *.bak *.o *.res
	#$(Q)strip $@

.PHONY: clean
clean:
	$(Q)echo "  Cleaning '$(TARGET)' ..."
	$(Q)$(RM) $(TARGET)
