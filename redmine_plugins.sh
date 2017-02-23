echo "Atualizar/Upgrade do SO"
apt-get update && sudo apt-get upgrade

echo "Instalando o Build-Essential"
apt-get install build-essential

echo "Instalando o libstdc++6"
apt-get install libstdc++6

cd plugins
echo "Issue Badge"
git clone https://github.com/akiko-pusu/redmine_issue_badge.git redmine_issue_badge

echo "Issue Favicon"
hg clone https://bitbucket.org/akiko_pusu/redmine_issue_favicon 

echo "Redmine Issue Templates"
git clone https://github.com/akiko-pusu/redmine_issue_templates.git redmine_issue_templates

echo "Redmine LightBox"
git clone https://github.com/paginagmbh/redmine_lightbox2.git

echo "Progressive Projects"
git clone https://github.com/stgeneral/redmine-progressive-projects-list.git progressive_projects_list

echo "Spent Time"
git clone https://github.com/eyp/redmine_spent_time.git

echo "Integração 0800Net e Redmine"
git clone https://github.com/ebaptistella/integrator0800.git

echo "Editor de Texto"
git clone https://github.com/a-ono/redmine_ckeditor.git redmine_ckeditor

cd ..
echo "Finalizado a instalação de plugins"
echo ""

echo "Atualizando plugins existentes"
echo ""

cd plugins
echo "Atualizando - Issue Badge"
cd redmine_issue_badge
git pull
cd ..

echo "Atualizando - Issue Favicon"
cd redmine_issue_favicon 
hg pull
cd ..

echo "Atualizando - Redmine Issue Templates"
cd redmine_issue_templates
git pull
cd ..

echo "Atualizando - Redmine LightBox"
cd redmine_lightbox2
git pull
cd ..

echo "Atualizando - Progressive Projects"
cd progressive_projects_list
git pull
cd ..

echo "Atualizando - Spent Time"
cd redmine_spent_time
git pull
cd ..

echo "Atualizando - Integração 0800Net e Redmine"
cd integrator0800
git pull
cd ..

echo "Atualizando - Editor de Texto"
cd redmine_ckeditor
git pull
cd ..

echo "Feito as atualizacoes"
echo ""

cd ..
echo "---INICIANDO bundle install test---"
bundle install --without development test

echo "Executando migrations de todos os plugins"
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
