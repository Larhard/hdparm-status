TARGET = hdparm_status

prefix = $(DESTDIR)/usr
bin_dir = $(prefix)/bin

INSTALLED_TARGET = $(bin_dir)/$(TARGET)

all: $(TARGET)

install:
	mkdir -p $(bin_dir)
	cp $(TARGET) $(INSTALLED_TARGET)
	chown root:wheel $(INSTALLED_TARGET)
	chmod 6110 $(INSTALLED_TARGET)

uninstall:
	$(RM) $(INSTALLED_TARGET)

clean:
	$(RM) $(TARGET) *.o

.PHONY: chmod clean install uninstall
