% dgsolution.cls -- document class for reading group solutions
% Nestruev, "Smooth Manifolds and Observables"
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dgsolution}[2026/11/02 Reading group solution sheet]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[11pt,a4paper]{article}

\RequirePackage[margin=2.5cm]{geometry}
\RequirePackage{amsmath,amssymb,amsthm,mathtools}
\RequirePackage{enumitem}
\RequirePackage{tikz-cd}
\RequirePackage{xcolor}
\RequirePackage[colorlinks=true,linkcolor=blue!50!black,urlcolor=blue!50!black]{hyperref}
\RequirePackage[capitalise]{cleveref}

% ---------------------------------------------------------------- metadata
\newcommand{\dg@chapnum}{}
\newcommand{\dg@chaptitle}{}
\newcommand{\chapter}[2]{\renewcommand{\dg@chapnum}{#1}\renewcommand{\dg@chaptitle}{#2}}
\renewcommand{\maketitle}{%
  \begin{center}
    {\small Nestruev, \emph{Smooth Manifolds and Observables} --- reading group}\par
    \vspace{0.6em}
    {\Large\bfseries Chapter \dg@chapnum: \dg@chaptitle}\par
    \vspace{0.4em}
    {\normalsize \@author}\par
    {\small \@date}\par
  \end{center}
  \vspace{1em}}

% ---------------------------------------------------------------- environments
\theoremstyle{plain}
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{claim}[theorem]{Claim}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}
\theoremstyle{remark}
\newtheorem*{remark}{Remark}

% \begin{exercise}{3.28} ... \end{exercise}   -- restate the exercise from the book
\newenvironment{exercise}[1]
  {\par\medskip\noindent\textbf{Exercise #1.}\ \itshape}
  {\par\medskip}
% \begin{solution} ... \end{solution}
\newenvironment{solution}
  {\begin{proof}[Solution]}
  {\end{proof}}

% ---------------------------------------------------------------- notation
% Notation roughly follows Nestruev. Add to this list rather than redefining
% things in individual solution files.
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\RP}{\mathbb{R}P}
\newcommand{\F}{\mathcal{F}}            % algebra of observables
\newcommand{\Cinf}{C^{\infty}}
\newcommand{\abs}[1]{\left\lvert #1 \right\rvert}
\newcommand{\norm}[1]{\left\lVert #1 \right\rVert}
\newcommand{\Spec}{\operatorname{Spec}}
\newcommand{\Specm}{\operatorname{Specm}}
\newcommand{\Hom}{\operatorname{Hom}}
\newcommand{\End}{\operatorname{End}}
\newcommand{\Der}{\operatorname{D}}     % derivations D(P)
\newcommand{\Diff}{\operatorname{Diff}} % differential operators Diff_k(P,Q)
\newcommand{\smbl}{\operatorname{smbl}}
\newcommand{\supp}{\operatorname{supp}}
\newcommand{\id}{\mathrm{id}}
\newcommand{\im}{\operatorname{im}}
\newcommand{\coker}{\operatorname{coker}}
\newcommand{\Ann}{\operatorname{Ann}}
\newcommand{\dd}{\,\mathrm{d}}
\newcommand{\pd}[2]{\frac{\partial #1}{\partial #2}}
% |F| : the R-spectrum (dual space) of an R-algebra F
\newcommand{\dual}[1]{\lvert #1 \rvert}

\endinput
