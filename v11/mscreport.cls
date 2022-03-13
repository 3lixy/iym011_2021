\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nscreport}[]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions \relax

\LoadClass[12pt,twoside]{report}
\RequirePackage[onehalfspacing]{setspace}
\RequirePackage[top=1.2in, left=2.7cm, bottom=1.2in, right=2.7cm]{geometry}

\RequirePackage[bottom]{footmisc}

\RequirePackage{caption} \captionsetup[table]{skip=1ex}

\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
}


