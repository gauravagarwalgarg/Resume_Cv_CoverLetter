# Resume, CV & Cover Letter

LaTeX-based professional documents using the [Awesome-CV](https://github.com/posquit0/Awesome-CV) template with custom formatting optimizations.

---

## Documents

| Document | Pages | Purpose | Output |
|----------|-------|---------|--------|
| **Resume** | 1 | Targeted, concise summary for specific roles | `gaurav_agarwal_resume.pdf` |
| **CV** | 2 | Comprehensive career history for academic/detailed applications | `gaurav_agarwal_cv.pdf` |
| **Cover Letter** | 1 | Personalized introduction for each application | `gaurav_agarwal_cover_letter.pdf` |

---

## Structure

```
Resume_Cv_CoverLetter/
├── gaurav_agarwal_resume.tex       # Resume entry point
├── gaurav_agarwal_cv.tex           # CV entry point
├── gaurav_agarwal_cover_letter.tex # Cover letter entry point
├── awesome-cv.cls                  # Template class (customized)
├── fontawesome.sty                 # Icon support
├── resume/                         # Resume sections
│   ├── objective.tex               # Professional summary
│   ├── experience.tex              # Work experience (targeted)
│   ├── skills.tex                  # Technical skills
│   ├── education.tex               # Education
│   ├── academic_projects.tex       # Key projects
│   ├── publications.tex            # Publications
│   └── program_committees.tex      # Community involvement
├── cv/                             # CV sections (more detailed)
│   ├── summary.tex                 # Extended professional summary
│   ├── industry_experience.tex     # Full work history
│   ├── academic_projects.tex       # All projects
│   ├── skills.tex                  # Comprehensive skills
│   ├── education.tex               # Education details
│   ├── awards_and_accolades.tex    # Awards
│   └── program_committees.tex      # Committees & volunteering
├── fonts/                          # Roboto + FontAwesome (bundled)
├── makefile                        # Build system
└── install.sh                      # Ubuntu dependency installer
```

---

## Build

### Prerequisites

```bash
# Ubuntu / WSL
sudo apt install texlive-xetex texlive-fonts-extra texlive-latex-extra latexmk

# Or full TeX Live (larger but complete)
sudo apt install texlive-full

# Or use the install script
./install.sh
```

### Compile

```bash
# Build all documents
make clean && make all

# Build individually
xelatex gaurav_agarwal_resume.tex
xelatex gaurav_agarwal_cv.tex
xelatex gaurav_agarwal_cover_letter.tex
```

### Output

PDFs are generated in the root directory:
- `gaurav_agarwal_resume.pdf`
- `gaurav_agarwal_cv.pdf`
- `gaurav_agarwal_cover_letter.pdf`

---

## Customization Guide

### Change Colors

In the `.tex` entry files, modify the accent color:

```latex
% Predefined: awesome-emerald, awesome-skyblue, awesome-red, awesome-pink,
%             awesome-orange, awesome-nephritis, awesome-concrete, awesome-darknight
\colorlet{awesome}{awesome-darknight}

% Or define custom hex color
\definecolor{awesome}{HTML}{2B579A}
```

### Change Fonts

Fonts are in `fonts/`. The template uses:
- **Roboto** (body text) -- clean, modern, highly readable
- **FontAwesome** (icons) -- social media and contact icons

To change, replace `.ttf` files and update `\fontdir[fonts/]` in the class.

### Add/Remove Sections

In the main `.tex` file, comment/uncomment `\input{}` lines:

```latex
\input{resume/objective.tex}
\input{resume/experience.tex}
\input{resume/skills.tex}
\input{resume/education.tex}
%\input{resume/academic_projects.tex}    % Uncomment to include
%\input{resume/publications.tex}
```

### Adjust Margins

```latex
\geometry{left=1.4cm, top=.8cm, right=1.4cm, bottom=1.8cm, footskip=.5cm}
```

For a tighter 1-page resume, reduce margins:
```latex
\geometry{left=1.2cm, top=.6cm, right=1.2cm, bottom=1.2cm, footskip=.4cm}
```

---

## Resume vs CV: When to Use What

| Aspect | Resume | CV |
|--------|--------|-----|
| Length | 1 page (strict) | 2 pages max |
| Content | Targeted to specific role | Full career history |
| Order | Most relevant first | Chronological |
| Use case | Industry jobs, startups | Academic, government, overseas |
| Customization | Tailored per application | Mostly static |

### Cover Letter

Always customize per application. The template provides:
- **About Me** -- who you are, current role
- **Why Company** -- what attracts you to them
- **Why Me** -- what you bring to the table

---

## Section Design Philosophy

### Resume Sections (1 page)
1. **Objective/Summary** -- 2-3 lines, role-specific
2. **Experience** -- 2-3 most relevant roles, 4-6 bullets each
3. **Skills** -- Grouped by category (Languages, Platforms, Tools)
4. **Education** -- Degree, institution, year

### CV Sections (2 pages)
1. **Summary** -- Extended professional narrative
2. **Industry Experience** -- Full work history with all roles
3. **Academic Projects** -- Research and significant projects
4. **Skills** -- Comprehensive technical inventory
5. **Education** -- Full academic background
6. **Awards** -- Honors and recognitions (optional)

---

## Formatting Best Practices

- **Font size**: 11pt body, section headers auto-scaled by class
- **Bullet points**: Start with strong action verbs (Designed, Built, Led, Implemented)
- **Quantify**: Include metrics where possible (team size, performance gains, systems delivered)
- **Keywords**: Match job description terminology for ATS parsing
- **Consistency**: Same tense (past for previous roles, present for current)
- **White space**: Don't cram -- readability > density

---

## ATS (Applicant Tracking System) Compatibility

The Awesome-CV template produces ATS-friendly PDFs because:
- Text is selectable (not images)
- Standard section headings (Experience, Education, Skills)
- No tables or complex layouts that confuse parsers
- Clean font rendering via XeLaTeX

---

## Modern Resume Trends (2024+)

- **1 page is non-negotiable** for < 10 years experience
- **No photo** for US/UK applications (bias concerns)
- **No objective statement** -- replace with 1-line professional summary
- **Skills section near top** -- recruiters scan in F-pattern
- **Links are essential** -- GitHub, LinkedIn, portfolio
- **Tailored per role** -- generic resumes get filtered out
- **PDF only** -- never submit .doc/.docx

---

## Template Credit

Based on [Awesome-CV](https://github.com/posquit0/Awesome-CV) by Claud D. Park, licensed under CC BY-SA 4.0.

**Fonts**: [Roboto](https://github.com/google/roboto) (Google), [FontAwesome](https://fontawesome.com/) (icons)

---

## Contact

Gaurav Agarwal -- [gauravagarwalgarg@gmail.com](mailto:gauravagarwalgarg@gmail.com) -- [GitHub](https://github.com/GauravAgarwalGarg) -- [LinkedIn](https://linkedin.com/in/gauravagarwalgarg)
