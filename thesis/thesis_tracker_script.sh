date +%d.%m.%y >> thesis_word_dates.dat
texcount -total -template={SUM} thesis.tex chapters/chapter*/chapter*.tex >> thesis_word_tracker.dat
echo $'\n' >> thesis_word_tracker.dat 
python plot_words.py 