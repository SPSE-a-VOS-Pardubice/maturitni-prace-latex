\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{spseavospardubice}[]
\LoadClass{article}

\usepackage[a4paper,top=25mm,left=30mm,right=20mm,bottom=25mm]{geometry}

% moderní font family
\usepackage{fontenc}
\usepackage{lmodern}

\usepackage[czech]{babel}

% české uvozovky pomocí \enquote{...}
\usepackage[german=quotes]{csquotes}

% vlastní styl pro seřazené seznamy
\usepackage{enumerate}

% zapnout hlavičky a patičky
\pagestyle{plain}
\pagenumbering{arabic}

\usepackage[skip=6pt]{parskip}

% obrázky
\usepackage{graphicx}

%odkaz na webovku
\usepackage{hyperref}

%todo poznámky
\usepackage{todonotes}

% proměnné
\newcommand\fullschool[1]{\newcommand{\@fullschool}{#1}}
\newcommand\school[1]{\newcommand{\@school}{#1}}
\newcommand\subject[1]{\newcommand{\@subject}{#1}}

% vlastní definice stylů z třídy article
\renewcommand\normalsize {\fontsize{12bp}{15bp}\selectfont}
\renewcommand\large {\fontsize{14bp}{17bp}\selectfont}
\renewcommand\Large {\fontsize{16bp}{19.5bp}\selectfont}

\newcommand\titulnilist {
	\newpage
	\thispagestyle{empty}
	{\centering
		{\large \@fullschool}
		
		\vspace{2cm}
		
		{\Large\bfseries \@school}
		
		\vfill
		
		{\Large\bfseries \@subject}
		
		\vspace{1cm}
		
		{\Large\bfseries \@title}
		
		\vfill
		
		{\large \@date \hfill \@author}
	}
	\newpage
}

\newcommand\prohlaseniautora {
	\newpage
	\thispagestyle{empty}
	\null
	\vfill
	\enquote {\itshape
		Prohlašuji, že jsem maturitní práci vypracoval(a) samostatně a použil(a) jsem literárních pramenů,  informací a obrázků, které cituji a uvádím v seznamu použité literatury a zdrojů informací a v seznamu použitých obrázků a neporušil jsem autorská práva.
	
		Souhlasím s umístěním kompletní maturitní práce nebo její části na školní internetové stránky a s použitím jejích ukázek pro výuku.
	}
	
	\vspace{1cm}
	
	\noindent
	V Pardubicích dne ...........................
	\hfill
	podpis ................................................
	
	\newpage
}

\newcommand\zadaniprace[9] {
	\newpage
	\thispagestyle{empty}
	{\centering\bfseries
		
		{\large \@fullschool}
		
		MATURITNÍ ZKOUŠKA – PROFILOVÁ ČÁST – MATURITNÍ PROJEKT
		
		zadání maturitní práce

		\makebox[\linewidth]{\rule{\linewidth}{0.4pt}}
	}
	
	\begingroup
	\setlength{\tabcolsep}{0pt} % article dává tabulce před každý sloupec mezeru
	\begin{tabular}{ l @{\hskip 5pt} l }
	Obor: & #1 \\
	Školní rok: & #2 \\
	Třída: #3 & \\
	\bfseries Jméno a příjmení žáka: & \bfseries #4 \\
	\bfseries Téma maturitní práce: & \bfseries #5 \\
	Vedoucí maturitní práce: & #6 \\
	Pracoviště vedoucího: & #7
	\end{tabular}
	\endgroup
	
	{\bfseries Zadání:}
	
	#8
	
	{\bfseries Hlavní body administrace:}
	
	#9
	
	\newpage
}

\newcommand\anotace[3] {
	\newpage
	\thispagestyle{empty}
	{\itshape
		{\large #1}
		
		#2
		
		#3
	}
	
	\newpage
}

\newcommand\obsah {
	\tableofcontents
	\thispagestyle{empty}
}

\newcommand\sekce {
	\newpage
	\@startsection {section}{1}{\z@}
	{20bp}
	{20bp}
	{\normalfont\Large\bfseries}
}

\newcommand\podsekce {
	\@startsection {subsection}{1}{\z@}
	{30bp}
	{15bp}
	{\normalfont\Large\bfseries}
}

\newcommand\podpodsekce {
	\@startsection {subsubsection}{1}{\z@}
	{30bp}
	{15bp}
	{\normalfont\Large\bfseries}
}

\newcommand\obrazek[4] {
	
	\begin{figure} [h]
		\includegraphics[width=\linewidth]{#1}
		\caption{#3}
		\label{fig:#2}
	\end{figure}
}

\newcommand\seznamObrazku {
	\newpage
	\listoffigures
	\thispagestyle{empty}
}

