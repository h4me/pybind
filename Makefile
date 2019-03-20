CC=g++ -Wall -std=c++0x




prepare:
	git clone https://github.com/pybind/pybind11
	sudo apt-get install  python3-distutils
	sudo apt-get  install python3-testresources
	sudo /usr/bin/python3.6 -m pip install pytest
	sudo apt-get install python3-dev
	cd pybind11 && cmake -DCMAKE_INSTALL_PREFIX=../3party/pybind -DDOWNLOAD_CATCH=1




