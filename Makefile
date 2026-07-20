
ASMFILE=$(FILE).S
OFILE=$(FILE).o
DEBUGFLGS= -g

vpath %.s src 
vpath %.S src
vpath %.o src 
vpath %.h include 


run : link
	./bin/$(FILE)  
runp : link 
	./src/$(FILE)  
link : build 
	ld -o bin/$(FILE) bin/$(OFILE)

build : $(ASMFILE)
	as $(DEBUGFLGS) -o ./bin/$(OFILE) $< 

build2 : $(ASMFILE)
	as $(DEBUGFLGS) -o ./src/$(OFILE) $< 

push : 
	git add . && git commit -m "mesa" && git push origin main

cr:
	mkdir src/$(MEM)
create: 
	touch src/$(ASMFILE)
