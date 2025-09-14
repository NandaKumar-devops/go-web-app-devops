#eove old AWS CLI v1
sudo rm -rf /usr/local/aws-cli

# Download latest AWS CLI v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip and overwrite existing files
unzip -o awscliv2.zip

# Install AWS CLI v2
sudo ./aws/install

# Verify installation
aws --version

# Remove old kubeconfig
rm -f ~/.kube/config

# Regenerate kubeconfig for EKS cluster
aws eks --region us-east-1 update-kubeconfig --name demo-cluster

# Test kubectl
kubectl get nodes

