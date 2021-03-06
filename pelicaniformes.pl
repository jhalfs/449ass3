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


hasParent2(pelecanidae,pelecaniformes).
	hasParent2(pelecanus,pelecanidae).
		hasParent2(pelecanus_erythrorhynchos,pelecanus).
		hasParent2(pelecanus_occidentalis,pelecanus).
hasParent2(ardeidae,pelecaniformes).
	hasParent2(botaurus,ardeidae).
		hasParent2(botaurus_lentiginosus,botaurus).
	hasParent2(ixobrychus,ardeidae).
		hasParent2(ixobrychus_exilis,ixobrychus).
	hasParent2(ardea,ardeidae).
		hasParent2(ardea_herodias,ardea).
		hasParent2(ardea_alba,ardea).
	hasParent2(egretta,ardeidae).
		hasParent2(egretta_thula,egretta).
		hasParent2(egretta_caerulea,egretta).
		hasParent2(egretta_tricolor,egretta).
		hasParent2(egretta_rufescens,egretta).
	hasParent2(bubulcus,ardeidae).
		hasParent2(bubulcus_ibis,bubulcus).
	hasParent2(butorides,ardeidae).
		hasParent2(butorides_virescens,butorides).
	hasParent2(nycticorax,ardeidae).
		hasParent2(nycticorax_nycticorax,nycticorax).
	hasParent2(nyctanassa,ardeidae).
		hasParent2(nyctanassa_violacea,nyctanassa).
hasParent2(threskiornithdae,pelecaniformes).
	hasParent2(eudocimus,threskiornithdae).
		hasParent2(eudocimus_albus,eudocimus).
	hasParent2(plegadis,threskiornithdae).
		hasParent2(plegadis_falcinellus,plegadis).
		hasParent2(plegadis_chihi,plegadis).
	hasParent2(platalea,threskiornithdae).
		hasParent2(platalea_ajaja,platalea).



hasCommonName(pelecanus,pelican).
	hasCommonName(pelecanus_erythrorhynchos,americanWhitePelican).
	hasCommonName(pelecanus_occidentalis,brownPelican).
hasCommonName(botaurus,bittern).
	hasCommonName(botaurus_lentiginosus,americanBittern).
hasCommonName(ixobrychus,bittern).
	hasCommonName(ixobrychus_exilis,leastBittern).
hasCommonName(ardea,heron).
	hasCommonName(ardea_herodias,greatBlueHeron).
	hasCommonName(ardea_alba,greatEgret).
hasCommonName(egretta,heron).
hasCommonName(egretta,egret).
	hasCommonName(egretta_thula,snowyEgret).
	hasCommonName(egretta_caerulea,littleBlueHeron).
	hasCommonName(egretta_tricolor,tricoloredHeron).
	hasCommonName(egretta_rufescens,reddishEgret).
hasCommonName(bubulcus,egret).
	hasCommonName(bubulcus_ibis,cattleEgret).
hasCommonName(butorides,heron).
	hasCommonName(butorides_virescens,greenHeron).
hasCommonName(nycticorax,nightHeron).
	hasCommonName(nycticorax_nycticorax,blackCrownedNightHeron).
hasCommonName(nyctanassa,nightHeron).
	hasCommonName(nyctanassa_violacea,yellowCrownedNightHeron).
hasCommonName(eudocimus,ibis).
	hasCommonName(eudocimus_albus,whiteIbis).
hasCommonName(plegadis,ibis).
	hasCommonName(plegadis_falcinellus,glossyIbis).
	hasCommonName(plegadis_chihi,whiteFacedIbis).
hasCommonName(platalea,spoonbill).
	hasCommonName(platalea_ajaja,roseateSpoonbill).


hasCommonName(pelecanus, erythrorhynchos, americanWhitePelican).
hasCommonName(pelecanus, occidentalis, brownPelican).
hasCommonName(botaurus, lentiginosus, americanBittern).
hasCommonName(ixobrychus, exilis, leastBittern).
hasCommonName(ardea, herodias, greatBlueHeron).
hasCommonName(ardea, alba, greatEgret).
hasCommonName(egretta, thula, snowyEgret).
hasCommonName(egretta, caerulea, littleBlueHeron).
hasCommonName(egretta, tricolor, tricoloredHeron).
hasCommonName(egretta, rufescens, reddishEgret).
hasCommonName(bubulcus, ibis, cattleEgret).
hasCommonName(butorides, virescens, greenHeron).
hasCommonName(nycticorax, nycticorax, blackCrownedNightHeron).
hasCommonName(nyctanassa, violacea, yellowCrownedNightHeron).
hasCommonName(eudocimus, albus, whiteIbis).
hasCommonName(plegadis, falcinellus, glossyIbis).
hasCommonName(plegadis, chihi, whiteFacedIbis).
hasCommonName(platalea, ajaja, roseateSpoonbill).

hasSciName(C, N) :- hasCommonName(N, C), hasCompoundName(D, E, N), !.
hasSciName(C, N) :- hasCommonName(N, C), order(N); family(N); genus(N).

hasCompoundName(G, S, N) :- hasCommonName(N, D), hasCommonName(G, S, D), \+(S = N), \+(G = N).



%Range information
%If the bird is in Alberta, then it is also in Canada.
rangesTo(botaurus_lentiginosus,		canada).
rangesTo(botaurus_lentiginosus,		alberta).
rangesTo(nycticorax_nycticorax, 	canada).
rangesTo(nycticorax_nycticorax, 	alberta).
rangesTo(ardea_herodias, 		canada).
rangesTo(ardea_herodias, 		alberta).
rangesTo(pelecanus_erythrorhynchos,	canada).
rangesTo(pelecanus_erythrorhynchos,	alberta).
rangesTo(ardea_alba, 			canada).
rangesTo(bubulcus_ibis, 		canada).
rangesTo(butorides_virescens, 		canada).
  
%RangesTo predicate, only common names if A is varible
rangesTo(A,B) :- atom(A), (order(A);family(A);genus(A)),
	isaStrict(C,A), hasCompoundName(_,S,C), species(S), rangesTo(C,B).
	

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

%Habitat predicate, more than one result possible if A is a group
habitat(A,B) :- atom(A), (order(A);family(A);genus(A)),
  	isaStrict(C,A), hasCompoundName(_,S,C), species(S), habitat(C,B).
	

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
		
%Food predicate, more than one result possible if A is a group		
food(A,B) :- atom(A), (order(A);family(A);genus(A)),
    	isaStrict(C,A), hasCompoundName(_,S,C), species(S), food(C,B).
	

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
	
%Nesting predicate, more than one result possible if A is a group		
nesting(A,B) :- atom(A), (order(A);family(A);genus(A)),
    	isaStrict(C,A), hasCompoundName(_,S,C), species(S), nesting(C,B).


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
		
%Behaviour predicate, more than one result possible if A is a group
behaviour(A,B) :- atom(A), (order(A);family(A);genus(A)),
    	isaStrict(C,A), hasCompoundName(_,S,C), species(S), behaviour(C,B).
	

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
		
%Conservation predicate, more than one result possible if A is a group
conservation(A,B) :- atom(A), (order(A);family(A);genus(A)),
    	isaStrict(C,A), hasCompoundName(_,S,C), species(S), conservation(C,B).

		
