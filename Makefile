all: rcswitch-send

rcswitch-send: RCSwitch.o rcswitch-send.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

install: all
	install -d $(DESTDIR)/usr/bin
	install rcswitch-send $(DESTDIR)/usr/bin

clean:
	$(RM) *.o rcswitch-send
