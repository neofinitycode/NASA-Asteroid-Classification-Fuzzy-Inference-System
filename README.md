# Nasa-Asteroid-Classification-using-Fuzzy-Logic

NASA Asteroid Classification on the  <a href="https://www.kaggle.com/datasets/shrutimehta/nasa-asteroids-classification">NASA Asteroids Dataset</a> from Kaggle.
* Genetic Algorithm is used for feature selection. 
* Data is then descritized using pandas cut function into bins.
* Decision trees are used for the rules generation.
* Rules generated are used in the Fuzzy Inference System.
* Asteroids are classified as hazardous or non-hazardous by the Fuzzy Inference System.

# Feature Selection Using GA
Using Genetic Algorithm to select features that are most relevant for classification.

# Discretization
After features selected by genetic algorithm, continuous values are dicretized into range values using pandas cut function into bins and encoded into class variables.

# Rules Generation
Generating Rules from Discretized+Encoded data optimized using Genetic Feature Selections. Decision Tree Classifier is used to generate rules in text format with distinct classes based on probability, number of samples and gini index to measure how impure the partitions are.

# Fuzzy Inference System
Rules along with data are fed into Fuzzy Inference System, where trapezoidal function is used as membership function for fuzzification and centrold method is used for defuzzification. Accuracy of 90.5% is achieved.
