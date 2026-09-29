# MICrONS Connectomics — One-Day Workshop (Puget Sound)

A lean, three-module workshop for exploring the [MICrONS](https://www.microns-explorer.org/) dataset (1 mm³ of mouse visual cortex, EM reconstruction) in a single day, for students who already have a neuroscience background.

It is a stripped-down adaptation of the Allen Institute **HIVE** [*Teaching Connectomics*](https://github.com/AllenInstitute/Teaching_Connectomics) curriculum (written for a multi-week course). This repo diverges completely and is not a fork.

## Modules

1. **Neuroglancer Navigation & Organelles** — get oriented in Neuroglancer; identify nuclei, mitochondria, ER, myelin, and synapses in EM.
2. **Connectivity, Cell Types & Dash Apps** — dendritic spines and synapse location; query cell types and connectivity with the MICrONS Dash Apps; build a 3D chandelier-connectivity render.
3. **Introduction to Coding** — access the same data with Python/CAVEclient in Google Colab, building to a cell-type-sorted connectivity heatmap.

## What's here

- `docs/` — a [Quarto](https://quarto.org) website (HTML only, no PDF): `index.qmd`, `module-1..3.qmd`, `setup.qmd`.
- `docs/notebooks/` — the Colab coding notebook and the one-time CAVE token setup notebook.
- **Client-side answer widgets** — each module has fill-in answer boxes (a Quarto shortcode in `docs/_extensions/answerbox/`). Responses save to the student's browser (`localStorage`); a floating **Download all** button exports them as one Markdown file. No server, no accounts, no backend.
- Neuroglancer scenes and the Dash Apps are hosted by the MICrONS project and referenced by URL — nothing to host here.

## Build the site

Requires [Quarto](https://quarto.org/docs/get-started/) and [uv](https://docs.astral.sh/uv/).

```bash
uv sync                       # install Python deps (for the notebook)
cd docs
quarto preview                # live preview
quarto render                 # build to docs/_site/
```

To publish to GitHub Pages: `quarto publish gh-pages` (from `docs/`).

## Run the coding notebook

Open `docs/notebooks/microns_data_access_education.ipynb` in Google Colab (badge on the Module 3 page), or locally with `uv run jupyter lab`. Either way needs a free CAVE token — see the **Setup & FAQ** page in the site.

## Credit

Adapted from the Allen Institute HIVE *Teaching Connectomics* curriculum. Supported by the NIH BRAIN Initiative (grant UM1NS132253).
