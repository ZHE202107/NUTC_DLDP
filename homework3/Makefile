VERILOG = iverilog
TARGET = voter_case.vcd
TEMP = temp.vvp

$(TARGET) : $(TEMP)
	vvp $(TEMP)

$(TEMP): voter_case_tb.v voter_case.v
	$(VERILOG) -o $(TEMP) voter_case_tb.v voter_case.v

clean:
	-del $(TARGET)
	-del $(TEMP)
	