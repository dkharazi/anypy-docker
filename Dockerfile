FROM jupyter/datascience-notebook:f646d2b2a3af
USER root
WORKDIR /home/jovyan/
COPY requirements.txt /home/jovyan/

EXPOSE 80
EXPOSE 8888

RUN pip install -r /home/jovyan/requirements.txt
RUN git clone https://github.com/dkharazi/anfpy.git

CMD jupyter notebook --allow-root
