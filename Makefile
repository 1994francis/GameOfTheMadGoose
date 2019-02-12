output: main.cpp Cards.o Boxes.o Players.o Tabellone.o
	g++ main.cpp Cards.o Boxes.o Players.o Tabellone.o -o ../GiocoDellOcaPazza
	rm *.o *.h.gch
	@echo Main - Done
	@echo Everything Done!

Tabellone.o: Tabellone.cpp Tabellone.h Players.h Cards.h
	g++ -c Tabellone.cpp Tabellone.h Players.h Cards.h
	@echo Tabellone - done


Boxes.o: Boxes.cpp Boxes.h Tabellone.h Players.h
	g++ -c Boxes.cpp Boxes.h Tabellone.h Players.h
	@echo Boxes - done

Cards.o: Cards.cpp Cards.h Players.h Tabellone.h
	g++ -c Cards.cpp Cards.h Players.h Tabellone.h
	@echo Cards - done

Players.o: Players.cpp Players.h
	g++ -c Players.cpp Players.h
	@echo Players - done

clean:
	rm ../GiocoDellOcaPazza
	@echo Removed All!
