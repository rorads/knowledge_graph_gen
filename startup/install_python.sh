sudo DEBIAN_FRONTEND=noninteractive apt install -y python3-pip

pip3 install -r requirements.txt

python3 -m spacy download en_core_web_sm