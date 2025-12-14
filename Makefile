CC = gcc
BUILD_DIR = build
SRC_FILES = src/pagla.c
TEST_FILES = test/p.c

.PHONY: all test clean

all: test

test: $(BUILD_DIR)/test_runner
$(BUILD_DIR)/test_runner: $(SRS_FILES) $(TEST_FILES)
	@mkdir -p $(BUILD_DIR)
	
	$(CC) $(SRC_FILES) $(TEST_FILES) -o $(BUILD_DIR)/test_runner
	@echo "Test runner built. Running tests..."
	
	./$(BUILD_DIR)/test_runner
	@echo "All tests completed."


clean:
	@rm -rf $(BUILD_DIR)
	@echo "Cleaned build directory."