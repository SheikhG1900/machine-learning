pip3 install virtualenv
virtualenv env
call ".\env\Scripts\activate.bat"
set requirements="./Requirements.txt"
pip3 install -r %requirements%
python
