Q           :=@
CC          :=g++
SRCS        :=$(wildcard *.cpp)
TARGET      :=ScreenShot
OBJECTS     :=
CFLAGS      :=-Iinclude
CFLAGS	    +=
LIBS        :=
LDFLAGS     :=$(LIBS) -lm

.PHONY: all
all: clean $(TARGET)

$(TARGET):
	$(Q)echo "  Building '$@' ..."
	$(Q)$(CC) $(SRCS) -o $@ $(CFLAGS) $(LDFLAGS)
	$(Q)rm -f .depend *~ *.bak *.o *.res
	$(Q)strip $@

.PHONY: clean
clean:
	$(Q)echo "  Cleaning '$(TARGET)' ..."
	$(Q)$(RM) $(TARGET)
