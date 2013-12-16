# Hacking INFO: In Progress

## Ubuntu
sudo apt-get install python-pip

## Contributing to pypi
Add ~/.pypirc
```
[distutils]
index-servers=
    pypi
    test

[test]
repository = https://testpypi.python.org/pypi
username = richard
password = <your password goes here>

[pypi]
repository = http://pypi.python.org/pypi
username = richard
password = <your password goes here>
```

# Test upload
python setup.py upload -r https://testpypi.python.org/pypi