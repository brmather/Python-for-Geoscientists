ARG FROMIMG_ARG=brmather/docker-hons-pye:2019.04.13
FROM ${FROMIMG_ARG}

USER jovyan

WORKDIR /home/jovyan

# expose notebook port server port
EXPOSE 8888

# launch notebook
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--NotebookApp.token='' ", "--NotebookApp.default_url=/tree/0-StartHere.ipynb"]

