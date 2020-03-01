#!/bin/bash

sudo -s << EOF

echo installing pip3 and pip
echo recommended when installing pip which is already installed in this version of Ubuntu
apt-get update && apt-get install -y python-pip python3-pip ipython3 ipython

echo pip3 dependency installs
pip install setuptools
pip3 install \
setuptools \
gitsome \
pypandoc \
astroid==2.3.3 \
isort==4.3.21 \
lazy-object-proxy==1.4.3 \
matplotlib==3.0.0 \
mccabe==0.6.1 \
nltk==3.4.5 \
numpy==1.15.2 \
pandas==0.25.2 \
py4j==0.10.7 \
pylint==2.4.4 \
pyspark==2.4.4 \
six==1.13.0 \
textblob==0.15.3 \
tweepy==3.8.0 \
typed-ast==1.4.0 \
wordcloud==1.5.0 \
wrapt==1.11.2 \
&& python3 -m textblob.download_corpora

mv /root/nltk_data /home

echo need the line below for ipython3 to work
pip3 install 'prompt-toolkit<2.0.0,>=1.0.15' --force-reinstall

echo 'export PYSPARK_PYTHON=python3' >> /usr/lib/spark/conf/spark-env.sh
echo 'export PYSPARK_DRIVER_PYTHON=ipython3' >> /usr/lib/spark/conf/spark-env.sh

EOF
