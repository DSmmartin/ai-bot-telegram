FROM continuumio/anaconda3:latest

RUN apt-get update

RUN conda update --all && conda update conda

RUN git clone https://github.com/facebookresearch/ParlAI.git /home/work_dir/parlai

COPY conda.yml /home/work_dir
RUN conda env create -f /home/work_dir/conda.yml

ENV CONDANAME "ai-bot-telegram"
ENV CONDATYPE "anaconda"

RUN echo "source activate $CONDANAME" > ~/.bashrc
ENV PATH /opt/$CONDATYPE/envs/$CONDANAME/bin:$PATH

COPY entrypoint.sh /home/work_dir/parlai
WORKDIR /home/work_dir/parlai
RUN python setup.py develop

ENTRYPOINT ["bash", "entrypoint.sh"]