FFLAGS= -o
.DEFAULT: .f90
.SUFFIXES:.f90

.f90.o:$*.f90
	ifort -c $*.f90

OBJS1=pbconcz2.o fftpack.o fish.o hw3crt.o pois3d.o pbsolvercz.o solvationsub.o subfunction.o surfconcz.o adi.o

osm.exe:   $(OBJS1)
	ifort -o osm.exe $(OBJS1) slatec.a

clean: 
	rm *.o *.mod *.exe
