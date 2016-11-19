cd public/themes/
"iniciando..."
echo "Circle"
git clone https://github.com/RCRM/circle.git

echo "Gitmike"
git clone https://github.com/makotokw/redmine-theme-gitmike.git gitmike
cd gitmike/images/
mv logo.png logo_bkp.png
wget https://raw.githubusercontent.com/adrianobr/redmine-custom/master/logo.png
cd ..
cd ..

echo "Highrise"
git clone https://github.com/RCRM/highrise.git

echo "A1"
git clone https://github.com/RCRM/a1.git

echo "finalizado!"
