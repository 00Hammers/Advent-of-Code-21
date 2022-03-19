⍝Each line is a measurement.
⍝Count the number of times a measurement increases from the previous measurement. (There is no measurement before the first measurement.)

data ← 189 190 199 197 200 201 199 216 224 239 243 236 235 236 238 246 245 249 252 256 260 263 280 290 300 299 298 297 309 315 351 356 374 376 399 400 396 398 401 398 416 423 432 433 446 459 462 447 458 455 442 443 442 446 447 455 472 475 486 492 520 518 526 519 528 529 553 547 572 558 559 548 560 538 574 549 577 568 569 581 576 577 576 578 579 581 580 583 579 580 581 583 590 600 604 619 611 608 609 610 624 625 624 631 637 647 645 666 672 673 672 669 671 680 691 695 696 697 699 700 696 697 700 699 702 722 723 711 716 721 722 723 721 729 730 732 740 742 764 768 765 768 769 770 766 784 778 777 780 811 838 839 840 843 849 856 861 875 890 889 890 894 893 885 883 894 902 904 905 901 902 906 910 898 906 904 902 904 868 871 857 842 841 843 852 853 863 864 882 889 886 888 889 888 889 875 883 901 902 903 902 898 906 903 914 916 936 937 927 926 932 933 940 941 942 944 965 966 965 978 973 976 994 988 987 1011 1010 1013 1022 1021 1025 1027 1037 1068 1074 1073 1088 1095 1096 1101 1127 1128 1139 1154 1150 1189 1183 1186 1212 1220 1226 1225 1228 1229 1233 1237 1238 1234 1236 1234 1224 1225 1236 1235 1257 1272 1295 1312 1307 1350 1364 1365 1367 1363 1369 1365 1367 1380 1381 1382 1398 1399 1400 1401 1409 1424 1429 1430 1411 1379 1380 1382 1383 1398 1399 1396 1405 1404 1401 1394 1395 1404 1409 1410 1412 1391 1392 1398 1401 1404 1413 1416 1420 1428 1460 1469 1464 1466 1464 1472 1479 1475 1482 1477 1481 1480 1481 1521 1509 1512 1515 1531 1526 1524 1543 1542 1545 1557 1554 1551 1557 1567 1569 1574 1569 1570 1572 1568 1567 1589 1594 1607 1608 1605 1614 1617 1607 1643 1648 1654 1661 1676 1664 1663 1670 1686 1711 1712 1736 1738 1737 1739 1726 1736 1725 1708 1707 1715 1720 1714 1724 1727 1728 1730 1729 1730 1732 1736 1731 1732 1763 1764 1763 1764 1765 1769 1772 1798 1799 1817 1826 1827 1825 1824 1822 1795 1785 1782 1783 1774 1788 1792 1794 1803 1810 1815 1828 1829 1846 1857 1854 1853 1862 1864 1839 1840 1841 1845 1862 1881 1888 1894 1880 1879 1888 1894 1907 1908 1911 1903 1902 1904 1906 1907 1908 1907 1905 1908 1910 1928 1942 1948 1946 1947 1952 1953 1954 1963 1986 1984 1981 1982 1987 1990 1997 1996 2027 2041 2053 2054 2071 2088 2061 2064 2065 2053 2092 2097 2103 2104 2100 2089 2068 2070 2081 2083 2063 2062 2061 2057 2063 2044 2049 2050 2041 2049 2031 2039 2035 2028 2024 2036 2037 2045 2056 2061 2064 2068 2048 2047 2043 2046 2058 2071 2070 2071 2080 2085 2079 2092 2093 2094 2099 2109 2105 2109 2110 2111 2119 2131 2132 2133 2126 2125 2126 2124 2125 2127 2128 2142 2173 2189 2187 2188 2189 2197 2198 2199 2210 2214 2215 2216 2215 2247 2252 2250 2261 2278 2280 2277 2276 2280 2300 2299 2301 2297 2307 2319 2343 2344 2347 2353 2347 2356 2354 2351 2358 2380 2381 2385 2381 2385 2386 2387 2386 2409 2407 2410 2413 2416 2423 2425 2415 2419 2423 2409 2391 2370 2371 2373 2374 2368 2379 2386 2391 2400 2399 2415 2410 2406 2410 2419 2420 2423 2419 2413 2403 2411 2413 2421 2442 2443 2416 2421 2426 2435 2443 2445 2442 2445 2443 2444 2447 2467 2484 2457 2467 2465 2473 2477 2476 2461 2460 2443 2419 2416 2417 2415 2416 2417 2420 2421 2425 2423 2425 2428 2431 2407 2408 2385 2386 2388 2407 2398 2400 2395 2396 2431 2424 2427 2430 2442 2468 2469 2471 2442 2453 2458 2469 2470 2488 2489 2491 2477 2480 2484 2474 2471 2473 2476 2480 2484 2486 2488 2492 2502 2492 2494 2522 2523 2522 2520 2521 2534 2553 2548 2559 2591 2600 2598 2596 2598 2580 2582 2584 2577 2574 2573 2579 2580 2577 2586 2588 2589 2594 2596 2590 2606 2598 2599 2612 2641 2644 2649 2650 2644 2666 2669 2670 2665 2667 2676 2679 2703 2684 2683 2681 2698 2731 2754 2755 2747 2741 2742 2738 2743 2718 2719 2720 2728 2731 2733 2739 2740 2739 2760 2759 2740 2735 2737 2742 2747 2758 2753 2744 2737 2742 2762 2775 2779 2788 2803 2802 2823 2827 2828 2829 2828 2831 2843 2847 2822 2825 2828 2847 2837 2854 2847 2843 2841 2831 2832 2845 2855 2842 2847 2848 2858 2850 2848 2849 2853 2865 2868 2873 2878 2880 2881 2880 2877 2875 2847 2855 2868 2869 2870 2872 2874 2889 2886 2875 2877 2889 2902 2904 2898 2900 2894 2893 2928 2941 2942 2926 2922 2936 2940 2924 2905 2920 2924 2933 2936 2935 2931 2947 2957 2978 2979 2977 2973 2971 2973 2991 2990 2989 2992 3004 3023 3009 3026 3037 3041 3065 3098 3101 3122 3123 3118 3119 3122 3148 3149 3150 3155 3147 3146 3165 3157 3161 3162 3158 3160 3163 3164 3169 3170 3197 3195 3194 3196 3201 3200 3208 3202 3204 3219 3221 3226 3239 3262 3263 3252 3293 3294 3296 3297 3308 3299 3309 3292 3266 3274 3276 3284 3285 3286 3297 3304 3312 3313 3308 3325 3319 3322 3323 3328 3335 3337 3348 3350 3351 3353 3364 3365 3387 3406 3415 3414 3410 3411 3405 3421 3426 3441 3442 3446 3413 3414 3416 3417 3411 3412 3417 3422 3428 3430 3425 3436 3432 3436 3450 3448 3451 3452 3466 3482 3477 3475 3471 3473 3472 3473 3474 3472 3488 3493 3499 3500 3502 3518 3493 3518 3522 3523 3525 3529 3535 3532 3543 3554 3546 3531 3535 3540 3541 3542 3540 3570 3575 3576 3579 3577 3578 3589 3582 3580 3585 3584 3580 3581 3582 3584 3566 3558 3567 3590 3591 3592 3594 3593 3594 3623 3616 3640 3642 3645 3635 3637 3635 3627 3625 3621 3620 3613 3605 3606 3607 3608 3609 3610 3616 3617 3621 3617 3619 3620 3622 3655 3652 3655 3656 3668 3671 3673 3682 3687 3688 3687 3689 3692 3696 3698 3700 3699 3719 3716 3729 3736 3722 3740 3738 3744 3752 3756 3760 3778 3754 3763 3756 3773 3777 3763 3764 3766 3781 3776 3763 3747 3754 3764 3759 3766 3767 3769 3771 3766 3769 3771 3764 3805 3804 3803 3808 3799 3831 3833 3814 3815 3829 3836 3854 3861 3865 3879 3876 3877 3859 3858 3860 3863 3862 3890 3891 3909 3907 3886 3880 3882 3885 3886 3887 3888 3891 3901 3909 3894 3885 3901 3921 3922 3909 3913 3920 3918 3919 3926 3918 3920 3921 3929 3944 3927 3926 3925 3940 3956 3937 3939 3940 3941 3933 3956 3957 3971 3976 3978 3977 3983 3984 3985 3986 3989 3988 3990 3997 4002 4005 4014 4019 4038 4044 4050 4054 4055 4064 4082 4084 4087 4100 4109 4117 4118 4150 4147 4141 4142 4138 4146 4138 4144 4141 4148 4192 4214 4223 4218 4220 4219 4224 4220 4221 4228 4230 4241 4249 4248 4278 4279 4235 4220 4222 4220 4235 4226 4243 4244 4238 4253 4254 4232 4226 4221 4220 4219 4204 4200 4201 4192 4191 4198 4202 4220 4235 4233 4258 4242 4244 4241 4242 4247 4233 4234 4247 4258 4259 4258 4288 4292 4295 4294 4305 4295 4296 4299 4303 4314 4330 4347 4349 4376 4384 4396 4395 4399 4381 4402 4420 4418 4423 4426 4428 4427 4429 4430 4453 4454 4461 4481 4492 4496 4498 4499 4498 4499 4504 4516 4524 4525 4528 4529 4528 4526 4527 4532 4534 4514 4544 4546 4548 4549 4557 4563 4566 4573 4583 4584 4580 4596 4606 4608 4615 4620 4614 4609 4621 4637 4645 4629 4633 4627 4631 4617 4645 4656 4657 4658 4689 4704 4705 4707 4706 4704 4705 4708 4709 4722 4724 4699 4696 4693 4692 4695 4694 4700 4701 4686 4688 4698 4700 4697 4706 4709 4721 4728 4729 4731 4726 4739 4740 4746 4740 4741 4747 4745 4746 4749 4750 4752 4753 4754 4766 4764 4762 4748 4747 4743 4746 4747 4754 4720 4721 4724 4725 4738 4739 4740 4745 4750 4747 4742 4740 4757 4765 4780 4783 4785 4795 4799 4800 4823 4826 4824 4827 4830 4829 4828 4823 4825 4827 4849 4853 4837 4848 4849 4844 4845 4858 4861 4865 4866 4874 4875 4876 4877 4882 4883 4885 4890 4891 4893 4894 4901 4905 4926 4925 4934 4935 4933 4916 4947 4942 4937 4968 4958 4957 4958 4959 4957 4955 4927 4928 4926 4934 4933 4934 4916 4917 4918 4919 4920 4963 4985 4979 4976 4968 4973 4969 4961 4963 4960 4964 4963 4967 4969 4967 4972 4977 4976 4979 4975 4981 5005 5008 4984 4983 4991 4992 4993 4994 4995 5014 5046 5069 5068 5066 5073 5074 5072 5073 5083 5079 5111 5110 5111 5139 5136 5138 5124 5127 5126 5138 5137 5138 5154 5149 5152 5173 5191 5192 5193 5198 5195 5194 5221 5229 5245 5248 5246 5266 5267 5293 5294 5303 5325 5328 5327 5328 5334 5341 5327 5326 5337 5353 5354 5356 5360 5342 5356 5367 5363 5364 5363 5365 5398 5400 5404 5407 5402 5399 5404 5430 5439 5441 5446 5445 5448 5449 5472 5490 5494 5498 5484 5483 5497 5498 5491 5488 5517 5518 5513 5516 5507 5508 5507 5508 5521 5520 5518 5519 5523 5524 5523 5526 5506 5508 5522 5507 5508 5509 5492 5529 5531 5567 5552 5549 5547 5542 5544 5550 5523 5561 5556 5539 5540 5573 5575 5569 5568 5572 5569 5587 5586 5585 5582 5583 5578 5580 5598 5604 5603 5610 5604 5603 5604 5607 5632 5633 5644 5645 5660 5662 5672 5685 5684 5687 5733 5735 5743 5745 5772 5774 5773 5777 5781 5784 5769 5777 5788 5789 5790 5793 5767 5788 5787 5789 5791 5795 5820 5821 5804 5808 5824 5821 5825 5847 5849 5850 5844 5833 5834 5842 5826 5855 5856 5858 5871 5860 5862 5872 5875 5885 5883 5874 5871 5865 5878 5887 5897 5918 5913 5908 5925 5926 5934 5937 5940 5944 5942 5962 5963 5976 5977 5966 5971 5970 5976 5978 5967 5979 5962 5983 5988 5989 6004 6003 6002 6009 6020 6037 6039 6041 6042 6040 6039 6041 6042 6043 6046 6051 6067 6069 6070 6083 6085 6083 6084 6082 6110 6100 6102 6100 6102 6106 6109 6094 6095 6102 6103 6116 6114 6119 6129 6130 6134 6135 6132 6131 6134 6169 6168 6199 6200 6202 6204 6205 6210 6216 6221 6214 6215 6225 6224 6230 6226 6238 6237 6246 6244 6247 6245 6246 6249 6250 6242 6243 6241 6220 6215 6216 6215 6216 6214 6186 6180 6182 6183 6186 6192 6174 6175 6172 6202 6206 6194 6202 6219 6222 6193 6192 6196 6214 6222 6225 6240 6238 6224 6225 6223 6224 6237 6240 6239 6242 6241 6230 6229 6222 6221 6234 6237 6238 6239 6240 6241 6254 6267 6272 6273 6271 6272 6283 6282 6281 6280 6282 6283 6281 6285 6287 6286 6287 6283 6306 6312 6349 6352 6350 6332 6317 6311 6324 6337 6339 6340 6351 6359 6363 6334 6338 6339 6342 6335 6336 6342 6343 6344 6329 6341 6347 6359 6335 6351 6353 6348 6347 6357 6360 6361 6362 6375 6366 6365 6363 6360 6386 6402 6423 6428 6429 6435 6434 6435 6437 6460 6461 6457 6465 6466 6470 6462 6464 6466 6468 6461 6468 6469 6507 6506 6532 6531 6538 6536 6552 6580 6585 6595 6597 6583 6570 6569 6568 6570 6569 6571 6541 6542 6548 6542 6538 6543 6534 6538 6560 6566 6567 6576 6578 6597 6602 6606 6600 6598 6601 6614 6611 6610 6613 6605 6611 6610 6609 6608 6609 6610 6615 6614 6619 6627 6629 6624
calc ← {+/ (1↓⍵)>(¯1↓⍵)}
calc data
