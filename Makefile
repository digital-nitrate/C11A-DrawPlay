JAVAC:=javac
JAR:=jar

SRC:=src
BIN:=bin
LIB:=lib

TARGET:=DrawPlay.jar

ENTRY:=MyDrawing

FILES:=$(wildcard $(SRC)/*.java)

.PHONY: all clean reset

all: $(TARGET)

clean:
	$(RM) $(wildcard $(BIN)/*.class)

reset:
	$(RM) $(wildcard $(BIN)/*.class) $(TARGET)
	@rmdir $(BIN)

$(TARGET): $(FILES) | $(BIN)
	$(JAVAC) -cp $(LIB) -d $(BIN) -g:none $(FILES)
	$(JAR) cvef $(ENTRY) $@ -C $(BIN) .

$(BIN):
	@mkdir -p $@
