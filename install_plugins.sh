echo "Accept plugin"
git clone https://github.com/stefanzugal/accept-plugin.git accept

echo "Clipboard image paste"
git clone https://github.com/peclik/clipboard_image_paste.git

echo "My Projects plugin"
git clone https://github.com/peelman/my_projects.git

echo "Progressive Projects List plugin"
git clone https://github.com/stgeneral/redmine-progressive-projects-list.git progressive_projects_list

echo "Redmine Select2 Plugin"
git clone https://github.com/Undev/redmine__select2.git redmine__select2

echo "Redmine Backlogs"
git clone https://github.com/AlexDAlexeev/redmine_backlogs.git

echo "Redmine Banner plugin"
git clone https://github.com/akiko-pusu/redmine_banner.git

echo "Redmine Checklist"
git clone https://github.com/RCRM/redmine_checklists.git

echo "Redmine Close Button"
git clone https://github.com/Undev/redmine_close_button.git

echo "Integrador 0800Net"
git clone https://github.com/ebaptistella/integrator0800.git

echo "Gamification plugin"
git clone git://github.com/mauricio-camayo/redmine_gamification_plugin

echo "Redmine Graphs plugin"
git clone https://github.com/bradbeattie/redmine-graphs-plugin.git redmine_graphs

echo "Redmine Hotkeys Js plugin"		
git clone https://github.com/sasha-ch/redmine_hotkeys_js.git

echo "Redmine Issue Badge plugin"
git clone https://github.com/akiko-pusu/redmine_issue_badge.git

echo "Redmine issue completion"
git clone https://github.com/insspb/redmine_issue_completion.git

echo "Redmine Issue Evm plugin"
git clone https://github.com/momibun926/redmine_issue_evm.git

echo "Redmine Issue Favicon plugin"
hg clone https://bitbucket.org/akiko_pusu/redmine_issue_favicon

echo "Redmine Issues Tree plugin"
git clone https://github.com/Loriowar/redmine_issues_tree.git

echo "Redmine jsToolbar Extension"
git clone https://github.com/tleish/redmine_jstoolbar_ext.git

echo "Redmine jsToolbar Buttons Extension"
git clone https://github.com/tleish/redmine_jstoolbar_ext_buttons.git

echo "Ext CodeRay"
git clone https://github.com/tleish/redmine_jstoolbar_ext_coderay

echo "Redmine Lightbox 2"
git clone https://github.com/paginagmbh/redmine_lightbox2.git

echo "Redmine Login Audit plugin"
git clone https://github.com/martin-denizet/redmine_login_audit.git

echo "Redmine (Monitoring & Controlling | Monitoramento & Controle)"
git clone http://github.com/alexmonteiro/Redmine-Monitoring-Controlling.git redmine_monitoring_controlling

echo "Redmine Pivot Table plugin"
git clone https://github.com/deecay/redmine_pivot_table.git

echo "Redmine Q&A Plugin"
git clone https://github.com/RCRM/redmine_questions.git

echo "Redmine Agile"
git clone https://github.com/RCRM/redmine_agile.git

echo "Redmine People"
git clone https://github.com/RCRM/redmine_people.git

echo "Revision Branches"
git clone https://github.com/tleish/redmine_revision_branches.git

echo "Redmine Scrum Cards plugin"
git clone https://github.com/echoes-tech/redmine_scrum_cards.git

echo "Redmine Spent Time plugin"
git clone https://github.com/eyp/redmine_spent_time.git

echo "Redmine Sticky Messages plugin"
git clone https://github.com/jongha/redmine_sticky_messages.git

echo "Tab Plugin"
git clone git://github.com/jamtur01/redmine_tab.git

echo "Redmine Tags"
git clone https://github.com/ixti/redmine_tags.git

echo "Redmine Spent Time plugin"
git clone https://github.com/arkhitech/redmine_timesheet_plugin.git

echo "Redmine Workflow Enhancements"
git clone https://github.com/dr-itz/redmine_workflow_enhancements.git

echo "Redmine Zen Edit plugin"
git clone https://github.com/RCRM/redmine_zenedit.git

echo "Redrisk plugin"
git clone https://github.com/rolesoftware/redrisk.git

echo "Release Logs plugin"
git clone https://github.com/iridakos/release_logs.git

echo "Sidebar Hide Plugin"
git clone https://github.com/bdemirkir/sidebar_hide.git

echo "Simple Author Change plugin"
git clone https://github.com/staskie/simple_author_change.git

echo "Timelog Timer plugin"
git clone https://github.com/behigh/redmine_timelog_timer.git timelog_timer

echo "Redmine Mentions"
git clone https://github.com/arkhitech/redmine_mentions.git

echo "Stuff To Do"
git clone https://github.com/Undev/redmine-stuff-to-do-plugin.git stuff_to_do_plugin

echo "Redmine Emoji Button"
git clone https://github.com/paginagmbh/redmine_emojibutton.git
cd redmine_emojibutton 
bundle install
cd ..

cd..
echo "Finalizado a instalação de plugins"
echo ""

echo "---INICIANDO bundle install test---"
bundle install --without development test

echo "Rake Emoji Imagens"
bundle exec rake emoji

echo "Executando migrations de todos os plugins"
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
