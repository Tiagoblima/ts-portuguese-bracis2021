ssh u63074@login-2
pip install nltk
pip install openNMT-py
pip install numpy==1.20.0
cd ts-corpus-mt/ || exit
mkdir "glove_dir"
wget -O glove_s300.zip http://143.107.183.175:22980/download.php?file=embeddings/glove/glove_s300.zip
unzip glove_s300.zip -d "glove_dir"
python -O experiment_setup.py --model brnn --embedding
#python experiment_setup.py --model transformer