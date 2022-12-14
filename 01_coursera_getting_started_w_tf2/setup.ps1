################################################
# activate the virtual environment
# if venv does not exist - create it

if (-NOT (Test-Path '.\venv\Scripts\activate' -PathType Leaf)) {
    "did not find venv\Scripts\activate - creating now..."

    # confirm at least we have python with pip
    python -m pip --version

    # create empty venv
    python -m venv venv
    }

# activate the venv
.\venv\Scripts\activate

# ensure pip, setuptools and wheels are up to date
python -m pip install --upgrade pip setuptools wheel

# get the libraries specified in requirements.txt
pip install -r requirements.txt
pip list

################################################
# add current directory to PATH (so libraries can be found)

$Env:PYTHONPATH=''

$Env:PYTHONPATH=$ENV:PYTHONPATH + $PSScriptRoot
$Env:PYTHONPATH=$ENV:PYTHONPATH + ';'

#################################################
# to start ...
" "
"next step:"
"jupyter notebook"
