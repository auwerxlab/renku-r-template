FROM renku/renkulab-r:4.0.0-renku0.10.4-0.6.3
# see https://github.com/SwissDataScienceCenter/renkulab-docker
# to swap this image for the latest version available

# Uncomment and adapt if code is to be included in the image
# COPY src /code/src

# Uncomment and adapt if your R or python packages require extra linux (ubuntu) software
# e.g. the following installs apt-utils and vim; each pkg on its own line, all lines
# except for the last end with backslash '\' to continue the RUN line
USER root
RUN apt-get -y update && \
  apt-get clean && \
  apt-get install -y --no-install-recommends \
  apt-utils \
    libncurses5-dev \
    libncursesw5-dev \
    parallel \
    libgit2-dev \
    tk-dev

# Add user to the sudoers
RUN adduser ${NB_USER} sudo && \
    echo "${NB_USER} ALL=(ALL:ALL) ALL" >> /etc/sudoers
USER ${NB_USER}

# install the R dependencies
COPY install.R /tmp/
COPY renv.lock /home/rstudio/renv.lock
RUN R -f /tmp/install.R

## Clean up the /home/rstudio directory to avoid confusion in nested R projects
RUN rm /home/rstudio/.Rprofile; rm /home/rstudio/renv.lock

# install the python dependencies
COPY requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt

