echo Copyleft 2019 Mercode - Protected by GPLv3 certificate.
echo Stashing local changes...
git reset --hard origin/master
git pull -f origin master
npm install --package-lock-only --no-package-lock pug
pug -w ./ -o ./os.mercode.org
pug -w ./tr -o ./os.mercode.org/tr
cp -fpr ./os.mercode.org /var/www
echo Purging Apache2...
service apache2 reload
service apache2 restart
service apache2 reload
echo Done!
