# LaTeX files for my Resume, CV and Cover Letter.

## What is LaTeX?
LaTeX is a wonderful markup language used primarily for typesetting and prettify your text. It is used for academic papers and mathematics in order to better depict mathematical equations. In this article, I will explain how to use LaTeX and Awesome-CV to make a good looking resume.

## Why LaTeX?

LaTeX is a somewhat dated language, so why use it? Well, Awesome-CV is a good reason. Awesome-CV is a resume/CV template that is hosted on GitHub that is written in LaTeX. With this template, it is much easier to get a formalized and good looking resume/CV.

## Install `utils`

* cd to the Repo -> `Resume_Cv_CoverLetter`
* Run -> ./install.sh

The install script works for `Ubuntu`

## Facts and Ever Lasting debate of `Resume` vs `CV`

Three major differences between CVs and resumes are the length, the purpose and the layout. A resume is a brief summary of your skills and experience over one or two pages, a CV is more detailed and can stretch well beyond two pages. The resume will be tailored to each position whereas the CV will stay put and any changes will be in the cover letter.

A CV has a clear chronological order listing the whole career of the individual whereas a resume’s information can be shuffled around to best suit the applicant. One might say the main difference between a resume and a CV is that a CV is intended to be a full record of your career history and a resume is a brief, targeted list of skills and achievements.

### What is CV?

CV is a long application document and may be even 5 pages long. It covers in-depth all information including academic background, research experience, awards, honors, publications, teaching, volunteering experience and other specific accomplishments.

Commonly it is used to apply for some academic, educational, governmental or scientific positions. CV is used when applying for grants, scholarships, internships and fellowships. It will come in handy for people working in medical field as well.

CV is also required for overseas job openings. If you want go international, employers from Europe, Asia and Middle East will certainly require a CV instead of a resume.

### What is resume?

On the contrary, resume is the most common document required from job applicants.

A resume is a brief summary of your skills, abilities, qualification, work history and educational background of a candidate (Ideally not more than a page or so). It might be customized to the specific job opening and may contain only relevant information to the current position.

There are 3 main resume formats:

    chronological resume format
    functional resume format
    combination resume format

In addition, you may write a creative resume and include graphics, pics and non-standard resume fonts for it.

Also, it has differences in its structure, for ex., you may mention your biggest professional achievements, or include objective/summary section in a resume.

Traditionally, resume shouldn't be longer than two A4 pages. It’s intended to be short, as a recruiter spends only around 8 seconds to skim applicant’s resume.

It’s important to adjust a resume to a specific position in order to fit the needs and requirements. If you think that some of your past career experience won’t make any difference to an HR — erase it.

Source:- https://www.quora.com/What-is-the-difference-between-CV-and-resume-2

## Guildlines - How to write?

Cover Letter - (https://www.glassdoor.com/blog/guide/how-to-write-a-cover-letter/)

Resume or CV - (https://novoresume.com/career-blog/how-to-write-a-resume-guide/)

## User Insights

Open the pdf via any pdf reader to have a quick outlook of present Template.
Modify the existing `.tex` files to make your own `CV`, `Resume`  with awesome fonts and colors.

## Requirements

A full TeX distribution is assumed.  [Various distributions for different operating systems (Windows, Mac, \*nix) are available](http://tex.stackexchange.com/q/55437) but TeX Live is recommended.
You can [install TeX from upstream](http://tex.stackexchange.com/q/1092) (recommended; most up-to-date) or use `sudo apt-get install texlive-full` if you really want that.  (It's generally a few years behind.)

### Install script
```bash
sudo ./install.sh
```

## Usage

At a command prompt, run

```bash
$ xelatex {your-cv}.tex
```

or

Build using makefile for all target folders and `.tex` files.

```bash
$ make clean && make all
```
This should result in the creation of ``{your_cv}.pdf`` / ``{your_resume}.pdf`` / ``{your_cover_letter}.pdf``

## Credit

[**LaTeX**](http://www.latex-project.org) is a fantastic typesetting program that a lot of people use these days, especially the math and computer science people in academia.

[**LaTeX FontAwesome**](https://github.com/furl/latex-fontawesome) is bindings for FontAwesome icons to be used in XeLaTeX.

[**Roboto**](https://github.com/google/roboto) is the default font on Android and ChromeOS, and the recommended font for Google’s visual language, Material Design.

[**Source Sans Pro**](https://github.com/adobe-fonts/source-sans-pro) is a set of OpenType fonts that have been designed to work well in user interface (UI) environments.

[**Awesome CV**](https://github.com/posquit0/Awesome-CV) is inspiration for this project.

## Warning

You are free to take my `.tex` file and modify it to create your own resume. Please don't use my resume for anything else without my permission, though!

## Contact
Gaurav Agarwal <gauravagarwalgarg@gmail(dot)com>
