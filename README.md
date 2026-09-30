# MICrONS Connectomics — One-Day Workshop (Puget Sound)

MICrONS Workshop produced for University of Puget Sound class NRSC490a, Fall 2026: Advanced Topics in neuroscience. 

This is an introduction to data access, programmatic tools, and general analysis for the MICrONS dataset. For more, see [tutorial.microns-explorer.org](https://tutorial.microns-explorer.org)

## MICrONS dataset tutorial: Functional connectomics spanning multiple areas of mouse visual cortex
Presented by Bethanny Danskin and Kareena Villalobos, Allen Institute/Brain Science.

The MICrONS dataset is a large functional connectomics dataset with dense calcium imaging and electron microscopy based cell reconstruction over one cubic millimeter of mouse visual cortex. All neurons were automatically reconstructed and all synapses detected.
Subsequent proofreading in this volume yielded reconstructions that include complete dendritic trees for all ~70 thousand neurons as well the local and inter-areal axonal projections of a subset of neurons that map up to thousands of cell-to-cell connections per neuron.
Functional measurements and connectivity can be related for ~12 thousand neurons which were coregistered between the calcium and EM volumes.
In this tutorial, we introduce the dataset, as well as both interactive and programmatic tools to analyze it.

The tutorial will contain examples of how to access: annotations, connectivity, segmentation, and neuron-skeletons.

[Presentation Slides](https://drive.google.com/file/d/1vaTWfDSAVFdEyEhG5fPCP3Gg7nf72GkU/view?usp=sharing)

[Functional connectomics spanning multiple areas of mouse visual cortex](https://www.nature.com/articles/s41586-025-08790-w)


## Modules

1. **Neuroglancer Navigation & Organelles** — get oriented in Neuroglancer; identify nuclei, mitochondria, ER, myelin, and synapses in EM.
2. **Connectivity, Cell Types & Dash Apps** — dendritic spines and synapse location; query cell types and connectivity with the MICrONS Dash Apps; build a 3D chandelier-connectivity render.
3. **Introduction to Coding** — access the same data with Python/CAVEclient in Google Colab, building to a cell-type-sorted connectivity heatmap.

### Neuroglancer Instructions

Further Neuroglancer navigation instructions at [MICrONS Explorer Tools](https://www.microns-explorer.org/ngl-instructions)

### Run the coding notebook

[![](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/bpdanskin/MICrONS_workshop_puget_sound/blob/main/docs/notebooks/microns_data_access_education.ipynb), or locally with `uv run jupyter lab`. 

Either way needs a free CAVE token — see the **Setup & FAQ** page in the site.

## See something weird? Share it!

As you are exploring neuroglancer today, if you see something strange or that you don't understand, consider sharing it to our [**Notes from the Neuropil**](https://bdpedigo.github.io/nftn/) science blog. 

## Further reading relevant to the demonstration

Cell Type Model: [Perisomatic ultrastructure efficiently classifies cells in mouse cortex. Elabaddy et al.](https://www.nature.com/articles/s41586-024-07765-7)

Layer 5 ET Cell Type Paper: [The synaptic architecture of layer 5 thick tufted excitatory neurons in mouse visual cortex. Bodor et al.](https://www.nature.com/articles/s41586-024-07765-7)

Martinotti Cell Type Paper: [Connectomics of predicted Sst transcriptomic types in mouse visual cortex. Gamlin et al.](https://www.nature.com/articles/s41586-025-08805-6)

Data Infrastructure: [CAVE: Connectome Annotation Versioning Engine. Dorkenwald et al.](https://www.nature.com/articles/s41592-024-02426-z)

### Dataset documentation

More complete documentation that includes the above information as well as guides to interacting with meshes, skeletons, and imagery, [can be found online at the MICrONS Tutorial webpages](https://tutorial.microns-explorer.org/).


## Credit

Tutorial material prepared by Bethanny Danskin. 

Adapted from the Allen Institute HIVE [HIVE *Teaching Connectomics* curriculum](https://alleninstitute.github.io/Teaching_Connectomics/). 

Full MICrONs project credits can be found at [MICrONs Explorer](https://www.microns-explorer.org).
