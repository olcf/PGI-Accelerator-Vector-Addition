deploy: build/vecAdd.out submit.pbs
	cp build/vecAdd.out /tmp/work/$(USER)/
	qsub submit.pbs

build/vecAdd.out: vecAdd.f90
	mkdir -p build
	ftn -ta=nvidia vecAdd.f90 -o build/vecAdd.out

clean:
	if [ -d build ]; then rm -Rf build; fi
