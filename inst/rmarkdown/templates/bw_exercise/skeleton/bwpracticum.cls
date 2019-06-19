% Class file for bwexam
% Based on the exam class from CTAN
% Joris Meys
% 12/10/2010

% --- Class structure identification
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bwpracticum}[2018/12/13 v2.0.1 bwpracticum]

% --- Class structure declaration of options
%
%  This class extends article class

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

% --- Class structure execution of options
%
\ProcessOptions \relax

\LoadClass{article}

% --- Class structure: Loading of extra packages
%
\RequirePackage[a4paper,portrait]{geometry}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{afterpage}
\RequirePackage[pdfborder={0 0 0}]{hyperref}

% Use Helvetica to stay as close as possible to Arial
%\RequirePackage{helvet} 
%\renewcommand{\familydefault}{\sfdefault}
%\RequirePackage{sansmath} % gives helvetica math
\RequirePackage{times} %load times new roman type 1 fonts


% --- Class structure: layout issues
%
\geometry{lmargin=72.0bp,rmargin=72.0bp,tmargin=72.0bp,bmargin=72.0bp}
\parindent 0pt
\parskip 6pt

\newcommand{\Page}{page}
\newcommand{\emptyline}{\hfill}

% --- Class structure: Definitions

\def\@title{}
\global\let\@title\emptyline
\def\title#1{\def\@title{#1}}

\def\@course{}
\def\course#1{\def\@course{#1}}

\def\@author{}
\def\author#1{\def\@author{#1}}

\def\@date{}
\def\date#1{\def\@date{#1}}

\def\@pname{}
\global\let\@pname\Page
\def\pname#1{\def\@pname{#1}}



\newcommand\chapter[1]{
	\vspace{36pt}
 	
	{\LARGE \textbf{#1} }
	
	
	\vspace{24pt}
	\hrule
	\vspace{12pt}
	}



% --- CONSTRUCT HEADER OF TITLE PAGE

\renewcommand{\maketitle}{
		\begin{picture}(0,0)(23,90)
				\includegraphics{logo_UGent_NL_RGB_2400_kleur-op-wit.png}
		\end{picture}
	\noindent	
	\begin{flushright}
\textbf{
	\@course \\
	\@author \\
	\@title
	}
	\end{flushright}
}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% depth of numbering and depth of table of contents %

% Working on the floats
\renewcommand{\topfraction}{0.7}	% max fraction of floats at top
\renewcommand{\bottomfraction}{0.8}	% max fraction of floats at bottom
%   Parameters for TEXT pages (not float pages):
\setcounter{topnumber}{2}
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{4}     % 2 may work better

% --- Construction of the first and following pages
%

\AtBeginDocument{

% Check that necessary documentation is filled in
\ifx\@course\empty
    \PackageError{bwexam}{You need to fill in the course}
\fi

\ifx\@author\empty
    \PackageError{bwexam}{You need to fill in the author}
\fi

% Set the style of the front page and add header
\newgeometry{lmargin=72.0bp,rmargin=72.0bp,tmargin=20.0bp,bmargin=72.0bp}
%\thispagestyle{headandfoot}
%\firstpageheader{}{}{}
%
%\runningheader{}{}{\@title - \@course}
%\runningheadrule
%\footer{}{\@pname~\thepage\ / \numpages}{}
%

\maketitle

\afterpage{\globaldefs=1 \restoregeometry \globaldefs=0}
}

