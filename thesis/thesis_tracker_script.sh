date +%d.%m.%y >> /Users/antoniabevan/Documents/work/yr3/thesis/thesis_word_dates.dat
echo $'\n' >> /Users/antoniabevan/Documents/work/yr3/thesis/thesis_word_dates.dat
texcount -total -template={SUM} /Users/antoniabevan/Documents/work/yr3/thesis/thesis.tex /Users/antoniabevan/Documents/work/yr3/thesis/chapters/chapter*/chapter*.tex >> /Users/antoniabevan/Documents/work/yr3/thesis/thesis_word_tracker.dat
echo $'\n' >> /Users/antoniabevan/Documents/work/yr3/thesis/thesis_word_tracker.dat
python /Users/antoniabevan/Documents/work/yr3/thesis/plot_words.py 