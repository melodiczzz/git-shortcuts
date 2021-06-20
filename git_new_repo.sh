git init
git add .
git commit -m "$1"
REPO=$(curl -u USER https://api.github.com/user/repos -d '{"name":"'"$2"'","private":false}')
git remote add origin $REPO
git branch -m master main
git push -u origin main