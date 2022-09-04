url := http://www.rtqe.net/ObliqueStrategies/
trim := egrep '<P>[^<]' | perl -pe 's/(<.*?>)//g' | perl -pe 's/ +/ /g'

all: e1 e2 e3
	cat $^ | sort -u > $@

e1:
	curl -s '$(url)/Ed1.html' | $(trim) > $@

e2:
	curl -s '$(url)/Ed2.html' | $(trim) > $@

e3:
	curl -s '$(url)/Ed3.html' | $(trim) > $@

clean:
	rm -f e1 e2 e3 all

