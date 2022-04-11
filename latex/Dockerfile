FROM qmcgaw/latexdevcontainer

RUN tlmgr update --self && \
    tlmgr install latexindent latexmk && \
    tlmgr install mathexam setspace adjustbox xkeyval collectbox enumitem lastpage xcolor etoolbox moderncv fontawesome5 pgf multirow arydshln && \
    texhash