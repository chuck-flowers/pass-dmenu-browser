PREFIX?=/usr/local
BIN_NAME=pass-dmenu-browser

# Tools
BASH_SCRIPT_LINTER?=shellcheck

# Source Files
SRC_DIR=src
SRC_BIN_FILE=$(SRC_DIR)/$(BIN_NAME)

# Build Files
BUILD_DIR=build
BUILD_BIN_DIR=$(BUILD_DIR)/bin
BUILD_BIN_FILE=$(BUILD_BIN_DIR)/$(BIN_NAME)

.PHONY: all
all: $(BUILD_BIN_FILE)

install: all
	install -D $(BUILD_BIN_FILE) -t $(PREFIX)/bin

.PHONY: clean
clean:
	-rm -rf $(wildcard $(BUILD_DIR)/*)

$(BUILD_BIN_FILE): $(SRC_BIN_FILE)
	$(BASH_SCRIPT_LINTER) $^
	mkdir -p $(dir $(BUILD_BIN_FILE))
	cp $(SRC_BIN_FILE) $(BUILD_BIN_FILE)
