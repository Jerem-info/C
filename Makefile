GUISimple : gui_simple.o 
	g++ $^ -o $@ -lQtGui -lQtCore

GUICarre : gui_carre.o
	g++ $^ -o $@

gui_simple.o : gui_simple.cpp
	g++  -c $^ -o $@ -I/usr/include/qt4/ -I/usr/include/qt4/QtCore/ -I/usr/include/qt4/QtGui

gui_carre.o : carre.cpp
	g++ -c $^ -o $@ -I/usr/include/qt4/ -I/usr/include/qt4/QtCore/ -I/usr/include/qt4/QtGui -I/home/jerem/Desktop/Practical/M2/C/Makefile/TP1/qcustomplot/

clean:
	rm -f *.o *~

mrproper: clean
	rm -f GUISimple
