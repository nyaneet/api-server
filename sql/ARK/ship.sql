TRUNCATE TABLE ship_geometry, ship_parameters, ship CASCADE;

INSERT INTO ship_geometry
  (id, hull_svg, hull_beauty_svg)
VALUES
  (1, '{
"xy": " M 48.5097,6.69785 L 48.5943,6.69695 L 48.9032,6.68791 L 49.2206,6.67256 L 49.5383,6.6512 L 49.8624,6.62335  L 50.1867,6.58949 L 50.5144,6.54922 L 50.8419,6.50294 L 51.1693,6.45064 L 51.496,6.39235 L 51.8191,6.32867  L 52.1412,6.25906 L 52.4562,6.18491 L 52.7699,6.10489 L 53.0738,6.02126 L 53.3761,5.93184 L 53.6666,5.83975  L 53.9551,5.74197 L 54.2306,5.6424 L 54.5038,5.53723 L 54.7634,5.43102 L 55.0203,5.31935 L 55.2788,5.2  L 55.5134,5.08504 L 55.7451,4.96484 L 55.9635,4.84488 L 56.1787,4.71983 L 56.3813,4.59525 L 56.5804,4.46574  L 56.7678,4.33684 L 56.9515,4.2032 L 57.1244,4.07014 L 57.2932,3.93256 L 57.4522,3.79539 L 57.607,3.6539  L 57.7528,3.5126 L 57.8942,3.36719 L 58.0275,3.22157 L 58.1562,3.07208 L 58.2776,2.92189 L 58.3943,2.76808  L 58.5045,2.61293 L 58.6097,2.45442 L 58.709,2.29382 L 58.8033,2.13011 L 58.8923,1.96346 L 58.976,1.79393  L 59.0429,1.64789 L 59.106,1.5 L 59.1492,1.38634 L 59.1875,1.26878 L 59.2208,1.14999 L 59.255,1.00542  L 59.2841,0.856842 L 59.3095,0.694702 L 59.3293,0.529785 L 59.3441,0.355759 L 59.353,0.180313 L 59.356,-0  L 59.353,-0.178345 L 59.3441,-0.355972 L 59.3295,-0.527679 L 59.3092,-0.697281 L 59.2843,-0.855591 L 59.254,-1.01047  L 59.2208,-1.14999 L 59.1845,-1.27882 L 59.1429,-1.40405 L 59.106,-1.5 L 59.0308,-1.67519 L 58.9502,-1.84775  L 58.8648,-2.01636 L 58.7741,-2.18207 L 58.6782,-2.34483 L 58.5772,-2.50446 L 58.4704,-2.66203 L 58.3586,-2.81618  L 58.2404,-2.96902 L 58.1173,-3.11823 L 57.987,-3.26671 L 57.8522,-3.41132 L 57.7092,-3.55569 L 57.5619,-3.69597  L 57.4056,-3.8364 L 57.2452,-3.9725 L 57.0749,-4.10901 L 56.9006,-4.24098 L 56.7156,-4.3735 L 56.5269,-4.50131  L 56.3264,-4.62965 L 56.1226,-4.7531 L 55.9062,-4.87698 L 55.6867,-4.9958 L 55.4839,-5.09988 L 55.2788,-5.2  L 55.0317,-5.31427 L 54.7819,-5.4232 L 54.5183,-5.53146 L 54.2524,-5.63425 L 53.973,-5.73569 L 53.6915,-5.83154  L 53.3975,-5.92528 L 53.1016,-6.01331 L 52.7946,-6.09833 L 52.4861,-6.17754 L 52.1688,-6.25281 L 51.8503,-6.32219  L 51.526,-6.3867 L 51.2008,-6.44528 L 50.8732,-6.49821 L 50.5451,-6.54514 L 50.2183,-6.58588 L 49.8914,-6.62057  L 49.5692,-6.6488 L 49.2471,-6.67101 L 48.9325,-6.68674 L 48.6182,-6.69646 L 48.4834,-6.69832 L 48.286,-6.7  L -60.594,-6.7 L -60.594,6.7 L 48.286,6.7 z ",
"xz": " M 59.256,6.79999 L 59.2528,6.56166 L 59.243,6.325 L 59.2261,6.08667 L 59.2149,5.96812 L 59.2016,5.84999  L 59.1861,5.73058 L 59.1683,5.6116 L 59.1481,5.49307 L 59.1255,5.375 L 59.0998,5.25548 L 59.0713,5.13647  L 59.0401,5.01797 L 59.006,4.89999 L 58.9441,4.69942 L 58.8803,4.5 L 58.8111,4.29283 L 58.7395,4.08749  L 58.6636,3.88008 L 58.5844,3.67499 L 58.4995,3.46724 L 58.4101,3.2625 L 58.347,3.12582 L 58.2814,2.99077  L 58.2132,2.85742 L 58.1422,2.72588 L 58.0682,2.59627 L 57.9909,2.46867 L 57.9286,2.37128 L 57.8642,2.27521  L 57.7975,2.18056 L 57.7285,2.08737 L 57.5991,1.92497 L 57.5313,1.8457 L 57.4613,1.76778 L 57.3864,1.68863  L 57.3091,1.61102 L 57.2292,1.53499 L 57.1466,1.46059 L 57.0613,1.38788 L 56.9732,1.31691 L 56.8821,1.24771  L 56.7881,1.18034 L 56.6888,1.11337 L 56.5863,1.04842 L 56.4805,0.985489 L 56.3714,0.924652 L 56.2588,0.865936  L 56.1428,0.809372 L 56.0156,0.751587 L 55.8843,0.696274 L 55.7491,0.643448 L 55.6098,0.59314 L 55.4664,0.545334  L 55.3189,0.5 L 55.1563,0.454132 L 54.9891,0.411118 L 54.8045,0.368027 L 54.6148,0.328125 L 54.3343,0.276276  L 54.0439,0.230469 L 53.7821,0.195068 L 53.5132,0.163757 L 53.2264,0.135269 L 52.9324,0.110565 L 52.6371,0.0897217  L 52.3356,0.0719147 L 51.9665,0.054184 L 51.5895,0.0398865 L 51.2054,0.0285492 L 50.8148,0.0197144 L 50.1696,0.00968933  L 49.5135,0.00372314 L 48.286,-0 L -45.994,-0 L -46.3932,0.00317383 L -46.5296,0.0057373 L -46.7924,0.0127411  L -47.0082,0.0205688 L -47.1916,0.0286865 L -47.3764,0.0382385 L -47.5908,0.0510406 L -47.7443,0.0613403 L -47.9902,0.0798187  L -48.1121,0.0898743 L -48.2699,0.104477 L -48.3892,0.11499 L -48.4794,0.123856 L -48.7125,0.148239 L -48.8606,-0  L -56.0214,-0 L -56.1532,0.000305176 L -56.3162,0.00245667 L -56.479,0.00785828 L -56.6402,0.017746 L -56.7994,0.033371  L -56.9691,0.0585175 L -57.0711,0.07901 L -57.1676,0.103104 L -57.3136,0.15062 L -57.3819,0.178787 L -57.4444,0.208832  L -57.5123,0.247253 L -57.5723,0.287506 L -57.6293,0.333206 L -57.6783,0.380157 L -57.7224,0.430969 L -57.7593,0.482529  L -57.7932,0.541016 L -57.8202,0.599991 L -58.1781,1.48999 L -58.1781,1.95 L -57.9962,2.31349 L -60.594,3  L -60.594,6.84999 L -44.194,6.84999 L -44.194,8.23 L 36.356,8.23 L 36.356,6.84999 L 38.956,6.84999  L 38.956,9.7 L 59.356,9.7 z M 52.7325,2.19943 L 52.6846,2.19487 L 52.6296,2.18375 L 52.5908,2.17192 L 52.5574,2.15886 L 52.4967,2.12749  L 52.4427,2.08968 L 52.4145,2.06522 L 52.3901,2.04076 L 52.364,2.01031 L 52.3418,1.98004 L 52.3194,1.94371  L 52.3012,1.90775 L 52.2823,1.85992 L 52.2689,1.81287 L 52.2597,1.76045 L 52.256,1.7 L 52.2602,1.63528  L 52.2695,1.58464 L 52.2839,1.53526 L 52.3001,1.49466 L 52.3201,1.45503 L 52.3679,1.38477 L 52.4233,1.32674  L 52.4823,1.28159 L 52.5412,1.24849 L 52.5975,1.22578 L 52.6496,1.21143 L 52.6971,1.20348 L 52.7401,1.20024  L 52.78,1.20056 L 52.8166,1.20367 L 52.8638,1.21176 L 52.8947,1.21962 L 52.9215,1.22816 L 52.9518,1.23993  L 52.9782,1.25206 L 53.0066,1.26733 L 53.0317,1.28287 L 53.0615,1.30417 L 53.0876,1.32574 L 53.1175,1.35455  L 53.1433,1.38371 L 53.1711,1.42123 L 53.1942,1.45926 L 53.2167,1.5056 L 53.2338,1.55257 L 53.2488,1.61563  L 53.256,1.7 L 53.2534,1.75099 L 53.2454,1.8024 L 53.2332,1.84924 L 53.2159,1.89624 L 53.1963,1.93687  L 53.172,1.97742 L 53.1475,2.01103 L 53.1185,2.04437 L 53.0597,2.09717 L 52.9992,2.13687 L 52.9395,2.1651  L 52.8825,2.18372 L 52.8291,2.19461 L 52.7794,2.19945 z ",
"yz": " M 1.14999,9.7 L 5.2,9.56 L 6.7,9.50999 L 6.7,0.5 L 6.69814,0.456985 L 6.69296,0.416473  L 6.6924,0.413162 L 6.68294,0.370514 L 6.66985,0.328979 L 6.66953,0.328125 L 6.64716,0.276276 L 6.63301,0.25  L 6.62112,0.230469 L 6.59576,0.194427 L 6.58301,0.178604 L 6.56903,0.162628 L 6.54149,0.134766 L 6.52139,0.116974  L 6.5136,0.110565 L 6.45836,0.0719147 L 6.45,0.0669861 L 6.39571,0.0398865 L 6.371,0.0301514 L 6.33904,0.0197144  L 6.29797,0.00968933 L 6.28682,0.00758362 L 6.26094,0.00372314 L 6.2,-0 L -6.2,-0 L -6.26094,0.00372314  L -6.28682,0.00758362 L -6.29797,0.00968933 L -6.33904,0.0197144 L -6.371,0.0301514 L -6.39571,0.0398865 L -6.45,0.0669861  L -6.45836,0.0719147 L -6.5136,0.110565 L -6.52139,0.116974 L -6.54149,0.134766 L -6.56903,0.162628 L -6.58301,0.178604  L -6.59576,0.194427 L -6.62112,0.230469 L -6.63301,0.25 L -6.64716,0.276276 L -6.66953,0.328125 L -6.66985,0.328979  L -6.68294,0.370514 L -6.6924,0.413162 L -6.69296,0.416473 L -6.69814,0.456985 L -6.7,0.5 L -6.7,9.50999  L -5.2,9.56 L -1.14999,9.7 z "
}', '{
"xy": " M 48.5097,6.69785 L 48.5943,6.69695 L 48.9032,6.68791 L 49.2206,6.67256 L 49.5383,6.6512 L 49.8624,6.62335  L 50.1867,6.58949 L 50.5144,6.54922 L 50.8419,6.50294 L 51.1693,6.45064 L 51.496,6.39235 L 51.8191,6.32867  L 52.1412,6.25906 L 52.4562,6.18491 L 52.7699,6.10489 L 53.0738,6.02126 L 53.3761,5.93184 L 53.6666,5.83975  L 53.9551,5.74197 L 54.2306,5.6424 L 54.5038,5.53723 L 54.7634,5.43102 L 55.0203,5.31935 L 55.2788,5.2  L 55.5134,5.08504 L 55.7451,4.96484 L 55.9635,4.84488 L 56.1787,4.71983 L 56.3813,4.59525 L 56.5804,4.46574  L 56.7678,4.33684 L 56.9515,4.2032 L 57.1244,4.07014 L 57.2932,3.93256 L 57.4522,3.79539 L 57.607,3.6539  L 57.7528,3.5126 L 57.8942,3.36719 L 58.0275,3.22157 L 58.1562,3.07208 L 58.2776,2.92189 L 58.3943,2.76808  L 58.5045,2.61293 L 58.6097,2.45442 L 58.709,2.29382 L 58.8033,2.13011 L 58.8923,1.96346 L 58.976,1.79393  L 59.0429,1.64789 L 59.106,1.5 L 59.1492,1.38634 L 59.1875,1.26878 L 59.2208,1.14999 L 59.255,1.00542  L 59.2841,0.856842 L 59.3095,0.694702 L 59.3293,0.529785 L 59.3441,0.355759 L 59.353,0.180313 L 59.356,-0  L 59.353,-0.178345 L 59.3441,-0.355972 L 59.3295,-0.527679 L 59.3092,-0.697281 L 59.2843,-0.855591 L 59.254,-1.01047  L 59.2208,-1.14999 L 59.1845,-1.27882 L 59.1429,-1.40405 L 59.106,-1.5 L 59.0308,-1.67519 L 58.9502,-1.84775  L 58.8648,-2.01636 L 58.7741,-2.18207 L 58.6782,-2.34483 L 58.5772,-2.50446 L 58.4704,-2.66203 L 58.3586,-2.81618  L 58.2404,-2.96902 L 58.1173,-3.11823 L 57.987,-3.26671 L 57.8522,-3.41132 L 57.7092,-3.55569 L 57.5619,-3.69597  L 57.4056,-3.8364 L 57.2452,-3.9725 L 57.0749,-4.10901 L 56.9006,-4.24098 L 56.7156,-4.3735 L 56.5269,-4.50131  L 56.3264,-4.62965 L 56.1226,-4.7531 L 55.9062,-4.87698 L 55.6867,-4.9958 L 55.4839,-5.09988 L 55.2788,-5.2  L 55.0317,-5.31427 L 54.7819,-5.4232 L 54.5183,-5.53146 L 54.2524,-5.63425 L 53.973,-5.73569 L 53.6915,-5.83154  L 53.3975,-5.92528 L 53.1016,-6.01331 L 52.7946,-6.09833 L 52.4861,-6.17754 L 52.1688,-6.25281 L 51.8503,-6.32219  L 51.526,-6.3867 L 51.2008,-6.44528 L 50.8732,-6.49821 L 50.5451,-6.54514 L 50.2183,-6.58588 L 49.8914,-6.62057  L 49.5692,-6.6488 L 49.2471,-6.67101 L 48.9325,-6.68674 L 48.6182,-6.69646 L 48.4834,-6.69832 L 48.286,-6.7  L -60.594,-6.7 L -60.594,6.7 L 48.286,6.7 z ",
"xz": " M 52.156,13.41 L 52.156,12.41 L 51.556,12.41 L 51.556,9.7 L 59.356,9.7 L 59.256,6.79999  L 59.2528,6.56166 L 59.243,6.325 L 59.2261,6.08667 L 59.2149,5.96812 L 59.2016,5.84999 L 59.1861,5.73058  L 59.1683,5.6116 L 59.1481,5.49307 L 59.1255,5.375 L 59.0998,5.25548 L 59.0713,5.13647 L 59.0401,5.01797  L 59.006,4.89999 L 58.9441,4.69942 L 58.8803,4.5 L 58.8111,4.29283 L 58.7395,4.08749 L 58.6636,3.88008  L 58.5844,3.67499 L 58.4995,3.46724 L 58.4101,3.2625 L 58.347,3.12582 L 58.2814,2.99077 L 58.2132,2.85742  L 58.1422,2.72588 L 58.0682,2.59627 L 57.9909,2.46867 L 57.9286,2.37128 L 57.8642,2.27521 L 57.7975,2.18056  L 57.7285,2.08737 L 57.5991,1.92497 L 57.5313,1.8457 L 57.4613,1.76778 L 57.3864,1.68863 L 57.3091,1.61102  L 57.2292,1.53499 L 57.1466,1.46059 L 57.0613,1.38788 L 56.9732,1.31691 L 56.8821,1.24771 L 56.7881,1.18034  L 56.6888,1.11337 L 56.5863,1.04842 L 56.4805,0.985489 L 56.3714,0.924652 L 56.2588,0.865936 L 56.1428,0.809372  L 56.0156,0.751587 L 55.8843,0.696274 L 55.7491,0.643448 L 55.6098,0.59314 L 55.4664,0.545334 L 55.3189,0.5  L 55.1563,0.454132 L 54.9891,0.411118 L 54.8045,0.368027 L 54.6148,0.328125 L 54.3343,0.276276 L 54.0439,0.230469  L 53.7821,0.195068 L 53.5132,0.163757 L 53.2264,0.135269 L 52.9324,0.110565 L 52.6371,0.0897217 L 52.3356,0.0719147  L 51.9665,0.054184 L 51.5895,0.0398865 L 51.2054,0.0285492 L 50.8148,0.0197144 L 50.1696,0.00968933 L 49.5135,0.00372314  L 48.286,-0 L -45.994,-0 L -46.3932,0.00317383 L -46.5296,0.0057373 L -46.7924,0.0127411 L -47.0082,0.0205688  L -47.1916,0.0286865 L -47.3764,0.0382385 L -47.5908,0.0510406 L -47.7443,0.0613403 L -47.9902,0.0798187 L -48.1121,0.0898743  L -48.2699,0.104477 L -48.3892,0.11499 L -48.4794,0.123856 L -48.7125,0.148239 L -48.8606,-0 L -56.0214,-0  L -56.1532,0.000305176 L -56.3162,0.00245667 L -56.479,0.00785828 L -56.6402,0.017746 L -56.7994,0.033371 L -56.9691,0.0585175  L -57.0711,0.07901 L -57.1676,0.103104 L -57.3136,0.15062 L -57.3819,0.178787 L -57.4444,0.208832 L -57.5123,0.247253  L -57.5723,0.287506 L -57.6293,0.333206 L -57.6783,0.380157 L -57.7224,0.430969 L -57.7593,0.482529 L -57.7932,0.541016  L -57.8202,0.599991 L -58.1781,1.48999 L -58.1781,1.95 L -57.9962,2.31349 L -60.594,3 L -60.594,6.84999  L -51.3993,6.84999 L -51.3993,6.87006 L -53.2275,6.87006 L -53.2275,9.54231 L -51.2673,12.9415 L -50.1927,12.9415  L -50.1816,12.9632 L -48.2901,12.9632 L -48.2873,12.9415 L -48.2414,12.9415 L -47.8317,9.36575 L -47.7659,8.84938  L -47.7659,6.84999 L -44.194,6.84999 L -44.194,8.90999 L 36.356,8.90999 L 36.356,6.84999 L 38.956,6.84999  L 38.956,12.41 L 41.9518,12.41 L 41.9518,13.41 L 41.956,15.56 L 52.743,15.56 z M 52.7325,2.19943 L 52.6846,2.19487 L 52.6296,2.18375 L 52.5908,2.17192 L 52.5574,2.15886 L 52.4967,2.12749  L 52.4427,2.08968 L 52.4145,2.06522 L 52.3901,2.04076 L 52.364,2.01031 L 52.3418,1.98004 L 52.3194,1.94371  L 52.3012,1.90775 L 52.2823,1.85992 L 52.2689,1.81287 L 52.2597,1.76045 L 52.256,1.7 L 52.2602,1.63528  L 52.2695,1.58464 L 52.2839,1.53526 L 52.3001,1.49466 L 52.3201,1.45503 L 52.3679,1.38477 L 52.4233,1.32674  L 52.4823,1.28159 L 52.5412,1.24849 L 52.5975,1.22578 L 52.6496,1.21143 L 52.6971,1.20348 L 52.7401,1.20024  L 52.78,1.20056 L 52.8166,1.20367 L 52.8638,1.21176 L 52.8947,1.21962 L 52.9215,1.22816 L 52.9518,1.23993  L 52.9782,1.25206 L 53.0066,1.26733 L 53.0317,1.28287 L 53.0615,1.30417 L 53.0876,1.32574 L 53.1175,1.35455  L 53.1433,1.38371 L 53.1711,1.42123 L 53.1942,1.45926 L 53.2167,1.5056 L 53.2338,1.55257 L 53.2488,1.61563  L 53.256,1.7 L 53.2534,1.75099 L 53.2454,1.8024 L 53.2332,1.84924 L 53.2159,1.89624 L 53.1963,1.93687  L 53.172,1.97742 L 53.1475,2.01103 L 53.1185,2.04437 L 53.0597,2.09717 L 52.9992,2.13687 L 52.9395,2.1651  L 52.8825,2.18372 L 52.8291,2.19461 L 52.7794,2.19945 z ",
"yz": " M 6.00505,13.41 L 6.00505,12.9415 L 6.7,12.9415 L 6.7,0.5 L 6.69814,0.456985 L 6.69296,0.416473  L 6.6924,0.413162 L 6.68294,0.370514 L 6.66985,0.328979 L 6.66953,0.328125 L 6.64716,0.276276 L 6.63301,0.25  L 6.62112,0.230469 L 6.59576,0.194427 L 6.58301,0.178604 L 6.56903,0.162628 L 6.54149,0.134766 L 6.52139,0.116974  L 6.5136,0.110565 L 6.45836,0.0719147 L 6.45,0.0669861 L 6.39571,0.0398865 L 6.371,0.0301514 L 6.33904,0.0197144  L 6.29797,0.00968933 L 6.28682,0.00758362 L 6.26094,0.00372314 L 6.2,-0 L -6.2,-0 L -6.26094,0.00372314  L -6.28682,0.00758362 L -6.29797,0.00968933 L -6.33904,0.0197144 L -6.371,0.0301514 L -6.39571,0.0398865 L -6.45,0.0669861  L -6.45836,0.0719147 L -6.5136,0.110565 L -6.52139,0.116974 L -6.54149,0.134766 L -6.56903,0.162628 L -6.58301,0.178604  L -6.59576,0.194427 L -6.62112,0.230469 L -6.63301,0.25 L -6.64716,0.276276 L -6.66953,0.328125 L -6.66985,0.328979  L -6.68294,0.370514 L -6.6924,0.413162 L -6.69296,0.416473 L -6.69814,0.456985 L -6.7,0.5 L -6.7,12.9632  L -6.00803,12.9632 L -6.00803,13.41 L -6.59026,15.56 L 6.59,15.56 z "
}');

INSERT INTO ship
  (id, name, project, IMO, ship_type_id, icing_type_id, icing_timber_type_id, navigation_area_id, freeboard_type, geometry_id)
VALUES
  (1, 'M/V "YURIY ARSHENEVSKIY"', 'АРК-2023', 1072191, 1, 1, 1, 3, 'B', 1);  

INSERT INTO ship_parameters
  (ship_id, key, value, unit_id)
VALUES
  (1, 'Wetting of deck timber', 10, NULL),
  (1, 'Ship operating speed', 16, 14),
  (1, 'Water Density', 1.025, 15),
  (1, 'Keel area', 24.69, 3),
  (1, 'L.O.A', 119.95, 2),
  (1, 'LBP', 118.388, 2),
  (1, 'MouldedBreadth', 13.4, 2),
  (1, 'Moulded depth', 6.8, 2),
  (1, 'X midship from Fr0', 59.194, 2),
  (1, 'Number of Parts', 20, NULL),
  (1, 'Center of mass shift x', 1.05, 2),
  (1, 'Center of mass shift y', 0, 2),
  (1, 'Center of mass shift z', 5.32, 2),
  (1, 'Minimum draft', 1.40, 2),
  (1, 'Minimum operating draft', 3.05, 2),
  (1, 'Length middle from stern', 60.593, 2),
  (1, 'Overall height up to non-removable parts', 16.8, 2),
  (1, 'Draught corresponding to summer load line', 4.6, 2),
  (1, 'Calculated minimum bow height', 4.113, 2),
  (1, 'Calculated minimum bow area', 84, 3),
  (1, 'Maximum aft trim', -1.7, 2),
  (1, 'Maximum forward trim', 0.7, 2),
  (1, 'DWT', 4886.4, 6);


