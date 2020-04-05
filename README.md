# PCA_Cancer_Data
This assignment involved using principal component analysis to figure out if a cell sample had been labeled incorrectly.

The assignment was as follows:

Dear Data Team,

We need your help! Our labs currently have a contract with MIT researchers to measure gene expressions from 53 total samples of DNA for Leukemia research with our microarray technology. We have never been involved in analyzing the data from these types of experiments, our primary goal is merely to create the numerical data for the researchers. 

In this project, we were given 37 labeled samples from patients with 3 different types of Leukemia known before hand. The remaining 16 samples were not labeled by type.

Unfortunately, when our undergraduate interns finished the microarray processing, we found we had 38 labeled samples and 15 unlabeled samples. Nobody has any idea what happened, and now we have to figure out if one of these 38 labeled samples is incorrectly labeled. Since there are 3 types of Leukemia in both collections, there is a 2/3 chance the extra sample is labeled incorrectly.

Rather than profiling every single sample and matching it with an original (this is both expensive and extremely time consuming) we are hoping you can use some magical analytics to narrow in on a few specific samples that look unusual and might be tested first. 

The attached dataset contains the numerical microarray data - 5000 gene expression levels for each sample. These gene expressions are all measured on the same scale of expression, with a value of 20 representing no expression. You may find genes that look exactly the same across all samples (the 24th gene, for example, is highly unlikely to be expressed in any sample) The last column provides the type of Leukemia:

	1. AML (Acute Myeloid)
	2. ALL-B (Acute Lymphoblastic B-Cell)
	3. ALL-T (Acute Lymphoblastic T-Cell)

We need a response from you by end of business day September 15th at the latest because the profiling will take us two weeks and the project delivery date is scheduled for October 7th. If there is nothing you can do, we completely understand - this is just a shot in the dark.


Thank you,

Olive Peceay
Senior Researcher
Genomics Research Lab
EpiCenter Enterprises
(919) 867-5309