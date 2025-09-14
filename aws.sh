emove old AWS CLI v1
sudo rm -rf /usr/local/aws-cli

# 2. Download latest AWS CLI v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# 3. Unzip and overwrite existing files
unzip -o awscliv2.zip

# 4. Install AWS CLI v2
sudo ./aws/install

# 5. Verify installation
aws --version
# Should show something like: aws-cli/2.15.0 Python/3.11 Linux/5.15

# 6. Regenerate kubeconfig for your EKS cluster
rm ~/.kube/config
aws eks --region us-east-1 update-kubeconfig --name demo-cluster

# 7. Test kubectl
kubectl get nodes

