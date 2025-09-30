# 📝 EDIT THIS README UPON PROJECT CREATION

**🚨 IMPORTANT: This is a template README. Customize it for your specific research project before using.**

---

# CHI Research Project Board Template

<!-- 
🔧 CUSTOMIZATION INSTRUCTIONS:
When using this template for your project board, customize as follows:

KEEP UNCHANGED:
- Board Structure section (5-column workflow)
- SRDMPA Methodology Integration
- Getting Started sections 1-3
- Best Practices (all subsections)
- Troubleshooting section

CUSTOMIZE FOR YOUR PROJECT:
1. Replace title: "CHI Research Project Board Template" → "[Your Project Name] Research Board"
2. Update Overview to describe YOUR specific research project
3. Replace ALL Sample Test Issues with examples from YOUR research topic
4. Update footer with your project details (remove template version info)
5. Modify Integration section if your project has different architecture

DELETE ENTIRELY:
- The "EDIT THIS README" warning at the top
- These customization instructions (this comment block)
- Sample Test Issues section (replace with your own examples)
- Template Version footer
-->

## Overview

This project board template supports the **CHI (Center for Holistic Integration) research methodology** using a structured Kanban workflow combined with SRDMPA phase tracking through issue labels.

## Board Structure

### 5-Column Kanban Workflow

| Column | Purpose | Description |
|--------|---------|-------------|
| 📋 **Backlog** | Ready Tasks | Refined issues ready for assignment |
| 👤 **Assigned** | Committed Work | Tasks assigned and ready to start |
| ⚡ **Active** | In Progress | Currently active work (limit 2-3 items) |
| 🔵 **Review** | Quality Control | Work ready for faculty/peer review |
| ✅ **Done** | Completed | Finished and assessed work |

## SRDMPA Methodology Integration

Research phases are tracked through **issue labels**, not board columns:

- `01-speculate` - Research questions, hypotheses, initial ideas
- `02-research` - Literature review, data collection, investigation  
- `03-design` - Planning experiments, designing methods, prototyping
- `04-make` - Implementation, coding, data analysis, creation
- `05-publish` - Documentation, writing, presentation preparation
- `06-assess` - Evaluation, reflection, iteration planning

## Workflow Examples

### Individual Research Project
```
Speculation → Create Issue → Backlog → Assign to Self → Research → Active → Review → Assess → Done
```

### Team Research Project  
```
Team Meeting → Prioritize Backlog → Faculty Assigns → Student Works → Submit for Review → Complete
```

## Getting Started

### 1. Create Your Research Issues

Use the **CHI Issue Templates**:
- **Milestone** - Define concrete deliverables and acceptance criteria
- **Research Log** - Weekly notes, sources, and phase tracking
- **AI Collaboration Report** - Document AI tool usage and contributions
- **Bug Report** - Technical issues and debugging tasks

### 2. Apply SRDMPA Labels

Tag each issue with the appropriate research phase:
```markdown
- Milestone: "Complete literature review analysis" → 01-speculate + 02-research
- Research Log: "Week 23-15 AI bias investigation" → 02-research  
- Milestone: "Build bias detection prototype" → 03-design + 04-make
- Research Log: "Week 23-16 Statistical analysis" → 04-make
- Milestone: "Draft conference paper" → 05-publish
- Research Log: "Week 23-17 Reflection on methods" → 06-assess
```

### 3. Move Issues Through Columns

**Backlog → Assigned:**
- During weekly planning meetings
- When committing to work for the sprint/week
- Self-assignment for individual projects

**Assigned → Active:**  
- When actually starting the work
- Limit to 2-3 active items to maintain focus

**Active → Review:**
- When work is complete and needs feedback
- Research methodology validation required
- Documentation/code review needed

**Review → Done:**
- After faculty/peer approval
- Quality standards met
- Ready to build upon for next phase

## Best Practices

### For Students
- **Start with speculation** - Create issues with `01-speculate` for all research ideas
- **Limit active work** - Keep 2-3 items in Active column maximum  
- **Seek review actively** - Move work to Review column when ready for feedback
- **Update labels** - Add new SRDMPA phase labels as work evolves
- **Weekly planning** - Review and assign upcoming work during meetings

### For Faculty Advisors
- **Monitor master board** - Use CHI-StudentResearch project board for oversight across all students
- **Link student projects** - Connect individual student boards to master tracking system
- **Review backlog priorities** - Help students focus on high-impact work during weekly meetings
- **Provide timely feedback** - Monitor Review column for work needing attention
- **Track methodology** - Ensure SRDMPA phases are properly represented across projects
- **Celebrate completion** - Acknowledge work moving to Done column and major milestone achievements

### For Research Teams
- **Collaborative planning** - Use weekly meetings to assign from backlog
- **Clear ownership** - One person per assigned issue
- **Cross-review** - Team members can review each other's work
- **Knowledge sharing** - Comment on issues to share insights

## Sample Test Issues

<!-- 
📝 REPLACE THIS SECTION:
The examples below use "AI Bias in Hiring" as a sample research topic.
Replace ALL of these examples with issues from YOUR actual research project.

For each issue type, create 1-2 examples that reflect:
- Your specific research question/topic
- Your actual timeline and deliverables  
- Your methodology and approach
- Your real data sources and tools

Keep the same FORMAT but change the CONTENT to match your project.
-->

To test your project board setup, create these example issues:

### **Milestone Examples:**
1. **Title:** `Milestone: Complete AI Bias Literature Survey`
   - **Phase:** `02-research`
   - **Goal:** Comprehensive review of AI bias research from 2020-2024
   - **Acceptance Criteria:** 
     - [ ] 25+ peer-reviewed papers reviewed
     - [ ] Summary matrix created with bias types and detection methods
     - [ ] Key gaps identified for research focus
   - **Due:** 2024-10-15

2. **Title:** `Milestone: Build Bias Detection Prototype`
   - **Phase:** `04-make`  
   - **Goal:** Working prototype that detects gender bias in job descriptions
   - **Acceptance Criteria:**
     - [ ] Process 100+ job postings
     - [ ] Generate bias confidence scores
     - [ ] Demo runs without errors
     - [ ] Basic web interface functional

### **Research Log Examples:**
3. **Title:** `Research Log: 2024-W39`
   - **Phase:** `01-speculate`
   - **Summary:** Initial research question formation and hypothesis development
   - **Sources:** DOI links to 5 foundational papers on AI bias
   - **Decisions:** Focus on hiring bias, use NLP techniques for detection

4. **Title:** `Research Log: 2024-W42`
   - **Phase:** `04-make`
   - **Summary:** Implemented basic NLP pipeline, tested on sample dataset
   - **Sources:** Scikit-learn documentation, spaCy tutorials
   - **Decisions:** Use BERT embeddings, need larger training dataset

### **AI Collaboration Examples:**
5. **Title:** `AI Collab: Literature Search Strategy`
   - **Phase:** `02-research`
   - **Prompts:** "Help me identify key search terms for AI hiring bias research"
   - **Output:** Generated 20+ academic search terms and Boolean queries
   - **Evaluation:** 85% of terms were relevant, missing some domain-specific terminology

6. **Title:** `AI Collab: Code Review and Documentation`
   - **Phase:** `05-publish`
   - **Prompts:** "Review this Python script for bias detection and suggest improvements"
   - **Output:** Identified 3 bugs, suggested 5 performance optimizations
   - **Evaluation:** Recommendations were accurate, saved 2 hours of debugging

### **Bug Report Example:**
7. **Title:** `Bug: Dataset loading fails with Unicode errors`
   - **What happened:** CSV import crashes when processing job descriptions with special characters
   - **Expected:** Should handle all UTF-8 characters gracefully
   - **Repro Steps:** Load jobs_dataset.csv, process descriptions with encoding='utf-8'

## Integration with CHI Research Ecosystem

This individual project board integrates with the broader CHI research management system:

### **CHI Research Architecture:**
- **Master Project Board** - Located in `CHI-StudentResearch` repository for faculty oversight
- **Individual Project Boards** - This template creates detailed workflow boards for each student
- **Repository Templates** - `CHI-Research-Template` provides standardized project structure

### **Two-Tier Project Management:**

**Faculty Level (Master Board in CHI-StudentResearch):**
- High-level tracking of all student research projects
- Links to individual student project boards for detailed monitoring
- Cross-project coordination and resource allocation
- Milestone tracking and deadline management

**Student Level (Individual Project Board - This Template):**
- Daily and weekly task management using SRDMPA methodology
- Detailed workflow: Backlog → Assigned → Active → Review → Done
- Research phase tracking through issue labels
- Personal productivity and research progress

### **Integration Workflow:**
1. **Student creates repository** from CHI-Research-Template
2. **Student creates project board** using this template
3. **Faculty links student project** to master board in CHI-StudentResearch
4. **Regular reporting** flows from individual to master board level

This project board works seamlessly with:
- **CHI Issue Templates** - Structured issue creation
- **SRDMPA Labels** - Automated via repository template
- **GitHub Actions** - Automated project setup and linking
- **Documentation Standards** - Issue tracking supports reproducible research

## Troubleshooting

**Common Issues:**

**"Too many columns don't fit on screen"**
- Use browser zoom out (Ctrl/Cmd + -)
- Focus on 2-3 relevant columns at a time
- Use GitHub's column collapse feature

**"Issues stuck in Review"** 
- Set review SLAs (e.g., 48 hours for feedback)
- Use `needs-review` label to highlight urgency
- Schedule regular review sessions

**"Backlog becomes overwhelming"**
- Regular backlog grooming sessions
- Archive or close outdated issues  
- Focus on current research priorities

**"Individual projects don't need Assigned column"**
- Use it for personal commitment ("This week I will...")
- Self-assignment creates accountability
- Can skip directly to Active if preferred

## Support

For questions about this project board template:
- Review CHI Research Template documentation
- Contact CHI faculty advisors
- Reference GitHub Projects documentation
- Check CHI methodology resources

---

**Template Version:** 1.0  
**Last Updated:** September 2025  
**Maintained by:** CHI Center for Holistic Integration, City Tech