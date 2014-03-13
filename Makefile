all: rcswitch-send

rcswitch-send: RCSwitch.o rcswitch-send.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

clean:
	$(RM) *.o rcswitch-send
