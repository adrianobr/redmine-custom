cd plugins

git clone https://github.com/akiko-pusu/redmine_issue_badge.git redmine_issue_badge
hg clone https://bitbucket.org/akiko_pusu/redmine_issue_favicon 
git clone https://github.com/akiko-pusu/redmine_issue_templates.git redmine_issue_templates
git clone https://github.com/paginagmbh/redmine_lightbox2.git

cd ..

rake redmine:plugins:migrate RAILS_ENV=production
