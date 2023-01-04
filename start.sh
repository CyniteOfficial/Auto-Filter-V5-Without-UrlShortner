if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Cyniteofficial/Auto-Filter-V5-Without-UrlShortner.git /Auto-Filter-V5-Without-UrlShortner
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-V5-Without-UrlShortner
fi
cd /Auto-Filter-V5
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
