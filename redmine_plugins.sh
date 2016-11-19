cd plugins
echo "Issue Badge"
git clone https://github.com/akiko-pusu/redmine_issue_badge.git redmine_issue_badge

echo "Issue Favicon"
hg clone https://bitbucket.org/akiko_pusu/redmine_issue_favicon 

echo "Redmine Issue Templates"
git clone https://github.com/akiko-pusu/redmine_issue_templates.git redmine_issue_templates

echo "Redmine LightBox"
git clone https://github.com/paginagmbh/redmine_lightbox2.git

echo "Finalizado a instalação de plugins"
echo ""

cd ..

echo "---INICIANDO bundle install test---"
bundle install --without development test

echo "---INICIANDO Rake Production---"
rake redmine:plugins:migrate RAILS_ENV=production
