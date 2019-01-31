DMD=ldc2
clean:
	rm -rf *.o foobar *.log

%.o: %.d
	$(DMD) -w -c $(DFLAGS) $^

foobar: foobar.o foo.o qux.o corge.o thud.o waldo.o grault.o
	$(DMD) -w $(DFLAGS) -of$@ -L-ldl -L-lphobos2-ldc $^

run: foobar
	./foobar
