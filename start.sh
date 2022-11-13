if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Hackermanker/Autofilter-bot.git /Autofilter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Autofilter-bot
fi
cd /Autofilter-bot
pip3 install -U -r requirements.txt
echo "Starting Autofilter-bot...."
python3 bot.py
