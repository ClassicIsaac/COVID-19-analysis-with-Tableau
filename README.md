## COVID-19 Data Visualization Repository
This repository contains code and visualizations related to COVID-19 data analysis and visualization using Tableau. The dataset includes COVID-19 test and death data obtained from Our World in Data, which is processed and analyzed using Python and PostgreSQL. The repository aims to provide insights into the spread, testing, and mortality rates of COVID-19 across different locations.

## Dataset
The following datasets are included in this repository:
CovidTests.csv: Contains the processed COVID-19 test data.
CovidDeaths.csv: Contains the processed COVID-19 death data.
CovidDeaths_rawdata.xlsx: Contains the unprocessed raw data for COVID-19 deaths.
CovidTests_rawdata.xlsx: Contains the unprocessed raw data for COVID-19 tests.
Code

The repository includes the following code files:
CovidDeath Preprocessing.ipynb: Python code for preprocessing the COVID-19 death data.
CovidTests Preprocessing.ipynb: Python code for preprocessing the COVID-19 test data.
Covid_SQL_Analysis.sql: PostgreSQL code for performing data analysis on the COVID-19 datasets.

## Tableau Visualizations
The repository includes a folder containing various Tableau visualizations created using the processed COVID-19 data. The visualizations provide insights into different aspects of the pandemic, including the total cases vs total deaths, density of new deaths, testing rates, and more. The visualizations included are:

Scatter plot: Total cases vs Total deaths (continent-wise)
Tree map: Density of new deaths by location and dates
Map: Total cases by location
Bar chart: Top N locations with the highest tests
Dashboard: Scatter plot & Bar chart
Dashboard: Tree map & Map

You can also explore the visualizations by visiting my [Tableau Public profile](https://public.tableau.com/app/profile/jesufemi.oresanya). Feel free to follow me to stay updated on the latest visualizations and analyses.

## How to Use
To use this repository, follow these steps:

Clone the repository to your local machine.
Ensure that Python and the required dependencies (e.g., pandas) are installed for running the preprocessing notebooks.
Run the preprocessing notebooks (CovidDeath Preprocessing.ipynb and CovidTests Preprocessing.ipynb) to process the raw data and generate the processed CSV files.
Import the processed CSV files (CovidTests.csv and CovidDeaths.csv) into Tableau to access the cleaned datasets.
Execute the SQL queries in Covid_SQL_Analysis.sql using a PostgreSQL database to perform data analysis on the COVID-19 datasets.
Open the Tableau visualizations provided in the repository's visualization folder to explore the COVID-19 data visually.
Contributions
Contributions to this repository are welcome! If you have any improvements, bug fixes, or additional visualizations related to COVID-19 data, feel free to open a pull request.

## License
This repository is licensed under the MIT License. Feel free to use the code and visualizations as per the license terms.

Please note that the COVID-19 data used in this repository is sourced from Our World in Data (https://ourworldindata.org/coronavirus), and it may have its own licensing and usage restrictions. Ensure compliance with the data source's terms and conditions when using the data.