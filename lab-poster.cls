% lab-poster.sty
% Poster Template for your research lab
% 2017-Nov-19 Felipe Meneguzzi felipe.meneguzzi (at) pucrs.br
% --- Class structure: identification part
% ---
\ProvidesClass{lab-poster}[2017/11/19 version 1.00 Lab Poster]
\NeedsTeXFormat{LaTeX2e}

% --- Class structure: declaration of options part
% ---
% This class extends the article class
% Read all the documentclass options; pass them to article,
% unless the file "<currentoption>.min" exists, then it is loaded 
\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{%
     \PassOptionsToClass{\CurrentOption}{a0poster}}}

% --- Class structure: execution of options part % ---
\ProcessOptions \relax
% --- Class structure: declaration of options part % ---
\LoadClass{a0poster}

\RequirePackage{multicol}
\columnsep=100pt
\columnseprule=3pt


\RequirePackage{ragged2e}
\RequirePackage[utf8]{inputenc}		% Document encoding
\RequirePackage{times}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage[font=small,labelfont=bf]{caption}
\RequirePackage{amsfonts, amsmath, amsthm, amssymb, marvosym}
\RequirePackage{wrapfig}
\RequirePackage{enumitem}
\RequirePackage{fancyvrb}
\RequirePackage{xspace}
\RequirePackage[svgnames,usenames,dvipsnames]{xcolor}

\RequirePackage{listings}

\usepackage{listingsutf8}

\lstset{literate=
	{ã}{{\~a}}1 {ẽ}{{\~e}}1 {ĩ}{{\~i}}1 {õ}{{\~o}}1 {ũ}{{\~u}}1
	{Ã}{{\~A}}1 {Ẽ}{{\~E}}1 {Ĩ}{{\~I}}1 {Õ}{{\~O}}1 {Ũ}{{\~U}}1	
	{á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
	{Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
	{à}{{\`a}}1 {è}{{\`e}}1 {ì}{{\`i}}1 {ò}{{\`o}}1 {ù}{{\`u}}1
	{À}{{\`A}}1 {È}{{\'E}}1 {Ì}{{\`I}}1 {Ò}{{\`O}}1 {Ù}{{\`U}}1
	{ä}{{\"a}}1 {ë}{{\"e}}1 {ï}{{\"i}}1 {ö}{{\"o}}1 {ü}{{\"u}}1
	{Ä}{{\"A}}1 {Ë}{{\"E}}1 {Ï}{{\"I}}1 {Ö}{{\"O}}1 {Ü}{{\"U}}1
	{â}{{\^a}}1 {ê}{{\^e}}1 {î}{{\^i}}1 {ô}{{\^o}}1 {û}{{\^u}}1
	{Â}{{\^A}}1 {Ê}{{\^E}}1 {Î}{{\^I}}1 {Ô}{{\^O}}1 {Û}{{\^U}}1
	{œ}{{\oe}}1 {Œ}{{\OE}}1 {æ}{{\ae}}1 {Æ}{{\AE}}1 {ß}{{\ss}}1
	{ű}{{\H{u}}}1 {Ű}{{\H{U}}}1 {ő}{{\H{o}}}1 {Ő}{{\H{O}}}1
	{ç}{{\c c}}1 {Ç}{{\c C}}1 {ø}{{\o}}1 {å}{{\r a}}1 {Å}{{\r A}}1
	{€}{{\EUR}}1 {£}{{\pounds}}1
}

\lstdefinestyle{codeStyle}{
	commentstyle=\color{black},
	basicstyle=\ttfamily\footnotesize,
	breakatwhitespace=false,         
	breaklines=true,                 
	captionpos=b,                    
	keepspaces=true,                 
	numbers=left,                    
	numbersep=5pt,                  
	showspaces=false,                
	showstringspaces=false,
	showtabs=false,                  
	tabsize=2
}

\RequirePackage{iflang}

% ================
% = Poster Title =
% ================

% Who's the advisor
% \def\@advisor{None}
\global\let\@advisor\@empty
\newcommand{\advisor}[1]{\def\@advisor{#1}}

%Which Course this is
\global\let\@major\@empty
% \def\@major{Ciência da Computação}
%Sistemas de Informação, Ciência da Computação, Engenharia de Computação, Engenharia de Software
\newcommand{\major}[1]{\def\@major{#1}}

%Student emails
\def\@email{nome.do.aluno@acad.pucrs.br}
\newcommand{\email}[1]{\def\@email{#1}}

% ======================
% = Font Size Commands =
% ======================

\newcommand{\showfontsize}{\f@size{} pt}
%% Remember to set the baseline-skip (the second parameter to 1.2 font dize)

\renewcommand{\tiny}{\fontsize{12}{14.4}\selectfont}
\renewcommand{\scriptsize}{\fontsize{14}{16.8}\selectfont}
\renewcommand{\footnotesize}{\fontsize{18}{21.6}\selectfont}
\renewcommand{\small}{\fontsize{20}{24}\selectfont}
\renewcommand{\normalsize}{\fontsize{26}{31.2}\selectfont}
\renewcommand{\large}{\fontsize{30}{36}\selectfont}
\renewcommand{\Large}{\fontsize{36}{43.2}\selectfont}
\renewcommand{\LARGE}{\fontsize{43}{51.6}\selectfont}
\renewcommand{\huge}{\fontsize{52}{62.4}\selectfont}
\renewcommand{\Huge}{\fontsize{62}{74.4}\selectfont}
\renewcommand{\veryHuge}{\fontsize{74}{88.8}\selectfont}


% =======================
% = Sectioning Commands =
% =======================
\def\@themecolor{NavyBlue}
\newcommand{\themecolor}[1]{\def\@themecolor{#1}}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\huge\bfseries\color{\@themecolor}}}

% who is meeting?
% \def\@members{None}
% \newcommand{\setmembers}[1]{\def\@members{#1}}
% \newcommand{\show@members}{\@members}

% ============================
% = Lab and University Logos =
% ============================
\global\let\@lablogo\@empty
% \def\@lablogo{}
\newcommand{\lablogo}[1]{\def\@lablogo{#1}}

\global\let\@unilogo\@empty
% \def\@unilogo{}
\newcommand{\unilogo}[1]{\def\@unilogo{#1}}


\def\@maketitle{%
\begin{minipage}[c]{\linewidth}%
	\vspace{0.1cm}%
	\noindent\makebox[\textwidth][c]{%
%
	\begin{minipage}[c]{0.15\linewidth}%
		\begin{center}%
		\ifx\@unilogo\@empty%
			\relax%
		\else%
		\includegraphics[width=9cm]{\@unilogo} 
		\fi %
			% \includegraphics[width=9cm]{fig/pucrs-logo.pdf}%
		\end{center}%
	\end{minipage}
%	
	\begin{minipage}[c]{0.70\linewidth}%
		\centering%
		\veryHuge \color{\@themecolor}%
		\textbf{\@title}\\%
		%
		\color{Black}%
		\huge \textbf{\@author}\\%
		\ifx\@advisor\@empty%
			\relax%
		\else%
		\Large \textbf{Orientador: \@advisor}\\%
		\fi%
		\ifx\@major\@empty%
		\relax%
		\else%
		\@major\\%
		\fi
		% Pontifícia Universidade Católica do Rio Grande do Sul\\
		\Large \Letter ~ \texttt{\@email}\\%
	\end{minipage}%
%
	\begin{minipage}[c]{0.15\linewidth}%
		\begin{center}%
		\ifx\@lablogo\@empty%
			\relax%
		\else%
		\includegraphics[width=9cm]{\@lablogo} 
		\fi %
			% \includegraphics[width=9cm]{fig/facin-logo.pdf}%
		\end{center}%
	\end{minipage}}%
	\\[0.1cm]%
% A bit of extra whitespace between the header and poster content
\end{minipage}%
%
\vspace{1cm}}

%% Original template
% \def\@maketitle{
%   \newpage
%   \null
%   \vskip 2em%
%   \begin{center}%
%   \let \footnote \thanks
%     {\LARGE \@title \par}%
%     \vskip 1.5em%
%     {\large
%       \lineskip .5em%
%       \begin{tabular}[t]{c}%
%         \@author
%       \end{tabular}\par}%
%     \vskip 1em%
%     {\large \@date}%
%   \end{center}%
%   \par
%   \vskip 1.5em}

\AtBeginDocument{
\IfLanguageName{brazil}{%
\renewcommand{\lstlistingname}{Listagem}
}%
{%
}%
}

\endinput