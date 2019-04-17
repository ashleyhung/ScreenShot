Q           :=@

ifeq ($(OS),Windows_NT)
	TARGET     := ScreenShot.exe
	MAKEFILE   := ./windows.mk
else
	TARGET     := ScreenShot_64
	TARGET     += ScreenShot_32
	MAKEFILE   := ./linux.mk
endif


all:
	$(Q)make -f $(MAKEFILE)

clean:
	$(Q)rm -f .depend *~ *.bak *.res *.o
	$(Q)echo "  Cleaning '$(TARGET)' ..."
	$(Q)rm -f $(TARGET)
