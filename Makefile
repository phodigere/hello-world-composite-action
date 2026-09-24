# Define variables
PACKAGE_NAME = helloworld
VERSION = 0.0.1
DIST_DIR = dist
ARCHIVE_NAME = $(PACKAGE_NAME)-$(VERSION).tar.gz

# Files and directories to include in the package
FILES = Makefile goodbye.sh README.md

.PHONY: all dist clean

all: package

# Ensure the dist directory exists
$(DIST_DIR):
	mkdir -p $(DIST_DIR)

# Create the dist directory and generate the tarball
package: $(DIST_DIR)
	@echo "Creating tar package..."
	tar -czf $(DIST_DIR)/$(ARCHIVE_NAME) $(FILES)
	@echo "Package created at $(DIST_DIR)/$(ARCHIVE_NAME)"

# Clean up generated archives
clean:
	rm -rf $(DIST_DIR)
