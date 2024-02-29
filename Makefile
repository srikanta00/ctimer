
NAME = ctimer

INCLUDES = -I.

LIBS = -lpthread

VPATH := src

SOURCES = ctimer.c

BIN_DIR = ./Bin

TARGET = $(BIN_DIR)/lib$(NAME).so

OBJECTS := $(addprefix $(BIN_DIR)/, $(notdir $(SOURCES:.c=.o)))

all : $(TARGET)

$(TARGET) : $(BIN_DIR) $(OBJECTS)
	@echo Linking $@
	@$(CC) -shared -fPIC $(OBJECTS) $(LIBS) -o $@


$(BIN_DIR) :
	@echo Creating $(BIN_DIR) directory
	@if [ ! -d $(BIN_DIR) ]; then mkdir $(BIN_DIR); fi


$(BIN_DIR)/%.o : %.c
	@echo Compiling $<
	@$(CC) $(INCLUDES) -o $@ -c -fPIC $<


clean:
	@rm -rf $(BIN_DIR)
