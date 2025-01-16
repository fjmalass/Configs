SOURCE_DIR = .
BUILD_DIR = html
PANDOC = pandoc
CSS_FILE = ./html/markdown-style.css
PANDOC_OPTS = --css=$(CSS_FILE) --embed-resources --standalone
SOURCE_FILES = $(wildcard $(SOURCE_DIR)/*.md)
HTML_FILES = $(patsubst $(SOURCE_DIR)/%.md, $(BUILD_DIR)/%.html, $(SOURCE_FILES))


# Default target
all: $(HTML_FILES)

# Generate html files
$(BUILD_DIR)/%.html: $(SOURCE_DIR)/%.md
	$(PANDOC) $(PANDOC_OPTS) $< -o $@
	@echo "Generated: $@"

# Clean
clean:
	rm -f $(BUILD_DIR)/*.html
	@echo "Clean: $(BUILD_DIR)"

#PHONY targets
.PHONY: all clean

