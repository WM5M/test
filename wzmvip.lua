local v0="https://raw.githack.com/WM5M/test/refs/heads/main/wmk.json";local v1=MachoWebRequest(v0);local v2=MachoAuthenticationKey();local v3=true;local function v4(v73) local v74=0 + 0 ;local v75;local v76;local v77;local v78;local v79;local v80;while true do if (v74==(850 -(410 + 439))) then if  not v75 then return nil;end return (tonumber(os_time) or (0 -0)) + 0 + 0 ;end if (v74==(0 -0)) then if (type(v73)~="string") then return nil;end v75,v76,v77,v78,v79,v80=string.match(v73,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");v74=2 -1 ;end end end local function v5() local v81=GetCloudTimeAsInt();if (v81 and (v81>(1227 -(322 + 905)))) then return v81;end return 611 -(602 + 9) ;end local function v6(v82) local v83=1189 -(449 + 740) ;local v84;local v85;local v86;local v87;local v88;local v89;local v90;local v91;while true do if (v83==(872 -(826 + 46))) then v84,v85,v86,v87,v88,v89=string.match(v82,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");if  not v84 then return nil;end v83=948 -(245 + 702) ;end if (v83==(3 -2)) then v90=((tonumber(v84) -(634 + 1336)) * (2263 -(260 + 1638))) + math.floor((tonumber(v84) -(2409 -(382 + 58)))/(12 -8) ) + ((tonumber(v85) -(1 + 0)) * 30) + tonumber(v86 or (1 -0) ) ;v91=(v90 * 86400) + (tonumber(v87 or (0 -0) ) * 3600) + (tonumber(v88 or (1205 -(902 + 303)) ) * (131 -71)) + tonumber(v89 or (0 -0) ) ;v83=1 + 1 ;end if (v83==(1692 -(1121 + 569))) then return v91;end end end local function v7() local v92=214 -(22 + 192) ;local v93;local v94;local v95;while true do if (v92==2) then for v317,v318 in ipairs(v94) do if ((type(v318)=="table") and (v318.key==v2)) then if (v318.expires and (type(v318.expires)=="string")) then local v390=683 -(483 + 200) ;local v391;while true do if (v390==(1463 -(1404 + 59))) then v391=v6(v318.expires);if  not v391 then return false,"Bad expiry format";end v390=1;end if (v390==(2 -1)) then if (v391>v95) then return true,"Key valid (not expired)",v391;else return false,"Key expired",v391;end break;end end elseif v3 then return false,"Key missing expiry (strict mode)";else return true,"Key valid (no expiry field)";end end end return false,"Key not found";end if (v92==(0 -0)) then if  not v1 then return false,"No key list available";end v93,v94=pcall(json.decode,v1);v92=766 -(468 + 297) ;end if (v92==(563 -(334 + 228))) then if ( not v93 or  not v94 or (type(v94)~="table")) then return false,"Key list invalid";end v95=v5();v92=6 -4 ;end end end local v8,v9,v10=v7();if  not v8 then MachoMenuNotification("WizeMenu","Invalid key: "   .. tostring(v2)   .. " ("   .. tostring(v9)   .. ")" ,10);return;end Citizen.CreateThread(function() if (v10 and (v10>(0 -0))) then local v285=0 -0 ;local v286;local v287;while true do if ((1 + 0)==v285) then if (v287>(236 -(141 + 95))) then local v374=0;local v375;local v376;local v377;while true do if (v374==(1 + 0)) then v377=string.format("Key valid. Expires in %d days and %d hours.",v375,v376);MachoMenuNotification("WizeMenu",v377,5);break;end if (v374==(0 -0)) then v375=math.floor(v287/(207698 -121298) );v376=math.floor((v287%86400)/(844 + 2756) );v374=1;end end else MachoMenuNotification("WizeMenu","Key expired.",27 -17 );end break;end if (v285==(0 + 0)) then v286=v5();v287=v10-v286 ;v285=1;end end else MachoMenuNotification("WizeMenu","Key valid (no expiry field).",5);end end);local v11=vec2(391 + 359 ,500);local v12=vec2(704 -204 ,295 + 205 );local v13=313 -(92 + 71) ;local v14=5 + 5 ;local v15=25 -10 ;local v16=v11.x-v13 ;local v17=v11.y-((767 -(574 + 191)) * v14) ;local v18=(v16-(v14 * (3 + 0)))/(4 -2) ;local v19=(v17-(v14 * (2 + 1)))/(851 -(254 + 595)) ;local v20=MachoMenuTabbedWindow("WizeVIP",v12.x,v12.y,v11.x,v11.y,v13);MachoMenuSetKeybind(v20,159 -(55 + 71) );MachoMenuSetAccent(v20,207,16,32);MachoMenuText(v20,"YT @JayThaaGamer");local v21=MachoMenuAddTab(v20,"Self");local v22=MachoMenuAddTab(v20,"Server");local v23=MachoMenuAddTab(v20,"Teleport");local v24=MachoMenuAddTab(v20,"Weapon");local v25=MachoMenuAddTab(v20,"Vehicle");local v26=MachoMenuAddTab(v20,"Animations");local v27=MachoMenuAddTab(v20,"Triggers");local v28=MachoMenuAddTab(v20,"Settings");local v29=MachoMenuAddTab(v20,"VIP");local function v30(v96) local v97=0;local v98;local v99;local v100;local v101;local v102;local v103;local v104;local v105;while true do if (v97==4) then return v103,v104,v105;end if (v97==(0 -0)) then v98=v13 + v14 ;v99=v14 + v15 ;v97=1791 -(573 + 1217) ;end if (v97==(5 -3)) then v102=(v19 * 2) + v14 ;v103=MachoMenuGroup(v96,"Self",v98,v99,v98 + v18 ,v99 + v102 );v97=3;end if (v97==(1 + 0)) then v100=v99 + v19 + v14 ;v101=v98 + v18 + v14 ;v97=2;end if (v97==3) then v104=MachoMenuGroup(v96,"Model Changer",v101,v99,v101 + v18 ,v99 + v19 );v105=MachoMenuGroup(v96,"Functions",v101,v100,v101 + v18 ,v100 + v19 );v97=5 -1 ;end end end local function v31(v106) local v107=939 -(714 + 225) ;local v108;local v109;local v110;local v111;local v112;local v113;local v114;while true do if (v107==1) then v110=v109 + v108 ;v111=MachoMenuGroup(v106,"Server Players",v109,v14 + v15 ,v110,v17);v107=2;end if ((0 -0)==v107) then v108=(v16-(v14 * (3 -0)))/2 ;v109=v13 + v14 ;v107=1;end if (v107==(1 + 1)) then v112=v110 + v14 ;v113=v112 + v108 ;v107=3 -0 ;end if (v107==(809 -(118 + 688))) then v114=MachoMenuGroup(v106,"Everyone",v112,v14 + v15 ,v113,v17);return v111,v114;end end end local function v32(v115) local v116=48 -(25 + 23) ;local v117;local v118;local v119;local v120;local v121;local v122;local v123;while true do if (v116==(0 + 0)) then v117=(v16-(v14 * (1889 -(927 + 959))))/2 ;v118=v13 + v14 ;v116=3 -2 ;end if ((733 -(16 + 716))==v116) then v119=v118 + v117 ;v120=MachoMenuGroup(v115,"Teleport",v118,v14 + v15 ,v119,v17);v116=2;end if (v116==(3 -1)) then v121=v119 + v14 ;v122=v121 + v117 ;v116=100 -(11 + 86) ;end if (v116==(6 -3)) then v123=MachoMenuGroup(v115,"Other",v121,v14 + v15 ,v122,v17);return v120,v123;end end end local function v33(v124) local v125=0;local v126;local v127;local v128;local v129;local v130;local v131;local v132;while true do if (v125==(288 -(175 + 110))) then v132=MachoMenuGroup(v124,"Other",v131,v14 + v15 ,v131 + v18 ,v17);return v129,v130,v132;end if (v125==(4 -2)) then v130=MachoMenuGroup(v124,"Spawner",v126,v128,v126 + v18 ,v128 + v19 );v131=v126 + v18 + v14 ;v125=14 -11 ;end if (v125==(1796 -(503 + 1293))) then v126=v13 + v14 ;v127=v14 + v15 ;v125=2 -1 ;end if (v125==(1 + 0)) then v128=v127 + v19 + v14 ;v129=MachoMenuGroup(v124,"Mods",v126,v127,v126 + v18 ,v127 + v19 );v125=1063 -(810 + 251) ;end end end local function v34(v133) local v134=0 + 0 ;local v135;local v136;local v137;local v138;local v139;local v140;local v141;while true do if (v134==(1 + 0)) then v137=v136 + v19 + v14 ;v138=MachoMenuGroup(v133,"Mods",v135,v136,v135 + v18 ,v136 + v19 );v134=2;end if (v134==(3 + 0)) then v141=MachoMenuGroup(v133,"Other",v140,v14 + v15 ,v140 + v18 ,v17);return v138,v139,v141;end if (v134==0) then v135=v13 + v14 ;v136=v14 + v15 ;v134=534 -(43 + 490) ;end if (v134==2) then v139=MachoMenuGroup(v133,"Plate & Spawning",v135,v137,v135 + v18 ,v137 + v19 );v140=v135 + v18 + v14 ;v134=736 -(711 + 22) ;end end end local function v35(v142) local v143=0;local v144;local v145;local v146;local v147;local v148;local v149;local v150;while true do if (v143==(11 -8)) then v150=MachoMenuGroup(v142,"Force Emotes",v148,v14 + v15 ,v149,v17);return v147,v150;end if (v143==(859 -(240 + 619))) then v144=(v16-(v14 * (1 + 2)))/(2 -0) ;v145=v13 + v14 ;v143=1;end if (v143==(1 + 1)) then v148=v146 + v14 ;v149=v148 + v144 ;v143=3;end if (v143==(1745 -(1344 + 400))) then v146=v145 + v144 ;v147=MachoMenuGroup(v142,"Animations",v145,v14 + v15 ,v146,v17);v143=407 -(255 + 150) ;end end end local function v36(v151) local v152=0;local v153;local v154;local v155;local v156;local v157;local v158;local v159;local v160;while true do if (v152==(4 + 0)) then return v156,v157,v159,v160;end if (v152==1) then v155=v154 + v19 + v14 ;v156=MachoMenuGroup(v151,"Item Spawner",v153,v155,v153 + v18 ,v154 + v19 );v152=2 + 0 ;end if (v152==(0 -0)) then v153=v13 + v14 ;v154=v14 + v15 ;v152=1;end if (v152==(6 -4)) then v157=MachoMenuGroup(v151,"Money Spawner",v153,v154,v153 + v18 ,v154 + v19 );v158=v153 + v18 + v14 ;v152=3;end if (v152==(1742 -(404 + 1335))) then v159=MachoMenuGroup(v151,"Common Exploits",v158,v154,v158 + v18 ,v154 + v19 );v160=MachoMenuGroup(v151,"Event Payloads",v158,v155,v158 + v18 ,v155 + v19 );v152=4;end end end local function v37(v161) local v162=406 -(183 + 223) ;local v163;local v164;local v165;local v166;local v167;local v168;local v169;while true do if (v162==(1 -0)) then v165=v164 + v19 + v14 ;v166=MachoMenuGroup(v161,"Trigger Finder Spawner",v163,v164,v163 + v18 ,v164 + v19 );v162=2 + 0 ;end if (v162==3) then v169=MachoMenuGroup(v161,"Common Exploits V2",v168,v14 + v15 ,v168 + v18 ,v17);return v166,v167,v169;end if (0==v162) then v163=v13 + v14 ;v164=v14 + v15 ;v162=1;end if (v162==(1 + 1)) then v167=MachoMenuGroup(v161,"Common Exploits",v163,v165,v163 + v18 ,v165 + v19 );v168=v163 + v18 + v14 ;v162=3;end end end local function v38(v170) local v171=v13 + v14 ;local v172=v14 + v15 ;local v173=v172 + v19 + v14 ;local v174=MachoMenuGroup(v170,"Stop",v171,v172,v171 + v18 ,v172 + v19 );local v175=MachoMenuGroup(v170,"Menu Design",v171,v173,v171 + v18 ,v173 + v19 );local v176=v171 + v18 + v14 ;local v177=MachoMenuGroup(v170,"Server Settings",v176,v14 + v15 ,v176 + v18 ,v17);return v174,v175,v177;end local v39={v30(v21)};local v40={v31(v22)};local v41={v32(v23)};local v42={v33(v24)};local v43={v34(v25)};local v44={v35(v26)};local v45={v36(v27)};local v46={v37(v29)};local v47={v38(v28)};local function v48(v178) return GetResourceState(v178)=="started" ;end local function v49() Wait(1500);Wait(549 -(108 + 341) );MachoMenuNotification("[NOTIFICATION] WizeMenu","Bypassing FiveTard.");local function v179() local function v257(v288,v289) local v290=0 + 0 ;local v291;while true do if (v290==(0 -0)) then v291=LoadResourceFile(v288,v289);return v291~=nil ;end end end local v258="ai_module_fg-obfuscated.lua";local v259=GetNumResources();for v292=1493 -(711 + 782) ,v259-(1 -0)  do local v293=GetResourceByFindIndex(v292);if v257(v293,v258) then return true,v293;end end return false,nil;end Wait(100);local v180,v181=v179();if (v180 and v181) then MachoResourceStop(v181);end Wait(100);MachoMenuNotification("[NOTIFICATION] WizeMenu","Almost done.");Wait(969 -(270 + 199) );MachoMenuNotification("[NOTIFICATION] WizeMenu","Finished Enjoy.");end v49();local v50;if (GetResourceState("qbx_core")=="started") then v50="qbx_core";elseif (GetResourceState("es_extended")=="started") then v50="es_extended";elseif (GetResourceState("qb-core")=="started") then v50="qb-core";else v50="any";end Citizen.CreateThread(function() MachoMenuNotification("[NOTIFICATION] WizeMenu","Spawn Shit Now!");Wait(163 + 337 );MachoMenuNotification("[NOTIFICATION] WizeMenu","O_o!");end);MachoLockLogger();MachoInjectResource((v48("core") and "core") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("monitor") and "monitor") or "any" ,[[
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
    ]]);MachoMenuCheckbox(v39[1820 -(580 + 1239) ],"Godmode",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[2 -1 ],"Invisibility",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1 + 0 ],"No Ragdoll",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1 + 0 ],"Tiny Ped",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[2 -1 ],"No Clip",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1168 -(645 + 522) ],"Super Jump",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1791 -(1010 + 780) ],"Levitation",function() local v182=0 + 0 ;while true do if (v182==0) then MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[4 -3 ],"Super Strength",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1],"Super Punch",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[2 -1 ],"Throw From Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v39[1],"Anti-Headshot",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v51=MachoMenuInputbox(v39[2],"Model Name:","...");MachoMenuButton(v39[1838 -(1045 + 791) ],"Change Model",function() local v183=MachoMenuGetInputbox(v51);if ((type(v183)=="string") and (v183~="")) then local v294=0;local v295;while true do if (v294==(0 -0)) then v295=string.format([[
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
            ]],v183,v183,v183);MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,v295);break;end end end end);MachoMenuButton(v39[2],"White Thug Drip",function() local v184=0;while true do if (v184==(0 -0)) then function WhiteThugDrip() local v319=0;local v320;while true do if ((506 -(351 + 154))==v319) then SetPedComponentVariation(v320,8,1589 -(1281 + 293) ,266 -(28 + 238) ,4 -2 );SetPedComponentVariation(v320,1562 -(1381 + 178) ,5 + 0 ,0 + 0 ,1 + 1 );v319=6 -4 ;end if (v319==(2 + 0)) then SetPedComponentVariation(v320,474 -(381 + 89) ,56,0 + 0 ,2 + 0 );SetPedComponentVariation(v320,9 -3 ,1175 -(1074 + 82) ,0 -0 ,1786 -(214 + 1570) );v319=3;end if (v319==(1458 -(990 + 465))) then SetPedPropIndex(v320,0 + 0 ,1 + 0 ,0,true);break;end if (0==v319) then v320=PlayerPedId();SetPedComponentVariation(v320,11 + 0 ,109,0 -0 ,2);v319=1;end end end WhiteThugDrip();break;end end end);MachoMenuButton(v39[2],"JTG Mafia Drip",function() local v185=1726 -(1668 + 58) ;while true do if (0==v185) then function JTGMafia() local v321=0;local v322;while true do if (v321==(626 -(512 + 114))) then v322=PlayerPedId();SetPedComponentVariation(v322,28 -17 ,10 -5 ,0 -0 ,1 + 1 );v321=1 + 0 ;end if (v321==2) then SetPedComponentVariation(v322,4 + 0 ,141 -99 ,1994 -(109 + 1885) ,1471 -(1269 + 200) );SetPedComponentVariation(v322,6,11 -5 ,815 -(98 + 717) ,828 -(802 + 24) );v321=5 -2 ;end if (v321==1) then SetPedComponentVariation(v322,8,18 -3 ,0,1 + 1 );SetPedComponentVariation(v322,3 + 0 ,1 + 4 ,0 + 0 ,2);v321=5 -3 ;end if (v321==(9 -6)) then SetPedPropIndex(v322,0 + 0 ,11 + 15 ,0 + 0 ,true);SetPedPropIndex(v322,1,3 + 0 ,0 + 0 ,true);break;end end end JTGMafia();break;end end end);MachoMenuButton(v39[3],"Heal",function() SetEntityHealth(PlayerPedId(),1633 -(797 + 636) );end);MachoMenuButton(v39[3],"Armor",function() SetPedArmour(PlayerPedId(),485 -385 );end);MachoMenuButton(v39[1622 -(1427 + 192) ],"Fill Hunger",function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function DawrjatjsfAW()
                TriggerEvent('esx_status:set', 'hunger', 1000000)
            end

            DawrjatjsfAW()
        ]]);end);MachoMenuButton(v39[2 + 1 ],"Fill Thirst",function() MachoInjectResource2(6 -3 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function sWj238fsMAw()
                TriggerEvent('esx_status:set', 'thirst', 1000000)
            end

            sWj238fsMAw()
        ]]);end);MachoMenuButton(v39[3 + 0 ],"Revive",function() MachoInjectResource2(2 + 1 ,(v48("ox_inventory") and "ox_inventory") or (v48("ox_lib") and "ox_lib") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("wasabi_ambulance") and "wasabi_ambulance") or (v48("ak47_ambulancejob") and "ak47_ambulancejob") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v39[3],"Suicide",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function RGybF0JqEt()
                local aSdFgHjKlQwErTy = SetEntityHealth
                aSdFgHjKlQwErTy(PlayerPedId(), 0)
            end

            RGybF0JqEt()
        ]]);end);MachoMenuButton(v39[329 -(192 + 134) ],"Force Ragdoll",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function awfAEDSADWEf()
                local cWAmdjakwDksFD = SetPedToRagdoll
                cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
            end

            awfAEDSADWEf()
        ]]);end);MachoMenuButton(v39[1279 -(316 + 960) ],"Clear Task",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v39[2 + 1 ],"Randomize Outfit",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[1 + 0 ],"Kosatka Crash By ID",function() MachoInjectResource((v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or "any" ,[[
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
    ]]);end);MachoMenuButton(v40[1 + 0 ],"Kick From Vehicle",function() local v186=0 -0 ;local v187;while true do if (v186==(551 -(83 + 468))) then v187=MachoMenuGetSelectedPlayer();if (v187 and (v187>0)) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v187));end break;end end end);MachoMenuButton(v40[1807 -(1202 + 604) ],"Freeze Player",function() local v188=0 -0 ;local v189;while true do if ((0 -0)==v188) then v189=MachoMenuGetSelectedPlayer();if (v189 and (v189>(0 -0))) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v189));end break;end end end);MachoMenuButton(v40[1],"Glitch Player",function() local v190=325 -(45 + 280) ;local v191;while true do if (v190==(0 + 0)) then v191=MachoMenuGetSelectedPlayer();if (v191 and (v191>(0 + 0))) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v191));end break;end end end);MachoMenuButton(v40[1],"Limbo Player",function() local v192=0;local v193;while true do if (v192==0) then v193=MachoMenuGetSelectedPlayer();if (v193 and (v193>(0 + 0))) then MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("oxmysql") and "oxmysql") or (v48("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v193));end break;end end end);MachoMenuButton(v40[1 + 0 ],"Copy Appearance",function() local v194=MachoMenuGetSelectedPlayer();if (v194 and (v194>(0 + 0))) then MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
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
            ]]):format(v194));end end);MachoMenuButton(v40[1 -0 ],"Steal Keys",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local ped = GetPlayerPed(-1)
     local veh = GetVehiclePedIsIn((ped), true)  
     local plate = GetVehicleNumberPlateText(veh)
     TriggerEvent('vehiclekeys:client:SetOwner',plate)
        ]]);end);MachoMenuButton(v40[1913 -(340 + 1571) ],"Crash Nearby [Don't Spam]",function() MachoInjectResource((v48("ReaperV4") and "ReaperV4") or (v48("FiniAC") and "FiniAC") or (v48("WaveShield") and "WaveShield") or (v48("monitor") and "monitor") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[1 + 1 ],"Cone Everyone",function() local v195=GetHashKey("prop_roadcone02a");RequestModel(v195);while  not HasModelLoaded(v195) do Wait(1772 -(1733 + 39) );end local function v196(v260) local v261=0;local v262;local v263;local v264;while true do if (v261==(8 -5)) then SetEntityCanBeDamaged(v263,false);v264=GetPedBoneIndex(v260,32120 -(125 + 909) );v261=4;end if (v261==(1950 -(1096 + 852))) then SetEntityCollision(v263,false,false);SetEntityInvincible(v263,true);v261=3;end if ((2 + 2)==v261) then AttachEntityToEntity(v263,v260,v264,0,0,0.25 -0 ,0 + 0 ,512 -(409 + 103) ,236 -(46 + 190) ,false,false,true,false,97 -(51 + 44) ,true);break;end if (v261==(1 + 0)) then v263=CreateObject(v195,v262.x,v262.y,v262.z,true,true,false);SetEntityAsMissionEntity(v263,true,true);v261=1319 -(1114 + 203) ;end if (v261==(726 -(228 + 498))) then if ( not DoesEntityExist(v260) or IsEntityDead(v260)) then return;end v262=GetEntityCoords(v260);v261=1;end end end v196(PlayerPedId());for v265,v266 in ipairs(GetActivePlayers()) do v196(GetPlayerPed(v266));end local v197=(GetGamePool and GetGamePool("CPed")) or {} ;for v267,v268 in ipairs(v197) do if  not IsPedAPlayer(v268) then v196(v268);end end end);MachoMenuButton(v40[1 + 1 ],"Explode All Players",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[2 + 0 ],"Explode All Vehicles",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[665 -(174 + 489) ],"Delete All Vehicles",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[1907 -(830 + 1075) ],"Delete All Objects",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v40[526 -(303 + 221) ],"ShowIDs [New Feature]",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v40[1271 -(231 + 1038) ],"Kill Everyone",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v40[2 + 0 ],"Permanent Kill Everyone",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v52=MachoMenuInputbox(v41[1],"Coords:","x, y, z");MachoMenuButton(v41[1163 -(171 + 991) ],"Teleport to Coords",function() local v198=0;local v199;while true do if (v198==(0 -0)) then v199=MachoMenuGetInputbox(v52);if (v199 and (v199~="")) then local v329=0 -0 ;local v330;local v331;local v332;while true do if ((2 -1)==v329) then v331=tonumber(v331);v332=tonumber(v332);v329=2;end if (v329==(0 + 0)) then v330,v331,v332=v199:match("([^,]+),%s*([^,]+),%s*([^,]+)");v330=tonumber(v330);v329=3 -2 ;end if (v329==2) then if (v330 and v331 and v332) then MachoInjectResource((v48("monitor") and "monitor") or "any" ,string.format([[
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
                ]],v330,v331,v332));end break;end end end break;end end end);MachoMenuButton(v41[1],"Waypoint",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1 -0 ],"Mission Row PD",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[3 -2 ],"Pillbox Hospital",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1249 -(111 + 1137) ],"Del Perro Pier",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[159 -(91 + 67) ],"Grove Street",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[2 -1 ],"Legion Square",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[1 + 0 ],"Mirror Park",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[524 -(423 + 100) ],"Vespucci Beach",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v41[5 -3 ],"Print Current Coords",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            local function Xy9TqLzVmN()
                local zXcVbNmQwErTyUi = GetEntityCoords
                local aSdFgHjKlQwErTy = PlayerPedId

                local coords = zXcVbNmQwErTyUi(aSdFgHjKlQwErTy())
                local x, y, z = coords.x, coords.y, coords.z
                print(string.format("[^3JTG^7] [^4DEBUG^7] - %.2f, %.2f, %.2f", x, y, z))
            end

            Xy9TqLzVmN()
        ]]);end);MachoMenuCheckbox(v42[1 + 0 ],"Infinite Ammo",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v42[772 -(326 + 445) ],"Explosive Ammo",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v42[4 -3 ],"Oneshot Kill",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v53=MachoMenuInputbox(v42[2],"Weapon:","...");MachoMenuButton(v42[4 -2 ],"Spawn Weapon",function() local v200=0;local v201;while true do if (v200==(0 -0)) then v201=MachoMenuGetInputbox(WeaponSpawnerBox);if (v201 and (v201~="")) then MachoInjectResource((v48("monitor") and "monitor") or "any" ,string.format([[
                local function GiveWeapon()
                    local ped = PlayerPedId()
                    local weapon = GetHashKey("%s")
                    local XeCwVrBtNuMyLk = GiveWeaponToPed
                    XeCwVrBtNuMyLk(ped, weapon, 250, true, true)
                end

                GiveWeapon()
            ]],v201));end break;end end end);local v54=711 -(530 + 181) ;local v55={[881 -(614 + 267) ]={name="Default",hash="MP_F_Freemode"},[33 -(19 + 13) ]={name="Gangster",hash="Gang1H"},[2 -0 ]={name="Wild",hash="GangFemale"},[6 -3 ]={name="Red Neck",hash="Hillbilly"}};MachoMenuDropDown(v42[8 -5 ],"Aiming Style",function(v202) v54=v202;end,"Default","Gangster","Wild","Red Neck");MachoMenuButton(v42[1 + 2 ],"Apply Aiming Style",function() local v203=v55[v54];if  not v203 then return;end MachoInjectResource((v48("oxmysql") and "oxmysql") or "any" ,([[
            local function vXK2dPLR07()
                local UiOpAsDfGhJkLz = PlayerPedId
                local PlMnBvCxZaSdFg = GetHashKey
                local QwErTyUiOpAsDf = SetWeaponAnimationOverride

                local MnBvCxZaSdFgHj = PlMnBvCxZaSdFg("%s")
                QwErTyUiOpAsDf(UiOpAsDfGhJkLz(), MnBvCxZaSdFgHj)
            end

            vXK2dPLR07()

        ]]):format(v203.hash));end);MachoMenuCheckbox(v43[1 -0 ],"Vehicle Godmode",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1813 -(1293 + 519) ],"Freeze Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1 -0 ],"Vehicle Hop",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[1],"Rainbow Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[4 -3 ],"Shift Boost",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v43[2 -1 ],"Instant Breaks",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v56=MachoMenuInputbox(v43[2],"License Plate:","...");MachoMenuButton(v43[2],"Set License Plate",function() local v204=0 + 0 ;local v205;while true do if (v204==(0 -0)) then v205=MachoMenuGetInputbox(v56);if ((type(v205)=="string") and (v205~="")) then local v333=string.format([[
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
            ]],v205);MachoInjectResource((v48("monitor") and "monitor") or "any" ,v333);end break;end end end);local v57=MachoMenuInputbox(v43[1 + 1 ],"Vehicle Model:","...");MachoMenuButton(v43[1 + 1 ],"Spawn Car",function() local v206=0;local v207;local v208;local v209;local v210;while true do if (v206==(0 + 0)) then v207=MachoMenuGetInputbox(v57);v208=GetResourceState("WaveShield")=="started" ;v206=1097 -(709 + 387) ;end if (2==v206) then if ( not v208 and v209) then local v334=1858 -(673 + 1185) ;while true do if (v334==(0 -0)) then v210=([[ 
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
            ]]):format(v207);MachoInjectResource("lb-phone",v210);break;end end else v210=([[ 
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
            ]]):format(v207);MachoInjectResource((v48("monitor") and "monitor") or "any" ,v210);end break;end if (v206==1) then v209=GetResourceState("lb-phone")=="started" ;v210=nil;v206=6 -4 ;end end end);MachoMenuButton(v43[4 -1 ],"Repair Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[3 + 0 ],"Flip Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[3],"Clean Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[3 + 0 ],"Delete Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[3 -0 ],"Max Vehicle Upgrades",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[1 + 2 ],"Teleport into Closest Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[5 -2 ],"Unlock Closest Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v43[5 -2 ],"Lock Closest Vehicle",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1881 -(446 + 1434) ],"Force Emotes [Be careful]",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1284 -(1040 + 243) ],"Detach All Entitys",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[2 -1 ],"Give Them Backshots",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1848 -(559 + 1288) ],"Wank On Them",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1932 -(609 + 1322) ],"Piggyback On Player",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[1],"Blame Arrest",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[455 -(13 + 441) ],"Blame Carry",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[3 -2 ],"Sit On Them",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v44[2 -1 ],"Ride Driver",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v58=0 + 0 ;local v59=false;local v60=nil;local v61={[0 -0 ]="slapped",[1 + 0 ]="punched",[1 + 1 ]="receiveblowjob",[8 -5 ]="GiveBlowjob",[3 + 1 ]="headbutted",[5]="hug4",[6]="streetsexfemale",[7]="streetsexmale",[14 -6 ]="pback2",[6 + 3 ]="carry3",[10]=".....gta298",[7 + 4 ]=".....gta304",[9 + 3 ]=".....gta284"};MachoMenuDropDown(v44[2 + 0 ],"Emote Choice",function(v211) v58=v211;end,"Slapped","Punched","Give BJ","Recieve BJ","Headbutt","Hug","StreetSexFemale","StreetSexMale","Piggyback","Carry","Butt Rape","Amazing Head","Lesbian Scissors");MachoMenuButton(v44[2 + 0 ],"Give Emote",function() local v212=v61[v58];if v212 then MachoInjectResource2(436 -(153 + 280) ,(v48("monitor") and "monitor") or "any" ,string.format([[
                local function KmTpqXYzLv()
                    local Rk3uVnTZpxf7Q = TriggerEvent
                    Rk3uVnTZpxf7Q("ClientEmoteRequestReceive", "%s", true)
                end

                KmTpqXYzLv()
            ]],v212));end end);InputBoxHandle=MachoMenuInputbox(v45[2 -1 ],"Name:","...");InputBoxHandle2=MachoMenuInputbox(v45[1 + 0 ],"Amount:","...");MachoMenuButton(v45[1 + 0 ],"Spawn",function() local v213=0 + 0 ;local v214;local v215;while true do if (v213==0) then v214=MachoMenuGetInputbox(InputBoxHandle);v215=MachoMenuGetInputbox(InputBoxHandle2);v213=1;end if (v213==(1 + 0)) then if (v214 and (v214~="") and v215 and tonumber(v215)) then local v335=tonumber(v215);local v336={ak47_drugmanager=function() MachoInjectResource2(3 + 0 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function efjwr8sfr()
                            TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v214   .. [[", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        efjwr8sfr()
                    ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function safdagwawe()
                            TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        safdagwawe()
                    ]] );end,["mc9-taco"]=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function cesfw33w245d()
                            TriggerServerEvent('mc9-taco:server:addItem', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        cesfw33w245d()
                    ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(4 -1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function safdagwawe()
                            TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        safdagwawe()
                    ]] );end,["wp-pocketbikes"]=function() MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function awdfaweawewaeawe()
                            TriggerServerEvent("wp-pocketbikes:server:AddItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        awdfaweawewaeawe()
                    ]] );end,["solos-jointroll"]=function() MachoInjectResource2(670 -(89 + 578) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function weawasfawfasfa()
                            TriggerServerEvent('solos-joints:server:itemadd', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        weawasfawfasfa()
                    ]] );end,["angelicxs-CivilianJobs"]=function() MachoInjectResource2(3 + 0 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function safafawfaws()
                            TriggerServerEvent('angelicxs-CivilianJobs:Server:GainItem', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end

                        safafawfaws()
                    ]] );end,ars_whitewidow_v2=function() MachoInjectResource2(5 -2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
                    ]] );end,ars_cannabisstore_v2=function() MachoInjectResource2(1052 -(572 + 477) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
                    ]] );end,ars_hunting=function() MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("ars_hunting:sellBuyItem",  {
                                item = "]]   .. v214   .. [[",
                                price = 1,
                                quantity = ]]   .. v215   .. [[,
                                buy = true
                            })
                        end

                        sDfjMawT34()
                    ]] );end,["boii-whitewidow"]=function() local v338=0 + 0 ;local v339;local v340;local v341;while true do if (v338==(0 + 0)) then v339={"217.20.242.24:30120"};v340=nil;v338=87 -(84 + 2) ;end if (v338==(1 -0)) then function v340(v408) local v409=0;while true do if (v409==0) then for v423,v424 in ipairs(v339) do if (v408==v424) then return true;end end return false;end end end v341=GetCurrentServerEndpoint();v338=2 + 0 ;end if (v338==(844 -(497 + 345))) then if v340(v341) then MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function sDfjMawT34()
                                TriggerServerEvent('boii-whitewidow:server:AddItem', ']]   .. v214   .. [[', ]]   .. v215   .. [[)
                            end

                            sDfjMawT34()
                        ]] );end break;end end end,["codewave-cannabis-cafe"]=function() local v342=0 + 0 ;local v343;local v344;local v345;while true do if (v342==(0 + 0)) then v343={"185.244.106.45:30120"};v344=nil;v342=1;end if (v342==(1 + 0)) then function v344(v410) for v414,v415 in ipairs(v343) do if (v410==v415) then return true;end end return false;end v345=GetCurrentServerEndpoint();v342=3 -1 ;end if (v342==2) then if v344(v345) then MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function sDfjMawT34()
                                TriggerServerEvent("cannabis_cafe:giveStockItems", { item = "]]   .. v214   .. [[", newItem = "JTG", pricePerItem = 0 }, ]]   .. v215   .. [[)
                            end

                            sDfjMawT34()
                        ]] );end break;end end end,["snipe-boombox"]=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("snipe-boombox:server:pickup", ]]   .. v215   .. [[, vector3(0.0, 0.0, 0.0), "]]   .. v214   .. [[")
                        end

                        sDfjMawT34()
                    ]] );end,devkit_bbq=function() MachoInjectResource2(10 -7 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent('devkit_bbq:addinv', ']]   .. v214   .. [[', ]]   .. v215   .. [[)
                        end

                        sDfjMawT34()
                    ]] );end,mt_printers=function() MachoInjectResource2(3 + 0 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[  
                        local function sDfjMawT34()
                            TriggerServerEvent('__ox_cb_mt_printers:server:itemActions', "mt_printers", "mt_printers:server:itemActions:JTG", "]]   .. v214   .. [[", "add")
                        end

                        sDfjMawT34()
                    ]] );end,WayTooCerti_3D_Printer=function() MachoInjectResource2(7 -4 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[ 
                        local function ZxUwQsErTy12()
                            TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', ']]   .. v214   .. [[', ]]   .. v215   .. [[)
                        end
                        ZxUwQsErTy12()
                    ]] );end,["pug-fishing"]=function() MachoInjectResource2(3 + 0 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function MnBvCxZlKjHgFd23()
                            TriggerServerEvent('Pug:server:GiveFish', "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end
                        MnBvCxZlKjHgFd23()
                    ]] );end,apex_koi=function() MachoInjectResource2(492 -(457 + 32) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function ErTyUiOpAsDfGh45()
                            TriggerServerEvent("apex_koi:client:addItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end
                        ErTyUiOpAsDfGh45()
                    ]] );end,apex_peckerwood=function() MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                        local function UiOpAsDfGhJkLz67()
                            TriggerServerEvent("apex_peckerwood:client:addItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                        end
                        UiOpAsDfGhJkLz67()
                    ]] );end,apex_thetown=function() MachoInjectResource2(1405 -(832 + 570) ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
                    ]] );end,brutal_hunting=function() MachoInjectResource2(3 + 0 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
                    ]] );end,ak47_drugmanager=function() local v346=0 + 0 ;local v347;local v348;local v349;while true do if (v346==0) then v347={"162.222.16.18:30120"};v348=nil;v346=1 + 0 ;end if ((798 -(588 + 208))==v346) then if v348(v349) then MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function aKf48SlWd()
                                Wait(1)
                                TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v214   .. [[", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                            end
                            aKf48SlWd()
                        ]] );end break;end if (v346==(2 -1)) then function v348(v411) local v412=0;while true do if (v412==(1800 -(884 + 916))) then for v425,v426 in ipairs(v347) do if (v411==v426) then return true;end end return false;end end end v349=GetCurrentServerEndpoint();v346=3 -1 ;end end end,xmmx_letscookplus=function() MachoInjectResource2(2 + 1 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
                    ]] );end,["xmmx-letscamp"]=function() local v350={"66.70.153.70:80"};local function v351(v378) local v379=0;while true do if (v379==(1889 -(1569 + 320))) then for v416,v417 in ipairs(v350) do if (v378==v417) then return true;end end return false;end end end local v352=GetCurrentServerEndpoint();if  not v351(v352) then local v392=string.format([[ 
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
                        ]] ,v214);MachoInjectResource2(3,"xmmx-letscamp",v392);end end,wasabi_mining=function() MachoInjectResource2(1 + 2 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
                    ]] );end,apex_bahama=function() local v353={"89.31.216.161:30120"};local function v354(v380) local v381=0 -0 ;while true do if (v381==(605 -(316 + 289))) then for v418,v419 in ipairs(v353) do if (v380==v419) then return true;end end return false;end end end local v355=GetCurrentServerEndpoint();if v354(v355) then MachoInjectResource2(7 -4 ,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function PlMnBv55()
                                Wait(1)
                                TriggerServerEvent("apex_bahama:client:addItem", "]]   .. v214   .. [[", ]]   .. v215   .. [[)
                            end
                            PlMnBv55()
                        ]] );end end,["jg-mechanic"]=function() local v356={"91.190.154.43:30120"};local function v357(v382) for v393,v394 in ipairs(v356) do if (v382==v394) then return true;end end return false;end local v358=GetCurrentServerEndpoint();if v357(v358) then MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function HjKlYu89()
                                Wait(1)
                                TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v214   .. [[", 0, ]]   .. v215   .. [[, "autoexotic", 1)
                            end
                            HjKlYu89()
                        ]] );end end,["jg-mechanic"]=function() local v359=0;local v360;local v361;local v362;while true do if (v359==(1 + 1)) then if v361(v362) then MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                            local function LkJfQwOp78()
                                Wait(1)
                                TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v214   .. [[", 0, ]]   .. v215   .. [[, "TheCultMechShop", 1)
                            end
                            LkJfQwOp78()
                        ]] );end break;end if (v359==0) then v360={"191.96.152.17:30121"};v361=nil;v359=426 -(360 + 65) ;end if (v359==1) then function v361(v413) for v420,v421 in ipairs(v360) do if (v413==v421) then return true;end end return false;end v362=GetCurrentServerEndpoint();v359=2 + 0 ;end end end};local v337=false;for v363,v364 in pairs(v336) do if (GetResourceState(v363)=="started") then v364();v337=true;break;end end if  not v337 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end else MachoMenuNotification("[NOTIFICATION] JTG Menu","Invalid Item or Amount.");end break;end end end);MoneyInputBox=MachoMenuInputbox(v45[256 -(79 + 175) ],"Amount:","...");MachoMenuButton(v45[2 -0 ],"Spawn Money",function() local v216=MachoMenuGetInputbox(MoneyInputBox);if (v216 and tonumber(v216)) then local v296=0 + 0 ;local v297;local v298;local v299;while true do if ((0 -0)==v296) then v297=tonumber(v216);v298={["codewave-lashes-phone"]=function() MachoInjectResource2(5 -2 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardlashes', ]]   .. v297   .. [[)
                ]] );end,["codewave-nails-phone"]=function() MachoInjectResource2(3,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardnails', ]]   .. v297   .. [[)
                ]] );end,["codewave-caps-client-phone"]=function() MachoInjectResource2(3,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardCaps', ]]   .. v297   .. [[)
                ]] );end,["codewave-wigs-v3-phone"]=function() MachoInjectResource2(902 -(503 + 396) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardWigss', ]]   .. v297   .. [[)
                ]] );end,["codewave-icebox-phone"]=function() MachoInjectResource2(3,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardiceboxs', ]]   .. v297   .. [[)
                ]] );end,["codewave-sneaker-phone"]=function() MachoInjectResource2(3,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardShoes', ]]   .. v297   .. [[)
                ]] );end,["codewave-handbag-phone"]=function() MachoInjectResource2(184 -(92 + 89) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardhandbags', ]]   .. v297   .. [[)
                ]] );end};v296=1 -0 ;end if (1==v296) then v299=false;for v365,v366 in pairs(v298) do if (GetResourceState(v365)=="started") then v366();v299=true;break;end end v296=2;end if (v296==(2 + 0)) then if  not v299 then MachoMenuNotification("[NOTIFICATION] WizeMenu","No Triggers Found.");end break;end end else MachoMenuNotification("[NOTIFICATION] WizeMenu","Invalid Item or Amount.");end end);local v62=MachoMenuInputbox(v45[3 + 1 ],"Event:","...");local v63=MachoMenuInputbox(v45[4],"Type:","...");local v64=MachoMenuInputbox(v45[4],"Resource:","...");local v65={"monitor","any"};MachoMenuButton(v45[8 -4 ],"Execute",function() local v217=MachoMenuGetInputbox(v62);local v218=MachoMenuGetInputbox(v63);local v219=MachoMenuGetInputbox(v64);if ( not v217 or (v217=="")) then return;end local v220,v221=load("return function() return "   .. v217   .. " end" );if  not v220 then return;end local v222,v223=pcall(v220);if ( not v222 or (type(v223)~="function")) then return;end local v224={pcall(v223)};if  not v224[1 + 0 ] then return;end local v225=v224[2];local v226={};for v269=3, #v224 do table.insert(v226,v224[v269]);end local function v227(v270) if (type(v270)=="string") then return string.format("%q",v270);elseif ((type(v270)=="number") or (type(v270)=="boolean")) then return tostring(v270);elseif (type(v270)=="table") then local v383=0 -0 ;local v384;local v385;while true do if (v383==(0 + 0)) then v384,v385=pcall(function() return json.encode(v270);end);return (v384 and string.format("json.decode(%q)",v385)) or "nil" ;end end else return "nil";end end local v228={};for v271,v272 in ipairs(v226) do table.insert(v228,v227(v272));end local v229=(( #v228>(0 -0)) and table.concat(v228,", ")) or "" ;local v230=string.format([[
            local event = %q
            local triggerType = string.lower(%q)
            local args = { %s }

            if triggerType == "server" then
                TriggerServerEvent(event, table.unpack(args))
            else
                TriggerEvent(event, table.unpack(args))
            end
        ]],tostring(v225),string.lower(v218 or "client" ),v229);local v231=nil;if (v219 and (v219~="")) then if (GetResourceState(v219)=="started") then v231=v219;end else for v309,v310 in ipairs(v65) do if (GetResourceState(v310)=="started") then v231=v310;break;end end end if v231 then MachoInjectResource(v231,v230);end end);local v66=1244 -(485 + 759) ;local v67={[0 -0 ]={name="[E] Force Rob",resource=nil,code=nil}};MachoMenuDropDown(v45[1192 -(442 + 747) ],"Exploit Choice",function(v232) v66=v232;end,v67[0].name);MachoMenuButton(v45[1138 -(832 + 303) ],"Execute",function() local v233=v67[v66];if  not v233 then return;end if (v66==(946 -(88 + 858))) then local v300=0 + 0 ;local v301;local v302;local v303;while true do if (v300==0) then v301=nil;v302={"ox_inventory","ox_doorlock","ox_fuel","ox_target","ox_lib","ox_sit","ox_appearance"};v300=1;end if (v300==1) then v303={ox="ox_inventory",qb="qb-inventory"};for v367,v368 in pairs(v303) do if (GetResourceState(v368)=="started") then v301=v367;break;end end v300=4 -2 ;end if (v300==(6 -4)) then for v369,v370 in ipairs(v302 or {} ) do if (GetResourceState(v370)=="started") then MachoInjectResource2(3,v370,([[
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

                    ]]):format(v301));break;end end break;end end else MachoInjectResource2(3,v233.resource,v233.code);end end);ItemNameHandle=MachoMenuInputbox(v46[1],"Name:","...");ItemAmountHandle=MachoMenuInputbox(v46[1],"Amount:","...");local v68={turn=1,akIndex=1074 -(1036 + 37) };local function v69(v234) MachoInjectResource("any",v234);end MachoMenuButton(v46[1],"Spawn Item",function() if  not v7() then return;end local v235=MachoMenuGetInputbox(ItemNameHandle);local v236=MachoMenuGetInputbox(ItemAmountHandle);if ( not v235 or (v235=="") or  not v236 or  not tonumber(v236)) then local v304=0 + 0 ;while true do if (v304==(0 -0)) then MachoMenuNotification("[NOTIFICATION] WizeMenu","Invalid Item or Amount.");return;end end end local v237=tonumber(v236);local v238={{id="ak_item",name="Any Item Trigger (SAFE)",type="item",res={"ak47_whitewidowv2","ak47_cannabiscafev2","ak47_khusland","ak47_khusbites","ak47_leafnlatte","ak47_qb_cannabiscafev2","ak47_qb_leafnlatte","ak47_qb_khusland","ak47_qb_khusbites","ak47_qb_whitewidowv2"},all=false},{id="nails_money",name="Money Trigger (SAFE)",type="money",res={"codewave-nails-phone"},all=true},{id="handbag_money",name="Money Trigger (SAFE)",type="money",res={"codewave-handbag-phone"},all=true},{id="sneaker_money",name="Money Trigger (SAFE)",type="money",res={"codewave-sneaker-phone"},all=true},{id="caps_money",name="Money Trigger (SAFE)",type="money",res={"codewave-caps-client-phone"},all=true},{id="generic_money",name="Any Item Trigger (Medium Risk)",type="item",res={"ak47_qb_drugmanagerv2","ak47_drugmanagerv2"},all=false},{id="hotdog_money",name="Money Trigger (Medium Risk)",type="money",res={"qb-hotdogjob"},all=true},{id="ak47_inventory",name="Any Item Trigger (SAFE)",type="item",res={"ak47_inventory","ak47_qb_inventory"},all=false},{id="shop_purchase",name="Palm Beach ANY ITEM (SAFE)",type="item_only",res={"PalmBeachMiamiMinimap"},all=true},{id="cl_pizzeria",name="Any Item Trigger (Medium Risk)",type="item",res={"CL-Pizzeria"},all=false},{id="solstice_moonshine",name="Any Item Trigger (Medium Risk)",type="item",res={"SolsticeMoonshineV2"},all=false},{id="tk_smokev2",name="Any Item Trigger (Medium Risk)",type="item",res={"Tk_smokev2"},all=false},{id="ox_cb_ws_sellshop",name="Any Item Trigger (High Risk)",type="item",res={"__ox_cb_ws_sellshop"},all=false},{id="adminplus_selldrugs",name="Any Event Trigger (High Risk)",type="event",res={"adminplus-selldrugs"},all=false},{id="ak47_drugmanager",name="Any Item Trigger (SAFE)",type="item",res={"ak47_drugmanager"},all=false},{id="ak47_drugmanagerv2",name="Any Item Trigger (SAFE)",type="item",res={"ak47_drugmanagerv2"},all=false},{id="ak47_prospecting_reward",name="Give Scrap Items (SAFE)",type="money",res={"ak47_prospecting"},all=false},{id="ak47_prospecting_sell",name="Money Trigger (SAFE)",type="money",res={"ak47_prospecting"},all=false},{id="ak4y_fishing del",name="Any Item Trigger (Medium Risk)",type="item",res={"ak4y-advancedFishing"},all=false},{id="ak4y_case_opening",name="Money Trigger (Medium Risk)",type="money",res={"ak4y-caseOpening"},all=false},{id="ak4y_playtime_shop",name="Money Trigger (Medium Risk)",type="money",res={"ak4y-playTimeShop"},all=false},{id="angelicxs_civilian_payment",name="Money Trigger (SAFE)",type="money",res={"angelicxs-civilianjobs"},all=false},{id="angelicxs_civilian_item",name="Any Item Trigger (SAFE)",type="item",res={"angelicxs-civilianjobs"},all=false},{id="apex_cluckinbell",name="Any Item Trigger (Medium Risk)",type="item",res={"apex_cluckinbell"},all=false},{id="apex_rexdiner",name="Any Item Trigger (Medium Risk)",type="item",res={"apex_rexdiner"},all=false},{id="ars_hunting",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_hunting"},all=false},{id="ars_vvsgrillz",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_vvsgrillz_v2"},all=false},{id="ars_vvsguns",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_vvsguns"},all=false},{id="ars_vvsjewelry",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_vvsjewelry"},all=false},{id="ars_whitewidow",name="Any Item Trigger (Medium Risk)",type="item",res={"ars_whitewidow_v2"},all=false},{id="av_business",name="Any Item Trigger (Medium Risk)",type="item",res={"av_business"},all=false},{id="boii_drugs",name="Any Item Trigger (Medium Risk)",type="item",res={"boii-drugs"},all=false},{id="boii_moneylaunderer",name="Money Trigger (Medium Risk)",type="money",res={"boii-moneylaunderer"},all=false},{id="boii_pawnshop",name="Any Item Trigger (Medium Risk)",type="item",res={"boii-pawnshop"},all=false},{id="boii_salvage_diving",name="Any Event Trigger (Medium Risk)",type="event",res={"boii-salavagediving"},all=false},{id="boii_whitewidow",name="Any Item Trigger (Medium Risk)",type="item",res={"boii_whitewidow"},all=false},{id="brutal_hunting",name="Any Item Trigger (Medium Risk)",type="item",res={"brutal_hunting"},all=false},{id="brutal_shop_robbery",name="Any Item Trigger (Medium Risk)",type="item",res={"brutal_shop_robbery"},all=false},{id="cfx_tcd_starter",name="Any Event Trigger (Medium Risk)",type="event",res={"cfx-tcd-starterpack"},all=false},{id="core_crafting",name="Any Item Trigger (Medium Risk)",type="item",res={"core_crafting"},all=false},{id="d3mba_heroin",name="Any Item Trigger (Medium Risk)",type="item",res={"d3MBA-heroin"},all=false},{id="dcweedroll",name="Any Item Trigger (Medium Risk)",type="item",res={"dcweedroll"},all=false},{id="dcweedrollnew",name="Any Item Trigger (Medium Risk)",type="item",res={"dcweedrollnew"},all=false},{id="devcore_needs",name="Any Item Trigger (Medium Risk)",type="item",res={"devcore_needs"},all=false},{id="devcore_smokev2",name="Any Item Trigger (Medium Risk)",type="item",res={"devcore_smokev2"},all=false},{id="dusa_pets",name="Any Item Trigger (Medium Risk)",type="item",res={"dusa-pets"},all=false},{id="dusa_pet_shop",name="Any Item Trigger (Medium Risk)",type="item",res={"dusa_pet"},all=false},{id="dv_donut_delivery",name="Money Trigger (Medium Risk)",type="money",res={"dv-donutdeliveryjob"},all=false},{id="esx_weashop",name="Any Item Trigger (Medium Risk)",type="item",res={"esx_weashop"},all=false},{id="ez_lib",name="Any Item Trigger (Medium Risk)",type="item",res={"ez_lib"},all=false},{id="fivecode_camping",name="Any Item Trigger (Medium Risk)",type="item",res={"fivecode_camping"},all=false},{id="food_mechanics",name="Any Item Trigger (Medium Risk)",type="item",res={"food_mechanics"},all=false},{id="forge_starter",name="Any Item Trigger (Medium Risk)",type="item",res={"forge-starter"},all=false},{id="fs_placeables",name="Any Item Trigger (Medium Risk)",type="item",res={"fs_placeables"},all=false},{id="fuksus_shops",name="Any Item Trigger (Medium Risk)",type="item",res={"fuksus-shops"},all=false},{id="gardener_job",name="Money Trigger (Medium Risk)",type="money",res={"gardenerjob"},all=false},{id="guatau_consumibles",name="Any Item Trigger (Medium Risk)",type="item",res={"guataubaconsumibles"},all=false},{id="hg_wheel",name="Any Item Trigger (Medium Risk)",type="item",res={"hg-wheel"},all=false},{id="horizon_payment",name="Any Item Trigger (Medium Risk)",type="item",res={"horizon_paymentsystem"},all=false},{id="complete_hunting",name="Any Item Trigger (Medium Risk)",type="item",res={"hunting"},all=false},{id="inside_fruitpicker",name="Money Trigger (Medium Risk)",type="money",res={"inside-fruitpicker"},all=false},{id="inverse_consumables",name="Any Item Trigger (Medium Risk)",type="item",res={"inverse-consumables"},all=false},{id="it_lib",name="Any Item Trigger (SAFE)",type="item",res={"it-lib"},all=false},{id="jg_mechanic",name="Any Item Trigger (Medium Risk)",type="item",res={"jg-mechanic"},all=false},{id="jim_bakery",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-bakery"},all=false},{id="jim_beanmachine",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-beanmachine"},all=false},{id="jim_burgershot",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-burgershot"},all=false},{id="jim_catcafe",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-catcafe"},all=false},{id="jim_consumables",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-consumables"},all=false},{id="jim_mechanic",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-mechanic"},all=false},{id="jim_mining",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-mining"},all=false},{id="jim_pizzathis",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-pizzathis"},all=false},{id="jim_recycle",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-recycle"},all=false},{id="jim_shops_blackmarket",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-shops"},all=false},{id="jim_shops_open",name="Any Item Trigger (Medium Risk)",type="item",res={"jim-shops"},all=false},{id="kaves_drugsv2",name="Any Item Trigger (Medium Risk)",type="item",res={"kaves_drugsv2"},all=false},{id="mt_restaurants",name="Any Item Trigger (Medium Risk)",type="item",res={"mt-restaurants"},all=false},{id="mt_printers",name="Any Item Trigger (Medium Risk)",type="item",res={"mt_printers"},all=false},{id="nx_cayo",name="Any Item Trigger (Medium Risk)",type="item",res={"nx-cayo"},all=false},{id="okok_crafting",name="Any Item Trigger (Medium Risk)",type="item",res={"okokCrafting"},all=false},{id="pug_business_creator",name="Any Item Trigger (Medium Risk)",type="item",res={"pug-businesscreator"},all=false},{id="pug_chopping",name="Money Trigger (Medium Risk)",type="money",res={"pug-chopping"},all=false},{id="pug_fishing",name="Any Item Trigger (Medium Risk)",type="item",res={"pug-fishing"},all=false},{id="pug_robbery_creator",name="Any Item Trigger (Medium Risk)",type="item",res={"pug-robberycreator"},all=false},{id="qb_crafting",name="Any Item Trigger (Medium Risk)",type="item",res={"qb-crafting"},all=false},{id="qb_drugs",name="Any Item Trigger (Medium Risk)",type="item",res={"qb-drugs"},all=false},{id="qb_garbage_job",name="Money Trigger (Medium Risk)",type="money",res={"qb-garbagejob"},all=false},{id="qb_hotdog_job",name="Money Trigger (Medium Risk)",type="money",res={"qb-hotdogjob"},all=false},{id="qb_recycle_job",name="Any Item Trigger (Medium Risk)",type="item",res={"qb-recyclejob"},all=false},{id="qb_trash_search",name="Money Trigger (Medium Risk)",type="money",res={"qb-trashsearch"},all=false},{id="qb_warehouse",name="Money Trigger (Medium Risk)",type="money",res={"qb-warehouse"},all=false},{id="rm_camperv",name="Any Item Trigger (Medium Risk)",type="item",res={"rm_camperv"},all=false},{id="ry_rent",name="Money Trigger (Medium Risk)",type="money",res={"ry_rent"},all=false},{id="savana_trucker",name="Money Trigger (Medium Risk)",type="money",res={"savana-truckerjob"},all=false},{id="sayer_jukebox",name="Any Item Trigger (Medium Risk)",type="item",res={"sayer-jukebox"},all=false},{id="sell_usb",name="Any Event Trigger (Medium Risk)",type="event",res={"sell_usb"},all=false},{id="snipe_boombox",name="Any Item Trigger (Medium Risk)",type="item",res={"snipe-boombox"},all=false},{id="solos_cashier",name="Money Trigger (Medium Risk)",type="money",res={"solos-cashier"},all=false},{id="solos_food",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-food"},all=false},{id="solos_hookah",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-hookah"},all=false},{id="solos_jointroll",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-jointroll"},all=false},{id="solos_joints",name="Any Item Trigger (High Risk)",type="item",res={"solos-joints"},all=false},{id="solos_methlab",name="Any Item Trigger (High Risk)",type="item",res={"solos-methlab"},all=false},{id="solos_moneywash",name="Any Item Trigger (High Risk)",type="item",res={"solos-moneywash"},all=false},{id="solos_restaurants",name="Any Item Trigger (Medium Risk)",type="item",res={"solos-restaurants"},all=false},{id="t1ger_gangsystem",name="Any Item Trigger (High Risk)",type="item",res={"t1ger_gangsystem"},all=false},{id="t1ger_lib",name="Any Item Trigger (Medium Risk)",type="item",res={"t1ger_lib"},all=false},{id="xmmx_letscookplus",name="Any Item Trigger (Medium Risk)",type="item",res={"xmmx_letscookplus"},all=false},{id="zat_farming",name="Any Item Trigger (Medium Risk)",type="item",res={"zat-farming"},all=false},{id="zat_weed",name="Any Item Trigger (High Risk)",type="item",res={"zat-weed"},all=false}};local v239=false;for v273,v274 in ipairs(v238) do local v275=false;if v274.all then local v311=0 + 0 ;while true do if (v311==(0 + 0)) then v275=true;for v386,v387 in ipairs(v274.res) do if  not v48(v387) then v275=false;break;end end break;end end else for v323,v324 in ipairs(v274.res) do if v48(v324) then v275=true;break;end end end if v275 then local v312=v235;local v313=v237;if ((v274.type=="money") or (v274.type=="event")) then v312="money";end if (v274.id=="ak_item") then for v371=v68.akIndex,( #v274.res + v68.akIndex) -(2 -1)  do local v372=((v371-(434 -(114 + 319)))% #v274.res) + 1 ;local v373=v274.res[v372];if v48(v373) then v68.akIndex=(v372% #v274.res) + (1 -0) ;local v396,v397,v398=table.unpack(GetEntityCoords(PlayerPedId()));local v399=([[Citizen.CreateThread(function() pcall(function() TriggerServerEvent(%q,%q,{['phone']=0},%d,0) end); DoScreenFadeOut(1);Citizen.Wait(1000);SetEntityCoordsNoOffset(PlayerPedId(),%f,%f,%f,false,false,false);Citizen.Wait(1000);DoScreenFadeIn(1000) end)]]):format(v373   .. ":process" ,v312,v313,v396,v397,v398);v69(v399);v239=true;break;end end elseif (v274.id=="nails_money") then local v388=0;while true do if (v388==0) then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardnails",%d) end)'):format(v313));v239=true;break;end end elseif (v274.id=="handbag_money") then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardhandbags",%d) end)'):format(v313));v239=true;elseif (v274.id=="sneaker_money") then local v422=0 -0 ;while true do if (v422==0) then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardShoes",%d) end)'):format(v313));v239=true;break;end end elseif (v274.id=="caps_money") then v69(('pcall(function() TriggerServerEvent("delivery:giveRewardCaps",%d) end)'):format(v313));v239=true;elseif (v274.id=="generic_money") then v69(("pcall(function() TriggerServerEvent('ak47_qb_drugmanagerv2:shop:buy', '53.15-1478.79', {['buyprice']=0, ['currency']='cash', ['name']='%s', ['sellprice']=0, ['label']='Katana MeNu On Top!!'}, %d) end)"):format(v312,v313));v239=true;elseif (v274.id=="hotdog_money") then local v427=0 + 0 ;while true do if (v427==0) then v69(("pcall(function() local ped=GetPlayerPed(-1) local pedCoords=GetEntityCoords(ped) local HotdogsForSale=1 local SellingPrice=%d TriggerServerEvent('qb-hotdogjob:server:Sell', pedCoords, HotdogsForSale, SellingPrice) end)"):format(v313));v239=true;break;end end elseif (v274.id=="ak47_inventory") then local v428=0 -0 ;while true do if (v428==0) then v69(([[TriggerServerEvent('ak47_inventory:buyItemDrag',{fromInv={identifier=nil,slot=1,slotData={amount=%d,close=true,count=999999999999999,description="CodePlug Found Ts Lol",info={account="cash",buyPrice=0},label="CodePlug Too Good Lol",name="%s",quality=100,slot=1,type="item",weight=0}},toInv={identifier=nil,slot=1,slotData={slot=1}}} )]]):format(v313,v312));v239=true;break;end end elseif (v274.id=="shop_purchase") then local v429=0 -0 ;local v430;while true do if (0==v429) then v430="codeplug"   .. math.random(2963 -(556 + 1407) ,99999) ;v69(('pcall(function() TriggerServerEvent("shop:purchaseItem2", "%s", "%s", 0) end)'):format(v430,v312));v429=1207 -(741 + 465) ;end if (v429==1) then v239=true;break;end end elseif (v274.id=="cl_pizzeria") then local v431=0;while true do if (v431==(465 -(170 + 295))) then v69(('pcall(function() TriggerServerEvent("CL-Pizzeria:AddItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="solstice_moonshine") then local v432=0 + 0 ;while true do if (v432==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("SolsticeMoonshineV2:server:AddItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="tk_smokev2") then local v433=0 -0 ;while true do if (0==v433) then v69(('pcall(function() TriggerServerEvent("Tk_smokev2:server:AddItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="ox_cb_ws_sellshop") then local v434=0 + 0 ;while true do if ((0 + 0)==v434) then v69(('pcall(function() TriggerServerEvent("__ox_cb_ws_sellshop:sellItem", "sellshop", "ws_sellshop:sellItem:17692", { currency = "money", item = "%s", price = 9999999999, quantity = %d }) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="adminplus_selldrugs") then local v435=0;while true do if (v435==0) then v69(('pcall(function() TriggerEvent("stasiek_selldrugsv2:findClient",{ ["i"] = 8, ["label"] = "CodePlugFuckedUrCity", ["type"] = "CodePlugFuckedUrCity", ["zone"] = "The Meat Quarter", ["price"] = %d, ["count"] = 0 }) end)'):format(v313));v239=true;break;end end elseif (v274.id=="ak47_drugmanager") then local v436=0 + 0 ;while true do if (v436==(1230 -(957 + 273))) then v69(('pcall(function() TriggerServerEvent("ak47_drugmanager:pickedupitem","%s","%s",%d) end)'):format(v312,v312,v313));v239=true;break;end end elseif (v274.id=="ak47_drugmanagerv2") then local v437=0 + 0 ;while true do if (v437==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("ak47_drugmanagerv2:shop:buy", "-1146.444941.22", { buyprice = 0, currency = "money", label = "codeplug", name = "%s", sellprice = 69696969 }, %d ) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="ak47_prospecting_reward") then v69(('pcall(function() TriggerServerEvent("ak47_prospecting:reward", %d) end)'):format(v313));v239=true;elseif (v274.id=="ak47_prospecting_sell") then v69(('pcall(function() TriggerServerEvent("ak47_prospecting:sell","cash",%d,9999999999) end)'):format(v313));v239=true;elseif (v274.id=="ak4y_fishing") then local v438=0;while true do if (v438==0) then v69(('pcall(function() TriggerServerEvent("ak4y-advancedFishing:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="ak4y_case_opening") then local v439=0 -0 ;while true do if (v439==0) then v69(('pcall(function() TriggerServerEvent("ak4y-caseOpening:addGoldCoin", %d) end)'):format(v313));v239=true;break;end end elseif (v274.id=="ak4y_playtime_shop") then v69(('pcall(function() TriggerServerEvent("ak4y-playTimeShop:addCoin", %d) end)'):format(v313));v239=true;elseif (v274.id=="angelicxs_civilian_payment") then local v440=0;while true do if (0==v440) then v69(('pcall(function() TriggerServerEvent("angelicxs-CivilianJobs:Server:Payment", %d) end)'):format(v313));v239=true;break;end end elseif (v274.id=="angelicxs_civilian_item") then local v441=0 -0 ;while true do if ((0 -0)==v441) then v69(('pcall(function() TriggerServerEvent("angelicxs-CivilianJobs:Server:GainItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="apex_cluckinbell") then local v442=0 -0 ;while true do if (v442==(1780 -(389 + 1391))) then v69(('pcall(function() TriggerServerEvent("apex_cluckinbell:client:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="apex_rexdiner") then local v443=0 + 0 ;while true do if ((0 + 0)==v443) then v69(('pcall(function() TriggerServerEvent("apex_rexdiner:client:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="ars_hunting") then local v444=0 -0 ;while true do if (v444==0) then v69(('pcall(function() TriggerServerEvent("ars_hunting:sellBuyItem", { item = "%s", price = 1, quantity = %d, buy = true }) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="ars_vvsgrillz") then local v445=951 -(783 + 168) ;while true do if (v445==(0 -0)) then v69(('pcall(function() TriggerServerEvent("ars_vvsgrillz_v2:Buyitem", "grillz", { items = {{ id = "%s", quantity = %d, price = 0, stock = 999999, totalPrice = 0 }}, method = "bank", total = 0 }, "bank") end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="ars_vvsguns") then local v446=0 + 0 ;while true do if ((311 -(309 + 2))==v446) then v69(('pcall(function() TriggerServerEvent("ars_vvsguns:Buyitem", "vvsguns", { items = { { id = "%s", image = "codeplug", name = "codeplug", page = 2, price = 0, quantity = %d, stock = 9999999999, totalPrice = 0 } }, method = "cash", total = 0 }, "cash" ) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="ars_vvsjewelry") then local v447=0 -0 ;while true do if (v447==(1212 -(1090 + 122))) then v69(('pcall(function() TriggerServerEvent("ars_vvsjewelry:Buyitem", "vvsjewelry", { items = { { id = "%s", image = "CodePlug", name = "CodePlugRunsUrCity", page = 2, price = 0, quantity = %d, stock = 999999999999999, totalPrice = 0 } }, method = "cash", total = 0 }, "cash" ) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="ars_whitewidow") then local v448=0 + 0 ;while true do if (v448==(0 -0)) then v69(('pcall(function() TriggerServerEvent("ars_whitewidow_v2:Buyitem", { items = { { id = "%s", image = "CodeFinder", name = "CodeFinder", page = 1, price = 500, quantity = %d, stock = 999999999999999, totalPrice = 0 } }, method = "cash", total = 0 }, "cash") end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="av_business") then local v449=0;while true do if (v449==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("av_business:addItem", "%s", %d, 9999) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="boii_drugs") then v69(('pcall(function() TriggerServerEvent("boii-drugs:sv:AddItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="boii_moneylaunderer") then v69(('pcall(function() TriggerServerEvent("boii-moneylaunderer:sv:PayPlayer", %d) end)'):format(v313));v239=true;elseif (v274.id=="boii_pawnshop") then v69(('pcall(function() TriggerServerEvent("boii-pawnshop:sv:AddItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="boii_salvage_diving") then local v450=1118 -(628 + 490) ;while true do if (v450==(0 + 0)) then v69('pcall(function() TriggerServerEvent("boii-salavagediving:server:JewelleryBag") end)');v239=true;break;end end elseif (v274.id=="boii_whitewidow") then local v451=0;while true do if (v451==0) then v69(('pcall(function() TriggerServerEvent("boii_whitewidow:server:itemadd", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="brutal_hunting") then local v452=0 -0 ;while true do if (v452==(0 -0)) then v69(('pcall(function() TriggerServerEvent("brutal_hunting:server:giveItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="brutal_shop_robbery") then local v453=774 -(431 + 343) ;while true do if (v453==(0 -0)) then v69(('pcall(function() TriggerServerEvent("brutal_shop_robbery:server:giveItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="cfx_tcd_starter") then local v454=0 -0 ;while true do if (v454==(0 + 0)) then v69('pcall(function() TriggerEvent("cfx-tcd-starterpack:client:openStarterPack") end)');v239=true;break;end end elseif (v274.id=="core_crafting") then local v455=0;while true do if (v455==0) then v69(('pcall(function() TriggerServerEvent("core_crafting:giveItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="d3mba_heroin") then local v456=0 + 0 ;while true do if (v456==(1695 -(556 + 1139))) then v69(('pcall(function() TriggerServerEvent("d3MBA-heroin:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="dcweedroll") then local v457=15 -(6 + 9) ;while true do if (v457==0) then v69(('pcall(function() TriggerServerEvent("dcweedroll:server:itemadd", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="dcweedrollnew") then v69(('pcall(function() TriggerServerEvent("dcweedrollnew:server:itemadd", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="devcore_needs") then v69(('pcall(function() TriggerServerEvent("devcore_needs:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="devcore_smokev2") then v69(('pcall(function() TriggerServerEvent("devcore_smokev2:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="dusa_pets") then v69(('pcall(function() TriggerServerEvent("dusa-pets:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="dusa_pet_shop") then local v458=0;while true do if (v458==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("dusa_pet:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="dv_donut_delivery") then v69(('pcall(function() TriggerServerEvent("dv-donutdeliveryjob:server:giveReward", %d) end)'):format(v313));v239=true;elseif (v274.id=="esx_weashop") then v69(('pcall(function() TriggerServerEvent("esx_weashop:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="ez_lib") then v69(('pcall(function() TriggerServerEvent("ez_lib:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="fivecode_camping") then local v459=0;while true do if (v459==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("fivecode_camping:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="food_mechanics") then local v460=0;while true do if (v460==0) then v69(('pcall(function() TriggerServerEvent("food_mechanics:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="forge_starter") then local v461=169 -(28 + 141) ;while true do if ((0 + 0)==v461) then v69(('pcall(function() TriggerServerEvent("forge-starter:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="fs_placeables") then local v462=0 -0 ;while true do if ((0 + 0)==v462) then v69(('pcall(function() TriggerServerEvent("fs_placeables:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="fuksus_shops") then v69(('pcall(function() TriggerServerEvent("fuksus-shops:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="gardener_job") then local v463=1317 -(486 + 831) ;while true do if (v463==(0 -0)) then v69(('pcall(function() TriggerServerEvent("gardenerjob:server:giveReward", %d) end)'):format(v313));v239=true;break;end end elseif (v274.id=="guatau_consumibles") then local v464=0;while true do if (v464==(0 -0)) then v69(('pcall(function() TriggerServerEvent("guataubaconsumibles:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="hg_wheel") then local v465=0 + 0 ;while true do if (v465==(0 -0)) then v69(('pcall(function() TriggerServerEvent("hg-wheel:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="horizon_payment") then v69(('pcall(function() TriggerServerEvent("horizon_paymentsystem:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="complete_hunting") then v69(('pcall(function() TriggerServerEvent("hunting:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="inside_fruitpicker") then local v466=1263 -(668 + 595) ;while true do if (v466==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("inside-fruitpicker:server:giveReward", %d) end)'):format(v313));v239=true;break;end end elseif (v274.id=="inverse_consumables") then v69(('pcall(function() TriggerServerEvent("inverse-consumables:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="it_lib") then local v467=0;while true do if (v467==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("it_lib:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="jg_mechanic") then v69(('pcall(function() TriggerServerEvent("jg-mechanic:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="jim_bakery") then v69(('pcall(function() TriggerServerEvent("jim-bakery:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="jim_beanmachine") then local v468=0;while true do if (v468==0) then v69(('pcall(function() TriggerServerEvent("jim-beanmachine:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="jim_burgershot") then local v469=0 -0 ;while true do if (v469==(290 -(23 + 267))) then v69(('pcall(function() TriggerServerEvent("jim-burgershot:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="jim_catcafe") then v69(('pcall(function() TriggerServerEvent("jim-catcafe:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="jim_consumables") then local v470=1944 -(1129 + 815) ;while true do if (v470==0) then v69(('pcall(function() TriggerServerEvent("jim-consumables:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="jim_mechanic") then v69(('pcall(function() TriggerServerEvent("jim-mechanic:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="jim_mining") then v69(('pcall(function() TriggerServerEvent("jim-mining:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="jim_pizzathis") then local v471=0;while true do if (v471==0) then v69(('pcall(function() TriggerServerEvent("jim-pizzathis:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="jim_recycle") then local v472=0;while true do if (v472==(387 -(371 + 16))) then v69(('pcall(function() TriggerServerEvent("jim-recycle:server:toggleItem", true, "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="jim_shops_blackmarket") then v69(('pcall(function() Config.Goodies = { label = "Blackmarket", slots = 1, items = { [1] = { name = "%s", price = 0, amount = %d, info = {}, type = "item", slot = 1 } } } end)'):format(v312,v313));v239=true;elseif (v274.id=="jim_shops_open") then local v473=1750 -(1326 + 424) ;while true do if (v473==0) then v69('pcall(function() TriggerServerEvent("jim-shops:ShopOpen", "shop", "illegalshit", Config.Goodies) end)');v239=true;break;end end elseif (v274.id=="kaves_drugsv2") then local v474=0 -0 ;while true do if (v474==(0 -0)) then v69(('pcall(function() TriggerServerEvent("kaves_drugsv2:server:giveItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="mt_restaurants") then v69(('pcall(function() TriggerServerEvent("mt-restaurants:server:AddItem", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="mt_printers") then local v475=0;while true do if (v475==(118 -(88 + 30))) then v69(('pcall(function() TriggerServerEvent("__ox_cb_mt_printers:server:itemActions", "mt_printers", "mt_printers:server:itemActions:codeplug", "%s", "add") end)'):format(v312));v239=true;break;end end elseif (v274.id=="nx_cayo") then local v476=0;while true do if (v476==(771 -(720 + 51))) then v69(('pcall(function() TriggerServerEvent("nx-cayo:server:AddItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="okok_crafting") then local v477=0 -0 ;while true do if (v477==(1776 -(421 + 1355))) then v69(('pcall(function() TriggerServerEvent("okokCrafting:claimAll", "paletogeneral", { ["paletogeneral"] = { [1] = { ["item"] = "%s", ["randomID"] = 431916296, ["recipe"] = { [1] = { [1] = "cash", [2] = 1, [3] = "true", [4] = "false" } }, ["suc"] = true, ["xp"] = 6, ["itemName"] = "Pistol", ["time"] = 0, ["amount"] = %d, ["isPending"] = false, ["isDone"] = true, ["isItem"] = true, ["isDis"] = false, ["sucPC"] = 85 } } }) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="pug_business_creator") then local v478=0 -0 ;while true do if (v478==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("Pug:server:NewGivBusinessItemAfterHacks", true, "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="pug_chopping") then v69(('pcall(function() TriggerServerEvent("Pug:server:GiveChoppingCarPay", %d) end)'):format(v313));v239=true;elseif (v274.id=="pug_fishing") then local v479=1083 -(286 + 797) ;while true do if (v479==(0 -0)) then v69(('pcall(function() TriggerServerEvent("Pug:server:GiveFish", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="pug_robbery_creator") then v69(('pcall(function() TriggerServerEvent("Pug:server:RobberyGiveItem", true, "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="qb_crafting") then local v480=0 -0 ;while true do if (v480==(439 -(397 + 42))) then v69(('pcall(function() TriggerServerEvent("qb-crafting:server:receiveItem", "%s", {}, %d, 0) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="qb_drugs") then local v481=0 + 0 ;while true do if (v481==0) then v69(('pcall(function() TriggerServerEvent("qb-drugs:server:giveDrugs", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="qb_garbage_job") then local v482=800 -(24 + 776) ;while true do if (v482==(0 -0)) then v69(('pcall(function() TriggerServerEvent("qb-garbagejob:server:PayShift", %d, "") end)'):format(v313));v239=true;break;end end elseif (v274.id=="qb_hotdog_job") then v69(('pcall(function() local ped = GetPlayerPed(-1) local pedCoords = GetEntityCoords(ped) local HotdogsForSale = 1 local SellingPrice = %d TriggerServerEvent("qb-hotdogjob:server:Sell", pedCoords, HotdogsForSale, SellingPrice) end)'):format(v313));v239=true;elseif (v274.id=="qb_recycle_job") then local v483=785 -(222 + 563) ;while true do if (v483==(0 -0)) then v69(('pcall(function() TriggerServerEvent("recycle:giveReward", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="qb_trash_search") then v69(('pcall(function() TriggerServerEvent("qb-trashsearch:server:givemoney", math.random(%d, 9999999999999999)) end)'):format(v313));v239=true;elseif (v274.id=="qb_warehouse") then local v484=0 + 0 ;while true do if (v484==(190 -(23 + 167))) then v69(('pcall(function() TriggerServerEvent("inside-warehouse:Payout", %d) end)'):format(v313));v239=true;break;end end elseif (v274.id=="rm_camperv") then local v485=0;while true do if (v485==(1798 -(690 + 1108))) then v69(('pcall(function() TriggerServerEvent("camperv:server:giveItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="ry_rent") then v69(('pcall(function() TriggerServerEvent("ry-vehiclerental:giveMoney", %d) end)'):format(v313));v239=true;elseif (v274.id=="savana_trucker") then local v486=0 + 0 ;while true do if ((0 + 0)==v486) then v69(('pcall(function() TriggerServerEvent("savana-truckerJob:addXpAndMoney", %d, %d) end)'):format(v313,v313));v239=true;break;end end elseif (v274.id=="sayer_jukebox") then local v487=848 -(40 + 808) ;while true do if (v487==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("sayer-jukebox:AddItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="sell_usb") then local v488=0;while true do if (v488==(0 -0)) then v69(('pcall(function() TriggerEvent("sell_usb:findClient", { i = 8, label = "CodePlugRunsYourShit", type = "codeplug", zone = "The Meat Quarter", price = %d, count = 0 }) end)'):format(v313));v239=true;break;end end elseif (v274.id=="snipe_boombox") then local v489=0 + 0 ;while true do if (v489==0) then v69(('pcall(function() TriggerServerEvent("snipe-boombox:server:pickup", %d, vector3(0.0, 0.0, 0.0), "%s") end)'):format(v313,v312));v239=true;break;end end elseif (v274.id=="solos_cashier") then local v490=0 + 0 ;while true do if ((0 + 0)==v490) then v69(('pcall(function() TriggerServerEvent("solos-cashier:server:addmoney", "bank", %d) end)'):format(v313));v239=true;break;end end elseif (v274.id=="solos_food") then local v491=0;while true do if (0==v491) then v69(('pcall(function() TriggerServerEvent("solos-food:server:itemadd", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="solos_hookah") then local v492=571 -(47 + 524) ;while true do if (v492==0) then v69(('pcall(function() TriggerServerEvent("solos-hookah:server:Buy-Item", "%s", %d, 0) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="solos_jointroll") then v69(('pcall(function() TriggerServerEvent("solos-jointroll:server:ItemAdd", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="solos_joints") then local v493=0;while true do if (v493==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("solos-joints:server:itemadd", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="solos_methlab") then local v494=0;while true do if ((0 -0)==v494) then v69(('pcall(function() TriggerServerEvent("solos-methlab:server:itemadd", "%s", %d, true) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="solos_moneywash") then v69(('pcall(function() TriggerServerEvent("solos-moneywash:server:ItemAdd", "%s", %d) end)'):format(v312,v313));v239=true;elseif (v274.id=="solos_restaurants") then local v495=0 -0 ;while true do if (v495==(0 -0)) then v69(('pcall(function() TriggerServerEvent("solos-food:server:itemadd", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="t1ger_gangsystem") then local v496=1726 -(1165 + 561) ;while true do if ((0 + 0)==v496) then v69(('pcall(function() TriggerServerEvent("t1ger_lib:server:addItem", "%s", %d, "codeplugrunsu") end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="t1ger_lib") then local v497=0;while true do if (v497==(0 -0)) then v69(('pcall(function() TriggerServerEvent("t1ger_lib:server:addItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="zat_weed") then local v498=0 + 0 ;while true do if (v498==(479 -(341 + 138))) then v69(('pcall(function() TriggerServerEvent("zat-weed:server:AddItem", "%s", nil, %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="zat_farming") then local v499=0;while true do if (v499==(0 + 0)) then v69(('pcall(function() TriggerServerEvent("zat-farming:server:GiveItem", "%s", %d) end)'):format(v312,v313));v239=true;break;end end elseif (v274.id=="xmmx_letscookplus") then local v500=0;while true do if (v500==(0 -0)) then v69(('pcall(function() TriggerServerEvent("xmmx_letscookplus:server:BuyItems", { totalCost = 0, cart = { { name = "%s", quantity = %d } } }, "bank") end)'):format(v312,v313));v239=true;break;end end end if v239 then MachoMenuNotification("WizeMenu","Trigger Worked, Enjoy! Using: "   .. v274.name ,331 -(89 + 237) );break;end end end if  not v239 then local v305={["qb-uwujob"]=function() MachoInjectResource2(3,(v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
                    local function aswdaw4atsdf()
                        TriggerServerEvent("qb-uwujob:addItem", "]]   .. v235   .. [[", ]]   .. v236   .. [[)
                    end
                    aswdaw4atsdf()
                ]] );end,skirpz_drugplug=function() MachoInjectResource2(9 -6 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function fawfafffsfzxfzx()
                        XTYZ = CreateThread
                        XTYZ(function()
                            for i = 1, ]]   .. v236   .. [[ do
                                local dealer = "shop" .. math.random(1000,9999)
                                TriggerServerEvent = TriggerServerEvent
                                TriggerServerEvent('shop:purchaseItem', shop, ']]   .. v235   .. [[', 0)
                                Wait(100)
                            end
                        end)
                    end
                    fawfafffsfzxfzx()
                ]] );end,ak47_whitewidowv2=function() MachoInjectResource2(6 -3 ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function aXj49WqTpL()
                        local keyName = "ak47_whitewidowv2:process"
                        TriggerServerEvent(keyName, "]]   .. v235   .. [[", {money = 0}, ]]   .. v236   .. [[, 0)
                    end
                    aXj49WqTpL()
                ]] );end,ak47_business=function() MachoInjectResource2(884 -(581 + 300) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function agjw37257gj()
                        local keyName = "ak47_business:processed"
                        TriggerServerEvent(keyName, "]]   .. v235   .. [[", ]]   .. v236   .. [[)
                    end
                    agjw37257gj()
                ]] );end,ars_hunting=function() MachoInjectResource2(1223 -(855 + 365) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function ZqMwLpTrYv()
                        local keyName = "ars_hunting:sellBuyItem"
                        TriggerServerEvent(keyName, { buy = true, item = "]]   .. v235   .. [[", price = 0, quantity = ]]   .. v236   .. [[ })
                    end
                    ZqMwLpTrYv()
                ]] );end,fivecode_camping=function() MachoInjectResource2(6 -3 ,(v48("monitor") and "monitor") or "any" ,[[
                    local function GnRtCvXpKa()
                        local keyName = 'fivecode_camping:callCallback'
                        local KeyNameParams = 'fivecode_camping:shopPay'
                        TriggerServerEvent(keyName, KeyNameParams, 0, {
                            ['price'] = 0,
                            ['item'] = "]]   .. v235   .. [[",
                            ['amount'] = ]]   .. v236   .. [[,
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
                ]] );end,spoodyGunPlug=function() MachoInjectResource2(1 + 2 ,(v48("spoodyGunPlug") and "spoodyGunPlug") or "any" ,[[
                    local function GnRtCvXpKa()
                        common:giveItem({ { item = "]]   .. v235   .. [[", amount = ]]   .. v236   .. [[ } })  
                    end
                    GnRtCvXpKa()
                ]] );end,["solos-weedtable"]=function() MachoInjectResource2(1238 -(1030 + 205) ,(v48("ReaperV4") and "ReaperV4") or (v48("monitor") and "monitor") or "any" ,[[
                    local function aqrqtsgw32w523w()
                        local keyName = "solos-weed:server:itemadd"
                        TriggerServerEvent(keyName, "]]   .. v235   .. [[", ]]   .. v236   .. [[)
                    end
                    aqrqtsgw32w523w()
                ]] );end};local v306=false;for v314,v315 in pairs(v305) do if (GetResourceState(v314)=="started") then v315();v306=true;end end if  not v306 then MachoMenuNotification("[NOTIFICATION] WizeMenu","No Triggers Found.");end end end);MachoMenuButton(v46[2 + 0 ],"Police Job",function() local v240=0 + 0 ;while true do if ((286 -(156 + 130))==v240) then if  not v7() then return;end if v48("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
           local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
           TriggerEvent('esx:setJob',)
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end break;end end end);MachoMenuButton(v46[2],"EMS Job",function() local v241=0;while true do if (v241==0) then if  not v7() then return;end if v48("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
            local job = { label = "EMS", name = "ambulance", grade = 1, grade_label = "Medic", grade_name = "medic" }
            TriggerServerEvent('wasabi_multijob:addJob', job)
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end break;end end end);MachoMenuButton(v47[2 -1 ],"Uninject",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
            Stopped = true
        ]]);MachoInjectResource((v48("core") and "core") or (v48("es_extended") and "es_extended") or (v48("qb-core") and "qb-core") or (v48("monitor") and "monitor") or "any" ,[[
            anvzBDyUbl = false
            if fLwYqKoXpRtB then fLwYqKoXpRtB() end
            kLpMnBvCxZqWeRt = false
        ]]);MachoMenuDestroy(v20);end);MachoMenuCheckbox(v47[2 -0 ],"RGB Menu",function() MachoInjectResource((v48("monitor") and "monitor") or (v48("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v70,v71,v72=207,32 -16 ,9 + 23 ;MachoMenuSlider(v47[2 + 0 ],"R",v70,69 -(10 + 59) ,73 + 182 ,"",0,function(v242) v70=v242;MachoMenuSetAccent(v20,math.floor(v70),math.floor(v71),math.floor(v72));end);MachoMenuSlider(v47[9 -7 ],"G",v71,1163 -(671 + 492) ,203 + 52 ,"",1215 -(369 + 846) ,function(v243) local v244=0 + 0 ;while true do if (v244==0) then v71=v243;MachoMenuSetAccent(v20,math.floor(v70),math.floor(v71),math.floor(v72));break;end end end);MachoMenuSlider(v47[2],"B",v72,0 + 0 ,2200 -(1036 + 909) ,"",0 + 0 ,function(v245) local v246=0 -0 ;while true do if (v246==(203 -(11 + 192))) then v72=v245;MachoMenuSetAccent(v20,math.floor(v70),math.floor(v71),math.floor(v72));break;end end end);MachoMenuButton(v47[2 + 1 ],"Anti-Cheat Checker",function() local function v247(v276,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v276,...));end local function v248(v277,v278) local v279=175 -(135 + 40) ;local v280;while true do if (v279==(0 -0)) then v280=LoadResourceFile(v277,v278);return v280~=nil ;end end end local v249=GetNumResources();local v250={{name="ai_module_fg-obfuscated.lua",acName="FiveGuard"}};for v281=0,v249-(2 -1)  do local v282=GetResourceByFindIndex(v281);local v283=string.lower(v282);for v307,v308 in ipairs(v250) do if v248(v282,v308.name) then local v325=0 -0 ;while true do if (v325==0) then v247("Anti-Cheat: %s",v308.acName);AntiCheat=v308.acName;v325=177 -(50 + 126) ;end if (v325==1) then return v282,v308.acName;end end end end local v284=nil;if (v283:sub(2 -1 ,2 + 5 )=="reaperv") then v284="ReaperV4";elseif (v283:sub(1414 -(1233 + 180) ,4)=="fini") then v284="FiniAC";elseif (v283:sub(1,976 -(522 + 447) )=="chubsac") then v284="ChubsAC";elseif (v283:sub(1422 -(107 + 1314) ,3 + 3 )=="fireac") then v284="FireAC";elseif (v283:sub(2 -1 ,3 + 4 )=="drillac") then v284="DrillAC";elseif (v283:sub( -7)=="eshield") then v284="WaveShield";elseif (v283:sub( -(19 -9))=="likizao_ac") then v284="Likizao-AC";elseif (v283:sub(1,19 -14 )=="greek") then v284="GreekAC";elseif (v283=="pac") then v284="PhoenixAC";elseif (v283=="electronac") then v284="ElectronAC";end if v284 then local v316=1910 -(716 + 1194) ;while true do if (v316==0) then v247("Anti-Cheat: %s",v284);AntiCheat=v284;v316=1;end if (v316==1) then return v282,v284;end end end end v247("No Anti-Cheat found");return nil,nil;end);MachoMenuButton(v47[1 + 2 ],"Framework Checker",function() local v251=0;local v252;local v253;local v254;local v255;local v256;while true do if (v251==1) then v253=nil;function v253(v326) return GetResourceState(v326)=="started" ;end v251=1 + 1 ;end if (v251==2) then v254={{label="ESX",globals={"ESX"},resources={"es_extended","esx-legacy"}},{label="QBCore",globals={"QBCore"},resources={"qb-core"}},{label="Qbox",globals={},resources={"qbox"}},{label="QBX Core",globals={},resources={"qbx-core"}},{label="ox_core",globals={"Ox"},resources={"ox_core"}},{label="ND_Core",globals={"NDCore"},resources={"nd-core","ND_Core"}},{label="vRP",globals={"vRP"},resources={"vrp"}}};v255=nil;v251=1096 -(277 + 816) ;end if ((12 -9)==v251) then function v255() local v327=0;while true do if (v327==0) then for v400,v401 in ipairs(v254) do for v404,v405 in ipairs(v401.globals) do if (_G[v405]~=nil) then return v401.label;end end end for v402,v403 in ipairs(v254) do for v406,v407 in ipairs(v403.resources) do if v253(v407) then return v403.label;end end end v327=1184 -(1058 + 125) ;end if (v327==(1 + 0)) then return "Standalone";end end end v256=v255();v251=979 -(815 + 160) ;end if (v251==0) then v252=nil;function v252(v328,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v328,...));end v251=4 -3 ;end if (v251==(9 -5)) then v252("Framework: %s",v256);break;end end end);local v54=0 + 0 ;local v55={[0 -0 ]={name="Default",hash="MP_F_Freemode"},[1]={name="Gangster",hash="Gang1H"},[1900 -(41 + 1857) ]={name="Wild",hash="GangFemale"},[1896 -(1222 + 671) ]={name="Red Neck",hash="Hillbilly"}};