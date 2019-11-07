# Docker Jupyter Notebook Scientific Python Stack

https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook

# Modified

- Add pandas-datareader

# Run with

- ``docker build -t cudocker:latest .``
- ``docker run -p 8888:8888 -v ~/Documents/Sync/ml-pjupyter-stuff/src:/home/jovyan/work --rm --name c-pjupyter cudocker``
