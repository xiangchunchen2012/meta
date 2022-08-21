#data##
rename stddev sd
rename samplesize n
network setup mean sd n, study(study) trt(t) ref(control) smd
network map, improve
#inconsistency#
network meta i
network meta c
network forest
#sidesplit#
network sidesplit all, tau
#sucra#
clear
network setup mean sd n, study(study) trt(t) format(augment) smd
network meta c
network rank max, all zero reps(5000) gen(prob)
sucra prob*,lab(control CR CS CT combined)
#comparison#
netleague, lab(control CR CS CT combined) sort(combined CT CS CR control)
intervalplot, null(0) lab(control CR CS CT combined)
#funnel#
network convert pairs
netfunnel _y _stderr _t1 _t2 , random bycomp add(lfit _stderr _ES_CEN) noalpha
#loop inconsistency#
ifplot _y _stderr _t1 _t2 id, tau2(loop)

