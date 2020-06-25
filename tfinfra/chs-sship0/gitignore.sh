#! /bin/bash -x

# ignore state files - sometimes contain dangerours credentials in the clear/clear-text

echo "terraform.tfstate*" > .gitignore
echo ".terraform/" >> .gitignore
git add .gitignore
git commit -m "Adding .gitignore file"
