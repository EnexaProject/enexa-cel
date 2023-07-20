From python:3.9.12

RUN apt install git
RUN apt install wget
RUN apt install unzip
RUN git clone https://github.com/dice-group/DRILL_RAKI 


# Install requirements
RUN cd DRILL_RAKI && wget --no-check-certificate --content-disposition https://github.com/dice-group/Ontolearn/archive/refs/tags/0.5.1.zip && unzip Ontolearn-0.5.1.zip && pip3 install -e ./Ontolearn-0.5.1/

WORKDIR DRILL_RAKI

# Will generate "Log/*/DrillHeuristic_averaging.pth"
CMD python drill_train.py --path_knowledge_base "$KG" --path_knowledge_base_embeddings "$KGE" --num_episode 2 --min_num_concepts 2 --num_of_randomly_created_problems_per_concept 1 --relearn_ratio 2 && mv Log/*/DrillHeuristic_averaging.pth /data/output
