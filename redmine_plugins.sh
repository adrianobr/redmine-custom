apt-get update && sudo apt-get upgrade
apt-get install build-essential
apt-get install aptitude
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

echo "Finalizado a instalação de plugins"
echo ""

cd ..

echo "---INICIANDO bundle install test---"
bundle install --without development test

echo "Executando migrations de todos os plugins"
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
