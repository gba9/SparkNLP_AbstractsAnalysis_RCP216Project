## Background 
The data were collected as part of a project to analyze data related to electroencephalography (EEG). This technique enables the non-invasive recording brain activity using electrodes placed on the skull. It is used in particular in the early phases of clinical trials on healthy volunteers, to determine the effect of new of new drugs on the human brain. The overall aim of the project was to gain an overview of the pharmacological effects of numerous drugs and molecules published in the scientific literature, as a basis for comparison with new molecules tested in clinical research.
In parallel with carefully selected smaller-scale data collection and analysis scale, we have initiated a large-scale collection of information from scientific articles scientific articles on this technique. In particular, we are interested in original scientific articles (excluding reviews or or case studies) dealing with healthy human subjects, between 1990 and the present day (selection with a Boolean query with certain MeSH keywords, and specific filters), and testing one or more active molecules/drugs listed in the TTD (Therapeutic Target Database, https://idrblab.net/ttd/).
To achieve this, we have developed a program that performs a cross-search using the Pubchem identifier or the molecule name in the TTD database, and the articles indexed on using a pipeline combining the Elink-ESearch-EFetch EUtils made available
provided by NCBI.
The steps taken to collect the articles are summarized in Figure 1. In total, a corpus of 2101 article abstracts was compiled in November 2024 and will be explored in the present project. For each article, we have the following information (unique_abstracts_dates.csv file):
- Title
- Abstract
- DOI unique identifier
- List of MeSH keywords
- List of drugs/molecules mentioned
- Year of publication

<img width="1080" alt="image" src="https://github.com/user-attachments/assets/aaf7e367-b5f6-4b41-86de-d00752659f28" />

## Contents
- unique_abstracts_dates.csv : data source file containing the +2000 abstracts
- Rapport : report of the project in french for the RCP216 course: "Big data mining and visualisation"
- Annexes : supplementary figures
- Classification/ : jupyter notebook for the embeddings and classification of abstracts, using 3 different methods.
- Clustering_analysis/ : jupyter notebooks (and 1 R script) for the post-hoc analysis of the clusters obtained
- Classification_results/: location of the output files after running the classification scripts.
