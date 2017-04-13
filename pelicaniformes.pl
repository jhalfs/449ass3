/*
CPSC 499 Prolog Assignment
April 14, 2017

Group Members:
	Kisoon Kim
	Julien Halford
	
Project:
	Creating a database of information about the order Pelicaniforms, which can be queried
	in many different ways in order to yield scientific information such as: names, prey, and 
	many others. 
*/

%There is only 1 order
order(pelecaniformes).


%There is only 3 families
family(pelecanidae).
family(ardeidae).
family(threskiornithdae).


%12 Different genus
genus(ardea).
genus(egretta).
genus(pelecanus).
genus(botaurus).
genus(ixobrychus).
genus(nycticorax).
genus(nyctanassa).
genus(bubulcus).
genus(butorides).
genus(eudocimus).
genus(plegadis).
genus(platalea).


%There are 18 different species
species(occidentalis).
species(lentiginosus).
species(erythrorhynchos).
species(caerulea).
species(tricolor).
species(nycticorax).
species(violacea).
species(alba).
species(thula).
species(rufescens).
species(ibis).
species(virescens).
species(albus).
species(falcinellus).
species(chihi).
species(exilis).
species(herodias).
species(ajaja).


%Parent with proper indentation
%in same order as specification table
hasParent(pelecanidae,pelecaniformes).
	hasParent(pelecanus,pelecanidae).
		hasParent(erythrorhynchos,pelecanus).
		hasParent(occidentalis,pelecanus).
hasParent(ardeidae,pelecaniformes).
	hasParent(botaurus,ardeidae).
		hasParent(lentiginosus,botaurus).
	hasParent(ixobrychus,ardeidae).
		hasParent(exilis,ixobrychus).
	hasParent(ardea,ardeidae).
		hasParent(herodias,ardea).
		hasParent(alba,ardea).
	hasParent(egretta,ardeidae).
		hasParent(thula,egretta).
		hasParent(caerulea,egretta).
		hasParent(tricolor,egretta).
		hasParent(rufescens,egretta).
	hasParent(bubulcus,ardeidae).
		hasParent(ibis,bubulcus).
	hasParent(butorides,ardeidae).
		hasParent(virescens,butorides).
	hasParent(nycticorax,ardeidae).
		hasParent(nycticorax,nycticorax).
	hasParent(nyctanassa,ardeidae).
		hasParent(violacea,nyctanassa).
hasParent(threskiornithdae,pelecaniformes).
	hasParent(eudocimus,threskiornithdae).
		hasParent(albus,eudocimus).
	hasParent(plegadis,threskiornithdae).
		hasParent(falcinellus,plegadis).
		hasParent(chihi,plegadis).
	hasParent(platalea,threskiornithdae).
		hasParent(ajaja,platalea).


%Common name with desired indentation
commonName(pelecanus,pelican).
	commonName(erythrorhynchos,americanWhitePelican).
	commonName(occidentalis,brownPelican).
commonName(botaurus,bittern).
	commonName(lentiginosus,americanBittern).
commonName(ixobrychus,bittern).
	commonName(exilis,leastBittern).
commonName(ardea,heron).
	commonName(herodias,greatBlueHeron).
	commonName(alba,greatEgret).
commonName(egretta,heron).
commonName(egretta,egret).
	commonName(thula,snowyEgret).
	commonName(caerulea,littleBlueHeron).
	commonName(tricolor,tricoloredHeron).
	commonName(rufescens,reddishEgret).
commonName(bubulcus,egret).
	commonName(ibis,cattleEgret).
commonName(butorides,heron).
	commonName(virescens,greenHeron).
commonName(nycticorax,nightHeron).
	commonName(nycticorax,blackCrownedNightHeron).
commonName(nyctanassa,nightHeron).
	commonName(violacea,yellowCrownedNightHeron).
commonName(eudocimus,ibis).
	commonName(albus,whiteIbis).
commonName(plegadis,ibis).
	commonName(falcinellus,glossyIbis).
	commonName(chihi,whiteFacedIbis).
commonName(platalea,spoonbill).
	commonName(ajaja,roseateSpoonbill).



%Range information
%If the bird is in Alberta, then it is also in Canada.
rangesTo(botaurus_lentiginosus,canada).
rangesTo(botaurus_lentiginosus,alberta).
rangesTo(nycticorax_nycticorax, canada).
rangesTo(nycticorax_nycticorax, alberta).
rangesTo(ardea_herodias, canada).
rangesTo(ardea_herodias, alberta).
rangesTo(pelecanus_erythrorhynchos,canada).
rangesTo(pelecanus_erythrorhynchos,alberta).
rangesTo(ardea_alba, canada).
rangesTo(bubulcus_ibis, canada).
rangesTo(butorides_virescens, canada).


%Habitat information
%Possible habitats: lakePond, ocean,  marsh. 
habitat(pelecanus_erythrorhynchos,	  lakePond).
habitat(pelecanus_occidentalis,		  ocean).
habitat(botaurus_lentiginosus,		  marsh).
habitat(ixobrychus_exilis,	    	  marsh).
habitat(ardea_herodias,			  marsh).
habitat(ardea_alba,    		          marsh).
habitat(egretta_thula,		          marsh).
habitat(egretta_caerulea,	          marsh).
habitat(egretta_tricolor,	          marsh).
habitat(egretta_rufescens,	          marsh).
habitat(bubulcus_ibis,		          marsh).
habitat(butorides_virescens,	          marsh).
habitat(nycticorax_nycticorax,	  	  marsh).
habitat(nyctanassa_violacea,		  marsh).
habitat(eudocimus_albus,		  marsh).
habitat(plegadis_falcinellus,		  marsh).
habitat(plegadis_chihi,		          marsh).
habitat(platalea_ajaja,		          marsh).


%Food information
%Possible foods: fish, insects
food(pelecanus_erythrorhynchos,		fish).
food(pelecanus_occidentalis,	        fish).
food(botaurus_lentiginosus,		fish).
food(ixobrychus_exilis,			fish).
food(ardea_herodias,			fish).
food(ardea_alba,			fish).
food(egretta_thula,			fish).
food(egretta_caerulea,			fish).
food(egretta_tricolor,			fish).
food(egretta_rufescens,			fish).
food(butorides_virescens,		fish).
food(nycticorax_nycticorax,		fish).
food(platalea_ajaja,			fish).
food(bubulcus_ibis,			insects).
food(nyctanassa_violacea,		insects).
food(eudocimus_albus,			insects).
food(plegadis_falcinellus,		insects).
food(plegadis_chihi,			insects).


%Nesting information
%Possible nesting locations: ground, tree
nesting(pelecanus_erythrorhynchos,	ground).
nesting(botaurus_lentiginosus,		ground).
nesting(ixobrychus_exilis,		ground).
nesting(plegadis_falcinellus,		ground).
nesting(plegadis_chihi,			ground).
nesting(pelecanus_occidentalis,		tree).
nesting(ardea_herodias,			tree).
nesting(ardea_alba,			tree).
nesting(egretta_thula,			tree).
nesting(egretta_caerulea,		tree).
nesting(egretta_tricolor,		tree).
nesting(egretta_rufescens,		tree).
nesting(bubulcus_ibis,			tree).
nesting(butorides_virescens,		tree).
nesting(nycticorax_nycticorax,		tree).
nesting(nyctanassa_violacea,		tree).
nesting(eudocimus_albus,		tree).
nesting(platalea_ajaja,			tree).



%Behaviour information
%Possible behaviours: surfaceDive, aerialDive, stalking, groundForager, probing
behavior(pelecanus_erythrorhynchos,	surfaceDive).
behavior(pelecanus_occidentalis,	aerialDive).
behavior(botaurus_lentiginosus,		stalking).
behavior(ixobrychus_exilis,		stalking).
behavior(ardea_herodias,		stalking).
behavior(ardea_alba,			stalking).
behavior(egretta_thula,			stalking).
behavior(egretta_caerulea,		stalking).
behavior(egretta_tricolor,		stalking).
behavior(egretta_rufescens,		stalking).
behavior(butorides_virescens,		stalking).
behavior(nycticorax_nycticorax,		stalking).
behavior(nyctanassa_violacea,		stalking).
behavior(eudocimus_albus,		probing).
behavior(plegadis_chihi,		probing).
behavior(platalea_ajaja,		probing).
behavior(bubulcus_ibis,			groundForager).
behavior(plegadis_falcinellus,		groundForager).


%Conservation information:
%Conservation type: lc, nt
conservation(pelecanus_erythrorhynchos,		lc).
conservation(pelecanus_occidentalis,		lc).
conservation(botaurus_lentiginosus,		lc).
conservation(ixobrychus_exilis,			lc).
conservation(ardea_herodias,			lc).
conservation(ardea_alba,			lc).
conservation(egretta_thula,			lc).
conservation(egretta_caerulea,			lc).
conservation(egretta_tricolor,			lc).
conservation(bubulcus_ibis,			lc).
conservation(butorides_virescens,		lc).
conservation(nycticorax_nycticorax,		lc).
conservation(nyctanassa_violacea,		lc).
conservation(eudocimus_albus,			lc).
conservation(plegadis_falcinellus,		lc).
conservation(plegadis_chihi,			lc).
conservation(platalea_ajaja,			lc).
conservation(egretta_rufescens,			nt).


%Predicates used to query the database:

hasSciName(C, N) :-
	hasCompoundName(G, S, N), hasCommonName(S, C);
    order(N), hasCommonName(N, C);
    family(N), hasCommonName(N, C);
    genus(N), hasCommonName(N, C).
    
    
isa(A,B) :-
    
    
%RangesTo predicate, only common names if A is varible
rangesTo(A,B) :- atom(A), (order(A);family(A);genus(A)),
	isaStrict(C,A), hasCompoundName(_,S,C), species(S), rangesTo(C,B).
		
%Habitat predicate, more than one result possible if A is a group
habitat(A,B) :- atom(A), (order(A);family(A);genus(A)),
  	isaStrict(C,A), hasCompoundName(_,S,C), species(S), habitat(C,B).
		
%Food predicate, more than one result possible if A is a group		
food(A,B) :- atom(A), (order(A);family(A);genus(A)),
    	isaStrict(C,A), hasCompoundName(_,S,C), species(S), food(C,B).
		
%Nesting predicate, more than one result possible if A is a group		
nesting(A,B) :- atom(A), (order(A);family(A);genus(A)),
    	isaStrict(C,A), hasCompoundName(_,S,C), species(S), nesting(C,B).
		
%Behaviour predicate, more than one result possible if A is a group
behaviour(A,B) :- atom(A), (order(A);family(A);genus(A)),
    	isaStrict(C,A), hasCompoundName(_,S,C), species(S), behaviour(C,B).
		
%Conservation predicate, more than one result possible if A is a group
conservation(A,B) :- atom(A), (order(A);family(A);genus(A)),
    	isaStrict(C,A), hasCompoundName(_,S,C), species(S), conservation(C,B).
