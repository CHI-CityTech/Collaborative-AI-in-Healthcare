# CHI Researcher Setup Guide

> **This guide is for AFTER you've clicked "Use this template" and created your research repository**  
> If you haven't done that yet, go back to the [template](https://github.com/CHI-CityTech/CHI-Research-Template) and click the green "Use this template" button.

## Prerequisites

- GitHub account with access to CHI-CityTech organization (if applicable)
- Git installed on your computer
- Code editor (VS Code recommended - extensions will be suggested)
- Basic familiarity with GitHub Issues and Pull Requests

## Step 1: Repository Setup

### 1.1 Clone Your New Repository

After using the template, you now have your own repository. Clone it locally:

```bash
# Replace with your actual repository URL
git clone https://github.com/CHI-CityTech/student-[lastname]-[project].git
cd student-[lastname]-[project]
```

### 1.2 Configure Git (if not already done)

```bash
git config user.name "Your Full Name"
git config user.email "your.email@example.com"
```

### 1.3 Branch Protection Setup (Important!)

**For Repository Administrators or Collaborating Students:**

Go to your repository Settings → Branches and add these protections for `main`:

- ✅ **Require pull request reviews before merging**
  - Require review from code owners (if working with advisor)
  - Dismiss stale reviews when new commits are pushed
- ✅ **Require status checks to pass before merging**
  - Require branches to be up to date before merging  
- ✅ **Require conversation resolution before merging**
- ✅ **Include administrators** (prevents accidental direct pushes)

**Working Branch Strategy:**
```bash
# Create feature branches for all work
git checkout -b feature/data-collection
# ... do work ...
git push -u origin feature/data-collection
# Create Pull Request on GitHub
```

## Step 2: Essential File Updates

### 2.1 Update README.md (Critical)

Your README.md now contains template placeholder text. Replace it with YOUR project:

**Find and replace these sections:**
- `<Project Title>` → Your actual project title
- `<why this matters in the CHI ecosystem>` → Your project purpose
- `<Name(s)>` → Your name and advisor(s)
- `<e.g., Fall 2025>` → Your actual term
- `<~150 words: problem, approach, expected outcome.>` → Your abstract
- Update Goals & Deliverables with your specific objectives

### 2.2 Update CITATION.cff (Critical)

```bash
# Open CITATION.cff and update:
```

Replace:
- `<Student Project Title>` → Your project title
- `<Last>` → Your last name  
- `<First>` → Your first name
- Add your ORCID if you have one (uncomment and fill)
- Update keywords for your specific research area

### 2.3 Connect to CHI Meta-Project

Edit `references/meta-projects.md`:
- Choose which of the 9 CHI meta-projects your work connects to
- Add a comment explaining the connection
- Your advisor will later add Zotero links

## Step 3: Project Management Setup

### 3.1 Create Project Board

⚠️ **Note**: GitHub has deprecated automatic project board creation. You'll need to create it manually:

**Manual Setup (Required):**
1. **Go to "Projects" tab** in your repository
2. **Click "New project"**
3. **Choose "Board" layout**
4. **Name**: `Research Progress`
5. **Add columns in order**:
   - 🆕 **Backlog** (New issues and planned work)
   - 🟡 **In Progress** (Currently active work)
   - 🔵 **In Review** (Work ready for review or feedback)
   - 🟢 **Done** (Completed work)

**Alternative - Organization Project:**
- Ask CHI administrators about linking to an existing organization-level project board

### 3.2 Create Your First Issues

After creating your project board, create these essential issues:

**Milestone Issue:**
1. Go to Issues → New Issue → Milestone
2. Title: "Milestone: Project Setup and Initial Research"
3. Fill out:
   - Goal: What will exist when done?
   - Acceptance Criteria: Specific, testable outcomes
   - Due Date: End of current phase
   - Risks: What could go wrong?

**Research Log Issue:**
1. Go to Issues → New Issue → Research Log  
2. Title: "Research Log: [YYYY-WW]" (current year-week)
3. Choose your current SRDMPA phase:
   - **Speculate**: Initial ideas, problem definition
   - **Research**: Literature review, precedent analysis
   - **Design**: Planning and design phase
   - **Make**: Implementation and production
   - **Publish**: Documentation and sharing
   - **Assess**: Evaluation and reflection

## Step 4: Development Environment

### 4.1 VS Code Setup (Recommended)

If using VS Code, you'll see a popup suggesting extensions. Install:
- GitHub Copilot (if available)
- GitLens
- Markdown All in One
- Markdown Lint
- Python (if using Python)
- Jupyter (if using notebooks)

### 4.2 Create Development Environment

**For Python projects:**
```bash
# Create virtual environment
python -m venv .venv

# Activate (macOS/Linux)
source .venv/bin/activate

# Activate (Windows)
.venv\Scripts\activate

# Install dependencies (create requirements.txt as needed)
pip install jupyter pandas matplotlib seaborn
pip freeze > requirements.txt
```

**For R projects:**
```bash
# Document packages in a setup script
echo "install.packages(c('tidyverse', 'ggplot2', 'knitr'))" > scripts/setup.R
```

### 4.3 Data Organization

```bash
# Add your initial data
cp /path/to/your/data/* data/raw/

# If files are large (>100MB), use Git LFS
git lfs track "*.csv"
git lfs track "*.json" 
git lfs track "*.png"
git add .gitattributes
```

## Step 5: Start Your Research Workflow

### 5.1 Weekly Research Logs

Every week, create a new Research Log issue:
1. Track your current SRDMPA phase
2. Document what you accomplished
3. List sources you consulted
4. Note decisions and next steps
5. Close previous week's log when creating new one

### 5.2 Use the Project Board

Your Kanban board automatically organizes work:
- **New issues** → Backlog
- **Working on something** → Manually move to "In Progress"
- **Ready for review** → Move to "In Review" (or create PR)
- **Completed** → Automatically moves to "Done" when closed

### 5.3 AI Collaboration Tracking

When you use AI tools (ChatGPT, Copilot, Claude, etc.):
1. Create "AI Collaboration Report" issue
2. Document what you asked AI to do
3. Evaluate the AI's output (accuracy, bias, limitations)
4. Record what you accepted, modified, or rejected
5. This supports CHI's "AI as partner" philosophy

## Step 6: Collaboration and Review

### 6.1 Working with Advisors

**If your advisor has access to your repository:**
- Create draft PRs for work in progress: `git push -u origin feature/analysis --draft`
- Use `@mentor` mentions in issues and PRs
- Tag issues with appropriate SRDMPA phase labels
- Schedule regular check-ins based on milestone due dates

### 6.2 Peer Collaboration

**If working with other students:**
- Add collaborators in Settings → Collaborators
- Use branch protection to require reviews
- Create shared issues for joint work
- Reference each other's repositories in meta-project connections

### 6.3 Pull Request Workflow

```bash
# Create feature branch
git checkout -b feature/descriptive-name

# Make changes, commit frequently
git add -A
git commit -m "feat: add data analysis notebook

- Implement exploratory data analysis
- Create initial visualizations  
- Document findings in markdown cells"

# Push and create PR
git push -u origin feature/descriptive-name
```

Then create PR on GitHub with:
- Link to related issues
- Clear description of changes
- Request review if working with others

## Step 7: Research Documentation

### 7.1 Research Notes

Create weekly notes in `docs/research-notes/`:
- `week-01.md`, `week-02.md`, etc.
- Follow the template structure
- Link to relevant issues and commits
- Include source citations

### 7.2 Data Documentation

In `data/README.md`, document:
- Data sources and collection methods
- File formats and structures
- Processing steps applied
- Known limitations or issues
- Privacy/ethical considerations

### 7.3 Code Documentation

- Add docstrings to all functions
- Include README files in code directories
- Comment complex analysis steps
- Use meaningful variable and file names

## Troubleshooting

### Common Setup Issues

**Project board not created:**
- Check GitHub Actions tab for errors
- Ensure you have "Actions" enabled in repository settings
- Try running setup script manually

**Can't push to main branch:**
- This is expected! Create a feature branch
- If you absolutely need to push to main, temporarily disable branch protection

**VS Code not suggesting extensions:**
- Check that `.vscode/extensions.json` exists
- Reload VS Code window (Cmd/Ctrl + Shift + P → "Developer: Reload Window")

**Git LFS issues:**
- Run `git lfs install` in your repository
- Check that `.gitattributes` exists and has your file patterns

### Getting Help

1. **Template Issues**: Create issue in [CHI-Research-Template](https://github.com/CHI-CityTech/CHI-Research-Template)
2. **Your Project Issues**: Create issue in your own repository
3. **CHI Questions**: Contact your advisor or CHI administrators
4. **GitHub Help**: [GitHub Docs](https://docs.github.com)

## Checklist: Setup Complete ✅

After following this guide, you should have:

- [ ] Cloned your repository locally
- [ ] Updated README.md with your project details  
- [ ] Updated CITATION.cff with your information
- [ ] Connected to a CHI meta-project
- [ ] Created project board (automatic Kanban)
- [ ] Created first Milestone and Research Log issues
- [ ] Set up development environment (Python/R/etc.)
- [ ] Organized initial data in `data/raw/`
- [ ] Configured branch protection (if applicable)
- [ ] Created first feature branch and PR

**You're now ready to begin your CHI research project!** 🚀

Remember: The CHI methodology emphasizes **integration as the endpoint**. Your individual research contributes to the broader CHI ecosystem through the meta-project connections and collaborative AI documentation.