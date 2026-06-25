# Code for Master Thesis on REMES-EU with hetereogeneous households and Gini cap
This code base includes two main folders:

(1) **Household Splitting:** contains the optimization model described in subsection 5.2.2 of the Master thesis, where households are split. The folder includes data used, supporting files, and the optimization model is found as _splitting_of_household.gms_. In addition, a folder named CombineSAM contains the file _CombineHouseholdSplitWithSAM.gms_ which is used to combine the output from the optimization model into the SAM format which can be used directly in REMES-EU.

(2) **REMES-EU**: contains the version of REMES-EU with heterogeneous households and the equity-constrained counterfactual. The main file is _REMES_base_.gms, which is what pulls all other relevant files and is where the MultiFutures Great Mindshift paradigm is quantified. The MPSGE model is _REMES_MPSGE_alt.gms_ which is the CGE model in the MCP format. _growth_table.gms_ and _InputParameters.gms_ are the main supporting files with initalization parameters. _EuroSAM15Split.gdx_ is the base year SAM, which is the result of the splitting routine. 
