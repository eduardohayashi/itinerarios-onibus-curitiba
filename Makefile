.PHONY: all

all: extract_lines search_pattern dilate

extract_lines: extract_lines.cpp
	g++ -oextract_lines extract_lines.cpp -lopencv_highgui -lopencv_imgproc -lopencv_core
search_pattern: search_pattern.cpp
	g++ -osearch_pattern search_pattern.cpp -lopencv_core -lopencv_imgproc -lopencv_highgui
dilate: dilate.cpp
	g++ -odilate dilate.cpp -lopencv_core -lopencv_imgproc -lopencv_highgui
