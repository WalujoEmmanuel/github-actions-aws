echo "Kill all the running PM2 actions"
sudo pm2 kill

echo "Jump to app folder"
cd /home/ubuntu/github-actions-aws

echo "Update app from Git"
git pull

echo "Install app dependencies"
sudo rm -rf node_modules package-lock.json
sudo npm install

echo "Run your app"
sudo npm run dev

echo "Run new PM2 action"
sudo pm2 start ./src/index.js