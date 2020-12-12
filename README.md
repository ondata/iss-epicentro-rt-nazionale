# Automatic tracker of ISS R script for Rt calculation updates (unofficial)

The Italian Institute for Health ([ISS](https://www.iss.it/), Istituto Italiano di Sanità) collects and produces a large amount of official data about COVID-19 pandemic in Italy.
You can access them on the official [Epicentro website](https://www.epicentro.iss.it/coronavirus/sars-cov-2-dashboard), but mostly in the form of `pdf` or interactive dashboard, not as raw data.

Rt index is one of the most important metric to track national and regional pandemic status and ISS checks it every week to define the risk level of Italian regions.
Starting from 9 December 2020 you can find code and input data used by ISS to calculate Rt values in the form of a downloadable `zip` file ([source](https://www.epicentro.iss.it/coronavirus/sars-cov-2-sorveglianza-dati)),
but without versioning.

This repository automatically checks via [Github Actions](https://github.com/ondata/iss-epicentro-rt-nazionale/actions)
the content of [this ISS zip file](https://www.epicentro.iss.it/coronavirus/open-data/calcolo_rt_italia.zip) every day at 2am UTC
and stores changes as commits.

You can run the R script your own using the provided Dockerfile:

- Build image: `docker build -t iss-epicentro-rt-nazionale:dev .`
- Run container: `docker run -v $PWD:/opt iss-epicentro-rt-nazionale:dev`
- View results in `Rplots.pdf` file

