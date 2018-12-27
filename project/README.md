# Placeholder README

This is a simple placeholder as we need the `project` folder for building the VM using `vagrant`. Will be updated in the future.

### Installing Miniconda and Bioconda Environment

To simplify the setup we're using Bioconda for installing all required packages. After you setup the VM and installed the Guest Additions you can login as user `ubuntu` and install the latest version of [Miniconda](https://conda.io/miniconda.html).

```bash
curl -o ~/miniconda.sh -O  https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x ~/miniconda.sh
~/miniconda.sh -b -p ~/miniconda3
rm ~/miniconda.sh

echo ". $HOME/miniconda3/etc/profile.d/conda.sh" >> ~/.bashrc && source ~/.bashrc
conda env create -f /project/tools/conda/env.yml
```
