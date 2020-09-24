PROG = liblzma.a 
CXX = g++ -O3 -Wall 
AR = ar 
RM = rm -f 
CFLAGSX = $(CFLAGS) -c  -I ../../../ 
 
OBJS = \
  ZLib.o \
  LZMADecoder.o \
  LZMAEncoder.o \
  LZInWindow.o \
  LZOutWindow.o \
  RangeCoderBit.o \
  InBuffer.o \
  OutBuffer.o \
  FileStreams.o \
  Alloc.o \
  C_FileIO.o \
  CommandLineParser.o \
  CRC.o \
  StreamUtils.o \
  String.o \
  StringConvert.o \
  StringToInt.o \
  Vector.o \

 
all: $(PROG) 
 
$(PROG): $(OBJS) 
	$(AR) r $(PROG) $(OBJS) 
 
ZLib.o: ZLib.cpp 
	$(CXX) $(CFLAGSX) ZLib.cpp 
 
LZMADecoder.o: ../LZMA/LZMADecoder.cpp 
	$(CXX) $(CFLAGSX) ../LZMA/LZMADecoder.cpp 
 
LZMAEncoder.o: ../LZMA/LZMAEncoder.cpp 
	$(CXX) $(CFLAGSX) ../LZMA/LZMAEncoder.cpp 
 
LZInWindow.o: ../LZ/LZInWindow.cpp 
	$(CXX) $(CFLAGSX) ../LZ/LZInWindow.cpp 
 
LZOutWindow.o: ../LZ/LZOutWindow.cpp 
	$(CXX) $(CFLAGSX) ../LZ/LZOutWindow.cpp 
 
RangeCoderBit.o: ../RangeCoder/RangeCoderBit.cpp 
	$(CXX) $(CFLAGSX) ../RangeCoder/RangeCoderBit.cpp 
 
InBuffer.o: ../../Common/InBuffer.cpp 
	$(CXX) $(CFLAGSX) ../../Common/InBuffer.cpp 
 
OutBuffer.o: ../../Common/OutBuffer.cpp 
	$(CXX) $(CFLAGSX) ../../Common/OutBuffer.cpp 
 
StreamUtils.o: ../../Common/StreamUtils.cpp 
	$(CXX) $(CFLAGSX) ../../Common/StreamUtils.cpp 
 
FileStreams.o: ../../Common/FileStreams.cpp 
	$(CXX) $(CFLAGSX) ../../Common/FileStreams.cpp 
 
Alloc.o: ../../../Common/Alloc.cpp 
	$(CXX) $(CFLAGSX) ../../../Common/Alloc.cpp 
 
C_FileIO.o: ../../../Common/C_FileIO.cpp 
	$(CXX) $(CFLAGSX) ../../../Common/C_FileIO.cpp 
 
CommandLineParser.o: ../../../Common/CommandLineParser.cpp 
	$(CXX) $(CFLAGSX) ../../../Common/CommandLineParser.cpp 
 
CRC.o: ../../../Common/CRC.cpp 
	$(CXX) $(CFLAGSX) ../../../Common/CRC.cpp 
 
MyWindows.o: ../../../Common/MyWindows.cpp 
	$(CXX) $(CFLAGSX) ../../../Common/MyWindows.cpp 
 
String.o: ../../../Common/String.cpp 
	$(CXX) $(CFLAGSX) ../../../Common/String.cpp 
 
StringConvert.o: ../../../Common/StringConvert.cpp 
	$(CXX) $(CFLAGSX) ../../../Common/StringConvert.cpp 
 
StringToInt.o: ../../../Common/StringToInt.cpp 
	$(CXX) $(CFLAGSX) ../../../Common/StringToInt.cpp 
 
Vector.o: ../../../Common/Vector.cpp 
	$(CXX) $(CFLAGSX) ../../../Common/Vector.cpp 
 
clean: 
	-$(RM) $(PROG) $(OBJS) 
 
  