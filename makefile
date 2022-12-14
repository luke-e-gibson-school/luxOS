ASM=nasm
SRC_DIR=src
BUILD_DIR=build

$(BUILD_DIR)/main_boot.img: $(BUILD_DIR)/main.bin
	cp $(BUILD_DIR)/main.bin $(BUILD_DIR)/main_boot.img
	truncate -s 1440k $(BUILD_DIR)/main_boot.img


$(BUILD_DIR)/main.bin: $(SRC_DIR)/boot.asm
	$(ASM) $(SRC_DIR)/boot.asm -f bin -o $(BUILD_DIR)/main.bin