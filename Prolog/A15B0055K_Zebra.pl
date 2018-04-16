exist(A,(A,_,_,_,_)).
exist(A,(_,A,_,_,_)).
exist(A,(_,_,A,_,_)).
exist(A,(_,_,_,A,_)).
exist(A,(_,_,_,_,A)).

nalevo_od(A,B,(A,B,_,_,_)).
nalevo_od(A,B,(_,A,B,_,_)).
nalevo_od(A,B,(_,_,A,B,_)).
nalevo_od(A,B,(_,_,_,A,B)).

prostredni_dum(A,(_,_,A,_,_)).
prvni_dum(A,(A,_,_,_,_)).

vedle(A,B,(B,A,_,_,_)).
vedle(A,B,(_,B,A,_,_)).
vedle(A,B,(_,_,B,A,_)).
vedle(A,B,(_,_,_,B,A)).
vedle(A,B,(A,B,_,_,_)).
vedle(A,B,(_,A,B,_,_)).
vedle(A,B,(_,_,A,B,_)).
vedle(A,B,(_,_,_,A,B)).


reseni(ZebraOwner) :-
    Domy = (dum(Narodnost1,Zvire1,Kurivo1,Napoj1,Barva1),dum(Narodnost2,Zvire2,Kurivo2,Napoj2,Barva2),dum(Narodnost3,Zvire3,Kurivo3,Napoj3,Barva3),dum(Narodnost4,Zvire4,Kurivo4,Napoj4,Barva4),dum(Narodnost5,Zvire5,Kurivo5,Napoj5,Barva5)),
   %Angli�an �ije v �erven�m dom�.
    exist(dum(anglican,_,_,_,cervena),Domy),
   %�v�d chov� psy.
    exist(dum(sved,pes,_,_,_),Domy),
   %D�n pije �aj
    exist(dum(dan,_,_,caj,_),Domy),
   %Zelen� d�m je hned nalevo od b�l�ho.
    nalevo_od(dum(_,_,_,_,zelena),dum(_,_,_,_,bila),Domy),
   %Obyvatel zelen�ho domu pije k�vu.
    exist(dum(_,_,_,kava,zelena),Domy),
   %Ten, co kou�� Pall Mall, chov� pt�ky.
    exist(dum(_,ptak,pallMall,_,_),Domy),
   %Obyvatel �lut�ho domu kou�� Dunhill.
    exist(dum(_,_,dunhill,_,zluta),Domy),
   %Ten, co �ije ve st�edn�m dom�, pije ml�ko.
    prostredni_dum(dum(_,_,_,mleko,_),Domy),
   %Nor �ije v prvn�m dom�.
    prvni_dum(dum(nor,_,_,_,_),Domy),
   %Ten, co kou�� Blend, �ije vedle toho, co chov� ko�ky.
    vedle(dum(_,_,blend,_,_),dum(_,kocka,_,_,_),Domy),
   %Ten, co chov� kon�, �ije vedle toho, co kou�� Dunhill.
    vedle(dum(_,kun,_,_,_),dum(_,_,dunhill,_,_),Domy),
   %Ten, co kou�� Blue Master, pije pivo.
    exist(dum(_,_,blueMaster,pivo,_),Domy),
   %N�mec kou�� Prince.
    exist(dum(nemec,_,prince,_,_),Domy),
   %Nor �ije vedle modr�ho domu.
    vedle(dum(nor,_,_,_,_),dum(_,_,_,_,modra),Domy),
   %Ten, co kou�� Blend, m� souseda, kter� pije vodu.
    vedle(dum(_,_,blend,_,_),dum(_,_,_,water,_),Domy),
   %Kdo je vlastnikem Zebry
    exist(dum(ZebraOwner,zebra,_,_,_),Domy).



