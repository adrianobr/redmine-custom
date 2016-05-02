"iniciando..."
echo "Circle"
cd circle
git pull
cd ..

echo "Gitmike"
cd gitmike
git pull
cd images
mv logo.png logo_bkp.png
wget https://github.com/adrianobr/redmine-custom/blob/master/logo.png
cd ..
cd ..

echo "Highrise"
cd highrise
git pull
cd ..

echo "A1"
cd a1
git pull
cd ..

echo "finalizado!"
