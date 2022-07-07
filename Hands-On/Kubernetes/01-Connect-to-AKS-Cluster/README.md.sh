AKS_NAME="aksatin"
AKS_RG="rgaksatin"

#- Login to Azure (If Required)
az login --use-device-code
az account list
az account set --subscription "SUBSCRIPTION_ID"

#- Connect to AKS (If Required)
az aks get-credentials --resource-group $AKS_RG --name $AKS_NAME --admin --overwrite-existing

#sudo snap install kubectl --classic

# Get all my pods
kubectl get pods