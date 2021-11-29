(use-trait gear-contract .nft-trait.nft-trait)
(use-trait player-character-contract .bitgear-traits-v0.character-trait)

(impl-trait .bitgear-traits-v0.equipment-trait)

(define-constant NOT-AUTHORIZED     u401)
(define-constant ALREADY-EQUIPPED   u403)
(define-constant NOT-FOUND          u404)

(define-map equipment { address: principal }
  {
    main-hand: (optional uint),
    off-hand: (optional uint),
    two-hand: (optional uint),
    head: (optional uint),
    neck: (optional uint),
    wrists: (optional uint),
    right-ring-finger: (optional uint),
    left-ring-finger: (optional uint)
  }
)

(define-data-var gear-main-hand (list 1357 uint)
    (list u470 u471 u472 u473 u474 u475 u476 u477 u478 u479 u480 u481 u482 u483 u484 u485 u486 u487 u488 u489 u490 u491 u492 u493 u494 u495 u496 u497 u498 u499 u500 u501 u502 u503 u504 u505 u506 u507 u508 u509 u510 u511 u512 u513 u514 u515 u516 u517 u518 u519 u520 u521 u522 u523 u524 u525 u526 u527 u528 u529 u530 u531 u532 u533 u534 u535 u536 u537 u538 u539 u540 u541 u542 u543 u544 u545 u546 u547 u548 u549 u550 u551 u552 u553 u554 u555 u556 u557 u558 u559 u560 u561 u562 u563 u564 u565 u566 u567 u568 u569 u570 u571 u572 u573 u574 u575 u576 u577 u578 u579 u580 u581 u582 u583 u584 u585 u586 u587 u588 u589 u590 u591 u592 u593 u594 u595 u596 u597 u598 u599 u600 u601 u602 u603 u604 u605 u606 u607 u608 u609 u610 u611 u612 u613 u614 u615 u616 u617 u618 u619 u620 u621 u622 u623 u624 u625 u626 u627 u628 u629 u630 u631 u632 u633 u634 u635 u636 u637 u638 u639 u640 u641 u642 u643 u644 u645 u646 u647 u648 u649 u650 u651 u652 u653 u654 u655 u656 u657 u658 u659 u660 u661 u662 u663 u664 u665 u666 u667 u668 u669 u670 u671 u672 u673 u674 u675 u676 u677 u678 u679 u680 u681 u682 u683 u684 u685 u686 u687 u688 u689 u690 u691 u692 u693 u694 u695 u696 u697 u698 u699 u700 u701 u702 u703 u704 u705 u706 u707 u708 u709 u710 u711 u712 u713 u714 u715 u716 u717 u718 u719 u720 u721 u722 u723 u724 u725 u726 u727 u728 u729 u730 u731 u732 u733 u734 u735 u736 u737 u738 u739 u740 u741 u742 u743 u744 u745 u746 u747 u748 u749 u750 u751 u752 u753 u754 u755 u756 u757 u758 u759 u760 u761 u762 u763 u764 u765 u766 u767 u768 u769 u770 u771 u772 u773 u774 u775 u776 u777 u778 u779 u780 u781 u782 u783 u784 u785 u786 u787 u788 u789 u790 u791 u792 u793 u794 u795 u796 u797 u798 u799 u800 u801 u802 u803 u804 u805 u806 u807 u808 u809 u810 u811 u812 u813 u814 u815 u816 u817 u818 u819 u820 u821 u822 u823 u824 u825 u826 u827 u828 u829 u830 u831 u832 u833 u834 u835 u836 u837 u838 u839 u840 u841 u842 u843 u844 u845 u846 u847 u848 u849 u850 u851 u852 u853 u854 u855 u856 u857 u858 u859 u860 u861 u862 u863 u864 u865 u866 u867 u868 u869 u870 u871 u872 u873 u874 u875 u876 u877 u878 u879 u880 u881 u882 u883 u884 u885 u886 u887 u888 u889 u890 u891 u892 u893 u894 u895 u896 u897 u898 u899 u900 u901 u902 u903 u904 u905 u906 u907 u908 u909 u910 u911 u912 u913 u914 u915 u916 u917 u918 u919 u920 u921 u922 u923 u924 u925 u926 u927 u928 u929 u930 u931 u932 u933 u934 u935 u936 u937 u938 u939 u940 u941 u942 u943 u944 u945 u946 u947 u948 u949 u950 u951 u952 u953 u954 u955 u956 u957 u958 u959 u960 u961 u962 u963 u964 u965 u966 u967 u968 u969 u970 u971 u972 u973 u974 u975 u976 u977 u978 u979 u980 u981 u982 u983 u984 u985 u986 u987 u988 u989 u990 u991 u992 u993 u994 u995 u996 u997 u998 u999 u1000 u1001 u1002 u1003 u1004 u1005 u1006 u1007 u1008 u1009 u1010 u1011 u1012 u1013 u1014 u1015 u1016 u1017 u1018 u1019 u1020 u1021 u1022 u1023 u1024 u1025 u1026 u1027 u1028 u1029 u1030 u1031 u1032 u1033 u1034 u1035 u1036 u1037 u1038 u1039 u1040 u1041 u1042 u1043 u1044 u1045 u1046 u1047 u1048 u1049 u1050 u1051 u1052 u1053 u1054 u1055 u1056 u1057 u1058 u1059 u1060 u1061 u1062 u1063 u1064 u1065 u1066 u1067 u1068 u1069 u1070 u1071 u1072 u1073 u1074 u1075 u1076 u1077 u1078 u1079 u1080 u1081 u1082 u1083 u1084 u1085 u1086 u1087 u1088 u1089 u1090 u1091 u1092 u1093 u1094 u1095 u1096 u1097 u1098 u1099 u1100 u1101 u1102 u1103 u1104 u1105 u1106 u1107 u1108 u1109 u1110 u1111 u1112 u1113 u1114 u1115 u1116 u1117 u1118 u1119 u1120 u1121 u1122 u1123 u1124 u1125 u1126 u1127 u1128 u1129 u1130 u1131 u1132 u1133 u1134 u1135 u1136 u1137 u1138 u1139 u1140 u1141 u1142 u1143 u1144 u1145 u1146 u1147 u1148 u1149 u1150 u1151 u1152 u1153 u1154 u1155 u1156 u1157 u1158 u1159 u1160 u1161 u1162 u1163 u1164 u1165 u1166 u1167 u1168 u1169 u1170 u1171 u1172 u1173 u1174 u1175 u1176 u1177 u1178 u1179 u1180 u1181 u1182 u1183 u1184 u1185 u1186 u1187 u1188 u1189 u1190 u1191 u1192 u1193 u1194 u1195 u1196 u1197 u1198 u1199 u1200 u1201 u1202 u1203 u1204 u1205 u1206 u1207 u1208 u1209 u1210 u1211 u1212 u1213 u1214 u1215 u1216 u1217 u1218 u1219 u1220 u1221 u1222 u1223 u1224 u1225 u1226 u1227 u1228 u1229 u1230 u1231 u1232 u1233 u1234 u1235 u1236 u1237 u1238 u1239 u1240 u1241 u1242 u1243 u1244 u1245 u1246 u1247 u1248 u1249 u1250 u1251 u1252 u1253 u1254 u1255 u1256 u1257 u1258 u1259 u1260 u1261 u1262 u1263 u1264 u1265 u1266 u1267 u1268 u1269 u1270 u1271 u1272 u1273 u1274 u1275 u1276 u1277 u1278 u1279 u1280 u1281 u1282 u1283 u1284 u1285 u1286 u1287 u1288 u1289 u1290 u1291 u1292 u1293 u1294 u1295 u1296 u1297 u1298 u2253 u2254 u2255 u2256 u2257 u2258 u2259 u2260 u2261 u2262 u2263 u2264 u2265 u2266 u2267 u2268 u2269 u2270 u2271 u2272 u2273 u2274 u2275 u2276 u2277 u2278 u2279 u2280 u2281 u2282 u2283 u2284 u2285 u2286 u2287 u2288 u2289 u2290 u2291 u2292 u2293 u2294 u2295 u2296 u2297 u2298 u2299 u2300 u2301 u2302 u2303 u2304 u2305 u2306 u2307 u2308 u2309 u2310 u2311 u2312 u2313 u2314 u2315 u2316 u2317 u2318 u2319 u2320 u2321 u2322 u2323 u2324 u2325 u2326 u2327 u2328 u2329 u2330 u2331 u2332 u2333 u2334 u2335 u2336 u2337 u2338 u2339 u2340 u2341 u2342 u2343 u2344 u2345 u2346 u2347 u2348 u2349 u2350 u2351 u2352 u2353 u2354 u2355 u2356 u2357 u2358 u2359 u2360 u2361 u2362 u2363 u2364 u2365 u2366 u2367 u2368 u2369 u2370 u2371 u2372 u2373 u2374 u2375 u2376 u2377 u2378 u2379 u2380 u2381 u2382 u2383 u2384 u2385 u2386 u2387 u2388 u2389 u2390 u2391 u2392 u2393 u2394 u2395 u2396 u2397 u2398 u2399 u2400 u2401 u2402 u2403 u2404 u2405 u2406 u2407 u2408 u2409 u2410 u2411 u2412 u2413 u2414 u2415 u2416 u2417 u2418 u2419 u2420 u2421 u2422 u2423 u2424 u2425 u2426 u2427 u2428 u2429 u2430 u2431 u2432 u2433 u2434 u2435 u2436 u2437 u2438 u2439 u2440 u2441 u2442 u2443 u2444 u2445 u2446 u2447 u2448 u2449 u2450 u2451 u2452 u3472 u3473 u3474 u3475 u3476 u3477 u3478 u3479 u3480 u3481 u3482 u3483 u3484 u3485 u3486 u3487 u3488 u3489 u3490 u3491 u3492 u3493 u3494 u3495 u3496 u3497 u3498 u3499 u3500 u3501 u3502 u3503 u3504 u3505 u3506 u3507 u3508 u3509 u3510 u3511 u3512 u3513 u3514 u3515 u3516 u3517 u3518 u3519 u3520 u3521 u3522 u3523 u3524 u3525 u3526 u3527 u3528 u3529 u3530 u3531 u3532 u3533 u3534 u3535 u3536 u3537 u3538 u3539 u3540 u3541 u3542 u3543 u3544 u3545 u3546 u3547 u3548 u3549 u3550 u3551 u3552 u3553 u3554 u3555 u3556 u3557 u3558 u3559 u3560 u3561 u3562 u3563 u3564 u3565 u3566 u3567 u3568 u3569 u3570 u3571 u3572 u3573 u3574 u3575 u3576 u3577 u3578 u3579 u3580 u3581 u3582 u3583 u3584 u3585 u3586 u3587 u3588 u3589 u3590 u3591 u3592 u3593 u3594 u3595 u3596 u3597 u3598 u3599 u3600 u3601 u3602 u3603 u3604 u3605 u3606 u3607 u3608 u3609 u3610 u3611 u3612 u3613 u3614 u3615 u3616 u3617 u3618 u3619 u3620 u3621 u3622 u3623 u3624 u3625 u3626 u3627 u3628 u3629 u3630 u3631 u3632 u3633 u3634 u3635 u3636 u3637 u3638 u3639 u3640 u3641 u3642 u3643 u3644 u3645 u3646 u3647 u3648 u3649 u3650 u3651 u3652 u3653 u3654 u3655 u3656 u3657 u3658 u3659 u3660 u3661 u3662 u3663 u3664 u3665 u3666 u3667 u3668 u3669 u3670 u3671 u3672 u3673 u3674 u3675 u3676 u3677 u3678 u3679 u3680 u3681 u3682 u3683 u3684 u3685 u3686 u3687 u3688 u3689 u3690 u3691 u3692 u3693 u3694 u3695 u3696 u3697 u3698 u3699 u3700 u3701 u3702 u3703 u3704 u3705 u3706 u3707 u3708 u3709 u3710 u3711 u3712 u3713 u3714 u3715 u3716 u3717 u3718 u3719 u3720 u3721 u3722 u3723 u3724 u3725 u3726 u3727 u3728 u3729 u3730 u3731 u3732 u3733 u3734 u3735 u3736 u3737 u3738 u3739 u3740 u3741 u3742 u3743 u3744 u3745 u3746 u3747 u3748 u3749 u3750 u3751 u3752 u3753 u3754 u3755 u3756 u3757 u3758 u3759 u3760 u3761 u3762 u3763 u3764 u3765 u3766 u3767 u3768 u3769 u3770 u3771 u3772 u3773 u3774 u3775 u3776 u3777 u3778 u3779 u3780 u3781 u3782 u3783 u3784 u3785 u3786 u3787 u3788 u3789 u3790 u3791 u3792 u3793 u3794 u3795 u3796 u3797 u3798 u37991)
)
(define-data-var gear-off-hand (list 1300 uint)
    (list u0 u1 u2 u3 u4 u5 u6 u7 u8 u9 u10 u11 u12 u13 u14 u15 u16 u17 u18 u19 u20 u21 u22 u23 u24 u25 u26 u27 u28 u29 u30 u31 u32 u33 u34 u35 u36 u37 u38 u39 u40 u41 u42 u43 u44 u45 u46 u47 u48 u49 u50 u51 u52 u53 u54 u55 u56 u57 u58 u59 u60 u61 u62 u63 u64 u65 u66 u67 u68 u69 u70 u71 u72 u73 u74 u75 u76 u77 u78 u79 u80 u81 u82 u83 u84 u85 u86 u87 u88 u89 u90 u91 u92 u93 u94 u95 u96 u97 u98 u99 u100 u101 u102 u103 u104 u105 u106 u107 u108 u109 u110 u111 u112 u113 u114 u115 u116 u117 u118 u119 u120 u121 u122 u123 u124 u125 u126 u127 u128 u129 u130 u131 u132 u133 u134 u135 u136 u137 u138 u139 u140 u141 u142 u143 u144 u145 u146 u147 u148 u149 u150 u151 u152 u153 u154 u155 u156 u157 u158 u159 u160 u161 u162 u163 u164 u165 u166 u167 u168 u169 u170 u171 u172 u173 u174 u175 u176 u177 u178 u179 u180 u181 u182 u183 u184 u185 u186 u187 u188 u189 u190 u191 u192 u193 u194 u195 u196 u197 u198 u199 u200 u201 u202 u203 u204 u205 u206 u207 u208 u209 u210 u211 u212 u213 u214 u215 u216 u217 u218 u219 u220 u221 u222 u223 u224 u225 u226 u227 u228 u229 u230 u231 u232 u233 u234 u235 u236 u237 u238 u239 u240 u241 u242 u243 u244 u245 u246 u247 u248 u249 u250 u251 u252 u253 u254 u255 u256 u257 u258 u259 u260 u261 u262 u263 u264 u265 u266 u267 u268 u269 u270 u271 u272 u273 u274 u275 u276 u277 u278 u279 u280 u281 u282 u283 u284 u285 u286 u287 u288 u289 u290 u291 u292 u293 u294 u295 u296 u297 u298 u299 u300 u301 u302 u303 u304 u305 u306 u307 u308 u309 u310 u311 u312 u313 u314 u315 u316 u317 u318 u319 u320 u321 u322 u323 u324 u325 u326 u327 u328 u329 u330 u331 u332 u333 u334 u335 u336 u337 u338 u339 u340 u341 u342 u343 u344 u345 u346 u347 u348 u349 u350 u351 u352 u353 u354 u355 u356 u357 u358 u359 u360 u361 u362 u363 u364 u365 u366 u367 u368 u369 u370 u371 u372 u373 u374 u375 u376 u377 u378 u379 u380 u381 u382 u383 u384 u385 u386 u387 u388 u389 u390 u391 u392 u393 u394 u395 u396 u397 u398 u399 u400 u401 u402 u403 u404 u405 u406 u407 u408 u409 u410 u411 u412 u413 u414 u415 u416 u417 u418 u419 u420 u421 u422 u423 u424 u425 u426 u427 u428 u429 u430 u431 u432 u433 u434 u435 u436 u437 u438 u439 u440 u441 u442 u443 u444 u445 u446 u447 u448 u449 u450 u451 u452 u453 u454 u455 u456 u457 u458 u459 u460 u461 u462 u463 u464 u465 u466 u467 u468 u469 u470 u471 u472 u473 u474 u475 u476 u477 u478 u479 u480 u481 u482 u483 u484 u485 u486 u487 u488 u489 u490 u491 u492 u493 u494 u495 u496 u497 u498 u499 u500 u501 u502 u503 u504 u505 u506 u507 u508 u509 u510 u511 u512 u513 u514 u515 u516 u517 u518 u519 u520 u521 u522 u523 u524 u525 u526 u527 u528 u529 u530 u531 u532 u533 u534 u535 u536 u537 u538 u539 u540 u541 u542 u543 u544 u545 u546 u547 u548 u549 u550 u551 u552 u553 u554 u555 u556 u557 u558 u559 u560 u561 u562 u563 u564 u565 u566 u567 u568 u569 u570 u571 u572 u573 u574 u575 u576 u577 u578 u579 u580 u581 u582 u583 u584 u585 u586 u587 u588 u589 u590 u591 u592 u593 u594 u595 u596 u597 u598 u599 u600 u601 u602 u603 u604 u605 u606 u607 u608 u609 u610 u611 u612 u613 u614 u615 u616 u617 u618 u619 u620 u621 u622 u623 u624 u625 u626 u627 u628 u629 u630 u631 u632 u633 u634 u635 u636 u637 u638 u639 u640 u641 u642 u643 u644 u645 u646 u647 u648 u649 u650 u651 u652 u653 u654 u655 u656 u657 u658 u659 u660 u661 u662 u663 u664 u665 u666 u667 u668 u669 u670 u671 u672 u673 u674 u675 u676 u677 u678 u679 u680 u681 u682 u683 u684 u685 u686 u687 u688 u689 u690 u691 u692 u693 u694 u695 u696 u697 u698 u699 u700 u701 u702 u703 u704 u705 u706 u707 u708 u709 u710 u711 u712 u713 u714 u715 u716 u717 u718 u719 u720 u721 u722 u723 u724 u725 u726 u727 u728 u729 u730 u731 u732 u733 u734 u735 u736 u737 u738 u739 u740 u741 u742 u743 u744 u745 u746 u747 u748 u749 u750 u751 u752 u753 u754 u755 u756 u757 u758 u759 u760 u761 u762 u763 u764 u765 u766 u767 u768 u769 u770 u771 u772 u773 u774 u775 u776 u777 u778 u779 u780 u781 u782 u783 u784 u785 u786 u787 u788 u789 u790 u791 u792 u793 u794 u795 u796 u797 u798 u799 u800 u801 u802 u803 u804 u805 u806 u807 u808 u809 u810 u811 u812 u813 u814 u815 u816 u817 u818 u819 u820 u821 u822 u823 u824 u825 u826 u827 u828 u829 u830 u831 u832 u833 u834 u835 u836 u837 u838 u839 u840 u841 u842 u843 u844 u845 u846 u847 u848 u849 u850 u851 u852 u853 u854 u855 u856 u857 u858 u859 u860 u861 u862 u863 u864 u865 u866 u867 u868 u869 u870 u871 u872 u873 u874 u875 u876 u877 u878 u879 u880 u881 u882 u883 u884 u885 u886 u887 u888 u889 u890 u891 u892 u893 u894 u895 u896 u897 u898 u899 u900 u901 u902 u903 u904 u905 u906 u907 u908 u909 u910 u911 u912 u913 u914 u915 u916 u917 u918 u919 u920 u921 u922 u923 u924 u925 u926 u927 u928 u929 u930 u931 u932 u933 u934 u935 u936 u937 u938 u939 u940 u941 u942 u943 u944 u945 u946 u947 u948 u949 u950 u951 u952 u953 u954 u955 u956 u957 u958 u959 u960 u961 u962 u963 u964 u965 u966 u967 u968 u969 u970 u971 u3472 u3473 u3474 u3475 u3476 u3477 u3478 u3479 u3480 u3481 u3482 u3483 u3484 u3485 u3486 u3487 u3488 u3489 u3490 u3491 u3492 u3493 u3494 u3495 u3496 u3497 u3498 u3499 u3500 u3501 u3502 u3503 u3504 u3505 u3506 u3507 u3508 u3509 u3510 u3511 u3512 u3513 u3514 u3515 u3516 u3517 u3518 u3519 u3520 u3521 u3522 u3523 u3524 u3525 u3526 u3527 u3528 u3529 u3530 u3531 u3532 u3533 u3534 u3535 u3536 u3537 u3538 u3539 u3540 u3541 u3542 u3543 u3544 u3545 u3546 u3547 u3548 u3549 u3550 u3551 u3552 u3553 u3554 u3555 u3556 u3557 u3558 u3559 u3560 u3561 u3562 u3563 u3564 u3565 u3566 u3567 u3568 u3569 u3570 u3571 u3572 u3573 u3574 u3575 u3576 u3577 u3578 u3579 u3580 u3581 u3582 u3583 u3584 u3585 u3586 u3587 u3588 u3589 u3590 u3591 u3592 u3593 u3594 u3595 u3596 u3597 u3598 u3599 u3600 u3601 u3602 u3603 u3604 u3605 u3606 u3607 u3608 u3609 u3610 u3611 u3612 u3613 u3614 u3615 u3616 u3617 u3618 u3619 u3620 u3621 u3622 u3623 u3624 u3625 u3626 u3627 u3628 u3629 u3630 u3631 u3632 u3633 u3634 u3635 u3636 u3637 u3638 u3639 u3640 u3641 u3642 u3643 u3644 u3645 u3646 u3647 u3648 u3649 u3650 u3651 u3652 u3653 u3654 u3655 u3656 u3657 u3658 u3659 u3660 u3661 u3662 u3663 u3664 u3665 u3666 u3667 u3668 u3669 u3670 u3671 u3672 u3673 u3674 u3675 u3676 u3677 u3678 u3679 u3680 u3681 u3682 u3683 u3684 u3685 u3686 u3687 u3688 u3689 u3690 u3691 u3692 u3693 u3694 u3695 u3696 u3697 u3698 u3699 u3700 u3701 u3702 u3703 u3704 u3705 u3706 u3707 u3708 u3709 u3710 u3711 u3712 u3713 u3714 u3715 u3716 u3717 u3718 u3719 u3720 u3721 u3722 u3723 u3724 u3725 u3726 u3727 u3728 u3729 u3730 u3731 u3732 u3733 u3734 u3735 u3736 u3737 u3738 u3739 u3740 u3741 u3742 u3743 u3744 u3745 u3746 u3747 u3748 u3749 u3750 u3751 u3752 u3753 u3754 u3755 u3756 u3757 u3758 u3759 u3760 u3761 u3762 u3763 u3764 u3765 u3766 u3767 u3768 u3769 u3770 u3771 u3772 u3773 u3774 u3775 u3776 u3777 u3778 u3779 u3780 u3781 u3782 u3783 u3784 u3785 u3786 u3787 u3788 u3789 u3790 u3791 u3792 u3793 u3794 u3795 u3796 u3797 u3798 u3799)
)
(define-data-var gear-two-hand (list 1115 uint)
    (list u1138 u1139 u1140 u1141 u1142 u1143 u1144 u1145 u1146 u1147 u1148 u1149 u1150 u1151 u1152 u1153 u1154 u1155 u1156 u1157 u1158 u1159 u1160 u1161 u1162 u1163 u1164 u1165 u1166 u1167 u1168 u1169 u1170 u1171 u1172 u1173 u1174 u1175 u1176 u1177 u1178 u1179 u1180 u1181 u1182 u1183 u1184 u1185 u1186 u1187 u1188 u1189 u1190 u1191 u1192 u1193 u1194 u1195 u1196 u1197 u1198 u1199 u1200 u1201 u1202 u1203 u1204 u1205 u1206 u1207 u1208 u1209 u1210 u1211 u1212 u1213 u1214 u1215 u1216 u1217 u1218 u1219 u1220 u1221 u1222 u1223 u1224 u1225 u1226 u1227 u1228 u1229 u1230 u1231 u1232 u1233 u1234 u1235 u1236 u1237 u1238 u1239 u1240 u1241 u1242 u1243 u1244 u1245 u1246 u1247 u1248 u1249 u1250 u1251 u1252 u1253 u1254 u1255 u1256 u1257 u1258 u1259 u1260 u1261 u1262 u1263 u1264 u1265 u1266 u1267 u1268 u1269 u1270 u1271 u1272 u1273 u1274 u1275 u1276 u1277 u1278 u1279 u1280 u1281 u1282 u1283 u1284 u1285 u1286 u1287 u1288 u1289 u1290 u1291 u1292 u1293 u1294 u1295 u1296 u1297 u1298 u1299 u1300 u1301 u1302 u1303 u1304 u1305 u1306 u1307 u1308 u1309 u1310 u1311 u1312 u1313 u1314 u1315 u1316 u1317 u1318 u1319 u1320 u1321 u1322 u1323 u1324 u1325 u1326 u1327 u1328 u1329 u1330 u1331 u1332 u1333 u1334 u1335 u1336 u1337 u1338 u1339 u1340 u1341 u1342 u1343 u1344 u1345 u1346 u1347 u1348 u1349 u1350 u1351 u1352 u1353 u1354 u1355 u1356 u1357 u1358 u1359 u1360 u1361 u1362 u1363 u1364 u1365 u1366 u1367 u1368 u1369 u1370 u1371 u1372 u1373 u1374 u1375 u1376 u1377 u1378 u1379 u1380 u1381 u1382 u1383 u1384 u1385 u1386 u1387 u1388 u1389 u1390 u1391 u1392 u1393 u1394 u1395 u1396 u1397 u1398 u1399 u1400 u1401 u1402 u1403 u1404 u1405 u1406 u1407 u1408 u1409 u1410 u1411 u1412 u1413 u1414 u1415 u1416 u1417 u1418 u1419 u1420 u1421 u1422 u1423 u1424 u1425 u1426 u1427 u1428 u1429 u1430 u1431 u1432 u1433 u1434 u1435 u1436 u1437 u1438 u1439 u1440 u1441 u1442 u1443 u1444 u1445 u1446 u1447 u1448 u1449 u1450 u1451 u1452 u1453 u1454 u1455 u1456 u1457 u1458 u1459 u1460 u1461 u1462 u1463 u1464 u1465 u1466 u1467 u1468 u1469 u1470 u1471 u1472 u1473 u1474 u1475 u1476 u1477 u1478 u1479 u1480 u1481 u1482 u1483 u1484 u1485 u1486 u1487 u1488 u1489 u1490 u1491 u1492 u1493 u1494 u1495 u1496 u1497 u1498 u1499 u1500 u1501 u1502 u1503 u1504 u1505 u1506 u1507 u1508 u1509 u1510 u1511 u1512 u1513 u1514 u1515 u1516 u1517 u1518 u1519 u1520 u1521 u1522 u1523 u1524 u1525 u1526 u1527 u1528 u1529 u1530 u1531 u1532 u1533 u1534 u1535 u1536 u1537 u1538 u1539 u1540 u1541 u1542 u1543 u1544 u1545 u1546 u1547 u1548 u1549 u1550 u1551 u1552 u1553 u1554 u1555 u1556 u1557 u1558 u1559 u1560 u1561 u1562 u1563 u1564 u1565 u1566 u1567 u1568 u1569 u1570 u1571 u1572 u1573 u1574 u1575 u1576 u1577 u1578 u1579 u1580 u1581 u1582 u1583 u1584 u1585 u1586 u1587 u1588 u1589 u1590 u1591 u1592 u1593 u1594 u1595 u1596 u1597 u1598 u1599 u1600 u1601 u1602 u1603 u1604 u1605 u1606 u1607 u1608 u1609 u1610 u1611 u1612 u1613 u1614 u1615 u1616 u1617 u1618 u1619 u1620 u1621 u1622 u1623 u1624 u1625 u1626 u1627 u1628 u1629 u1630 u1631 u1632 u1633 u1634 u1635 u1636 u1637 u1638 u1639 u1640 u1641 u1642 u1643 u1644 u1645 u1646 u1647 u1648 u1649 u1650 u1651 u1652 u1653 u1654 u1655 u1656 u1657 u1658 u1659 u1660 u1661 u1662 u1663 u1664 u1665 u1666 u1667 u1668 u1669 u1670 u1671 u1672 u1673 u1674 u1675 u1676 u1677 u1678 u1679 u1680 u1681 u1682 u1683 u1684 u1685 u1686 u1687 u1688 u1689 u1690 u1691 u1692 u1693 u1694 u1695 u1696 u1697 u1698 u1699 u1700 u1701 u1702 u1703 u1704 u1705 u1706 u1707 u1708 u1709 u1710 u1711 u1712 u1713 u1714 u1715 u1716 u1717 u1718 u1719 u1720 u1721 u1722 u1723 u1724 u1725 u1726 u1727 u1728 u1729 u1730 u1731 u1732 u1733 u1734 u1735 u1736 u1737 u1738 u1739 u1740 u1741 u1742 u1743 u1744 u1745 u1746 u1747 u1748 u1749 u1750 u1751 u1752 u1753 u1754 u1755 u1756 u1757 u1758 u1759 u1760 u1761 u1762 u1763 u1764 u1765 u1766 u1767 u1768 u1769 u1770 u1771 u1772 u1773 u1774 u1775 u1776 u1777 u1778 u1779 u1780 u1781 u1782 u1783 u1784 u1785 u1786 u1787 u1788 u1789 u1790 u1791 u1792 u1793 u1794 u1795 u1796 u1797 u1798 u1799 u1800 u1801 u1802 u1803 u1804 u1805 u1806 u1807 u1808 u1809 u1810 u1811 u1812 u1813 u1814 u1815 u1816 u1817 u1818 u1819 u1820 u1821 u1822 u1823 u1824 u1825 u1826 u1827 u1828 u1829 u1830 u1831 u1832 u1833 u1834 u1835 u1836 u1837 u1838 u1839 u1840 u1841 u1842 u1843 u1844 u1845 u1846 u1847 u1848 u1849 u1850 u1851 u1852 u1853 u1854 u1855 u1856 u1857 u1858 u1859 u1860 u1861 u1862 u1863 u1864 u1865 u1866 u1867 u1868 u1869 u1870 u1871 u1872 u1873 u1874 u1875 u1876 u1877 u1878 u1879 u1880 u1881 u1882 u1883 u1884 u1885 u1886 u1887 u1888 u1889 u1890 u1891 u1892 u1893 u1894 u1895 u1896 u1897 u1898 u1899 u1900 u1901 u1902 u1903 u1904 u1905 u1906 u1907 u1908 u1909 u1910 u1911 u1912 u1913 u1914 u1915 u1916 u1917 u1918 u1919 u1920 u1921 u1922 u1923 u1924 u1925 u1926 u1927 u1928 u1929 u1930 u1931 u1932 u1933 u1934 u1935 u1936 u1937 u1938 u1939 u1940 u1941 u1942 u1943 u1944 u1945 u1946 u1947 u1948 u1949 u1950 u1951 u1952 u1953 u1954 u1955 u1956 u1957 u1958 u1959 u1960 u1961 u1962 u1963 u1964 u1965 u1966 u1967 u1968 u1969 u1970 u1971 u1972 u1973 u1974 u1975 u1976 u1977 u1978 u1979 u1980 u1981 u1982 u1983 u1984 u1985 u1986 u1987 u1988 u1989 u1990 u1991 u1992 u1993 u1994 u1995 u1996 u1997 u1998 u1999 u2000 u2001 u2002 u2003 u2004 u2005 u2006 u2007 u2008 u2009 u2010 u2011 u2012 u2013 u2014 u2015 u2016 u2017 u2018 u2019 u2020 u2021 u2022 u2023 u2024 u2025 u2026 u2027 u2028 u2029 u2030 u2031 u2032 u2033 u2034 u2035 u2036 u2037 u2038 u2039 u2040 u2041 u2042 u2043 u2044 u2045 u2046 u2047 u2048 u2049 u2050 u2051 u2052 u2053 u2054 u2055 u2056 u2057 u2058 u2059 u2060 u2061 u2062 u2063 u2064 u2065 u2066 u2067 u2068 u2069 u2070 u2071 u2072 u2073 u2074 u2075 u2076 u2077 u2078 u2079 u2080 u2081 u2082 u2083 u2084 u2085 u2086 u2087 u2088 u2089 u2090 u2091 u2092 u2093 u2094 u2095 u2096 u2097 u2098 u2099 u2100 u2101 u2102 u2103 u2104 u2105 u2106 u2107 u2108 u2109 u2110 u2111 u2112 u2113 u2114 u2115 u2116 u2117 u2118 u2119 u2120 u2121 u2122 u2123 u2124 u2125 u2126 u2127 u2128 u2129 u2130 u2131 u2132 u2133 u2134 u2135 u2136 u2137 u2138 u2139 u2140 u2141 u2142 u2143 u2144 u2145 u2146 u2147 u2148 u2149 u2150 u2151 u2152 u2153 u2154 u2155 u2156 u2157 u2158 u2159 u2160 u2161 u2162 u2163 u2164 u2165 u2166 u2167 u2168 u2169 u2170 u2171 u2172 u2173 u2174 u2175 u2176 u2177 u2178 u2179 u2180 u2181 u2182 u2183 u2184 u2185 u2186 u2187 u2188 u2189 u2190 u2191 u2192 u2193 u2194 u2195 u2196 u2197 u2198 u2199 u2200 u2201 u2202 u2203 u2204 u2205 u2206 u2207 u2208 u2209 u2210 u2211 u2212 u2213 u2214 u2215 u2216 u2217 u2218 u2219 u2220 u2221 u2222 u2223 u2224 u2225 u2226 u2227 u2228 u2229 u2230 u2231 u2232 u2233 u2234 u2235 u2236 u2237 u2238 u2239 u2240 u2241 u2242 u2243 u2244 u2245 u2246 u2247 u2248 u2249 u2250 u2251 u2252)
)
(define-data-var gear-head (list 251 uint)
    (list u3221 u3222 u3223 u3224 u3225 u3226 u3227 u3228 u3229 u3230 u3231 u3232 u3233 u3234 u3235 u3236 u3237 u3238 u3239 u3240 u3241 u3242 u3243 u3244 u3245 u3246 u3247 u3248 u3249 u3250 u3251 u3252 u3253 u3254 u3255 u3256 u3257 u3258 u3259 u3260 u3261 u3262 u3263 u3264 u3265 u3266 u3267 u3268 u3269 u3270 u3271 u3272 u3273 u3274 u3275 u3276 u3277 u3278 u3279 u3280 u3281 u3282 u3283 u3284 u3285 u3286 u3287 u3288 u3289 u3290 u3291 u3292 u3293 u3294 u3295 u3296 u3297 u3298 u3299 u3300 u3301 u3302 u3303 u3304 u3305 u3306 u3307 u3308 u3309 u3310 u3311 u3312 u3313 u3314 u3315 u3316 u3317 u3318 u3319 u3320 u3321 u3322 u3323 u3324 u3325 u3326 u3327 u3328 u3329 u3330 u3331 u3332 u3333 u3334 u3335 u3336 u3337 u3338 u3339 u3340 u3341 u3342 u3343 u3344 u3345 u3346 u3347 u3348 u3349 u3350 u3351 u3352 u3353 u3354 u3355 u3356 u3357 u3358 u3359 u3360 u3361 u3362 u3363 u3364 u3365 u3366 u3367 u3368 u3369 u3370 u3371 u3372 u3373 u3374 u3375 u3376 u3377 u3378 u3379 u3380 u3381 u3382 u3383 u3384 u3385 u3386 u3387 u3388 u3389 u3390 u3391 u3392 u3393 u3394 u3395 u3396 u3397 u3398 u3399 u3400 u3401 u3402 u3403 u3404 u3405 u3406 u3407 u3408 u3409 u3410 u3411 u3412 u3413 u3414 u3415 u3416 u3417 u3418 u3419 u3420 u3421 u3422 u3423 u3424 u3425 u3426 u3427 u3428 u3429 u3430 u3431 u3432 u3433 u3434 u3435 u3436 u3437 u3438 u3439 u3440 u3441 u3442 u3443 u3444 u3445 u3446 u3447 u3448 u3449 u3450 u3451 u3452 u3453 u3454 u3455 u3456 u3457 u3458 u3459 u3460 u3461 u3462 u3463 u3464 u3465 u3466 u3467 u3468 u3469 u3470 u3471)
)
(define-data-var gear-neck (list 258 uint)
    (list u2453 u2454 u2455 u2456 u2457 u2458 u2459 u2460 u2461 u2462 u2463 u2464 u2465 u2466 u2467 u2468 u2469 u2470 u2471 u2472 u2473 u2474 u2475 u2476 u2477 u2478 u2479 u2480 u2481 u2482 u2483 u2484 u2485 u2486 u2487 u2488 u2489 u2490 u2491 u2492 u2493 u2494 u2495 u2496 u2497 u2498 u2499 u2500 u2501 u2502 u2503 u2504 u2505 u2506 u2507 u2508 u2509 u2510 u2511 u2512 u2513 u2514 u2515 u2516 u2517 u2518 u2519 u2520 u2521 u2522 u2523 u2524 u2525 u2526 u2527 u2528 u2529 u2530 u2531 u2532 u2533 u2534 u2535 u2536 u2537 u2538 u2539 u2540 u2541 u2542 u2543 u2544 u2545 u2546 u2547 u2548 u2549 u2550 u2551 u2552 u2553 u2554 u2555 u2556 u2557 u2558 u2559 u2560 u2561 u2562 u2563 u2564 u2565 u2566 u2567 u2568 u2569 u2570 u2571 u2572 u2573 u2574 u2575 u2576 u2577 u2578 u2579 u2580 u2581 u2582 u2583 u2584 u2585 u2586 u2587 u2588 u2589 u2590 u2591 u2592 u2593 u2594 u2595 u2596 u2597 u2598 u2599 u2600 u2601 u2602 u2603 u2604 u2605 u2606 u2607 u2608 u2609 u2610 u2611 u2612 u2613 u2614 u2615 u2616 u2617 u2618 u2619 u2620 u2621 u2622 u2623 u2624 u2625 u2626 u2627 u2628 u2629 u2630 u2631 u2632 u2633 u2634 u2635 u2636 u2637 u2638 u2639 u2640 u2641 u2642 u2643 u2644 u2645 u2646 u2647 u2648 u2649 u2650 u2651 u2652 u2653 u2654 u2655 u2656 u2657 u2658 u2659 u2660 u2661 u2662 u2663 u2664 u2665 u2666 u2667 u2668 u2669 u2670 u2671 u2672 u2673 u2674 u2675 u2676 u2677 u2678 u2679 u2680 u2681 u2682 u2683 u2684 u2685 u2686 u2687 u2688 u2689 u2690 u2691 u2692 u2693 u2694 u2695 u2696 u2697 u2698 u2699 u2700 u2701 u2702 u2703 u2704 u2705 u2706 u2707 u2708 u2709 u2710)
)
(define-data-var gear-wrists (list 241 uint)
    (list u2980 u2981 u2982 u2983 u2984 u2985 u2986 u2987 u2988 u2989 u2990 u2991 u2992 u2993 u2994 u2995 u2996 u2997 u2998 u2999 u3000 u3001 u3002 u3003 u3004 u3005 u3006 u3007 u3008 u3009 u3010 u3011 u3012 u3013 u3014 u3015 u3016 u3017 u3018 u3019 u3020 u3021 u3022 u3023 u3024 u3025 u3026 u3027 u3028 u3029 u3030 u3031 u3032 u3033 u3034 u3035 u3036 u3037 u3038 u3039 u3040 u3041 u3042 u3043 u3044 u3045 u3046 u3047 u3048 u3049 u3050 u3051 u3052 u3053 u3054 u3055 u3056 u3057 u3058 u3059 u3060 u3061 u3062 u3063 u3064 u3065 u3066 u3067 u3068 u3069 u3070 u3071 u3072 u3073 u3074 u3075 u3076 u3077 u3078 u3079 u3080 u3081 u3082 u3083 u3084 u3085 u3086 u3087 u3088 u3089 u3090 u3091 u3092 u3093 u3094 u3095 u3096 u3097 u3098 u3099 u3100 u3101 u3102 u3103 u3104 u3105 u3106 u3107 u3108 u3109 u3110 u3111 u3112 u3113 u3114 u3115 u3116 u3117 u3118 u3119 u3120 u3121 u3122 u3123 u3124 u3125 u3126 u3127 u3128 u3129 u3130 u3131 u3132 u3133 u3134 u3135 u3136 u3137 u3138 u3139 u3140 u3141 u3142 u3143 u3144 u3145 u3146 u3147 u3148 u3149 u3150 u3151 u3152 u3153 u3154 u3155 u3156 u3157 u3158 u3159 u3160 u3161 u3162 u3163 u3164 u3165 u3166 u3167 u3168 u3169 u3170 u3171 u3172 u3173 u3174 u3175 u3176 u3177 u3178 u3179 u3180 u3181 u3182 u3183 u3184 u3185 u3186 u3187 u3188 u3189 u3190 u3191 u3192 u3193 u3194 u3195 u3196 u3197 u3198 u3199 u3200 u3201 u3202 u3203 u3204 u3205 u3206 u3207 u3208 u3209 u3210 u3211 u3212 u3213 u3214 u3215 u3216 u3217 u3218 u3219 u3220)
)
(define-data-var gear-finger (list 269 uint)
    (list u2711 u2712 u2713 u2714 u2715 u2716 u2717 u2718 u2719 u2720 u2721 u2722 u2723 u2724 u2725 u2726 u2727 u2728 u2729 u2730 u2731 u2732 u2733 u2734 u2735 u2736 u2737 u2738 u2739 u2740 u2741 u2742 u2743 u2744 u2745 u2746 u2747 u2748 u2749 u2750 u2751 u2752 u2753 u2754 u2755 u2756 u2757 u2758 u2759 u2760 u2761 u2762 u2763 u2764 u2765 u2766 u2767 u2768 u2769 u2770 u2771 u2772 u2773 u2774 u2775 u2776 u2777 u2778 u2779 u2780 u2781 u2782 u2783 u2784 u2785 u2786 u2787 u2788 u2789 u2790 u2791 u2792 u2793 u2794 u2795 u2796 u2797 u2798 u2799 u2800 u2801 u2802 u2803 u2804 u2805 u2806 u2807 u2808 u2809 u2810 u2811 u2812 u2813 u2814 u2815 u2816 u2817 u2818 u2819 u2820 u2821 u2822 u2823 u2824 u2825 u2826 u2827 u2828 u2829 u2830 u2831 u2832 u2833 u2834 u2835 u2836 u2837 u2838 u2839 u2840 u2841 u2842 u2843 u2844 u2845 u2846 u2847 u2848 u2849 u2850 u2851 u2852 u2853 u2854 u2855 u2856 u2857 u2858 u2859 u2860 u2861 u2862 u2863 u2864 u2865 u2866 u2867 u2868 u2869 u2870 u2871 u2872 u2873 u2874 u2875 u2876 u2877 u2878 u2879 u2880 u2881 u2882 u2883 u2884 u2885 u2886 u2887 u2888 u2889 u2890 u2891 u2892 u2893 u2894 u2895 u2896 u2897 u2898 u2899 u2900 u2901 u2902 u2903 u2904 u2905 u2906 u2907 u2908 u2909 u2910 u2911 u2912 u2913 u2914 u2915 u2916 u2917 u2918 u2919 u2920 u2921 u2922 u2923 u2924 u2925 u2926 u2927 u2928 u2929 u2930 u2931 u2932 u2933 u2934 u2935 u2936 u2937 u2938 u2939 u2940 u2941 u2942 u2943 u2944 u2945 u2946 u2947 u2948 u2949 u2950 u2951 u2952 u2953 u2954 u2955 u2956 u2957 u2958 u2959 u2960 u2961 u2962 u2963 u2964 u2965 u2966 u2967 u2968 u2969 u2970 u2971 u2972 u2973 u2974 u2975 u2976 u2977 u2978 u2979)
)

(define-public (initialize-equipment)
  (ok 
    (map-set equipment { address: tx-sender } { 
      main-hand: none, 
      off-hand: none, 
      two-hand: none, 
      head: none, 
      neck: none, 
      wrists: none, 
      right-ring-finger: none, 
      left-ring-finger: none 
    })
  )
)

(define-public (equip-gear-main-hand (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint))
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-main-hand player-character-contract tx-sender gear-contract gear-id))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { main-hand: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-off-hand (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint))
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-off-hand player-character-contract tx-sender gear-contract gear-id))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { off-hand: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-two-hand (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint))
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-two-hand player-character-contract tx-sender gear-contract gear-id))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { two-hand: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-head (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint))
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-head player-character-contract tx-sender gear-contract gear-id))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { head: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-neck (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint)) 
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-neck player-character-contract tx-sender gear-contract gear-id))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { neck: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-wrists (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint)) 
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-wrists player-character-contract tx-sender gear-contract gear-id))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { wrists: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-right-ring-finger (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint))
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-finger player-character-contract tx-sender gear-contract gear-id))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { right-ring-finger: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-left-ring-finger (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint))
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-finger player-character-contract tx-sender gear-contract gear-id))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { left-ring-finger: (some gear-id) }))
      )
    )
  )
)

(define-read-only (get-equipment (address principal))
  (ok 
    (unwrap! (map-get? equipment { address: address }) (err NOT-FOUND))
  )
)

(define-private (can-equip-main-hand (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! (is-some (index-of (var-get gear-main-hand) gear-id)) (err NOT-FOUND))
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    ;; ensure two hand is not already equipped
    (asserts! (not (is-two-hand-equipped equipped)) (err ALREADY-EQUIPPED)) 
    (ok true)
  )
)

(define-private (can-equip-off-hand (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! (is-some (index-of (var-get gear-off-hand) gear-id)) (err NOT-FOUND))
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    ;; ensure two hand is not already equipped
    (asserts! (not (is-two-hand-equipped equipped)) (err ALREADY-EQUIPPED)) 
    (ok true)
  )
)

(define-private (can-equip-two-hand (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! (is-some (index-of (var-get gear-two-hand) gear-id)) (err NOT-FOUND))
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    ;; ensure main or off hand is not already equipped
    (asserts! (not (is-main-or-off-hand-equipped equipped)) (err ALREADY-EQUIPPED)) 
    (ok true)
  )
)

(define-private (can-equip-head (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! (is-some (index-of (var-get gear-head) gear-id)) (err NOT-FOUND))
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    (ok true)
  )
)

(define-private (can-equip-neck (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! (is-some (index-of (var-get gear-neck) gear-id)) (err NOT-FOUND))
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    (ok true)
  )
)

(define-private (can-equip-wrists (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! (is-some (index-of (var-get gear-wrists) gear-id)) (err NOT-FOUND))
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    (ok true)
  )
)

(define-private (can-equip-finger (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! (is-some (index-of (var-get gear-finger) gear-id)) (err NOT-FOUND))
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    (ok true)
  )
)

(define-private (is-player (player-character-contract <player-character-contract>) (player-address principal))
  (ok 
    (unwrap! (contract-call? player-character-contract get-character player-address ) (err NOT-FOUND))
  )
)

(define-private (is-gear-owner (gear-contract <gear-contract>) (id uint)) 
  (begin
    (ok 
      (asserts! 
        (is-eq 
          (unwrap! (unwrap-panic (as-contract (contract-call? gear-contract get-owner id))) (err NOT-AUTHORIZED))
          tx-sender
        )
        (err NOT-AUTHORIZED)
      )
    )
  )
)

(define-private (is-equipped 
    (equipped 
      (tuple 
        (main-hand (optional uint)) 
        (off-hand (optional uint)) 
        (two-hand (optional uint)) 
        (head (optional uint)) 
        (neck (optional uint)) 
        (wrists (optional uint)) 
        (right-ring-finger (optional uint)) 
        (left-ring-finger (optional uint))
      )
    )
  )
  (or 
    (is-some (get main-hand equipped))
    (is-some (get off-hand equipped))
    (is-some (get two-hand equipped))
    (is-some (get head equipped))
    (is-some (get neck equipped))
    (is-some (get wrists equipped))
    (is-some (get left-ring-finger equipped))
    (is-some (get right-ring-finger equipped))
  )
)

(define-private (is-two-hand-equipped 
    (equipped 
      (tuple 
        (main-hand (optional uint)) 
        (off-hand (optional uint)) 
        (two-hand (optional uint)) 
        (head (optional uint)) 
        (neck (optional uint)) 
        (wrists (optional uint)) 
        (right-ring-finger (optional uint)) 
        (left-ring-finger (optional uint))
      )
    )
  )
  (is-some (get two-hand equipped))
)
(define-private (is-main-or-off-hand-equipped 
    (equipped 
      (tuple 
        (main-hand (optional uint)) 
        (off-hand (optional uint)) 
        (two-hand (optional uint)) 
        (head (optional uint)) 
        (neck (optional uint)) 
        (wrists (optional uint)) 
        (right-ring-finger (optional uint)) 
        (left-ring-finger (optional uint))
      )
    )
  )
  (or 
    (is-some (get main-hand equipped))
    (is-some (get off-hand equipped))
  )
)

;; TODO: re-implement this later if needed
;; (define-public (unequip-gear (gear-id uint))
;;   (let (
;;     (equipped (unwrap! (map-get? characters { address: tx-sender }) (err NOT-FOUND)))
;;   ) 
;;     (if 
;;       (is-eq (get main-hand equipped) (some gear-id))
;;       (map-set characters { address: tx-sender } (merge equipped { main-hand: none }))
;;       false
;;     )
;;     (if 
;;       (is-eq (get off-hand equipped) (some gear-id))
;;       (map-set characters { address: tx-sender } (merge equipped { off-hand: none }))
;;       false
;;     )
;;     (if 
;;       (is-eq (get two-hand equipped) (some gear-id))
;;       (map-set characters { address: tx-sender } (merge equipped { two-hand: none }))
;;       false
;;     )
;;     (if 
;;       (is-eq (get head equipped) (some gear-id))
;;       (map-set characters { address: tx-sender } (merge equipped { head: none }))
;;       false
;;     )
;;     (if 
;;       (is-eq (get neck equipped) (some gear-id))
;;       (map-set characters { address: tx-sender } (merge equipped { neck: none }))
;;       false
;;     )
;;     (if 
;;       (is-eq (get wrists equipped) (some gear-id))
;;       (map-set characters { address: tx-sender } (merge equipped { wrists: none }))
;;       false
;;     )
;;     (if 
;;       (is-eq (get right-ring-finger equipped) (some gear-id))
;;       (map-set characters { address: tx-sender } (merge equipped { right-ring-finger: none }))
;;       false
;;     )
;;     (if 
;;       (is-eq (get left-ring-finger equipped) (some gear-id))
;;       (map-set characters { address: tx-sender } (merge equipped { left-ring-finger: none }))
;;       false
;;     )
;;     (ok true)
;;   )
;; )