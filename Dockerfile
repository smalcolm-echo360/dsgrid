from jpetazzo/dind
run apt-get update
run apt-get install -y -q python2.7 python2.7-dev gcc openssl
run apt-get install -y -q curl wget
run curl https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py | python
run curl https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python
#add ./ /dsgrid
#run ["python", "/dsgrid/setup.py", "install"]
run ["pip", "install", "dsgrid"]
