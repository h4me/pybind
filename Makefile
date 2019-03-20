F=-std=c++0x -fPIC `python3.6 -m pybind11 --includes` example.cpp -o example`python3-config --extension-suffix`
CC=g++ -Wall -shared -std=c++0x -fPIC `python3.6 -m pybind11 --includes` 

main: example.cpp
	$(CC) example.cpp -o example`python3-config --extension-suffix` 


prepare:
	git clone https://github.com/pybind/pybind11
	sudo apt-get install  python3-distutils
	sudo apt-get  install python3-testresources
	sudo /usr/bin/python3.6 -m pip install pytest
	sudo apt-get install python3-dev
	cd pybind11 && cmake -DCMAKE_INSTALL_PREFIX=../3party/pybind -DDOWNLOAD_CATCH=1


###############################
# python3.6 -m pip install ./pybind11/
##


