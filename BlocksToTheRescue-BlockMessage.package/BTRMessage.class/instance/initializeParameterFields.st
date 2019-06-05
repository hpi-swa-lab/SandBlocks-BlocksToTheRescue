accessing
initializeParameterFields
	
	| parameterFieldWidth parameterFieldHeight parameterFieldSpacing frontSpacing numArgs |
	
	self parameterFields: OrderedCollection new.
	parameterFieldWidth := 50.
	parameterFieldHeight := 20.
	parameterFieldSpacing := 20.
	frontSpacing := 10.
	numArgs := self internalSymbol numArgs.
	
	1 to: numArgs do:
		[:index | | parameterField |
					parameterField := TextMorph new
										extent: parameterFieldWidth @ parameterFieldHeight;
										position: (frontSpacing + ((index - 1) * (parameterFieldWidth + parameterFieldSpacing))) @ frontSpacing;
										backgroundColor: #V3;<~"98E%":+u-!!ElE@r,RpF!,OGEckl6F`M%"!!!!$"q!b4@ruF'DIIR2"98E%('jm?!%S'V!!!!$
"q*_<F)PQ&@<?4%D?^>;DKKH&ATA%V!!!$&z#ljr*!t##.!'CGt6#q!SH"CMRDes6$@ruF'D?p4B
!!*3&!!!!*!!!!$$31&+49cR"AT;j(DI[6d@VfUCDes6$@ruF'D?p4B!!*3&!!!!*!!!!$$31&+
49bsTEcPT6#QOi)!<`B&!!!<*!!!*.!!!!]"qX=6F(f,q6Z6dWARfgrDf,g\!!!*(z&I!8bCi"A/
"^uFl@<i.Z!!!*.!!!!]"pRk4C1Ums#QOi)!<`B&!!!<*!!!*.!!!!]$31&++:%rI!!<?(!!!!+
!!!#g$31&+pB^g"!!<Q.!!#+c"[d3EDfQ*`!!!-)z&Hd&d@M&uX@:Nt^A41!JFD)6t@prk\ARn,A
FAQCfFCfK1#ljr*!t##.!'CGi:3CD_ATA%V!!!$&z!=8`+!!<Q.!!#+c#u+i@DJ=38A7Z#H!!!$&
z!=8`+!!<Q.!!#+c'MMqUB4XnXF(o`1G%F6_FCf)rEX2XF!!*3&!!!!*!!!!$$31&+49c-[Des6$
@ruF'D?p4B!!*3&!!!!"!<E3%!=8`+!!<Q.!!#+c$W(k^FDjraC1Ums#QOi)!<`B&!!!$#!=8`+
!!<Q.!!#+c#uY>EFCB'"Ch3kP!!!*(z&I*/oBkM-t&I)``Ec,H/#ljr*!t##.!'CGs6<$iMDf0W<
@;^0]De*Eq#QOi)"U"f*!!!TC@prk\ARn_]DfTDfFE2)5B+YPjEbT0#DII?\AU&;/#^0onG=5k]
@1`Zd@;L't#ljr*!t##.!'CGm6@!Za;gE4hDeo[Z!!!$&z#ljr*!t##.!'CGp6<$iMDes?49lFQR
C^:"@!!NK*!!!!+!!!(P$31&-PmRKk!i$)&!!98/!!!!$$31&+49cNe<)Q"kF*)G2@rt%RDe!QW
De*Eq#QOi)"9\])!!!?+!!7`Z!!!(c$31&-UB(Z$!!!*.!!!!]"pS"OD.7F"#QOi)!<`B&!!!<*
!!!*.!!!!]"pS"JEbTE(#QOi)!<`B&!!!$#!=8`+!!<Q.!!#+c"]0,ODKH-a!!!*(z&HR+g!I4\H
!<E3-!!!!$$31&+49c!VBln3#E!QFD!!*3&!!!!2%!-Q1ATD9s@<6L$EsVgH!!<Q.!!",E!!!!7
#QOi).ffqV!!!*.!!!!]$31&+8I>Ft!JUm\!!!*.!!!!]$31&+AdSM<!0%9b!!!*.!!!!]$31&+
N=#Xc!UU0n!!!*.!!!!]$31&+e-Z0U!UU0n!!!*.!!!!]$31&,#RUP3!YYk?!!!*.!!!!]$31&+
\I&<:!+lN;!!!*.!!!!]$31&++:8)K!7V;T!!!*.!!!!]$31&,L'dn\!M]r$!!!*.!!!!]$31&,
7g]4r!=/]4!!!!$$31&+4:2&g!M]u%!!*?+#ljr*!t##.!'CSg!!0tE!!!!j#ljr*!t##.!'CSg
!!2Ho!!!$*!<E3%!<EK,!!!*.!!!!]$31&-'+k=aBl!eN!=8`+!!<Q.!!#+g!!!'Z$31&,#RLJ2
!!<Q.!!#+g!!!(4$31&.'aXj?!!<Q.!!#+g!!!)7$31&.:^I+%!!<Q.!!#+g!!!)W$31&-AdJG;
!!<Q.!!#+g!!!*9$31&,#QY53!!!*.!!!!]$31&.:^R1&")J8D!!!*.!!!!]$31&.C^L.B!+l64
!=8`+!!<Q.!!#+g!!!+Z$31&,#QXr,!<EK,!!!*.!!!!]$31&.YmLI2!+lN;!!!00!!!)W!<EK,
!!!*.!!!!A"98E%!!iQ)!!<6&!=8`+!!EW/!!,Rm5QCc`"98E%+:E]%!<rK~>.
					self parameterFields add: parameterField.
					self addMorph: parameterField].
				
	numArgs > 0 ifTrue: [self extent: (self parameterFields size * (parameterFieldWidth + parameterFieldSpacing)) @ (self extent y)].