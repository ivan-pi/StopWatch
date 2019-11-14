#                    StopWatch Version 1.0
#
# This makefile has been tested on 
#   computer: DEC 4000/710 (?)
#         OS: Digital UNIX V4.0
#   compiler: Digital Fortran 90 V4.1
#
# To compile one of the example programs, type
#  make -f mf.dec.decf90.f95 target 
# where target is the name of the example (simple, advanced, testsw,
# overhead, errors, or bomb). 

F90 = f90
FFLAGS = -O

stopwatch.o: stopwatch.f90 cpusec.o
	$(F90) $(FFLAGS) -c stopwatch.f90

cpusec.o: cpusec.f95.f90
	$(F90) $(FFLAGS) -o cpusec.o -c cpusec.f95.f90

simple: simple.o stopwatch.o cpusec.o
	$(F90) $(FFLAGS) -o simple simple.o stopwatch.o cpusec.o

simple.o: simple.f90 stopwatch.o
	$(F90) $(FFLAGS) -c simple.f90

advanced: advanced.o stopwatch.o cpusec.o
	$(F90) $(FFLAGS) -o advanced advanced.o stopwatch.o cpusec.o

advanced.o: advanced.f90 stopwatch.o
	$(F90) $(FFLAGS) -c advanced.f90

overhead: overhead.o stopwatch.o cpusec.o
	$(F90) $(FFLAGS) -o overhead overhead.o stopwatch.o cpusec.o

overhead.o: overhead.f90 stopwatch.o
	$(F90) $(FFLAGS) -c overhead.f90

testsw: testsw.o stopwatch.o cpusec.o
	$(F90) $(FFLAGS) -o testsw testsw.o stopwatch.o cpusec.o

testsw.o: testsw.f90 stopwatch.o
	$(F90) $(FFLAGS) -c testsw.f90

errors: errors.o stopwatch.o cpusec.o
	$(F90) $(FFLAGS) -o errors errors.o stopwatch.o cpusec.o

errors.o: errors.f90 stopwatch.o
	$(F90) $(FFLAGS) -c errors.f90

bomb: bomb.o stopwatch.o cpusec.o
	$(F90) $(FFLAGS) -o bomb bomb.o stopwatch.o cpusec.o

bomb.o: bomb.f90 stopwatch.o
	$(F90) $(FFLAGS) -c bomb.f90

clean:
	rm -f *.o *.mod simple advanced overhead testsw errors bomb \
              testsw.output testsw.errout errors.output errors.errout
