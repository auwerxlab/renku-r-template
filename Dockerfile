FROM renku/renkulab:renku0.10.3-r3.6.1-0.6.2

# Uncomment and adapt if code is to be included in the image
# COPY src /code/src

# Install system requirements
USER root
RUN apt-get -y update && \
  apt-get clean && \
  apt-get install -y --no-install-recommends \
  apt-utils \
  vim \
    libncurses5-dev \
    libncursesw5-dev \
    libxml2-dev \
    parallel \
    libgit2-dev \
    tk-dev \
    zlib1g-dev \
    texlive-full

# Add user to the sudoers
RUN adduser ${NB_USER} sudo && \
    echo "${NB_USER} ALL=(ALL:ALL) ALL" >> /etc/sudoers
USER ${NB_USER}

# Enable R package management with renv:

## Install the renv R library
RUN echo "options(renv.consent = TRUE)" >> /home/rstudio/.Rprofile
RUN Rscript -e "setwd('/home/rstudio'); install.packages('renv', dependencies=TRUE); renv::init(force = TRUE)"

## Install the required R libraries on the docker image
COPY renv.lock /home/rstudio/renv.lock
RUN Rscript -e "setwd('/home/rstudio'); renv::restore(confirm = FALSE)"

## Clean up the /home/rstudio directory to avoid confusion in nested R projects
RUN rm /home/rstudio/.Rprofile; rm /home/rstudio/renv.lock

# install the python dependencies
COPY requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt
