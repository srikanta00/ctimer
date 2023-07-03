
NAME = ctimer

INCLUDES = -I.

LIBS = -lpthread

SOURCES = ctimer.c

BIN_DIR = ./Bin

TARGET = $(BIN_DIR)/lib$(NAME).so

OBJECTS := $(addprefix $(BIN_DIR)/, $(notdir $(SOURCES:.c=.o)))

all : $(TARGET)

$(TARGET) : $(BIN_DIR) $(OBJECTS)
	$(CC) -shared $(OBJECTS) $(LIBS) -o $@


$(BIN_DIR) :
	if [ ! -d $(BIN_DIR) ]; then mkdir $(BIN_DIR); fi


$(BIN_DIR)/%.o : %.c
	$(CC) $(INCLUDES) -o $@ -c $<


clean:
	rm -rf $(BIN_DIR)
