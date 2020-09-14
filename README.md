# renku-r-template

This is a bare R project template that can be directly imported in [Renku](https://datascience.ch/renku).

## Environment

This is an R project and the ``.Rproj`` file is located in the main directory.

The entire environment required for this project is described in the ``Dockerfile`` located in the main directory.
It allows to generate a docker image that runs an instance of R Studio server in which the R project can be open.

### R dependencies

This project uses the [renv](https://rstudio.github.io/renv/articles/renv.html) R package to manage R packages dependencies. The ``renv.lock`` file is located in the main directory.

### Python dependencies

The required dependencies are listed in the ``requirements.txt`` file located in the main directory.

## Importing in Renku

1. Go to `GitLab` -> `New Project` -> `Import Project` -> `Repo by URL`
2. Fill-in the essential fields:
  - Git repository URL: https://github.com/auwerxlab/renku-r-template.git
  - Project name: <your project name>
  - Project slug: <your project slug>
3. Click on `Create Project`.
4. In your new project, update this README.md file with an appropriate description and commit your changes. You will find below a template for this.
5. After completing a first commit, the project interactive environment gets accessible in the Renku UI.

👍 That's it!

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

The entire environment required for this project is described in the ``Dockerfile`` located in the main directory.
It allows to generate a docker image that runs an instance of R Studio server in which the R project can be open.

### R dependencies

This project uses the [renv](https://rstudio.github.io/renv/articles/renv.html) R package to manage R packages dependencies. The ``renv.lock`` file is located in the main directory.

### Python dependencies

The required dependencies are listed in the ``requirements.txt`` file located in the main directory.

### Version control

This project uses Git and the git-lfs module to track files versions.

## Structure

- ``data/``: Contains raw and processed data and metadata, including initial, intermediate data and final data and metadata.
- ``notebooks/``: Contains computational notebooks used to process the data and metadata.
- ``bin/``: Contains executable code.
- ``figs/``: Contains figures.
- ``.renku/``: Contains files used by the Renku platform and its associated ``renku`` python package.

## Content

*Description of the data, metadata and code used in this project. For example:*

- **Data:** *How are data organized and used in this project? What is their source?*
- **Metadata:** *How are metadata organized and used in this project? What is their source?*
- **Code:** *How is the code organized and used in this project?*

## Related studies

*Reference and description to any associated study. For example:*

- **Study X**
    - **Principal investigator:** *Name, contact and affiliation of the principal investigator.*
    - **Associated funding:** *Reference to any funding.*
    - **Associated publications:** *Links to any associated publications.*

## Contributors

*Names, contacts, affiliations and respective contributions of the project authors.*

## Methods

*Description of any method associated to the code or datasets used in the project, any related ontologies and external references.*

## License

*Mention of licenses associated with the project and/or part of the project.*

## Resources

- This project is based on the following template: https://github.com/auwerxlab/renku-r-template.git
