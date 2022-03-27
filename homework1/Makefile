VERILOG = iverilog
TARGET = decoder.vcd

$(TARGET) : decoder.vvp
	vvp decoder.vvp

decoder.vvp: decoder_tb.v decoder.v clkgen.v
	$(VERILOG) -o decoder.vvp decoder_tb.v decoder.v clkgen.v

clean:
	-del $(TARGET)