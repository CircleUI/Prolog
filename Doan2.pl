/**
 *male
/
male(pPhillip).
male(pCharles).
male(cmPhillips).
male(tLaurence).
male(pAndrew).
male(pEdward).
male(pWilliam).
male(pHarry).
male(PeterPhillips).
male(mTindall).
male(jvSevern).
male(pGeorge).
male(mgTindall).
/**
*female
/
female(qElizabethII).
female(pDiana).
female(cpBowles).
female(pAnne).
female(sFerguson).
female(srJones).
female(kMiddleton).
female(aKelly).
female(zPhillips).
female(pBeatrice).
female(pEugenie).
female(llmWindsor).
female(pCharlotte).
female(sPhillips).
female(iPhillips).

/**
*parent
/
/**The he 1
/
parent(qElizabethII,pCharles).
parent(pPhillip,pCharles).
parent(qElizabethII,pAnne).
parent(pPhillip,pAnne).
parent(qElizabethII,pAndrew).
parent(pPhillip,pAndrew).
parent(qElizabethII,pEdward).
parent(pPhillip,pEdward).
/**The he 2
/
parent(pDiana,pWilliam).
parent(pCharles,pWilliam).
parent(pDiana,pHarry).
parent(pCharles,pHarry).

parent(cmPhillips,PeterPhillips).
parent(pAnne,PeterPhillips).
parent(cmPhillips,zPhillips).
parent(pAnne,zPhillips).

parent(sFerguson,pBeatrice).
parent(pAndrew,pBeatrice).
parent(sFerguson,pEugenie).
parent(pAndrew,pEugenie).

parent(srJones,jvSevern).
parent(pEdward,jvSevern).
parent(srJones,llmWindsor).
parent(pEdward,llmWindsor).

parent(pWilliam,pGeorge).
parent(kMiddleton,pGeorge).
parent(pWilliam,pCharlotte).
parent(kMiddleton,pCharlotte).

parent(aKelly,sPhillips).
parent(PeterPhillips,sPhillips).
parent(aKelly,iPhillips).
parent(PeterPhillips,iPhillips).

parent(zPhillips,mgTindall).
parent(mTindall,mgTindall).

/**
*married
/

married(qElizabethII,pPhillips).
married(pCharles,cpBowles).
married(pAnne,tLaurence).
married(srJones,pEdward).
married(pWilliam,kMiddleton).
married(aKelly,PeterPhillips).
married(zPhillips,mTindall).

/**
*divorced
/
divorced(pDiana,pCharles).
divorced(cmPhillips,pAnne).
divorced(sFerguson,pAndrew).


husband(Person,Wife):-married(Person,Wife),male(Person).
wife(Person,Husband):-married(Person,Husband),female(Person).
father(Parent,Child):-parent(Parent,Child),male(Parent).
mother(Parent,Child):-parent(Parent,Child),female(Parent).
child(Child,Parent):-parent(Parent,Child).
son(Child,Parent):-parent(Parent,Child),male(Child).
daughter(Child,Parent):-parent(Parent,Child),female(Child).
grandparent(GP,GC):-parent(X,GC),parent(GP,X).
grandmother(GM,GC):-parent(X,GC),parent(GM,X),female(GM).
grandfather(GF,GC):-parent(X,GC),parent(GF,X),male(GF).
grandchild(GC,GP):-grandparent(GP,GC).
grandson(GS,GP):-grandchild(GP,GS),male(GS).
granddaughter(GD,GP):-grandchild(GP,GD),female(GD).
sibling(Person1,Person2):-parent(X,Person1),parent(X,Person2).
brother(Person,Sibling):-sibling(Person,Sibling),male(Person).
sister(Person,Sibling):-sibling(Person,Sibling),female(Person).
aunt(Person,NieceNephew):-parent(X,NieceNephew),sibling(X,Person),female(Person).
uncle(Person,NieceNephew):-parent(X,NieceNephew),sibling(X,Person),male(Person).
niece(Person,AuntUncle):-(aunt(AuntUncle,Person)+uncle(AuntUncle,Person)),female(Person).
nephew(Person,AuntUncle):-(aunt(AuntUncle,Person)+uncle(AuntUncle,Person)),male(Person).