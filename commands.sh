# Generate ssh key to add to Github
ssh-keygen

# Clone code to cloudshell
git clone git@github.com:hadzung/azurecloud-proj-2.git
#navigate to soucecode folder
cd azurecloud-proj-2
#Run application locally
python3 -m venv ~/.myvenv
source ~/.myvenv/bin/activate
make install
python -m flask run

#Create Azure webapp service command:  
az webapp up --name udacity-azure-project2 --resource-group Azuredevops --sku B1 --logs --runtime "PYTHON:3.10"

#View live log stream
az webapp log tail --name udacity-azure-project2 --resource-group Azuredevops

#Running Prediction
./make_predict_azure_app.sh 