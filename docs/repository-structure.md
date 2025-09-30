# Repository Structure Guide

This document explains every file and folder in your CHI research repository.

## Root Directory Files

### Files You Should Update

**`README.md`**
- **Purpose**: Main project documentation, first thing people see
- **Action**: Replace placeholder text with your project details
- **Why Root**: GitHub displays this automatically on the repository page

**`CITATION.cff`** 
- **Purpose**: Tells others how to cite your work academically
- **Action**: Update with your name, project title, and details
- **Why Root**: GitHub creates a "Cite this repository" button automatically
- **Format**: YAML file following Citation File Format standard
- **Comments**: Use `#` for comments to guide you through filling it out

### Configuration Files (Usually Don't Change)

**`LICENSE`**
- **Purpose**: Legal permissions for your code (MIT License)
- **Action**: Usually leave as-is unless you have specific requirements
- **Why Root**: Standard location, GitHub recognizes it automatically

**`CONTRIBUTING.md`**
- **Purpose**: Guidelines for others contributing to your project
- **Action**: Update if you want specific contribution rules
- **Why Root**: GitHub links to this in issue/PR templates

**`CODE_OF_CONDUCT.md`**
- **Purpose**: Expected behavior for project participants
- **Action**: Usually leave as-is
- **Why Root**: GitHub policy and community standard

**`SECURITY.md`**
- **Purpose**: How to report security issues
- **Action**: Usually leave as-is for student projects
- **Why Root**: GitHub security tab links here

### Git Configuration Files

**`.gitignore`**
- **Purpose**: Tells Git which files to never track
- **Contains**: System files (.DS_Store), Python cache, environment files
- **Why Root**: Git looks for it here
- **Action**: Add project-specific files you don't want in version control

**CHI Research Context**: Essential for protecting sensitive research data and preventing repository bloat. The template includes patterns for participant data, API keys, large datasets, and temporary analysis files. Always review before adding sensitive research materials.

**`.gitattributes`**
- **Purpose**: Git LFS (Large File Storage) configuration
- **Contains**: Rules for handling large binary files (images, data)
- **Why Root**: Git looks for it here
- **Action**: Usually leave as-is

**CHI Research Benefits**: Enables proper version control of large research assets (videos, datasets, model files) without bloating the repository. Critical for multimedia research projects and machine learning work. Requires `git lfs install` during setup.

### Development Environment Files

**`.editorconfig`**
- **Purpose**: Consistent code formatting across different editors
- **Contains**: Indentation, line endings, character encoding rules
- **Why Root**: Most editors look for it here
- **Action**: Usually leave as-is

**CHI Collaboration Value**: Ensures code consistency across research teams. Prevents formatting conflicts when multiple researchers contribute to the same codebase. Supports both individual work and meta-project integration.

**`.vscode/`**
- **Purpose**: VS Code workspace configuration
- **Contains**: Recommended extensions, workspace settings
- **Why Root**: VS Code looks for `.vscode` folder in project root
- **Action**: Customize if you have specific VS Code preferences

**CHI Integration Features**: Pre-configured with extensions for Python research (Pylance, Jupyter), academic writing (LaTeX Workshop), and collaborative development (GitLens). Optimized settings for SRDMPA workflow and reproducible research practices.

## Directories

### Research Content

**`docs/`**
- **Purpose**: Project documentation
- **Contains**: `index.md`, `research-notes/` with weekly logs
- **Use**: High-level documentation, research progression notes

**`references/`**
- **Purpose**: CHI meta-projects and bibliography
- **Contains**: `meta-projects.md` with CHI framework connections
- **Use**: Link your work to broader CHI research initiatives

**`data/`**
- **Purpose**: All data files for your research
- **Structure**: `raw/` (original), `processed/` (cleaned)
- **Use**: Organize your datasets with clear provenance

#### Data Management in CHI Research

Proper data organization is crucial for reproducible research and follows CHI's integration principles:

**Directory Structure**:
- **`raw/`** - Original, immutable data files (never edit these!)
- **`processed/`** - Cleaned, transformed data ready for analysis
- **`external/`** - Third-party datasets and references

**File Organization Guidelines**:
- Document data sources and collection dates
- Use Git LFS for large files (>100MB)
- Include metadata files describing structure and provenance
- Follow ethical guidelines for data handling
- Consider privacy and security requirements

**Integration with Workflows**:
- Raw data → Processing scripts (src/) → Processed data → Analysis (notebooks/)
- Version control processed data generation for reproducibility
- Link data collection to Research Log issues for full provenance

### Code and Analysis

**`src/`**
- **Purpose**: Source code for your research
- **Use**: Python modules, analysis scripts, utilities

#### What Goes in Source Code?

Unlike notebooks (which are for exploration), the `src/` directory contains **reusable, production-quality code**:

**Organization**:
- **`data_processing/`** - Scripts for cleaning and processing raw data
- **`analysis/`** - Statistical analysis functions and algorithms
- **`visualization/`** - Plotting and figure generation modules
- **`utils/`** - Helper functions used across the project

**Best Practices**:
- Write modular, reusable functions
- Include docstrings for all functions
- Follow PEP 8 style guidelines (for Python)
- Import these modules in your notebooks for consistent analysis

**`notebooks/`**
- **Purpose**: Jupyter notebooks for exploration and analysis
- **Use**: Data exploration, prototyping, narrative analysis

#### What are Jupyter Analysis Notebooks?

Jupyter notebooks are **interactive documents** that combine code, visualizations, narrative text, and results in a single file. They're particularly powerful for research because they support the entire analysis workflow from data exploration to publication-ready outputs.

**Key Benefits for CHI Research**:
- **Interactive Computing**: Execute code in cells, see results immediately
- **Narrative + Code Integration**: Markdown explanations alongside analysis code
- **Reproducible Research**: Exact code that generated every result
- **SRDMPA Integration**: Perfect for documenting research phases

**Organization in CHI Template**:
```
notebooks/
├── exploratory/          # Initial data exploration (Speculate/Research phases)
├── analysis/             # Main research analysis (Design/Make phases)  
└── reporting/            # Publication outputs (Publish/Assess phases)
```

**Naming Convention**: Use descriptive names with dates:
- `01_data_exploration_YYYY-MM-DD.ipynb`
- `02_model_development_v1.ipynb`
- `03_results_analysis_final.ipynb`

**Best Practices**:
- Clear markdown documentation between code cells
- Remove debugging code before committing
- Restart and run all cells to verify reproducibility  
- Export to HTML/PDF for sharing with advisors
- Document AI collaboration when tools assist with analysis

**`scripts/`**
- **Purpose**: Utility and automation scripts
- **Contains**: `setup.sh` for initial repository setup
- **Use**: CLI tools, data processing pipelines

#### Understanding Research Scripts

Scripts automate repetitive tasks and create reproducible workflows:

**Common Script Types**:
- **Data Processing**: Clean, transform, and prepare datasets
- **Analysis Automation**: Run analyses across multiple conditions
- **Environment Setup**: Install dependencies, configure tools
- **Report Generation**: Convert notebooks to papers, presentations

**CHI Integration**: Scripts can support all SRDMPA phases:
- **Speculate**: Generate research questions from data exploration
- **Research**: Automate literature searches, data collection
- **Design**: Create experimental protocols, survey instruments
- **Make**: Run experiments, process results, train models
- **Publish**: Generate figures, format papers, create presentations  
- **Assess**: Calculate metrics, perform validation analyses

**Best Practices**: Write modular, well-documented scripts that others can understand and modify. Include error handling and progress indicators for long-running processes.

**`tests/`**
- **Purpose**: Unit tests for your code
- **Use**: Ensure code reliability (even for research!)

#### Why Testing Matters in Research

Research code affects conclusions, so reliability is crucial:

**Testing Benefits**:
- **Reproducibility**: Verify functions work consistently
- **Debugging**: Catch errors before they affect results
- **Collaboration**: Give teammates confidence in shared code
- **Validation**: Ensure analysis functions behave as expected

**CHI Testing Philosophy**: 
- Test critical analysis functions
- Validate data processing pipelines  
- Check statistical calculations
- Verify visualization accuracy
- Document expected behavior

**Getting Started**: Start simple with basic input/output tests for your most important functions. Research code doesn't need 100% coverage, but key calculations should be tested.

**`assets/`**
- **Purpose**: Static files (images, media, etc.)
- **Use**: Figures, logos, presentation materials

#### Managing Research Assets

Assets support communication and documentation:

**Asset Categories**:
- **Figures**: Research plots, diagrams, schematics
- **Media**: Videos, audio recordings, images
- **Presentations**: Slides, posters, infographics
- **Documentation**: PDFs, reference materials

**Organization Strategy**:
- Use descriptive filenames with dates
- Create subdirectories by type or phase
- Include source files (e.g., original plots) when possible
- Document asset provenance and usage rights

**CHI Considerations**: Assets often connect to multiple meta-projects. Tag or organize assets to facilitate cross-project discovery and reuse.

## GitHub-Specific Directories

**`.github/`**
- **Purpose**: GitHub repository configuration and automation
- **Contains**: Issue templates, PR templates, workflows, labels
- **Subdirectories**:
  - `ISSUE_TEMPLATE/` - Forms for creating standardized issues
  - `workflows/` - GitHub Actions automation
  - `labels.yml` - Repository label definitions

#### Understanding GitHub Automation

The `.github/` directory contains automation that supports CHI methodology:

**Issue Templates** (`.github/ISSUE_TEMPLATE/`):
- **Milestone Template**: Define concrete deliverables with acceptance criteria
- **Research Log Template**: Weekly SRDMPA phase documentation
- **AI Collaboration Report**: Track and evaluate AI partnership
- **Bug Report**: Standard technical issue reporting

**GitHub Actions** (`.github/workflows/`):
- **Setup Project Board**: Automatically creates Kanban board for new repos
- **Project Board Automation**: Moves issues through workflow states
- **Label Sync**: Maintains consistent CHI research phase labels
- **Meta-Project Integration**: Links completed work to CHI initiatives
- **Markdown Linting**: Ensures documentation quality

**Labels System** (`.github/labels.yml`):
- **SRDMPA Phases**: `speculate`, `research`, `design`, `make`, `publish`, `assess`
- **Activity Types**: `milestone`, `research-log`, `ai-collaboration`, `bug`
- **Workflow States**: Handled by Kanban board columns, not labels

**How This Supports CHI Research**:
- Structured issue creation guides proper methodology
- Automated project management reduces administrative overhead
- Consistent labeling enables cross-project analysis
- Integration with CHI meta-projects maintains ecosystem connections

## Why This Structure?

1. **Standards Compliance**: Follows GitHub and academic conventions
2. **Tool Integration**: Works with VS Code, Git, package managers
3. **Discoverability**: Other researchers can easily understand your work
4. **CHI Methodology**: Supports SRDMPA research cycle
5. **Reproducibility**: Clear organization aids in research reproduction

## Getting Started Checklist

When you create a repository from this template:

1. **Update Core Files** (Essential):
   - [ ] `README.md` - Replace all `<placeholder>` text with your project details
   - [ ] `CITATION.cff` - Add your name, project title, and ORCID (if you have one)
   
2. **Connect to CHI Framework**:
   - [ ] Link to meta-project in `references/meta-projects.md`
   - [ ] Create first Research Log issue (choose your SRDMPA phase)
   - [ ] Create first Milestone issue with concrete deliverables
   
3. **Set Up Project Management**:
   - [ ] Run `./scripts/setup.sh` or manually trigger "Setup Project Board" workflow
   - [ ] Configure git if needed: `git config user.name` and `git config user.email`
   
4. **Start Research**:
   - [ ] Begin documentation in `docs/research-notes/`
   - [ ] Add initial data to `data/raw/` if available
   
5. **Optional Customizations**:
   - [ ] Update `.vscode/settings.json` for personal preferences
   - [ ] Modify `CONTRIBUTING.md` if working with collaborators
   - [ ] Add project-specific patterns to `.gitignore`

The template is designed so you can start research immediately while maintaining professional standards!

---

## How It All Works Together

### The CHI Research Ecosystem

This repository template creates a complete research environment that supports the CHI methodology:

**SRDMPA Integration**: Every component connects to the research cycle:
- **Documentation** (`docs/`) evolves from speculation to published findings
- **Code** (`src/`) develops from prototypes to production analysis tools  
- **Data** (`data/`) flows from raw collection through processed insights
- **Notebooks** (`notebooks/`) document the research journey from exploration to reporting
- **Assets** (`assets/`) accumulate visual evidence and communication materials

**GitHub Automation**: The `.github/` directory provides workflow support:
- **Project boards** track progress through SRDMPA phases
- **Issue templates** standardize research planning and logging
- **Actions** automate routine tasks and maintain consistency
- **Labels** enable analysis across projects and phases

### Research Workflow in Practice

**Starting a Project** (Speculate Phase):
1. Use template → clone repository → run setup script
2. Document initial research questions in `docs/research-notes/`
3. Create Milestone issues for concrete deliverables
4. Begin data exploration in `notebooks/exploratory/`

**Active Research** (Research/Design/Make):
1. Weekly Research Log issues track progress and decisions
2. Data flows from `data/raw/` through processing to `data/processed/`
3. Analysis code develops in `src/` with tests in `tests/`
4. Key insights documented in `notebooks/analysis/`
5. AI Collaboration Reports track tool usage and evaluation

**Sharing Results** (Publish/Assess):
1. Generate reports from `notebooks/reporting/`
2. Archive datasets and code for reproducibility
3. Update meta-project connections in `references/meta-projects.md`
4. Create assets for presentations and publications

### CHI Community Benefits

**Standardization**: Common structure enables:
- Easy onboarding for new researchers
- Consistent documentation across projects
- Simplified collaboration and knowledge sharing
- Automated analysis across CHI research portfolio

**Meta-Project Integration**: Repository structure supports:
- Cross-project code and data reuse
- Aggregated analysis of research patterns
- Community learning from shared approaches
- Ecosystem-wide research assessment

**Professional Development**: Template teaches:
- Industry-standard development practices
- Reproducible research methodology
- Collaborative research workflows  
- Academic and technical communication skills

This structure transforms individual research projects into contributions to the broader CHI research ecosystem while maintaining focus on immediate research goals.