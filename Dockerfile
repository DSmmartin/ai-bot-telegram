FROM continuumio/miniconda3:latest

RUN apt-get update

RUN conda update --all && conda update conda

RUN mkdir /home/work_dir
RUN git clone -b v1.3.0 https://github.com/facebookresearch/ParlAI.git /home/work_dir/parlai

COPY conda.yml /home/work_dir
RUN conda env create -f /home/work_dir/conda.yml

ENV CONDANAME "ai-bot-telegram"
ENV CONDATYPE "miniconda"

RUN echo "source activate $CONDANAME" > ~/.bashrc
ENV PATH /opt/$CONDATYPE/envs/$CONDANAME/bin:$PATH

RUN cd /home/work_dir/parlai && python setup.py develop
