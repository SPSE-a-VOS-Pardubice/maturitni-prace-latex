\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{spseavospardubice}[]

\usepackage[a4paper,top=25mm,left=30mm,right=20mm,bottom=25mm]{geometry}

% moderní font
\usepackage[T1]{fontenc}
\usepackage{lmodern}

\usepackage[czech]{babel}

% české uvozovky pomocí \enquote{...}
\usepackage[german=quotes]{csquotes}

% vlastní styl pro seřazené seznamy
\usepackage{enumerate}

% zapnout hlavičky a patičky
\pagestyle{plain}
% nefunguje
\pagenumbering{gobble}
% pro zapnutí číslování od dané stránky na ni přidejte \pagenumbering{arabic}

\usepackage[skip=6pt]{parskip}

% proměnné
\newcommand{\fullschool}[1]{\newcommand{\@fullschool}{#1}}
\newcommand{\school}[1]{\newcommand{\@school}{#1}}
\newcommand{\subject}[1]{\newcommand{\@subject}{#1}}

% sdílené styly, poměr line spacing Word - LaTeX je ~ 1:1.125
\newcommand{\regular} {\fontsize{12pt}{15pt}\selectfont}
\newcommand{\medium} {\fontsize{14pt}{17pt}\selectfont}
\newcommand{\large} {\fontsize{16pt}{19.5pt}\selectfont}

\newcommand{\bold} {\fontseries{b}\selectfont}
\newcommand{\italics} {\fontshape{it}\selectfont}

\renewcommand{\normalsize} {
	\regular\selectfont
}

\newcommand{\titulnilist} {
	\newpage
	{\centering
		{\medium \@fullschool}
		
		\vspace{2cm}
		
		{\large\bold
			\@school
		}
		
		\vfill
		
		{\large\bold
			\@subject
		}
		
		\vspace{1cm}
		
		{\large\bold
			\@title
		}
		
		\vfill
		
		{\medium \@date \hfill \@author}
	}
	\newpage
}

\newcommand{\prohlaseniautora} {
	\newpage
	\null
	\vfill
	\enquote{\italics Prohlašuji, že jsem maturitní práci vypracoval(a) samostatně a použil(a) jsem literárních pramenů,  informací a obrázků, které cituji a uvádím v seznamu použité literatury a zdrojů informací a v seznamu použitých obrázků a neporušil jsem autorská práva.
	
	Souhlasím s umístěním kompletní maturitní práce nebo její části na školní internetové stránky a s použitím jejích ukázek pro výuku.}
	
	\vspace{1cm}
	
	\noindent
	V Pardubicích dne ...........................
	\hfill
	podpis
	................................................
	
	\newpage
}

\newcommand{\zadaniprace}[9] {
	\newpage
	\regular
	{\centering\bold
		
		{\medium \@fullschool}
		
		MATURITNÍ ZKOUŠKA – PROFILOVÁ ČÁST – MATURITNÍ PROJEKT
		
		zadání maturitní práce

		\makebox[\linewidth]{\rule{\linewidth}{0.4pt}}
	}
	
	\begin{tabular}{ l @{\hskip 5pt} l }
	Obor: & #1 \\
	Školní rok: & #2 \\
	Třída: #3 & \\
	\bold Jméno a příjmení žáka: & \bold #4 \\
	\bold Téma maturitní práce: & \bold #5 \\
	Vedoucí maturitní práce: & #6 \\
	Pracoviště vedoucího: & #7
	\end{tabular}
	
	{\bold Zadání:}
	
	#8
	
	{\bold Hlavní body administrace:}
	
	#9
	
	\newpage
}

\newcommand{\anotace}[3] {
	\newpage
	{\italics
		{\medium #1}
		
		#2
		
		#3
	}
	
	\newpage
}

\newcommand{\kapitola}[2] {
	\newpage
	
	{\large\bold #1}
	
	#2
	
	\newpage
}
