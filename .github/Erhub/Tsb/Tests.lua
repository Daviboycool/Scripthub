local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\241\11","\223\223\37\33"),function(v42) if (v9(v42,2)==81) then local v100=0;while true do if (0==v100) then v30=v8(v11(v42,1,1));return "";end end else local v101=v10(v8(v42,16));if v30 then local v109=0;local v110;while true do if (v109==0) then v110=v13(v101,v30);v30=nil;v109=1;end if (v109==1) then return v110;end end else return v101;end end end);local function v31(v43,v44,v45) if v45 then local v102=0;local v103;while true do if (v102==0) then v103=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v103-(v103%1) ;end end else local v104=0;local v105;while true do if (v104==0) then v105=2^(v44-(2 -1)) ;return (((v43%(v105 + v105))>=v105) and 1) or 0 ;end end end end local function v32() local v46=v9(v27,v29,v29);v29=v29 + 1 ;return v46;end local function v33() local v47,v48=v9(v27,v29,v29 + (5 -3) );v29=v29 + 2 ;return (v48 * 256) + v47 ;end local function v34() local v49,v50,v51,v52=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;return (v52 * 16777216) + (v51 * 65536) + (v50 * 256) + v49 ;end local function v35() local v53=0;local v54;local v55;local v56;local v57;local v58;local v59;while true do if (v53==2) then v58=v31(v55,53 -32 ,31);v59=((v31(v55,32)==1) and  -1) or 1 ;v53=3;end if (v53==3) then if (v58==0) then if (v57==(619 -(555 + 64))) then return v59 * 0 ;else local v123=0;while true do if (v123==0) then v58=1;v56=931 -(857 + 74) ;break;end end end elseif (v58==(2615 -(367 + 201))) then return ((v57==0) and (v59 * (1/0))) or (v59 * NaN) ;end return v16(v59,v58-1023 ) * (v56 + (v57/(2^52))) ;end if (v53==0) then v54=v34();v55=v34();v53=1;end if (v53==1) then v56=1;v57=(v31(v55,1 -0 ,20) * (2^32)) + v54 ;v53=2;end end end local function v36(v60) local v61=0;local v62;local v63;while true do if (v61==0) then v62=nil;if  not v60 then local v118=0;while true do if (0==v118) then v60=v34();if (v60==0) then return "";end break;end end end v61=1;end if (v61==2) then v63={};for v111=1, #v62 do v63[v111]=v10(v9(v11(v62,v111,v111)));end v61=3;end if (v61==1) then v62=v11(v27,v29,(v29 + v60) -1 );v29=v29 + v60 ;v61=2;end if (v61==3) then return v14(v63);end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v64={};local v65={};local v66={};local v67={v64,v65,nil,v66};local v68=v34();local v69={};for v77=1,v68 do local v78=0;local v79;local v80;while true do if (v78==0) then v79=v32();v80=nil;v78=1;end if (v78==1) then if (v79==1) then v80=v32()~=0 ;elseif (v79==(1 + 1)) then v80=v35();elseif (v79==3) then v80=v36();end v69[v77]=v80;break;end end end v67[3]=v32();for v81=1,v34() do local v82=0;local v83;while true do if (0==v82) then v83=v32();if (v31(v83,1,1 + 0 )==0) then local v119=0;local v120;local v121;local v122;while true do if (2==v119) then if (v31(v121,1,1)==1) then v122[2]=v69[v122[2]];end if (v31(v121,2,2)==1) then v122[3]=v69[v122[3]];end v119=3;end if (v119==3) then if (v31(v121,3,12 -9 )==1) then v122[4]=v69[v122[4]];end v64[v81]=v122;break;end if (v119==1) then v122={v33(),v33(),nil,nil};if (v120==0) then local v131=0;while true do if (v131==0) then v122[1640 -(1523 + 114) ]=v33();v122[4]=v33();break;end end elseif (v120==1) then v122[3]=v34();elseif (v120==(2 + 0)) then v122[3]=v34() -((2 -0)^16) ;elseif (v120==3) then local v308=0;while true do if (v308==0) then v122[1068 -(68 + 997) ]=v34() -((1272 -(226 + 1044))^16) ;v122[4]=v33();break;end end end v119=2;end if (v119==0) then v120=v31(v83,2,3);v121=v31(v83,4,6);v119=1;end end end break;end end end for v84=1,v34() do v65[v84-1 ]=v39();end return v67;end local function v40(v71,v72,v73) local v74=v71[118 -(32 + 85) ];local v75=v71[2 + 0 ];local v76=v71[1 + 2 ];return function(...) local v86=v74;local v87=v75;local v88=v76;local v89=v38;local v90=1;local v91= -1;local v92={};local v93={...};local v94=v20("#",...) -1 ;local v95={};local v96={};for v106=0,v94 do if (v106>=v88) then v92[v106-v88 ]=v93[v106 + 1 ];else v96[v106]=v93[v106 + 1 ];end end local v97=(v94-v88) + 1 ;local v98;local v99;while true do v98=v86[v90];v99=v98[1];if (v99<=41) then if (v99<=20) then if (v99<=9) then if (v99<=4) then if (v99<=1) then if (v99>0) then v96[v98[2]]=v40(v87[v98[960 -(892 + 65) ]],nil,v73);else local v136=0;local v137;while true do if (v136==0) then v137=v98[2];v96[v137]=v96[v137](v21(v96,v137 + 1 ,v98[3]));break;end end end elseif (v99<=2) then local v138=v87[v98[3]];local v139;local v140={};v139=v18({},{[v7("\178\151\77\222\178\176\162","\218\237\200\36\176\214\213")]=function(v229,v230) local v231=v140[v230];return v231[1][v231[2]];end,[v7("\102\203\163\179\195\202\87\240\168\174","\163\57\148\205\214\180")]=function(v232,v233,v234) local v235=0;local v236;while true do if (v235==0) then v236=v140[v233];v236[1][v236[2]]=v234;break;end end end});for v237=1,v98[4] do v90=v90 + 1 ;local v238=v86[v90];if (v238[1]==22) then v140[v237-1 ]={v96,v238[7 -4 ]};else v140[v237-1 ]={v72,v238[5 -2 ]};end v95[ #v95 + 1 ]=v140;end v96[v98[2]]=v40(v138,v139,v73);elseif (v99==3) then if (v96[v98[2]]==v98[4]) then v90=v90 + 1 ;else v90=v98[3];end else v96[v98[2]]=v96[v98[3]] + v98[4] ;end elseif (v99<=6) then if (v99>5) then v96[v98[2]]();else v96[v98[3 -1 ]]=v98[3];end elseif (v99<=7) then v96[v98[2]]=v72[v98[3]];elseif (v99>8) then for v313=v98[352 -(87 + 263) ],v98[3] do v96[v313]=nil;end else v96[v98[2]]=v98[3];end elseif (v99<=14) then if (v99<=11) then if (v99==10) then local v146=0;local v147;local v148;while true do if (v146==0) then v147=v98[2];v148=v96[v98[3]];v146=1;end if (v146==1) then v96[v147 + 1 ]=v148;v96[v147]=v148[v98[4]];break;end end else local v149=0;local v150;local v151;local v152;local v153;while true do if (v149==2) then for v357=v150,v91 do v153=v153 + 1 ;v96[v357]=v151[v153];end break;end if (0==v149) then v150=v98[2];v151,v152=v89(v96[v150](v21(v96,v150 + 1 ,v91)));v149=1;end if (v149==1) then v91=(v152 + v150) -1 ;v153=0;v149=2;end end end elseif (v99<=(192 -(67 + 113))) then local v154=0;local v155;while true do if (0==v154) then v155=v98[2];v96[v155](v96[v155 + 1 ]);break;end end elseif (v99>13) then local v243=0;local v244;local v245;while true do if (v243==0) then v244=v98[2];v245=v96[v244];v243=1;end if (1==v243) then for v410=v244 + 1 ,v91 do v15(v245,v96[v410]);end break;end end else v96[v98[2]]=v73[v98[3]];end elseif (v99<=17) then if (v99<=(11 + 4)) then local v156=0;local v157;local v158;local v159;while true do if (v156==2) then for v360=1,v98[4] do local v361=0;local v362;while true do if (v361==1) then if (v362[1]==22) then v159[v360-1 ]={v96,v362[3]};else v159[v360-1 ]={v72,v362[11 -8 ]};end v95[ #v95 + 1 ]=v159;break;end if (0==v361) then v90=v90 + 1 ;v362=v86[v90];v361=1;end end end v96[v98[2]]=v40(v157,v158,v73);break;end if (v156==1) then v159={};v158=v18({},{[v7("\27\73\27\243\49\49\227","\54\68\22\114\157\85\84\155")]=function(v363,v364) local v365=0;local v366;while true do if (v365==0) then v366=v159[v364];return v366[1][v366[2]];end end end,[v7("\244\44\202\88\225\35\141\192\206\11","\164\171\115\164\61\150\74\227")]=function(v367,v368,v369) local v370=v159[v368];v370[1 + 0 ][v370[2]]=v369;end});v156=2;end if (v156==0) then v157=v87[v98[7 -4 ]];v158=nil;v156=1;end end elseif (v99>16) then local v248=v98[954 -(802 + 150) ];do return v96[v248](v21(v96,v248 + 1 ,v98[3]));end else local v249=v98[2];local v250=v96[v249 + 2 ];local v251=v96[v249] + v250 ;v96[v249]=v251;if (v250>0) then if (v251<=v96[v249 + 1 ]) then v90=v98[3];v96[v249 + 3 ]=v251;end elseif (v251>=v96[v249 + 1 ]) then v90=v98[3];v96[v249 + 3 ]=v251;end end elseif (v99<=18) then local v160=0;local v161;while true do if (v160==0) then v161=v98[2];do return v96[v161](v21(v96,v161 + 1 ,v98[3]));end break;end end elseif (v99>19) then local v253=0;local v254;while true do if (v253==0) then v254=v98[2];v96[v254](v21(v96,v254 + 1 ,v98[3]));break;end end else local v255=0;local v256;while true do if (v255==0) then v256=v98[2];do return v21(v96,v256,v91);end break;end end end elseif (v99<=30) then if (v99<=25) then if (v99<=(59 -37)) then if (v99==(37 -16)) then v96[v98[2]]=v96[v98[3 + 0 ]][v98[4]];else v96[v98[2]]=v96[v98[3]];end elseif (v99<=23) then v73[v98[3]]=v96[v98[2]];elseif (v99==24) then v96[v98[2]]=v96[v98[3]]%v96[v98[1001 -(915 + 82) ]] ;else v96[v98[5 -3 ]]=v40(v87[v98[3]],nil,v73);end elseif (v99<=(16 + 11)) then if (v99>26) then local v168=0;local v169;local v170;while true do if (v168==1) then v96[v169 + 1 ]=v170;v96[v169]=v170[v98[4 -0 ]];break;end if (v168==0) then v169=v98[2];v170=v96[v98[3]];v168=1;end end else v96[v98[2]][v96[v98[3]]]=v96[v98[4]];end elseif (v99<=28) then local v173=0;local v174;while true do if (v173==0) then v174=v98[2];v96[v174]=v96[v174](v21(v96,v174 + (1188 -(1069 + 118)) ,v98[6 -3 ]));break;end end elseif (v99==29) then v96[v98[2]]= #v96[v98[3]];else local v260=0;local v261;local v262;local v263;while true do if (v260==1) then v263=v96[v261 + 2 ];if (v263>0) then if (v262>v96[v261 + 1 ]) then v90=v98[3];else v96[v261 + 3 ]=v262;end elseif (v262<v96[v261 + 1 ]) then v90=v98[3];else v96[v261 + 3 ]=v262;end break;end if (v260==0) then v261=v98[2];v262=v96[v261];v260=1;end end end elseif (v99<=35) then if (v99<=32) then if (v99>31) then v73[v98[3]]=v96[v98[2]];else local v177=0;local v178;local v179;while true do if (v177==0) then v178=v98[3];v179=v96[v178];v177=1;end if (v177==1) then for v372=v178 + 1 ,v98[4] do v179=v179   .. v96[v372] ;end v96[v98[2]]=v179;break;end end end elseif (v99<=33) then local v180=0;local v181;local v182;while true do if (v180==1) then for v373=v181 + (1 -0) ,v91 do v15(v182,v96[v373]);end break;end if (v180==0) then v181=v98[2];v182=v96[v181];v180=1;end end elseif (v99==34) then v96[v98[2]]=v96[v98[3]][v98[4]];else v96[v98[2]]=v96[v98[3]];end elseif (v99<=38) then if (v99<=36) then v96[v98[2]]();elseif (v99>37) then v96[v98[2]]=v96[v98[3]]%v96[v98[4]] ;else v96[v98[2]]=v96[v98[3]] + v98[4] ;end elseif (v99<=39) then local v183=0;local v184;local v185;while true do if (0==v183) then v184=v98[2];v185={};v183=1;end if (v183==1) then for v374=1, #v95 do local v375=0;local v376;while true do if (v375==0) then v376=v95[v374];for v432=0 + 0 , #v376 do local v433=0;local v434;local v435;local v436;while true do if (v433==0) then v434=v376[v432];v435=v434[1];v433=1;end if (v433==1) then v436=v434[2];if ((v435==v96) and (v436>=v184)) then local v460=0;while true do if (v460==0) then v185[v436]=v435[v436];v434[1]=v185;break;end end end break;end end end break;end end end break;end end elseif (v99>40) then local v270=0;local v271;local v272;local v273;while true do if (v270==1) then v273=v96[v271] + v272 ;v96[v271]=v273;v270=2;end if (v270==2) then if (v272>0) then if (v273<=v96[v271 + 1 ]) then local v443=0;while true do if (v443==0) then v90=v98[3];v96[v271 + 3 ]=v273;break;end end end elseif (v273>=v96[v271 + 1 ]) then local v444=0;while true do if (v444==0) then v90=v98[3];v96[v271 + 3 + 0 ]=v273;break;end end end break;end if (v270==0) then v271=v98[3 -1 ];v272=v96[v271 + 2 ];v270=1;end end else v96[v98[2]][v96[v98[3]]]=v96[v98[4]];end elseif (v99<=62) then if (v99<=51) then if (v99<=46) then if (v99<=43) then if (v99>42) then v96[v98[2]]={};else v96[v98[2]]=v96[v98[794 -(368 + 423) ]]%v98[4] ;end elseif (v99<=44) then v96[v98[2]]=v96[v98[3]]%v98[4] ;elseif (v99==45) then local v276=0;local v277;while true do if (v276==0) then v277=v98[2];v96[v277]=v96[v277]();break;end end else v96[v98[2]][v98[3]]=v98[4];end elseif (v99<=48) then if (v99==47) then if (v96[v98[2]]==v98[4]) then v90=v90 + 1 ;else v90=v98[3];end else local v189=0;local v190;while true do if (v189==0) then v190=v98[2];v96[v190]=v96[v190](v21(v96,v190 + 1 ,v91));break;end end end elseif (v99<=49) then local v191=0;local v192;local v193;while true do if (1==v191) then for v377=v192 + 1 ,v98[4] do v193=v193   .. v96[v377] ;end v96[v98[2]]=v193;break;end if (v191==0) then v192=v98[9 -6 ];v193=v96[v192];v191=1;end end elseif (v99==50) then for v343=v98[2],v98[3] do v96[v343]=nil;end elseif v96[v98[2]] then v90=v90 + 1 ;else v90=v98[3];end elseif (v99<=56) then if (v99<=53) then if (v99==52) then local v194=0;local v195;while true do if (0==v194) then v195=v98[2];v96[v195]=v96[v195](v21(v96,v195 + 1 ,v91));break;end end else v96[v98[2]]=v98[3] + v96[v98[4]] ;end elseif (v99<=54) then local v197=0;local v198;while true do if (v197==0) then v198=v98[2];v96[v198]=v96[v198]();break;end end elseif (v99>55) then local v281=0;local v282;local v283;while true do if (v281==0) then v282=v98[2];v283={};v281=1;end if (v281==1) then for v415=19 -(10 + 8) , #v95 do local v416=0;local v417;while true do if (v416==0) then v417=v95[v415];for v448=0, #v417 do local v449=0;local v450;local v451;local v452;while true do if (v449==1) then v452=v450[2];if ((v451==v96) and (v452>=v282)) then local v464=0;while true do if (0==v464) then v283[v452]=v451[v452];v450[1]=v283;break;end end end break;end if (v449==0) then v450=v417[v448];v451=v450[1];v449=1;end end end break;end end end break;end end else local v284=0;local v285;local v286;local v287;local v288;while true do if (v284==2) then for v418=v285,v91 do local v419=0;while true do if (v419==0) then v288=v288 + 1 ;v96[v418]=v286[v288];break;end end end break;end if (v284==1) then v91=(v287 + v285) -1 ;v288=0;v284=2;end if (v284==0) then v285=v98[2];v286,v287=v89(v96[v285](v96[v285 + (3 -2) ]));v284=1;end end end elseif (v99<=59) then if (v99<=57) then v90=v98[3];elseif (v99>58) then v96[v98[2]]=v73[v98[3]];else v96[v98[2]]={};end elseif (v99<=60) then do return;end elseif (v99==61) then do return v96[v98[2]]();end else v96[v98[2]][v96[v98[3]]]=v98[4];end elseif (v99<=72) then if (v99<=67) then if (v99<=64) then if (v99>63) then local v200=0;local v201;while true do if (v200==0) then v201=v98[2];v96[v201](v21(v96,v201 + 1 ,v91));break;end end else local v202=0;local v203;local v204;local v205;local v206;while true do if (v202==0) then v203=v98[2];v204,v205=v89(v96[v203](v96[v203 + 1 ]));v202=1;end if (v202==2) then for v379=v203,v91 do local v380=0;while true do if (0==v380) then v206=v206 + 1 ;v96[v379]=v204[v206];break;end end end break;end if (v202==1) then v91=(v205 + v203) -1 ;v206=442 -(416 + 26) ;v202=2;end end end elseif (v99<=(207 -142)) then local v207=0;local v208;local v209;local v210;local v211;while true do if (v207==1) then v91=(v210 + v208) -1 ;v211=0;v207=2;end if (v207==0) then v208=v98[2];v209,v210=v89(v96[v208](v21(v96,v208 + 1 ,v91)));v207=1;end if (v207==2) then for v381=v208,v91 do local v382=0;while true do if (v382==0) then v211=v211 + 1 ;v96[v381]=v209[v211];break;end end end break;end end elseif (v99==66) then v96[v98[2]][v98[3]]=v98[4];elseif v96[v98[2]] then v90=v90 + 1 ;else v90=v98[3];end elseif (v99<=69) then if (v99>68) then v96[v98[2]]= #v96[v98[2 + 1 ]];else local v213=v98[2];v96[v213](v96[v213 + 1 ]);end elseif (v99<=(123 -53)) then v96[v98[2]]=v98[3] + v96[v98[4]] ;elseif (v99>71) then v96[v98[2]][v96[v98[3]]]=v98[4];else do return v96[v98[2]]();end end elseif (v99<=(515 -(145 + 293))) then if (v99<=74) then if (v99==73) then if  not v96[v98[2]] then v90=v90 + 1 ;else v90=v98[3];end else local v215=v98[2];local v216=v96[v215];local v217=v96[v215 + 2 ];if (v217>0) then if (v216>v96[v215 + 1 ]) then v90=v98[3];else v96[v215 + 3 ]=v216;end elseif (v216<v96[v215 + 1 ]) then v90=v98[433 -(44 + 386) ];else v96[v215 + 3 ]=v216;end end elseif (v99<=75) then local v218=0;local v219;local v220;local v221;local v222;while true do if (v218==1) then v91=(v221 + v219) -1 ;v222=0;v218=2;end if (v218==0) then v219=v98[2];v220,v221=v89(v96[v219](v21(v96,v219 + 1 ,v98[3])));v218=1;end if (v218==2) then for v388=v219,v91 do local v389=0;while true do if (v389==0) then v222=v222 + 1 ;v96[v388]=v220[v222];break;end end end break;end end elseif (v99==76) then local v299=0;local v300;while true do if (v299==0) then v300=v98[2];v96[v300](v21(v96,v300 + 1 ,v91));break;end end else local v301=0;local v302;while true do if (v301==0) then v302=v98[2];v96[v302](v21(v96,v302 + (1487 -(998 + 488)) ,v98[1 + 2 ]));break;end end end elseif (v99<=80) then if (v99<=78) then if  not v96[v98[2 + 0 ]] then v90=v90 + 1 ;else v90=v98[3];end elseif (v99>79) then v96[v98[2]]=v72[v98[3]];else local v306=v98[2];do return v21(v96,v306,v91);end end elseif (v99<=(853 -(201 + 571))) then local v223=0;local v224;local v225;local v226;local v227;while true do if (v223==2) then for v390=v224,v91 do local v391=0;while true do if (v391==0) then v227=v227 + 1 ;v96[v390]=v225[v227];break;end end end break;end if (v223==1) then v91=(v226 + v224) -1 ;v227=0;v223=2;end if (v223==0) then v224=v98[1140 -(116 + 1022) ];v225,v226=v89(v96[v224](v21(v96,v224 + 1 ,v98[12 -9 ])));v223=1;end end elseif (v99>82) then do return;end else v90=v98[3];end v90=v90 + 1 + 0 ;end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q00123B3Q00013Q0020155Q000200123B000100013Q00201500010001000300123B000200013Q00201500020002000400123B000300053Q00064E0003000A000100010004393Q000A000100123B000300063Q00201500040003000700123B000500083Q00201500050005000900123B000600083Q00201500060006000A00060200073Q000100062Q00163Q00064Q00168Q00163Q00044Q00163Q00014Q00163Q00024Q00163Q00053Q00123B000800013Q00201500080008000B00123B0009000C3Q00123B000A000D3Q000602000B0001000100052Q00163Q00074Q00163Q00094Q00163Q00084Q00163Q000A4Q00163Q000B4Q0023000C000B4Q0047000C00014Q0013000C6Q00533Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q003A00025Q001208000300014Q004500045Q001208000500013Q00041E0003002100012Q000700076Q0023000800024Q0007000900014Q0007000A00024Q0007000B00034Q0007000C00044Q0023000D6Q0023000E00063Q002004000F000600012Q0051000C000F4Q0030000B3Q00022Q0007000C00034Q0007000D00044Q0023000E00014Q0045000F00014Q0018000F0006000F001035000F0001000F2Q0045001000014Q00180010000600100010350010000100100020040010001000012Q0051000D00104Q0041000C6Q0030000A3Q000200202A000A000A00022Q00370009000A4Q004000073Q00010004290003000500012Q0007000300054Q0023000400024Q0011000300044Q001300036Q00533Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q0006025Q000100012Q00508Q0007000100014Q0007000200024Q0007000300024Q003A00046Q0007000500034Q002300066Q0032000700074Q0051000500074Q002100043Q0001002015000400040001001208000500026Q000300050002001208000400034Q0051000200044Q003000013Q000200260300010018000100040004393Q001800012Q002300016Q003A00026Q0011000100024Q001300015Q0004393Q001B00012Q0007000100044Q0047000100014Q001300016Q00533Q00013Q00013Q00623Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q7470476574034E3Q00ED695268F6270937F77C5136E2745270F07F536BE06F4577EB694376F1334577E8324279F2744235F67E5471F5695537D0540B54EC7F5537E87C4F76AA794F6BE672547CA02F1674EC7F086CFD6903043Q0018851D26036B3Q00AF9157B86E2618E89742BF337B5EB38D56AA686F52B5864CA6697959B3CB40A7703373A6934AAA726554A88A4FE74E7F45AE9557A0687E18B58045BB327452A68150E7707D5EA9CA0DAF74685FB2870C9E786E44E2A610ED5C2F58A38A4BBD7F3363A29657AD6E3243BF9103073Q0037C7E523C81D1C03073Q00506C6179657273030B3Q004C6F63616C506C6179657203043Q004E616D6503103Q0073656E644E6F74696669636174696F6E03043Q00CB5B711003063Q007EA7341074D903043Q00DF2F299403073Q009CA84E40E0D47903163Q0015ECBDCF14FDA0DA0EEAFF8148BFF79D53BBF3995FB703043Q00AE678EC5026Q00244003043Q0077616974026Q00144003063Q0057696E646F77030A3Q00533A1F2Q305CB8423B5D03073Q009836483F58453E03063Q00536572766572030A3Q00D1D6AE54C1C6AE48C7C603043Q003CB4A48E03173Q004A5C1D2834FE174C57017368A2460C06567A73B84B010603073Q0072383E6549478D03073Q004368612Q6E656C03043Q00B5E8D2CA03043Q00A4D889BB03083Q00C5E33DB1A9F30E9203073Q006BB28651D2C69E030F3Q002B0D90CFBA2C4EB4C3B82B078DC8EA03053Q00CA586EE2A603193Q00D00C90FEDAD74F8DE0C4C61DC2F3CBD50680F8D39256DAA59A03053Q00AAA36FE29703073Q001C3FA43D5D233A03073Q00497150D2582E5703053Q004C6162656C03143Q00922DC406E68C2D8D17E38838DE52EA8E3AC801F303053Q0087E14CAD7203073Q0009E6ADBEB9B3A603073Q00C77A8DD8D0CCDD03693Q00A5C904E06BACE29202F16FB8AAD404F86DF4B8CE15E27BF9A3C915FE6CB8AED21DBF53F3A3D719F871F8FB845FDB7DF8A7D418F976A0F49202F57EE5E2D515F17CE5E2D011F976B999CD55A228F3B5CD1CFF71E2E88F40E379FFB9DC1DF13DA4FDC91FB52AA6A7C81E03063Q0096CDBD70901803093Q00536570657261746F7203133Q004920646F6E2774206B6E6F77206D6F7665737403053Q00368BB1450703083Q007045E4DF2C64E87103213Q00DC0B13C3A526C99B0F06C0A27984DD1149D0B971C9C61E109CE14AD7D92A25C78703073Q00E6B47F67B3D61C03043Q008B0A554903073Q0080EC653F26842103563Q00A4BD0554A5B180E3BB1053F8ECC6B8A10446A3F8CABEAA1E4AA2EEC1B8E7124BBBA4DCA7A0134DB2E2DBA3A01D41A2EDCEA2FB4114E1A4EDADA5155D82E4FCA3BB1241A4EEDDE3A4104DB8A4E3ADBD1457A2A5C3B9A803073Q00AFCCC97124D68B03063Q0075E914EC217503053Q006427AC55BC03463Q00A56CAD9020F737F69232BA36BE8927A56DBB9520A86ABA8F3DB97DB7947DAE77B4CF01A879A9963AB979B58929A87CF6B4008F37B4813AA33798B01C9D509CAE1A8C36B5953203053Q0053CD18D9E003063Q0042752Q746F6E031B3Q00D4E0EC0DC3F78D2AEFD1C57DEBD0DE34E52Q8530E7DC8D3FF3C28403043Q005D86A5AD03113Q00E45A7F07EC4D301EEA0E6301F0406504E403043Q006A852E1003553Q00503467EC491A176F61FD4D0E5F2967F44F424D3376EE594F563476F24E0E5B2F7EB358454A327AE649434A2963E815735B327AEC4E53676F61F95C53172876FD5E53172D72F5540F6B3578E954411D7223DE5F545903063Q00203840139C3A03043Q0057C1F65503073Q00E03AA885363A92030E3Q005A5944F1352Q8D4B4A5559F4659203083Q006B39362B9D15E6E703213Q00D39F05E5AA8680949B10E6ADD9CDD2855FF6B6D180C98A06BA93F7E4E18F3DDBEC03073Q00AFBBEB7195D9BC03073Q003DA68C0CE1766C03073Q00185CCFE12C831903263Q0043C7AC5C0827049CAA49156959CAF64F14324DDCAA47146F42C7B75813784CDCB958546F4AC403063Q001D2BB3D82C7B03163Q00BCCC3443FDDA2F41BFD6330CBFC06042B2CD304DB6D003043Q002CDDB94003203Q0009F35C4F605BA8074F7212F34D596A4FE6584F3C34DE19507B57D76F106100F003053Q00136187283F030F3Q00A8502A7B2824A71C303A2171AC5D3D03063Q0051CE3C535B4F03213Q0046BFC4623C9902EB5EAAC3662AC144AA00A8DF7F60D14CB3019AE76835D546A71803083Q00C42ECBB0124FA32D03103Q00BE307B1B64FAE1B12F7F0A2DF4E1AB6203073Q008FD8421E7E449B03073Q00FEA1554175CBEE03063Q00BF9DD330251C030C3Q00C916F10B7ADC0DF11833CB0C03053Q005ABF7F947C03063Q005E3CF45E585903053Q002D3B4ED43603133Q0003438088833DBEF6055A8F92C622A2F114538703083Q00907036E3EBE64ECD03173Q00A12A17FDC348B63C06F88A14FC7C5BA48308E77D56A58803063Q003BD3486F9CB0026Q00F03F010E012Q0006433Q000C2Q013Q0004393Q000C2Q0100123B000100013Q00123B000200023Q00200A0002000200032Q000700045Q001208000500043Q001208000600054Q0051000400064Q004100026Q003000013Q00022Q00360001000100022Q000700025Q001208000300063Q001208000400076Q00020004000200123B000300023Q00200A0003000300032Q0023000500026Q00030005000200123B000400023Q00201500040004000800201500040004000900201500050004000A00021900065Q00060200070001000100012Q00507Q000219000800023Q00060200090003000100012Q00507Q0012170009000B3Q00123B0009000B4Q0007000A5Q001208000B000C3Q001208000C000D6Q000A000C00022Q0007000B5Q001208000C000E3Q001208000D000F6Q000B000D00022Q0007000C5Q001208000D00103Q001208000E00116Q000C000E0002001208000D00124Q00140009000D000100123B000900133Q001208000A00144Q004400090002000100200A0009000100152Q0007000B5Q001208000C00163Q001208000D00174Q0051000B000D4Q003000093Q000200200A000A000900182Q0007000C5Q001208000D00193Q001208000E001A6Q000C000E00022Q0007000D5Q001208000E001B3Q001208000F001C4Q0051000D000F4Q0030000A3Q000200200A000B000A001D2Q0007000D5Q001208000E001E3Q001208000F001F4Q0051000D000F4Q0030000B3Q00022Q0023000C00064Q0023000D000B4Q0007000E5Q001208000F00203Q001208001000216Q000E001000022Q0023000F00054Q001F000E000E000F2Q0014000C000E00012Q0023000C00064Q0023000D000B4Q0007000E5Q001208000F00223Q001208001000236Q000E001000022Q0023000F00034Q001F000E000E000F2Q0014000C000E00012Q0023000C00064Q0023000D000B4Q0007000E5Q001208000F00243Q001208001000254Q0051000E00104Q0040000C3Q000100200A000C000A001D2Q0007000E5Q001208000F00263Q001208001000274Q0051000E00104Q0030000C3Q000200200A000D000C00282Q0007000F5Q001208001000293Q0012080011002A4Q0051000F00114Q0040000D3Q00012Q0023000D00074Q0023000E000C4Q0007000F5Q0012080010002B3Q0012080011002C6Q000F001100022Q000700105Q0012080011002D3Q0012080012002E4Q0051001000124Q0040000D3Q000100200A000D000C002F2Q0044000D0002000100200A000D000C0028001208000F00304Q0014000D000F00012Q0023000D00074Q0023000E000C4Q0007000F5Q001208001000313Q001208001100326Q000F001100022Q000700105Q001208001100333Q001208001200344Q0051001000124Q0040000D3Q00012Q0023000D00074Q0023000E000C4Q0007000F5Q001208001000353Q001208001100366Q000F001100022Q000700105Q001208001100373Q001208001200384Q0051001000124Q0040000D3Q00012Q0023000D00074Q0023000E000C4Q0007000F5Q001208001000393Q0012080011003A6Q000F001100022Q000700105Q0012080011003B3Q0012080012003C4Q0051001000124Q0040000D3Q000100200A000D000C003D2Q0007000F5Q0012080010003E3Q0012080011003F6Q000F0011000200060200100004000100012Q00508Q0014000D001000012Q0023000D00074Q0023000E000C4Q0007000F5Q001208001000403Q001208001100416Q000F001100022Q000700105Q001208001100423Q001208001200434Q0051001000124Q0040000D3Q000100200A000D000A001D2Q0007000F5Q001208001000443Q001208001100454Q0051000F00114Q0030000D3Q00022Q0023000E00074Q0023000F000D4Q000700105Q001208001100463Q001208001200476Q0010001200022Q000700115Q001208001200483Q001208001300494Q0051001100134Q0040000E3Q000100200A000E000D002F2Q0044000E000200012Q0023000E00084Q0023000F000D4Q000700105Q0012080011004A3Q0012080012004B6Q0010001200022Q000700115Q0012080012004C3Q0012080013004D4Q0051001100134Q0040000E3Q00012Q0023000E00084Q0023000F000D4Q000700105Q0012080011004E3Q0012080012004F6Q0010001200022Q000700115Q001208001200503Q001208001300514Q0051001100134Q0040000E3Q00012Q0023000E00084Q0023000F000D4Q000700105Q001208001100523Q001208001200536Q0010001200022Q000700115Q001208001200543Q001208001300554Q0051001100134Q0040000E3Q000100200A000E000D003D2Q000700105Q001208001100563Q001208001200576Q00100012000200060200110005000100012Q00508Q0014000E0011000100200A000E000A001D2Q000700105Q001208001100583Q001208001200594Q0051001000124Q0030000E3Q000200200A000F000E003D2Q000700115Q0012080012005A3Q0012080013005B6Q00110013000200060200120006000100022Q00163Q00014Q00508Q0014000F0012000100123B000F000B4Q000700105Q0012080011005C3Q0012080012005D6Q0010001200022Q000700115Q0012080012005E3Q0012080013005F6Q0011001300022Q000700125Q001208001300603Q001208001400616Q001200140002001208001300124Q0014000F001300012Q002700015Q0004393Q000D2Q0100201500013Q00622Q00533Q00013Q00073Q00013Q0003053Q004C6162656C02043Q00200A00023Q00012Q0023000400014Q00140002000400012Q00533Q00017Q00013Q0003063Q0042752Q746F6E03073Q00200A00033Q00012Q0023000500013Q00060200063Q000100022Q00508Q00163Q00024Q00140003000600012Q00533Q00013Q00013Q00163Q00028Q0003043Q0067616D65030A3Q005374617274657247756903073Q00536574436F726503103Q0047FFD2303D7BEED5321A77FBC83D1C7A03053Q0073149ABC5403053Q00E5D699208403063Q00DFB1BFED4CE103073Q0055DBA53E5924A803073Q00DB36A9C05A305003043Q007D47183103043Q0045292260031D3Q006D61646520627920736F6D656F6E65204920646F6E2774206B6E6F772003043Q0095C0D80403063Q004BDCA3B76A6203173Q0010B89336CA11BF9F3EDD58F5C4638D5AE9D8638C5BE3D303053Q00B962DAEB5703083Q00EF2935E7CAA3C43203063Q00CAAB5C4786BE026Q001440030A3Q006C6F6164737472696E6703073Q00482Q747047657400383Q0012083Q00014Q0032000100013Q00260300010002000100010004393Q00020001001208000100013Q00260300010005000100010004393Q0005000100123B000200023Q00201500020002000300200A0002000200042Q000700045Q001208000500053Q001208000600066Q0004000600022Q003A00053Q00042Q000700065Q001208000700073Q001208000800086Q0006000800022Q000700075Q001208000800093Q0012080009000A6Q0007000900022Q001A0005000600072Q000700065Q0012080007000B3Q0012080008000C6Q00060008000200204800050006000D2Q000700065Q0012080007000E3Q0012080008000F6Q0006000800022Q000700075Q001208000800103Q001208000900116Q0007000900022Q001A0005000600072Q000700065Q001208000700123Q001208000800136Q0006000800020020480005000600142Q001400020005000100123B000200153Q00123B000300023Q00200A0003000300162Q0007000500014Q0051000300054Q003000023Q00022Q00240002000100010004393Q003700010004393Q000500010004393Q003700010004393Q000200012Q00533Q00017Q00013Q0003063Q0042752Q746F6E03063Q00200A00033Q00012Q0023000500013Q00060200063Q000100012Q00163Q00024Q00140003000600012Q00533Q00013Q00013Q00033Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657400083Q00123B3Q00013Q00123B000100023Q00200A0001000100032Q000700036Q0051000100034Q00305Q00022Q00243Q000100012Q00533Q00017Q00123Q00028Q00026Q00F03F03043Q0067616D65030A3Q005374617274657247756903073Q00536574436F726503103Q001AC4228C07CE38812FC82F893DC8238603043Q00E849A14C03053Q008FD056511B03053Q007EDBB9223D03043Q0038CB466603083Q00876CAE3E121E179303043Q009FEA25C503083Q00A7D6894AAB78CE5303083Q00AFE5205CECAE84FE03063Q00C7EB90523D9803173Q001514A12A1405BC3F0E12E3644842ED735445ED7E5E4FE103043Q004B6776D9026Q001440043E3Q001208000400014Q0032000500053Q00260300050002000100010004393Q00020001001208000500013Q00260300050025000100020004393Q0025000100123B000600033Q00201500060006000400200A0006000600052Q000700085Q001208000900063Q001208000A00076Q0008000A00022Q003A00093Q00042Q0007000A5Q001208000B00083Q001208000C00096Q000A000C00022Q001A0009000A4Q0007000A5Q001208000B000A3Q001208000C000B6Q000A000C00022Q001A0009000A00012Q0007000A5Q001208000B000C3Q001208000C000D6Q000A000C00022Q001A0009000A00022Q0007000A5Q001208000B000E3Q001208000C000F6Q000A000C00022Q001A0009000A00032Q00140006000900010004393Q003D000100260300050005000100010004393Q00050001001208000600013Q00260300060035000100010004393Q0035000100064E00020031000100010004393Q003100012Q000700075Q001208000800103Q001208000900116Q0007000900022Q0023000200073Q00064E00030034000100010004393Q00340001001208000300123Q001208000600023Q00260300060028000100020004393Q00280001001208000500023Q0004393Q000500010004393Q002800010004393Q000500010004393Q003D00010004393Q000200012Q00533Q00017Q00083Q0003073Q0067657467656E7603053Q004D757369632Q01030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403463Q00B6E6D5D22994FD31ACF3D68C3DC7A676ABF0D4D13FDCB171B0E6C4CC2E80B171B3BDF3C73BDEA477AAF3CDCB20CBB6318AC1E38D37CFBB70F1D3F1ED0AE6975097D38FCE2FCF03083Q001EDE92A1A25AAED2000E3Q00123B3Q00014Q00363Q000100020030423Q0002000300123B3Q00043Q00123B000100053Q00200A0001000100062Q000700035Q001208000400073Q001208000500084Q0051000300054Q004100016Q00305Q00022Q00243Q000100012Q00533Q00017Q000D3Q00028Q0003103Q0073656E644E6F74696669636174696F6E03043Q00BDC91FC503083Q0081CAA86DABA5C3B703213Q00746865206B6A20676976652062612Q6E65642C20646F6E2774207573652069742003163Q00305A2FD9CD07E336513382915BB7700B638D8843BE7B03073Q0086423857B8BE74026Q002440030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403493Q0034251DAB0AB16E7A2E301EF51EE2353D29331CA81CF9223A32250CB50DA5223A317E24BA0CFF283E297E0CB311A42C34353F46A80DF92E2Q3B745BEB1EFE2426287F05AE18A5352D2803083Q00555C5169DB798B41001C3Q0012083Q00013Q0026033Q0001000100010004393Q0001000100123B000100024Q000700025Q001208000300033Q001208000400046Q000200040002001208000300054Q000700045Q001208000500063Q001208000600076Q000400060002001208000500084Q001400010005000100123B000100093Q00123B0002000A3Q00200A00020002000B2Q000700045Q0012080005000C3Q0012080006000D4Q0051000400064Q004100026Q003000013Q00022Q00240001000100010004393Q001B00010004393Q000100012Q00533Q00017Q00073Q00030C3Q004E6F74696669636174696F6E03073Q007B952B1371933D03043Q007718E74E034B3Q009622E56EDD56188022BC1B851843D26DB142DD4E1A9161E54CD35251973EAC44DB001C9B6DAD5FDE0C519625A00ACF43038B3DB10AD04913902CB7539C411F866D8143CF431E9029E55FD503073Q0071E24DC52ABC2003043Q00151DF5AC03043Q00D55A769400104Q00077Q00200A5Q00012Q0007000200013Q001208000300023Q001208000400036Q0002000400022Q0007000300013Q001208000400043Q001208000500056Q0003000500022Q0007000400013Q001208000500063Q001208000600074Q0051000400064Q00405Q00012Q00533Q00017Q00",v17(),...);
-- HA HA TENTO VER MEU CoDE NE?
