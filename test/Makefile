TARGET = timertest

INCLUDES = -I. \
	   -I../src

SOURCES = timertest.c

OBJECTS := $(notdir $(SOURCES:.c=.o))

SHARED_OBJECTS := ctimer
SHARED_OBJECTS_HOME = ..
SHARED_OBJECTS_DIR = $(SHARED_OBJECTS_HOME)/Bin

all : $(TARGET)

$(TARGET) : $(SHARED_OBJECTS) $(OBJECTS)
	@echo Linking $@
	@$(CC) $(OBJECTS) -L$(SHARED_OBJECTS_DIR) -Wl,-rpath=$(SHARED_OBJECTS_DIR)  $(addprefix -l, $(SHARED_OBJECTS)) -o $(TARGET)

%.o : %.c
	@echo Compiling $<
	@$(CC) $(INCLUDES) -o $@ -c $<

ctimer :
	$(MAKE) all --directory $(SHARED_OBJECTS_HOME)


clean:
	@rm -f *.o
	@rm -f $(TARGET)
	$(MAKE) all --directory $(SHARED_OBJECTS_HOME)
