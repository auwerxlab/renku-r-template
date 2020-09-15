
[![GitHub releases](https://img.shields.io/github/v/release/auwerxlab/renku-r-template)](https://github.com/auwerxlab/renku-r-template/releases)
[![License: CC BY-NC 4.0](https://i.creativecommons.org/l/by-nc/4.0/88x31.png)](https://creativecommons.org/licenses/by-nc/4.0/)

# renku-r-template

This is a bare R project template that can be directly imported in [Renku](https://datascience.ch/renku).

## Environment

This is an R project and the ``.Rproj`` file is located in the main directory.

The entire environment required for this project is described in the ``Dockerfile`` located in the main directory. \
It allows to generate a docker image that runs an instance of R Studio server in which the R project can be open.

You can change the R version that will be installed on the docker image by editing the ``FROM`` statement that specifies a base image in the ``Dockerfile``:

```
FROM renku/renkulab:renku0.10.3-r3.6.1-0.6.2
```

A list of available base images can be found at https://hub.docker.com/r/renku/renkulab/tags. \
Chose one with the R version you want. For example, for R 3.6.0, you can chose the *renku0.10.3-r3.6.0-0.6.2* image.

### R dependencies

This project uses the [renv](https://rstudio.github.io/renv/articles/renv.html) R package to manage R packages dependencies. \
The ``renv.lock`` file is located in the main directory.

Renv has been set to install R packages on this project's docker image. \
Therefore, the ``renv/`` directory in the main directory of this sproject has been set as a symbolic link to the renv library located on the docker image. \
The docker image build is set by the ``Dockerfile`` located in the main directory and you can change this behavior by editing the *Install the required R libraries on the docker image* section. Don't forget to also change the ``renv/`` link into a directory.

### Python dependencies

The required python packages can be listed in the ``requirements.txt`` file located in the main directory. \
They will be installed on the docker image with ``pip3`` (see the ``Dockerfile`` in the main directory).

## Importing in Renku

1. Go to `GitLab` -> `New Project` -> `Import Project` -> `Repo by URL`
2. Fill-in the essential fields:
  * Git repository URL: https://github.com/auwerxlab/renku-r-template.git
  * Project name: <your project name>
  * Project slug: <your project slug>
3. Click on `Create Project`.
4. In your new project, update this README.md file with an appropriate description and commit your changes.
  You will find a template for this purpose in the *README.md template* section below. \
  Also consider adding an appropriate license to the project.
5. After completing a first commit, the project interactive environment gets accessible in the Renku UI.

👍 That's it!

## License

This work is licensed under a [Creative Commons Attribution-NonCommercial 4.0 International License](http://creativecommons.org/licenses/by-nc/4.0/).

_________________________
## ⬇️ README.md template ⬇️
_________________________

# *This project title*

## Description

*Description of the project goals, applications and steps.*

## Get this project

```
$ git clone <this_project_url>.git
```

## Environment

This is an R project and the ``.Rproj`` file is located in the main directory.

The entire environment required for this project is described in the ``Dockerfile`` located in the main directory. \
It allows to generate a docker image that runs an instance of R Studio server in which the R project can be open.

You can change the R version that will be installed on the docker image by editing the ``FROM`` statement that specifies a base image in the ``Dockerfile``:

```
FROM renku/renkulab:renku0.10.3-r3.6.1-0.6.2
```

A list of available base images can be found at https://hub.docker.com/r/renku/renkulab/tags. \
Chose one with the R version you want. For example, for R 3.6.0, you can chose the *renku0.10.3-r3.6.0-0.6.2* image.

### R dependencies

This project uses the [renv](https://rstudio.github.io/renv/articles/renv.html) R package to manage R packages dependencies. \
The ``renv.lock`` file is located in the main directory.

Renv has been set to install R packages on this project's docker image. \
Therefore, the ``renv/`` directory in the main directory of this sproject has been set as a symbolic link to the renv library located on the docker image. \
The docker image build is set by the ``Dockerfile`` located in the main directory and you can change this behavior by editing the *Install the required R libraries on the docker image* section. Don't forget to also change the ``renv/`` link into a directory.

### Python dependencies

The required dependencies can be listed in the ``requirements.txt`` file located in the main directory. \
They will be installed on the docker image with ``pip3`` (see the ``Dockerfile`` in the main directory).

### Version control

This project uses Git to track files versions.

## Structure

*Description of the directory tree structure.*

* ``data/``: Contains raw and processed data and metadata, including initial, intermediate data and final data and metadata.
* ``notebooks/``: Contains computational notebooks used to process the data and metadata.
* ``bin/``: Contains executable code.
* ``figs/``: Contains figures.
* ``.renku/``: Contains files used by the Renku platform and its associated ``renku`` python package.

## Content

*Description of the data, metadata and code used in this project. For example:*

* **Data:** *How are data organized and used in this project? What is their source?*
* **Metadata:** *How are metadata organized and used in this project? What is their source?*
* **Code:** *How is the code organized and used in this project?*

## Related studies

*Reference and description to any associated study. For example:*

* **Study title**
    * **Principal investigator:** *Name, contact and affiliation of the principal investigator.*
    * **Associated funding:** *Reference to any funding.*
    * **Associated publications:** *Links to any associated publications.*

## Contributors

*Names, contacts, affiliations and respective contributions of the project authors.*

## Methods

*Description of any method associated to the code or datasets used in the project, any related ontologies and external references.*

## License

*Mention of licenses associated with the project and/or part of the project.*

## Resources

* This project is based on the following template: https://github.com/auwerxlab/renku-r-template.git v1.0.1
