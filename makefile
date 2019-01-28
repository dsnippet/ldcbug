DMD = ldmd2
FOOSRC = foo.d bar.d qux.d fred.d corge.d thud.d waldo.d grault.d
FOOOBJS = $(FOOSRC:.d=.o)
clean:
	rm -rf *.a *.o foobar *.log

libs-ldc: libfoo-ldc.a

%.o: %.d
	$(DMD) -c $(DFLAGS) $^

libfoo-ldc.a: $(FOOOBJS)
	ar rcs $@ $^

foobar: foobar.d ./libfoo-ldc.a
	$(DMD) $(DFLAGS) -of$@ -L-ldl -L-lphobos2-ldc $^

run: foobar
	./foobar
