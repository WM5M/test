--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0="https://raw.githack.com/WM5M/test/refs/heads/main/wmk.json";local v1=MachoWebRequest(v0);local v2=MachoAuthenticationKey();local function v3() local v64=0 -0 ;local v65;local v66;while true do if (v64==1) then if ( not v65 or  not v66 or (type(v66)~="table")) then return false;end for v289,v290 in ipairs(v66) do if (v290.key==v2) then return true;end end v64=2 + 0 ;end if (v64==0) then if  not v1 then return false;end v65,v66=pcall(json.decode,v1);v64=1 + 0 ;end if (v64==2) then return false;end end end if  not v3() then MachoMenuNotification("WizeMenu","Your key ain't valid lmfao: "   .. v2 ,1 + 9 );return;end Citizen.CreateThread(function() local v67=0;local v68;local v69;while true do if (v67==(1171 -(418 + 753))) then v68,v69=pcall(json.decode,v1);if (v68 and v69 and (type(v69)=="table")) then for v319,v320 in ipairs(v69) do if ((v320.key==v2) and v320.expires) then local v365,v366,v367,v368,v369,v370=string.match(v320.expires,"([%d]+)-([%d]+)-([%d]+)T([%d]+):([%d]+):([%d]+)Z");if (v365 and v366 and v367 and v368 and v369 and v370) then local v380="Your key is valid. Enjoy!";MachoMenuNotification("WizeMenu",v380,5);end break;end end end break;end end end);local v4=vec2(286 + 464 ,52 + 448 );local v5=vec2(147 + 353 ,500);local v6=38 + 112 ;local v7=539 -(406 + 123) ;local v8=15;local v9=v4.x-v6 ;local v10=v4.y-(2 * v7) ;local v11=(v9-(v7 * (1772 -(1749 + 20))))/(1 + 1) ;local v12=(v10-(v7 * (1325 -(1249 + 73))))/(1 + 1) ;local v13=MachoMenuTabbedWindow("WizeVIP",v5.x,v5.y,v4.x,v4.y,v6);MachoMenuSetKeybind(v13,33);MachoMenuSetAccent(v13,207,1161 -(466 + 679) ,32);MachoMenuText(v13,"YT @JayThaaGamer");local v14=MachoMenuAddTab(v13,"Self");local v15=MachoMenuAddTab(v13,"Server");local v16=MachoMenuAddTab(v13,"Teleport");local v17=MachoMenuAddTab(v13,"Weapon");local v18=MachoMenuAddTab(v13,"Vehicle");local v19=MachoMenuAddTab(v13,"Animations");local v20=MachoMenuAddTab(v13,"Triggers");local v21=MachoMenuAddTab(v13,"Settings");local v22=MachoMenuAddTab(v13,"VIP");local function v23(v70) local v71=0 -0 ;local v72;local v73;local v74;local v75;local v76;local v77;local v78;local v79;while true do if (v71==(0 -0)) then v72=v6 + v7 ;v73=v7 + v8 ;v71=1901 -(106 + 1794) ;end if (v71==(2 + 2)) then return v77,v78,v79;end if (v71==2) then v76=(v12 * (1 + 1)) + v7 ;v77=MachoMenuGroup(v70,"Self",v72,v73,v72 + v11 ,v73 + v76 );v71=8 -5 ;end if (v71==(2 -1)) then v74=v73 + v12 + v7 ;v75=v72 + v11 + v7 ;v71=2;end if (v71==(117 -(4 + 110))) then v78=MachoMenuGroup(v70,"Model Changer",v75,v73,v75 + v11 ,v73 + v12 );v79=MachoMenuGroup(v70,"Functions",v75,v74,v75 + v11 ,v74 + v12 );v71=588 -(57 + 527) ;end end end local function v24(v80) local v81=1427 -(41 + 1386) ;local v82;local v83;local v84;local v85;local v86;local v87;local v88;while true do if (v81==(106 -(17 + 86))) then v88=MachoMenuGroup(v80,"Everyone",v86,v7 + v8 ,v87,v10);return v85,v88;end if (v81==(2 + 0)) then v86=v84 + v7 ;v87=v86 + v82 ;v81=6 -3 ;end if (v81==(0 -0)) then v82=(v9-(v7 * (169 -(122 + 44))))/(2 -0) ;v83=v6 + v7 ;v81=3 -2 ;end if (v81==(1 + 0)) then v84=v83 + v82 ;v85=MachoMenuGroup(v80,"Player",v83,v7 + v8 ,v84,v10);v81=2;end end end local function v25(v89) local v90=0 + 0 ;local v91;local v92;local v93;local v94;local v95;local v96;local v97;while true do if (v90==(1 -0)) then v93=v92 + v91 ;v94=MachoMenuGroup(v89,"Teleport",v92,v7 + v8 ,v93,v10);v90=2;end if (v90==(68 -(30 + 35))) then v97=MachoMenuGroup(v89,"Other",v95,v7 + v8 ,v96,v10);return v94,v97;end if (v90==(2 + 0)) then v95=v93 + v7 ;v96=v95 + v91 ;v90=1260 -(1043 + 214) ;end if (v90==0) then v91=(v9-(v7 * 3))/(7 -5) ;v92=v6 + v7 ;v90=1;end end end local function v26(v98) local v99=1212 -(323 + 889) ;local v100;local v101;local v102;local v103;local v104;local v105;local v106;while true do if (v99==1) then v102=v101 + v12 + v7 ;v103=MachoMenuGroup(v98,"Mods",v100,v101,v100 + v11 ,v101 + v12 );v99=2;end if (v99==(7 -4)) then v106=MachoMenuGroup(v98,"Other",v105,v7 + v8 ,v105 + v11 ,v10);return v103,v104,v106;end if (v99==(582 -(361 + 219))) then v104=MachoMenuGroup(v98,"Spawner",v100,v102,v100 + v11 ,v102 + v12 );v105=v100 + v11 + v7 ;v99=323 -(53 + 267) ;end if (v99==(0 + 0)) then v100=v6 + v7 ;v101=v7 + v8 ;v99=1;end end end local function v27(v107) local v108=0;local v109;local v110;local v111;local v112;local v113;local v114;local v115;while true do if (v108==(414 -(15 + 398))) then v111=v110 + v12 + v7 ;v112=MachoMenuGroup(v107,"Mods",v109,v110,v109 + v11 ,v110 + v12 );v108=984 -(18 + 964) ;end if ((0 -0)==v108) then v109=v6 + v7 ;v110=v7 + v8 ;v108=1;end if (v108==(2 + 0)) then v113=MachoMenuGroup(v107,"Plate & Spawning",v109,v111,v109 + v11 ,v111 + v12 );v114=v109 + v11 + v7 ;v108=2 + 1 ;end if (v108==(853 -(20 + 830))) then v115=MachoMenuGroup(v107,"Other",v114,v7 + v8 ,v114 + v11 ,v10);return v112,v113,v115;end end end local function v28(v116) local v117=0 + 0 ;local v118;local v119;local v120;local v121;local v122;local v123;local v124;while true do if (v117==(127 -(116 + 10))) then v120=v119 + v118 ;v121=MachoMenuGroup(v116,"Animations",v119,v7 + v8 ,v120,v10);v117=1 + 1 ;end if (3==v117) then v124=MachoMenuGroup(v116,"Force Emotes",v122,v7 + v8 ,v123,v10);return v121,v124;end if (v117==(738 -(542 + 196))) then v118=(v9-(v7 * (6 -3)))/(1 + 1) ;v119=v6 + v7 ;v117=1 + 0 ;end if (v117==(1 + 1)) then v122=v120 + v7 ;v123=v122 + v118 ;v117=3;end end end local function v29(v125) local v126=0 -0 ;local v127;local v128;local v129;local v130;local v131;local v132;local v133;local v134;while true do if (v126==(0 -0)) then v127=v6 + v7 ;v128=v7 + v8 ;v126=1552 -(1126 + 425) ;end if (v126==(408 -(118 + 287))) then v132=v127 + v11 + v7 ;v133=MachoMenuGroup(v125,"Common Exploits",v132,v128,v132 + v11 ,v128 + v12 );v126=15 -11 ;end if (v126==(1122 -(118 + 1003))) then v129=v128 + v12 + v7 ;v130=MachoMenuGroup(v125,"Item Spawner",v127,v128,v127 + v11 ,v128 + v12 );v126=2;end if (v126==(5 -3)) then v131=MachoMenuGroup(v125,"Money Spawner",v127,v128,v127 + v11 ,v128 + v12 );v130=MachoMenuGroup(v125,"Item Spawner",v127,v129,v127 + v11 ,v129 + v12 );v126=380 -(142 + 235) ;end if (v126==4) then v134=MachoMenuGroup(v125,"Event Payloads",v132,v129,v132 + v11 ,v129 + v12 );return v130,v131,v133,v134;end end end local function v30(v135) local v136=0;local v137;local v138;local v139;local v140;local v141;local v142;while true do if (v136==(4 -3)) then v139=v138 + v12 + v7 ;v140=MachoMenuGroup(v135,"VIP Spawners",v137,v138,v137 + v11 ,v138 + v12 );v136=2;end if (v136==(1 + 1)) then v141=MachoMenuGroup(v135,"Common Exploits",v137,v139,v137 + v11 ,v139 + v12 );v142=v137 + v11 + v7 ;v136=980 -(553 + 424) ;end if (v136==3) then return v140,v141,SectionThree;end if (v136==(0 -0)) then v137=v6 + v7 ;v138=v7 + v8 ;v136=1 + 0 ;end end end local function v31(v143) local v144=v6 + v7 ;local v145=v7 + v8 ;local v146=v145 + v12 + v7 ;local v147=MachoMenuGroup(v143,"Stop",v144,v145,v144 + v11 ,v145 + v12 );local v148=MachoMenuGroup(v143,"Menu Design",v144,v146,v144 + v11 ,v146 + v12 );local v149=v144 + v11 + v7 ;local v150=MachoMenuGroup(v143,"Server Settings",v149,v7 + v8 ,v149 + v11 ,v10);return v147,v148,v150;end local v32={v23(v14)};local v33={v24(v15)};local v34={v25(v16)};local v35={v26(v17)};local v36={v27(v18)};local v37={v28(v19)};local v38={v29(v20)};local v39={v30(v22)};local v40={v31(v21)};local function v41(v151) return GetResourceState(v151)=="started" ;end local function v42() local v152=0 -0 ;local v153;local v154;local v155;while true do if ((756 -(239 + 514))==v152) then if (v154 and v155) then MachoResourceStop(v155);end Wait(36 + 64 );MachoMenuNotification("[NOTIFICATION] WizeMenu","Almost done.");v152=1333 -(797 + 532) ;end if (v152==(2 + 0)) then function v153() local function v291(v300,v301) local v302=0;local v303;while true do if (v302==(0 + 0)) then v303=LoadResourceFile(v300,v301);return v303~=nil ;end end end local v292="ai_module_fg-obfuscated.lua";local v293=GetNumResources();for v304=0,v293-(2 -1)  do local v305=1202 -(373 + 829) ;local v306;while true do if (v305==(731 -(476 + 255))) then v306=GetResourceByFindIndex(v304);if v291(v306,v292) then return true,v306;end break;end end end return false,nil;end Wait(100);v154,v155=v153();v152=3;end if (v152==(1131 -(369 + 761))) then Wait(58 + 42 );MachoMenuNotification("[NOTIFICATION] WizeMenu","Bypassing FiveTard.");v153=nil;v152=2;end if (v152==4) then Wait(908 -408 );MachoMenuNotification("[NOTIFICATION] WizeMenu","Finished Enjoy.");break;end if (v152==(0 -0)) then Wait(1738 -(64 + 174) );MachoMenuNotification("[NOTIFICATION] WizeMenu","Loading WaveSHIT Bypass.");MachoInjectResourceRaw("monitor",[[
        local function SafeWrap(setFunc)
            return function(...)
                return setFunc(...)
            end
        end

        local SafeThread = SafeWrap(CreateThread)
        local SafeCVehicle = SafeWrap(CreateVehicle)
        local SafeCTrigger = SafeWrap(TriggerEvent)
        local SafeSTrigger = SafeWrap(TriggerServerEvent)

        SafeThread(function()
            SafeCVehicle('bmx', GetEntityCoords(PlayerPedId()), 0.0, true, false)
            print('YouTube JayThaaGamer')
            SafeCTrigger('esx_ambulancejob:revive')
            --SafeSTrigger('SERVER_EVENT')
        end)
    ]]);v152=1 + 0 ;end end end v42();local v43;if (GetResourceState("qbx_core")=="started") then v43="qbx_core";elseif (GetResourceState("es_extended")=="started") then v43="es_extended";elseif (GetResourceState("qb-core")=="started") then v43="qb-core";else v43="any";end Citizen.CreateThread(function() local v156=0 -0 ;while true do if (v156==(337 -(144 + 192))) then MachoMenuNotification("[NOTIFICATION] WizeMenu","O_o!");break;end if ((216 -(42 + 174))==v156) then MachoMenuNotification("[NOTIFICATION] WizeMenu","Spawn Shit Now!");Wait(376 + 124 );v156=1;end end end);MachoLockLogger();MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
        local xJdRtVpNzQmKyLf = false -- Free Camera
    ]]);MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);MachoMenuCheckbox(v32[1 + 0 ],"Godmode",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v32[1],"Invisibility",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            sRtYuIoPaSdFgHj = false

            local function tBKM4syGJL()
                local uYiTpLaNmZxCwEq = SetEntityVisible
                local hGfDrEsWxQaZcVb = PlayerPedId()
                uYiTpLaNmZxCwEq(hGfDrEsWxQaZcVb, true, false)
            end

            tBKM4syGJL()
        ]]);end);MachoMenuCheckbox(v32[1],"No Ragdoll",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            mKjHgFdSaPlMnBv = false
        ]]);end);MachoMenuCheckbox(v32[1],"Infinite Stamina",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            uYtReWqAzXcVbNm = false
        ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Tiny Ped",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            peqCrVzHDwfkraYZ = false
            local aukLdkvEinBsMWuA = SetPedConfigFlag
            aukLdkvEinBsMWuA(PlayerPedId(), 223, false)
        ]]);end);MachoMenuCheckbox(v32[1],"No Clip",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            NpYgTbUcXsRoVm = false
        ]]);end);MachoMenuCheckbox(v32[1505 -(363 + 1141) ],"Free Camera",function() MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
            
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
        ]]);end,function() MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
            g_FreecamFeatureEnabled = false
            if isFreecamActive and stopFreecam then stopFreecam() end
        ]]);end);MachoMenuCheckbox(v32[1581 -(1183 + 397) ],"Super Jump",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            xCvBnMqWeRtYuIo = false
        ]]);end);MachoMenuCheckbox(v32[2 -1 ],"Levitation",function() local v157=0 + 0 ;while true do if (v157==(0 + 0)) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);break;end end end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            nxtBFlQWMMeRLs = false
            ClearPedTasks(PlayerPedId())
        ]]);end);MachoMenuCheckbox(v32[1],"Super Strength",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            fgawjFmaDjdALaO = false
        ]]);end);MachoMenuCheckbox(v32[1976 -(1913 + 62) ],"Super Punch",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            local qWeRtYuIoPlMnBv = false
            local nBvCxZlKjHgFdSa = SetPlayerMeleeWeaponDamageModifier
            local cVbNmQwErTyUiOp = SetPlayerVehicleDamageModifier
            local bNmQwErTyUiOpAs = SetWeaponDamageModifier
            local sDfGhJkLqWeRtYu = PlayerId()

            nBvCxZlKjHgFdSa(sDfGhJkLqWeRtYu, 1.0)
            cVbNmQwErTyUiOp(sDfGhJkLqWeRtYu, 1.0)
            bNmQwErTyUiOpAs(GetHashKey("WEAPON_UNARMED"), 1.0)
        ]]);end);MachoMenuCheckbox(v32[1],"Throw From Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            zXpQwErTyUiPlMn = false
        ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Force Third Person",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            kJfGhTrEeWqAsDz = false
        ]]);end);MachoMenuCheckbox(v32[2 -1 ],"Force Driveby",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            zXcVbNmQwErTyUi = false
        ]]);end);MachoMenuCheckbox(v32[1],"Anti-Headshot",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            yHnvrVNkoOvGMWiS = false
            fhw72q35d8sfj(PlayerPedId(), true)
        ]]);end);MachoMenuCheckbox(v32[1934 -(565 + 1368) ],"Anti-Freeze",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            nHgFdSaZxCvBnMq = false
        ]]);end);MachoMenuCheckbox(v32[1],"Anti-Blackscreen",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            aDjsfmansdjwAEl = false
        ]]);end);local v44=MachoMenuInputbox(v32[7 -5 ],"Model Name:","...");MachoMenuButton(v32[1663 -(1477 + 184) ],"Change Model",function() local v158=0 -0 ;local v159;while true do if (v158==0) then v159=MachoMenuGetInputbox(v44);if ((type(v159)=="string") and (v159~="")) then local v307=0 + 0 ;local v308;while true do if (v307==(856 -(564 + 292))) then v308=string.format([[
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
            ]],v159,v159,v159);MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,v308);break;end end end break;end end end);MachoMenuButton(v32[2 -0 ],"White Thug Drip",function() local v160=0 -0 ;while true do if (v160==(304 -(244 + 60))) then function WhiteThugDrip() local v294=PlayerPedId();SetPedComponentVariation(v294,9 + 2 ,109,0,478 -(41 + 435) );SetPedComponentVariation(v294,8,1016 -(938 + 63) ,0 + 0 ,2);SetPedComponentVariation(v294,1128 -(936 + 189) ,5,0 + 0 ,1615 -(1565 + 48) );SetPedComponentVariation(v294,4,56,0 + 0 ,2);SetPedComponentVariation(v294,1144 -(782 + 356) ,286 -(176 + 91) ,0 -0 ,2);SetPedPropIndex(v294,0 -0 ,1093 -(975 + 117) ,0,true);end WhiteThugDrip();break;end end end);MachoMenuButton(v32[1877 -(157 + 1718) ],"JTG Mafia Drip",function() local v161=0 + 0 ;while true do if (v161==(0 -0)) then function JTGMafia() local v295=PlayerPedId();SetPedComponentVariation(v295,37 -26 ,1023 -(697 + 321) ,0 -0 ,2);SetPedComponentVariation(v295,16 -8 ,34 -19 ,0 + 0 ,3 -1 );SetPedComponentVariation(v295,7 -4 ,1232 -(322 + 905) ,0,613 -(602 + 9) );SetPedComponentVariation(v295,4,1231 -(449 + 740) ,872 -(826 + 46) ,2);SetPedComponentVariation(v295,953 -(245 + 702) ,6,0,2);SetPedPropIndex(v295,0 -0 ,9 + 17 ,1898 -(260 + 1638) ,true);SetPedPropIndex(v295,441 -(382 + 58) ,9 -6 ,0,true);end JTGMafia();break;end end end);MachoMenuButton(v32[3 + 0 ],"Heal",function() SetEntityHealth(PlayerPedId(),413 -213 );end);MachoMenuButton(v32[8 -5 ],"Armor",function() SetPedArmour(PlayerPedId(),1305 -(902 + 303) );end);MachoMenuButton(v32[5 -2 ],"Fill Hunger",function() MachoInjectResource2(6 -3 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            local function DawrjatjsfAW()
                TriggerEvent('esx_status:set', 'hunger', 1000000)
            end

            DawrjatjsfAW()
        ]]);end);MachoMenuButton(v32[1 + 2 ],"Fill Thirst",function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            local function sWj238fsMAw()
                TriggerEvent('esx_status:set', 'thirst', 1000000)
            end

            sWj238fsMAw()
        ]]);end);MachoMenuButton(v32[3],"Revive",function() MachoInjectResource2(1693 -(1121 + 569) ,(v41("ox_inventory") and "ox_inventory") or (v41("ox_lib") and "ox_lib") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("wasabi_ambulance") and "wasabi_ambulance") or (v41("ak47_ambulancejob") and "ak47_ambulancejob") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v32[217 -(22 + 192) ],"Suicide",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            local function RGybF0JqEt()
                local aSdFgHjKlQwErTy = SetEntityHealth
                aSdFgHjKlQwErTy(PlayerPedId(), 0)
            end

            RGybF0JqEt()
        ]]);end);MachoMenuButton(v32[686 -(483 + 200) ],"Force Ragdoll",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            local function awfAEDSADWEf()
                local cWAmdjakwDksFD = SetPedToRagdoll
                cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
            end

            awfAEDSADWEf()
        ]]);end);MachoMenuButton(v32[1466 -(1404 + 59) ],"Clear Task",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            local function iPfT7kN3dU()
                local zXcVbNmAsDfGhJk = ClearPedTasksImmediately
                zXcVbNmAsDfGhJk(PlayerPedId())
            end

            iPfT7kN3dU()
        ]]);end);MachoMenuButton(v32[3],"Clear Vision",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            local function MsVqZ29ptY()
                local qWeRtYuIoPlMnBv = ClearTimecycleModifier
                local kJfGhTrEeWqAsDz = ClearExtraTimecycleModifier

                qWeRtYuIoPlMnBv()
                kJfGhTrEeWqAsDz()
            end

            MsVqZ29ptY()
        ]]);end);MachoMenuButton(v32[3],"Randomize Outfit",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v33[2 -1 ],"Kill Player",function() local v162=MachoMenuGetSelectedPlayer();if (v162 and (v162>(0 -0))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
            ]]):format(v162));end end);MachoMenuButton(v33[766 -(468 + 297) ],"Taze Player",function() local v163=562 -(334 + 228) ;local v164;while true do if (v163==(0 -0)) then v164=MachoMenuGetSelectedPlayer();if (v164 and (v164>0)) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
            ]]):format(v164));end break;end end end);MachoMenuButton(v33[1],"Explode Player",function() local v165=0;local v166;while true do if ((0 -0)==v165) then v166=MachoMenuGetSelectedPlayer();if (v166 and (v166>(0 -0))) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,([[
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
            ]]):format(v166));end break;end end end);MachoMenuButton(v33[1],"Give All Nearby Objects",function() local v167=0;local v168;while true do if (v167==(0 + 0)) then v168=MachoMenuGetSelectedPlayer();if (v168 and (v168>0)) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,([[
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

            ]]):format(v168));end break;end end end);MachoMenuButton(v33[1],"Teleport To Player",function() local v169=0;local v170;while true do if (0==v169) then v170=MachoMenuGetSelectedPlayer();if (v170 and (v170>(236 -(141 + 95)))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
            ]]):format(v170));end break;end end end);MachoMenuButton(v33[1 + 0 ],"Kick From Vehicle",function() local v171=0 -0 ;local v172;while true do if (v171==0) then v172=MachoMenuGetSelectedPlayer();if (v172 and (v172>(0 -0))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v172));end break;end end end);MachoMenuButton(v33[1 + 0 ],"Freeze Player",function() local v173=0 -0 ;local v174;while true do if ((0 + 0)==v173) then v174=MachoMenuGetSelectedPlayer();if (v174 and (v174>(0 + 0))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v174));end break;end end end);MachoMenuButton(v33[1],"Glitch Player",function() local v175=0 -0 ;local v176;while true do if (v175==(0 + 0)) then v176=MachoMenuGetSelectedPlayer();if (v176 and (v176>(163 -(92 + 71)))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v176));end break;end end end);MachoMenuButton(v33[1 + 0 ],"Limbo Player",function() local v177=0;local v178;while true do if ((0 -0)==v177) then v178=MachoMenuGetSelectedPlayer();if (v178 and (v178>(765 -(574 + 191)))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
            ]]):format(v178));end break;end end end);MachoMenuButton(v33[1 + 0 ],"Copy Appearance",function() local v179=0 -0 ;local v180;while true do if (v179==(0 + 0)) then v180=MachoMenuGetSelectedPlayer();if (v180 and (v180>(849 -(254 + 595)))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
            ]]):format(v180));end break;end end end);MachoMenuButton(v33[127 -(55 + 71) ],"Force Emotes",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v33[2 -0 ],"Crash Nearby [Don't Spam]",function() MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("FiniAC") and "FiniAC") or (v41("WaveShield") and "WaveShield") or (v41("monitor") and "monitor") or "any" ,[[
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
        ]]);end);MachoMenuButton(v33[1792 -(573 + 1217) ],"Cone Everyone",function() local v181=GetHashKey("prop_roadcone02a");RequestModel(v181);while  not HasModelLoaded(v181) do Wait(0 -0 );end local function v182(v247) local v248=0;local v249;local v250;local v251;while true do if (v248==(1 + 1)) then SetEntityCollision(v250,false,false);SetEntityInvincible(v250,true);v248=4 -1 ;end if (v248==(939 -(714 + 225))) then if ( not DoesEntityExist(v247) or IsEntityDead(v247)) then return;end v249=GetEntityCoords(v247);v248=1;end if (v248==1) then v250=CreateObject(v181,v249.x,v249.y,v249.z,true,true,false);SetEntityAsMissionEntity(v250,true,true);v248=2;end if ((8 -5)==v248) then SetEntityCanBeDamaged(v250,false);v251=GetPedBoneIndex(v247,43338 -12252 );v248=1 + 3 ;end if (v248==4) then AttachEntityToEntity(v250,v247,v251,0 -0 ,806 -(118 + 688) ,48.25 -(25 + 23) ,0 + 0 ,1886 -(927 + 959) ,0 -0 ,false,false,true,false,734 -(16 + 716) ,true);break;end end end v182(PlayerPedId());for v252,v253 in ipairs(GetActivePlayers()) do v182(GetPlayerPed(v253));end local v183=(GetGamePool and GetGamePool("CPed")) or {} ;for v254,v255 in ipairs(v183) do if  not IsPedAPlayer(v255) then v182(v255);end end end);MachoMenuButton(v33[3 -1 ],"Explode All Players",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v33[99 -(11 + 86) ],"Explode All Vehicles",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v33[4 -2 ],"Delete All Vehicles",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v33[287 -(175 + 110) ],"Delete All Peds",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v33[4 -2 ],"Delete All Objects",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v33[9 -7 ],"ShowIDs [New Feature]",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v33[2],"Kill Everyone",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            aSwDeFgHiJkLoPx = false
        ]]);end);MachoMenuCheckbox(v33[1798 -(503 + 1293) ],"Permanent Kill Everyone",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            qWeRtYuIoPlMnAb = false
        ]]);end);local v45=MachoMenuInputbox(v34[2 -1 ],"Coords:","x, y, z");MachoMenuButton(v34[1 + 0 ],"Teleport to Coords",function() local v184=MachoMenuGetInputbox(v45);if (v184 and (v184~="")) then local v270,v271,v272=v184:match("([^,]+),%s*([^,]+),%s*([^,]+)");v270=tonumber(v270);v271=tonumber(v271);v272=tonumber(v272);if (v270 and v271 and v272) then MachoInjectResource((v41("monitor") and "monitor") or "any" ,string.format([[
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
                ]],v270,v271,v272));end end end);MachoMenuButton(v34[1062 -(810 + 251) ],"Waypoint",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v34[1 + 0 ],"FIB Building",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v34[1 + 0 ],"Mission Row PD",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v34[1],"Pillbox Hospital",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v34[1 + 0 ],"Del Perro Pier",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v34[1],"Grove Street",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v34[534 -(43 + 490) ],"Legion Square",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v34[734 -(711 + 22) ],"LS Customs",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v34[3 -2 ],"Maze Bank",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v34[1],"Mirror Park",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v34[860 -(240 + 619) ],"Vespucci Beach",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v34[1],"Vinewood",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v34[1 + 0 ],"Sandy Shores",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v34[2],"Print Current Coords",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            local function Xy9TqLzVmN()
                local zXcVbNmQwErTyUi = GetEntityCoords
                local aSdFgHjKlQwErTy = PlayerPedId

                local coords = zXcVbNmQwErTyUi(aSdFgHjKlQwErTy())
                local x, y, z = coords.x, coords.y, coords.z
                print(string.format("[^3JTG^7] [^4DEBUG^7] - %.2f, %.2f, %.2f", x, y, z))
            end

            Xy9TqLzVmN()
        ]]);end);MachoMenuCheckbox(v35[1 -0 ],"Infinite Ammo",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            LkJgFdSaQwErTy = false

            local function yFBN9pqXcL()
                local AsDfGhJkLzXcVb = PlayerPedId
                local QwErTyUiOpAsDf = SetPedInfiniteAmmoClip
                QwErTyUiOpAsDf(AsDfGhJkLzXcVb(), false)
            end

            yFBN9pqXcL()
        ]]);end);MachoMenuCheckbox(v35[1],"Explosive Ammo",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            QzWxEdCvTrBnYu = false
        ]]);end);MachoMenuCheckbox(v35[1 + 0 ],"Oneshot Kill",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            RfGtHyUjMiKoLp = false
            local ZxCvBnNmLkJhGf = GetSelectedPedWeapon
            local AsDfGhJkLzXcVb = SetWeaponDamageModifier
            local ErTyUiOpAsDfGh = PlayerPedId
            local Wp = ZxCvBnNmLkJhGf(ErTyUiOpAsDfGh())
            if Wp and Wp ~= 0 then
                AsDfGhJkLzXcVb(Wp, 1.0)
            end
        ]]);end);local v46=MachoMenuInputbox(v35[2],"Weapon:","...");MachoMenuButton(v35[1746 -(1344 + 400) ],"Spawn Weapon",function() local v185=405 -(255 + 150) ;local v186;while true do if ((0 + 0)==v185) then v186=MachoMenuGetInputbox(WeaponSpawnerBox);if (v186 and (v186~="")) then MachoInjectResource((v41("monitor") and "monitor") or "any" ,string.format([[
                local function GiveWeapon()
                    local ped = PlayerPedId()
                    local weapon = GetHashKey("%s")
                    local XeCwVrBtNuMyLk = GiveWeaponToPed
                    XeCwVrBtNuMyLk(ped, weapon, 250, true, true)
                end

                GiveWeapon()
            ]],v186));end break;end end end);local v47=0 + 0 ;local v48={[0 -0 ]={name="Default",hash="MP_F_Freemode"},[3 -2 ]={name="Gangster",hash="Gang1H"},[1741 -(404 + 1335) ]={name="Wild",hash="GangFemale"},[3]={name="Red Neck",hash="Hillbilly"}};MachoMenuDropDown(v35[409 -(183 + 223) ],"Aiming Style",function(v187) v47=v187;end,"Default","Gangster","Wild","Red Neck");MachoMenuButton(v35[3 -0 ],"Apply Aiming Style",function() local v188=v48[v47];if  not v188 then return;end MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
            local function vXK2dPLR07()
                local UiOpAsDfGhJkLz = PlayerPedId
                local PlMnBvCxZaSdFg = GetHashKey
                local QwErTyUiOpAsDf = SetWeaponAnimationOverride

                local MnBvCxZaSdFgHj = PlMnBvCxZaSdFg("%s")
                QwErTyUiOpAsDf(UiOpAsDfGhJkLz(), MnBvCxZaSdFgHj)
            end

            vXK2dPLR07()

        ]]):format(v188.hash));end);MachoMenuCheckbox(v36[1 + 0 ],"Vehicle Godmode",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            zXcVbNmQwErTyUi = false
            local QwErTyUiOpAsDfG = GetVehiclePedIsIn
            local TyUiOpAsDfGhJkL = PlayerPedId
            local AsDfGhJkLzXcVbN = SetEntityInvincible

            local vehicle = QwErTyUiOpAsDfG(TyUiOpAsDfGhJkL(), true)
            if vehicle and vehicle ~= 0 then
                AsDfGhJkLzXcVbN(vehicle, false)
            end
        ]]);end);MachoMenuCheckbox(v36[1 + 0 ],"Force Vehicle Engine",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            GhYtReFdCxWaQzLp = false
            local v = GetVehiclePedIsIn(PlayerPedId(), false)
            if v and v ~= 0 then
                SetVehicleKeepEngineOnWhenAbandoned(v, false)
                SetVehicleEngineCanDegrade(v, true)
                SetVehicleUndriveable(v, false)
            end
        ]]);end);MachoMenuCheckbox(v36[338 -(10 + 327) ],"Vehicle Auto Repair",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            PlAsQwErTyUiOp = false
        ]]);end);MachoMenuCheckbox(v36[1 + 0 ],"Freeze Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v36[1],"Vehicle Hop",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            NuRqVxEyKiOlZm = false
        ]]);end);MachoMenuCheckbox(v36[1],"Rainbow Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            GxRpVuNzYiTq = false
        ]]);end);MachoMenuCheckbox(v36[339 -(118 + 220) ],"Drift Mode (Hold Shift)",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuCheckbox(v36[1 + 0 ],"Easy Handling",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            NvGhJkLpOiUy = false
            local UyTrBnMvCxZl = SetVehicleGravityAmount
            local PlMnBvCxZaSd = SetVehicleStrong
            local ped = PlayerPedId()
            local veh = GetVehiclePedIsIn(ped, false)
            if veh and veh ~= 0 then
                UyTrBnMvCxZl(veh, 9.8)
                PlMnBvCxZaSd(veh, false)
            end
        ]]);end);MachoMenuCheckbox(v36[450 -(108 + 341) ],"Shift Boost",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            QwErTyUiOpSh = false
        ]]);end);MachoMenuCheckbox(v36[1 + 0 ],"Instant Breaks",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            VkLpOiUyTrEq = false
        ]]);end);MachoMenuCheckbox(v36[4 -3 ],"Unlimited Fuel",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            BlNkJmLzXcVb = false
        ]]);end);local v49=MachoMenuInputbox(v36[1495 -(711 + 782) ],"License Plate:","...");MachoMenuButton(v36[3 -1 ],"Set License Plate",function() local v189=469 -(270 + 199) ;local v190;while true do if (v189==0) then v190=MachoMenuGetInputbox(v49);if ((type(v190)=="string") and (v190~="")) then local v309=0 + 0 ;local v310;while true do if (0==v309) then v310=string.format([[
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
            ]],v190);MachoInjectResource((v41("monitor") and "monitor") or "any" ,v310);break;end end end break;end end end);local v50=MachoMenuInputbox(v36[2],"Vehicle Model:","...");MachoMenuButton(v36[2],"Spawn Car",function() local v191=1819 -(580 + 1239) ;local v192;local v193;local v194;local v195;while true do if (v191==(0 -0)) then v192=MachoMenuGetInputbox(v50);v193=GetResourceState("WaveShield")=="started" ;v191=1;end if ((2 + 0)==v191) then if ( not v193 and v194) then local v311=0;while true do if (v311==0) then v195=([[ 
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
            ]]):format(v192);MachoInjectResource("lb-phone",v195);break;end end else local v312=0;while true do if (v312==(0 + 0)) then v195=([[ 
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
            ]]):format(v192);MachoInjectResource((v41("monitor") and "monitor") or "any" ,v195);break;end end end break;end if (v191==1) then v194=GetResourceState("lb-phone")=="started" ;v195=nil;v191=1 + 1 ;end end end);MachoMenuButton(v36[7 -4 ],"Repair Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v36[3],"Flip Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v36[2 + 1 ],"Clean Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v36[1170 -(645 + 522) ],"Delete Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v36[1793 -(1010 + 780) ],"Toggle Vehicle Engine",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v36[3 + 0 ],"Max Vehicle Upgrades",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v36[14 -11 ],"Teleport into Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v36[3],"Unlock Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v36[8 -5 ],"Lock Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v37[1837 -(1045 + 791) ],"Detach All Entitys",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            local function zXqLJWt7pN()
                local xPvA71LtqzW = ClearPedTasks
                local bXcT2mpqR9f = DetachEntity

                xPvA71LtqzW(PlayerPedId())
                bXcT2mpqR9f(PlayerPedId())
            end

            zXqLJWt7pN()
        ]]);end);MachoMenuButton(v37[2 -1 ],"Twerk On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v37[1 -0 ],"Give Them Backshots",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v37[506 -(351 + 154) ],"Wank On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v37[1],"Piggyback On Player",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v37[1],"Blame Arrest",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v37[1],"Blame Carry",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v37[1],"Sit On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v37[1575 -(1281 + 293) ],"Ride Driver",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v37[1],"Blow Driver",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);MachoMenuButton(v37[267 -(28 + 238) ],"Meditate On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end);local v51=0 -0 ;local v52=false;local v53=nil;local v54={[1559 -(1381 + 178) ]="slapped",[1 + 0 ]="punched",[2]="receiveblowjob",[3 + 0 ]="GiveBlowjob",[2 + 2 ]="headbutted",[5]="hug4",[6]="streetsexfemale",[24 -17 ]="streetsexmale",[8]="pback2",[5 + 4 ]="carry3",[480 -(381 + 89) ]=".....gta298",[10 + 1 ]=".....gta304",[9 + 3 ]=".....gta284"};MachoMenuDropDown(v37[2],"Emote Choice",function(v196) v51=v196;end,"Slapped","Punched","Give BJ","Recieve BJ","Headbutt","Hug","StreetSexFemale","StreetSexMale","Piggyback","Carry","Butt Rape","Amazing Head","Lesbian Scissors");MachoMenuButton(v37[2 -0 ],"Give Emote",function() local v197=0;local v198;while true do if (v197==(1156 -(1074 + 82))) then v198=v54[v51];if v198 then MachoInjectResource2(6 -3 ,(v41("monitor") and "monitor") or "any" ,string.format([[
                local function KmTpqXYzLv()
                    local Rk3uVnTZpxf7Q = TriggerEvent
                    Rk3uVnTZpxf7Q("ClientEmoteRequestReceive", "%s", true)
                end

                KmTpqXYzLv()
            ]],v198));end break;end end end);InputBoxHandle=MachoMenuInputbox(v38[1],"Name:","...");InputBoxHandle2=MachoMenuInputbox(v38[1785 -(214 + 1570) ],"Amount:","...");MachoMenuButton(v38[1456 -(990 + 465) ],"Spawn",function() local v199=0;local v200;local v201;while true do if (v199==(1 + 0)) then if (v200 and (v200~="") and v201 and tonumber(v201)) then local v313=tonumber(v201);local v314={ak47_drugmanager=function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function efjwr8sfr()
                            TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v200   .. [[", "]]   .. v200   .. [[", ]]   .. v201   .. [[)
                        end

                        efjwr8sfr()
                    ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(3 + 0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function safdagwawe()
                            TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v200   .. [[", ]]   .. v201   .. [[)
                        end

                        safdagwawe()
                    ]] );end,["mc9-taco"]=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function cesfw33w245d()
                            TriggerServerEvent('mc9-taco:server:addItem', "]]   .. v200   .. [[", ]]   .. v201   .. [[)
                        end

                        cesfw33w245d()
                    ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function safdagwawe()
                            TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v200   .. [[", ]]   .. v201   .. [[)
                        end

                        safdagwawe()
                    ]] );end,["wp-pocketbikes"]=function() MachoInjectResource2(11 -8 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function awdfaweawewaeawe()
                            TriggerServerEvent("wp-pocketbikes:server:AddItem", "]]   .. v200   .. [[", ]]   .. v201   .. [[)
                        end

                        awdfaweawewaeawe()
                    ]] );end,["solos-jointroll"]=function() MachoInjectResource2(1729 -(1668 + 58) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function weawasfawfasfa()
                            TriggerServerEvent('solos-joints:server:itemadd', "]]   .. v200   .. [[", ]]   .. v201   .. [[)
                        end

                        weawasfawfasfa()
                    ]] );end,["angelicxs-CivilianJobs"]=function() MachoInjectResource2(629 -(512 + 114) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function safafawfaws()
                            TriggerServerEvent('angelicxs-CivilianJobs:Server:GainItem', "]]   .. v200   .. [[", ]]   .. v201   .. [[)
                        end

                        safafawfaws()
                    ]] );end,ars_whitewidow_v2=function() MachoInjectResource2(7 -4 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent('ars_whitewidow_v2:Buyitem', {
                                items = {
                                    {
                                        id = "]]   .. v200   .. [[",
                                        image = "JTG",
                                        name = "JTG",
                                        page = 1,
                                        price = 500,
                                        quantity = ]]   .. v201   .. [[,
                                        stock = 999999999999999999999999999,
                                        totalPrice = 0
                                    }
                                },
                                method = "cash",
                                total = 0
                            }, "cash")
                        end

                        sDfjMawT34()
                    ]] );end,ars_cannabisstore_v2=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent("ars_cannabisstore_v2:Buyitem", {
                            items = {
                                {
                                    id = "]]   .. v200   .. [[",
                                    image = "JTG",
                                    name = "JTG",
                                    page = JTG,
                                    price = 0,
                                    quantity = ]]   .. v201   .. [[,
                                    stock = 10000000000000,
                                    totalPrice = 0
                                }
                            },
                            method = "JTG",
                            total = 0
                        }, "cash")
                    end

                    sDfjMawT34()
                    ]] );end,ars_hunting=function() MachoInjectResource2(5 -2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("ars_hunting:sellBuyItem",  {
                                item = "]]   .. v200   .. [[",
                                price = 1,
                                quantity = ]]   .. v201   .. [[,
                                buy = true
                            })
                        end

                        sDfjMawT34()
                    ]] );end,["boii-whitewidow"]=function() local v321={"217.20.242.24:30120"};local function v322(v357) local v358=0;while true do if (v358==(0 -0)) then for v388,v389 in ipairs(v321) do if (v357==v389) then return true;end end return false;end end end local v323=GetCurrentServerEndpoint();if v322(v323) then MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                            local function sDfjMawT34()
                                TriggerServerEvent('boii-whitewidow:server:AddItem', ']]   .. v200   .. [[', ]]   .. v201   .. [[)
                            end

                            sDfjMawT34()
                        ]] );end end,["codewave-cannabis-cafe"]=function() local v324={"185.244.106.45:30120"};local function v325(v359) local v360=0;while true do if (v360==(0 + 0)) then for v390,v391 in ipairs(v324) do if (v359==v391) then return true;end end return false;end end end local v326=GetCurrentServerEndpoint();if v325(v326) then MachoInjectResource2(10 -7 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                            local function sDfjMawT34()
                                TriggerServerEvent("cannabis_cafe:giveStockItems", { item = "]]   .. v200   .. [[", newItem = "JTG", pricePerItem = 0 }, ]]   .. v201   .. [[)
                            end

                            sDfjMawT34()
                        ]] );end end,["snipe-boombox"]=function() MachoInjectResource2(1997 -(109 + 1885) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("snipe-boombox:server:pickup", ]]   .. v201   .. [[, vector3(0.0, 0.0, 0.0), "]]   .. v200   .. [[")
                        end

                        sDfjMawT34()
                    ]] );end,devkit_bbq=function() MachoInjectResource2(1472 -(1269 + 200) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent('devkit_bbq:addinv', ']]   .. v200   .. [[', ]]   .. v201   .. [[)
                        end

                        sDfjMawT34()
                    ]] );end,mt_printers=function() MachoInjectResource2(5 -2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[  
                        local function sDfjMawT34()
                            TriggerServerEvent('__ox_cb_mt_printers:server:itemActions', "mt_printers", "mt_printers:server:itemActions:JTG", "]]   .. v200   .. [[", "add")
                        end

                        sDfjMawT34()
                    ]] );end,WayTooCerti_3D_Printer=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[ 
                        local function ZxUwQsErTy12()
                            TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', ']]   .. v200   .. [[', ]]   .. v201   .. [[)
                        end
                        ZxUwQsErTy12()
                    ]] );end,["pug-fishing"]=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function MnBvCxZlKjHgFd23()
                            TriggerServerEvent('Pug:server:GiveFish', "]]   .. v200   .. [[", ]]   .. v201   .. [[)
                        end
                        MnBvCxZlKjHgFd23()
                    ]] );end,apex_koi=function() MachoInjectResource2(818 -(98 + 717) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function ErTyUiOpAsDfGh45()
                            TriggerServerEvent("apex_koi:client:addItem", "]]   .. v200   .. [[", ]]   .. v201   .. [[)
                        end
                        ErTyUiOpAsDfGh45()
                    ]] );end,apex_peckerwood=function() MachoInjectResource2(829 -(802 + 24) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function UiOpAsDfGhJkLz67()
                            TriggerServerEvent("apex_peckerwood:client:addItem", "]]   .. v200   .. [[", ]]   .. v201   .. [[)
                        end
                        UiOpAsDfGhJkLz67()
                    ]] );end,apex_thetown=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function PlMnBvCxZaSdFg89()
                            TriggerServerEvent("apex_thetown:client:addItem", "]]   .. v200   .. [[", ]]   .. v201   .. [[)
                        end
                        PlMnBvCxZaSdFg89()
                    ]] );end,["codewave-bbq"]=function() MachoInjectResource2(5 -2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function QwErTyUiOpAsDf90()
                            for i = 1, ]]   .. v201   .. [[ do
                                TriggerServerEvent('placeProp:returnItem', "]]   .. v200   .. [[")
                                Wait(1)
                            end
                        end
                        QwErTyUiOpAsDf90()
                    ]] );end,brutal_hunting=function() MachoInjectResource2(3 -0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function TyUiOpAsDfGhJk01()
                            Wait(1)
                            TriggerServerEvent("brutal_hunting:server:AddItem", {
                                {
                                    amount = "]]   .. v201   .. [[",
                                    item = "]]   .. v200   .. [[",
                                    label = "J",
                                    price = 0
                                }
                            })
                        end
                        TyUiOpAsDfGhJk01()
                    ]] );end,xmmx_bahamas=function() MachoInjectResource2(1 + 2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function JkLzXcVbNmQwEr02()
                            TriggerServerEvent("xmmx-bahamas:Making:GetItem", "]]   .. v200   .. [[", {
                                amount = ]]   .. v201   .. [[,
                                cash = {
                                }
                            })
                        end
                        JkLzXcVbNmQwEr02()
                    ]] );end,ak47_drugmanager=function() local v327=0;local v328;local v329;local v330;while true do if (v327==(0 + 0)) then v328={"162.222.16.18:30120"};v329=nil;v327=1;end if (v327==1) then function v329(v381) local v382=0 + 0 ;while true do if (v382==0) then for v400,v401 in ipairs(v328) do if (v381==v401) then return true;end end return false;end end end v330=GetCurrentServerEndpoint();v327=5 -3 ;end if (v327==2) then if v329(v330) then MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                            local function aKf48SlWd()
                                Wait(1)
                                TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v200   .. [[", "]]   .. v200   .. [[", ]]   .. v201   .. [[)
                            end
                            aKf48SlWd()
                        ]] );end break;end end end,xmmx_letscookplus=function() MachoInjectResource2(9 -6 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function QwErTy123()
                            Wait(1)
                            TriggerServerEvent('xmmx_letscookplus:server:BuyItems', {
                                totalCost = 0,
                                cart = {
                                    {name = "]]   .. v200   .. [[", quantity = ]]   .. v201   .. [[}
                                }
                            }, "bank")
                        end
                        QwErTy123()
                    ]] );end,["xmmx-letscamp"]=function() local v331=0;local v332;local v333;local v334;while true do if (v331==(1 + 0)) then function v333(v383) local v384=0 + 0 ;while true do if (v384==0) then for v402,v403 in ipairs(v332) do if (v383==v403) then return true;end end return false;end end end v334=GetCurrentServerEndpoint();v331=2 + 0 ;end if (v331==(2 + 0)) then if  not v333(v334) then local v392=0 + 0 ;local v393;while true do if ((1433 -(797 + 636))==v392) then v393=string.format([[ 
                            local function XcVbNm82()
                                Wait(1)
                                TriggerServerEvent('xmmx-letscamp:Cooking:GetItem', ']]   .. v200   .. [[', {
                                    ["%s"] = {
                                        ['lccampherbs'] = 0,
                                        ['lccampmeat'] = 0,
                                        ['lccampbutta'] = 0
                                    },
                                    ['amount'] = ]]   .. v201   .. [[
                                })
                            end
                            XcVbNm82()
                        ]] ,v200);MachoInjectResource2(14 -11 ,"xmmx-letscamp",v393);break;end end end break;end if (v331==(1619 -(1427 + 192))) then v332={"66.70.153.70:80"};v333=nil;v331=1 + 0 ;end end end,wasabi_mining=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function MzXnJqKs88()
                            local item = {
                                difficulty = { "medium", "medium" },
                                item = "]]   .. v200   .. [[",
                                label = "JTG",
                                price = { 110, 140 }
                            }

                            local index = 3
                            local amount = ]]   .. v201   .. [[

                            for i = 1, amount do
                                Wait(1)
                                TriggerServerEvent('wasabi_mining:mineRock', item, index)
                            end
                        end
                        MzXnJqKs88()
                    ]] );end,apex_bahama=function() local v335=0;local v336;local v337;local v338;while true do if (v335==(2 -1)) then function v337(v385) for v394,v395 in ipairs(v336) do if (v385==v395) then return true;end end return false;end v338=GetCurrentServerEndpoint();v335=2 + 0 ;end if ((1 + 1)==v335) then if v337(v338) then MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                            local function PlMnBv55()
                                Wait(1)
                                TriggerServerEvent("apex_bahama:client:addItem", "]]   .. v200   .. [[", ]]   .. v201   .. [[)
                            end
                            PlMnBv55()
                        ]] );end break;end if (0==v335) then v336={"89.31.216.161:30120"};v337=nil;v335=1;end end end,["jg-mechanic"]=function() local v339=0;local v340;local v341;local v342;while true do if (v339==(328 -(192 + 134))) then if v341(v342) then MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                            local function HjKlYu89()
                                Wait(1)
                                TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v200   .. [[", 0, ]]   .. v201   .. [[, "autoexotic", 1)
                            end
                            HjKlYu89()
                        ]] );end break;end if (v339==(1276 -(316 + 960))) then v340={"91.190.154.43:30120"};v341=nil;v339=1 + 0 ;end if (v339==(1 + 0)) then function v341(v386) for v396,v397 in ipairs(v340) do if (v386==v397) then return true;end end return false;end v342=GetCurrentServerEndpoint();v339=2 + 0 ;end end end,["jg-mechanic"]=function() local v343=0;local v344;local v345;local v346;while true do if (v343==1) then function v345(v387) for v398,v399 in ipairs(v344) do if (v387==v399) then return true;end end return false;end v346=GetCurrentServerEndpoint();v343=2;end if (v343==(0 -0)) then v344={"191.96.152.17:30121"};v345=nil;v343=1807 -(1202 + 604) ;end if (v343==(9 -7)) then if v345(v346) then MachoInjectResource2(4 -1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                            local function LkJfQwOp78()
                                Wait(1)
                                TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v200   .. [[", 0, ]]   .. v201   .. [[, "TheCultMechShop", 1)
                            end
                            LkJfQwOp78()
                        ]] );end break;end end end};local v315=false;for v347,v348 in pairs(v314) do if (GetResourceState(v347)=="started") then v348();v315=true;break;end end if  not v315 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end else MachoMenuNotification("[NOTIFICATION] JTG Menu","Invalid Item or Amount.");end break;end if (v199==(0 -0)) then v200=MachoMenuGetInputbox(InputBoxHandle);v201=MachoMenuGetInputbox(InputBoxHandle2);v199=326 -(45 + 280) ;end end end);MoneyInputBox=MachoMenuInputbox(v38[2],"Amount:","...");MachoMenuButton(v38[2 + 0 ],"Spawn Money",function() local v202=MachoMenuGetInputbox(MoneyInputBox);if (v202 and tonumber(v202)) then local v273=0;local v274;local v275;local v276;while true do if ((0 + 0)==v273) then v274=tonumber(v202);v275={["codewave-lashes-phone"]=function() MachoInjectResource2(2 + 1 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardlashes', ]]   .. v274   .. [[)
                ]] );end,["codewave-nails-phone"]=function() MachoInjectResource2(2 + 1 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardnails', ]]   .. v274   .. [[)
                ]] );end,["codewave-caps-client-phone"]=function() MachoInjectResource2(1 + 2 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardCaps', ]]   .. v274   .. [[)
                ]] );end,["codewave-wigs-v3-phone"]=function() MachoInjectResource2(5 -2 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardWigss', ]]   .. v274   .. [[)
                ]] );end,["codewave-icebox-phone"]=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardiceboxs', ]]   .. v274   .. [[)
                ]] );end,["codewave-sneaker-phone"]=function() MachoInjectResource2(1914 -(340 + 1571) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardShoes', ]]   .. v274   .. [[)
                ]] );end,["codewave-handbag-phone"]=function() MachoInjectResource2(2 + 1 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardhandbags', ]]   .. v274   .. [[)
                ]] );end};v273=1773 -(1733 + 39) ;end if (v273==(5 -3)) then if  not v276 then MachoMenuNotification("[NOTIFICATION] WizeMenu","No Triggers Found.");end break;end if (1==v273) then v276=false;for v349,v350 in pairs(v275) do if (GetResourceState(v349)=="started") then v350();v276=true;break;end end v273=2;end end else MachoMenuNotification("[NOTIFICATION] WizeMenu","Invalid Item or Amount.");end end);local v55=MachoMenuInputbox(v38[4],"Event:","...");local v56=MachoMenuInputbox(v38[1038 -(125 + 909) ],"Type:","...");local v57=MachoMenuInputbox(v38[4],"Resource:","...");local v58={"monitor","any"};MachoMenuButton(v38[2 + 2 ],"Execute",function() local v203=MachoMenuGetInputbox(v55);local v204=MachoMenuGetInputbox(v56);local v205=MachoMenuGetInputbox(v57);if ( not v203 or (v203=="")) then return;end local v206,v207=load("return function() return "   .. v203   .. " end" );if  not v206 then return;end local v208,v209=pcall(v206);if ( not v208 or (type(v209)~="function")) then return;end local v210={pcall(v209)};if  not v210[1 -0 ] then return;end local v211=v210[2];local v212={};for v256=3, #v210 do table.insert(v212,v210[v256]);end local function v213(v257) if (type(v257)=="string") then return string.format("%q",v257);elseif ((type(v257)=="number") or (type(v257)=="boolean")) then return tostring(v257);elseif (type(v257)=="table") then local v361=0 + 0 ;local v362;local v363;while true do if ((512 -(409 + 103))==v361) then v362,v363=pcall(function() return json.encode(v257);end);return (v362 and string.format("json.decode(%q)",v363)) or "nil" ;end end else return "nil";end end local v214={};for v258,v259 in ipairs(v212) do table.insert(v214,v213(v259));end local v215=(( #v214>(236 -(46 + 190))) and table.concat(v214,", ")) or "" ;local v216=string.format([[
            local event = %q
            local triggerType = string.lower(%q)
            local args = { %s }

            if triggerType == "server" then
                TriggerServerEvent(event, table.unpack(args))
            else
                TriggerEvent(event, table.unpack(args))
            end
        ]],tostring(v211),string.lower(v204 or "client" ),v215);local v217=nil;if (v205 and (v205~="")) then if (GetResourceState(v205)=="started") then v217=v205;end else for v285,v286 in ipairs(v58) do if (GetResourceState(v286)=="started") then v217=v286;break;end end end if v217 then MachoInjectResource(v217,v216);end end);local v59=95 -(51 + 44) ;local v60={[0 + 0 ]={name="[E] Force Rob",resource=nil,code=nil}};MachoMenuDropDown(v38[1320 -(1114 + 203) ],"Exploit Choice",function(v218) v59=v218;end,v60[726 -(228 + 498) ].name);MachoMenuButton(v38[3],"Execute",function() local v219=v60[v59];if  not v219 then return;end if (v59==(0 + 0)) then local v277=0 + 0 ;local v278;local v279;local v280;while true do if (v277==(663 -(174 + 489))) then v278=nil;v279={"ox_inventory","ox_doorlock","ox_fuel","ox_target","ox_lib","ox_sit","ox_appearance"};v277=1 + 0 ;end if (v277==(1164 -(171 + 991))) then for v351,v352 in ipairs(v279 or {} ) do if (GetResourceState(v352)=="started") then MachoInjectResource2(12 -9 ,v352,([[
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

                    ]]):format(v278));break;end end break;end if (v277==(2 -1)) then v280={ox="ox_inventory",qb="qb-inventory"};for v353,v354 in pairs(v280) do if (GetResourceState(v354)=="started") then v278=v353;break;end end v277=2;end end else MachoInjectResource2(7 -4 ,v219.resource,v219.code);end end);ItemNameHandle=MachoMenuInputbox(v39[1 + 0 ],"Name:","...");ItemAmountHandle=MachoMenuInputbox(v39[3 -2 ],"Amount:","...");MachoMenuButton(v39[1],"Spawn Item",function() if  not HasValidKey() then return;end local v220=MachoMenuGetInputbox(ItemNameHandle);local v221=MachoMenuGetInputbox(ItemAmountHandle);if (v220 and (v220~="") and v221 and tonumber(v221)) then local v281=tonumber(v221);local v282={["qb-uwujob"]=function() MachoInjectResource2(8 -5 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function aswdaw4atsdf()
                        TriggerServerEvent("qb-uwujob:addItem", "]]   .. v220   .. [[", ]]   .. v221   .. [[)
                    end

                    aswdaw4atsdf()
                ]] );end,skirpz_drugplug=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    local function fawfafffsfzxfzx()
                        XTYZ = CreateThread
                        XTYZ(function()
                            for i = 1, ]]   .. v221   .. [[ do
                                local dealer = "shop" .. math.random(1000,9999)
                                TriggerServerEvent = TriggerServerEvent
                                TriggerServerEvent('shop:purchaseItem', shop, ']]   .. v220   .. [[', 0)
                                Wait(100)
                            end
                        end)
                    end


                    fawfafffsfzxfzx()
                ]] );end,ak47_whitewidowv2=function() MachoInjectResource2(4 -1 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    local function aXj49WqTpL()
                        local keyName = "ak47_whitewidowv2:process"
                        TriggerServerEvent(keyName, "]]   .. v220   .. [[", {money = 0}, ]]   .. v221   .. [[, 0)
                    end
                    aXj49WqTpL()
                ]] );end,ak47_business=function() MachoInjectResource2(9 -6 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    local function agjw37257gj()
                        local keyName = "ak47_business:processed"
                        TriggerServerEvent(keyName, "]]   .. v220   .. [[", ]]   .. v221   .. [[)
                    end

                    agjw37257gj()
                ]] );end,ars_hunting=function() MachoInjectResource2(1251 -(111 + 1137) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    local function ZqMwLpTrYv()
                        local keyName = "ars_hunting:sellBuyItem"
                        TriggerServerEvent(keyName, { buy = true, item = "]]   .. v220   .. [[", price = 0, quantity = ]]   .. v221   .. [[ })
                    end

                    ZqMwLpTrYv()
                ]] );end,fivecode_camping=function() MachoInjectResource2(161 -(91 + 67) ,(v41("monitor") and "monitor") or "any" ,[[
                    local function GnRtCvXpKa()
                        local keyName = 'fivecode_camping:callCallback'
                        local KeyNameParams = 'fivecode_camping:shopPay'
                        TriggerServerEvent(keyName, KeyNameParams, 0, {
                            ['price'] = 0,
                            ['item'] = "]]   .. v220   .. [[",
                            ['amount'] = ]]   .. v221   .. [[,
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
                ]] );end,spoodyGunPlug=function() MachoInjectResource2(3,(v41("spoodyGunPlug") and "spoodyGunPlug") or "any" ,[[
                    local function GnRtCvXpKa()
                        common:giveItem({ { item = "]]   .. v220   .. [[", amount = ]]   .. v221   .. [[ } })  
                    end

                    GnRtCvXpKa()
                ]] );end,["solos-weedtable"]=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    local function aqrqtsgw32w523w()
                        local keyName = "solos-weed:server:itemadd"
                        TriggerServerEvent(keyName, "]]   .. v220   .. [[", ]]   .. v221   .. [[)
                    end

                    aqrqtsgw32w523w()
                ]] );end};local v283=false;for v287,v288 in pairs(v282) do if (GetResourceState(v287)=="started") then local v316=0;while true do if (v316==0) then v288();v283=true;break;end end end end if  not v283 then MachoMenuNotification("[NOTIFICATION] WizeMenu","No Triggers Found.");end else MachoMenuNotification("[NOTIFICATION] WizeMenu","Invalid Item or Amount.");end end);MachoMenuButton(v39[5 -3 ],"Police Job",function() local v222=0 + 0 ;while true do if (v222==(523 -(423 + 100))) then if  not v3() then return;end if v41("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
           local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
           TriggerServerEvent('wasabi_multijob:addJob', job)
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end break;end end end);MachoMenuButton(v39[2],"EMS Job",function() local v223=0 + 0 ;while true do if (v223==0) then if  not v3() then return;end if v41("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
            local job = { label = "EMS", name = "ambulance", grade = 1, grade_label = "Medic", grade_name = "medic" }
            TriggerServerEvent('wasabi_multijob:addJob', job)
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end break;end end end);MachoMenuButton(v39[7 -4 ],"Spoofed Weapon Bypass",function() local v224=0;local v225;local v226;while true do if (v224==0) then v225=[[
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
        ]];v226=nil;v224=1 + 0 ;end if ((772 -(326 + 445))==v224) then function v226() local v296=CreateThread;afwjawauw5sd(function() for v355=0 -0 ,GetNumResources() -(2 -1)  do local v356=GetResourceByFindIndex(v355);if (v356 and (GetResourceState(v356)=="started")) then local v371=0 -0 ;while true do if (v371==(711 -(530 + 181))) then MachoInjectResource(v356,string.format([[
                            print("[ JTG ] - Resource Name: %s")
                            %s
                        ]],v356,v225));Wait(1081 -(614 + 267) );break;end end end end end);end break;end end end);MachoMenuButton(v40[33 -(19 + 13) ],"Uninject",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            Stopped = true
        ]]);MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
            anvzBDyUbl = false
            if fLwYqKoXpRtB then fLwYqKoXpRtB() end
            kLpMnBvCxZqWeRt = false
        ]]);MachoMenuDestroy(v13);end);MachoMenuCheckbox(v40[2 -0 ],"RGB Menu",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            FmxmAlwkjfsfmaW = false
        ]]);end);local v61,v62,v63=207,36 -20 ,32;MachoMenuSlider(v40[5 -3 ],"R",v61,0 + 0 ,448 -193 ,"",0 -0 ,function(v227) local v228=1812 -(1293 + 519) ;while true do if (v228==0) then v61=v227;MachoMenuSetAccent(v13,math.floor(v61),math.floor(v62),math.floor(v63));break;end end end);MachoMenuSlider(v40[2],"G",v62,0 -0 ,255,"",0,function(v229) local v230=0;while true do if (v230==(0 -0)) then v62=v229;MachoMenuSetAccent(v13,math.floor(v61),math.floor(v62),math.floor(v63));break;end end end);MachoMenuSlider(v40[3 -1 ],"B",v63,0,255,"",0 -0 ,function(v231) local v232=0 -0 ;while true do if ((0 + 0)==v232) then v63=v231;MachoMenuSetAccent(v13,math.floor(v61),math.floor(v62),math.floor(v63));break;end end end);MachoMenuButton(v40[3],"Anti-Cheat Checker",function() local function v233(v260,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v260,...));end local function v234(v261,v262) local v263=0 + 0 ;local v264;while true do if (v263==(0 -0)) then v264=LoadResourceFile(v261,v262);return v264~=nil ;end end end local v235=GetNumResources();local v236={{name="ai_module_fg-obfuscated.lua",acName="FiveGuard"}};for v265=0 + 0 ,v235-(1 + 0)  do local v266=1096 -(709 + 387) ;local v267;local v268;local v269;while true do if ((1859 -(673 + 1185))==v266) then for v317,v318 in ipairs(v236) do if v234(v267,v318.name) then v233("Anti-Cheat: %s",v318.acName);AntiCheat=v318.acName;return v267,v318.acName;end end v269=nil;v266=5 -3 ;end if (v266==(6 -4)) then if (v268:sub(1,10 -3 )=="reaperv") then v269="ReaperV4";elseif (v268:sub(1,3 + 1 )=="fini") then v269="FiniAC";elseif (v268:sub(1 + 0 ,9 -2 )=="chubsac") then v269="ChubsAC";elseif (v268:sub(1 + 0 ,6)=="fireac") then v269="FireAC";elseif (v268:sub(1 -0 ,13 -6 )=="drillac") then v269="DrillAC";elseif (v268:sub( -(1887 -(446 + 1434)))=="eshield") then v269="WaveShield";elseif (v268:sub( -(1293 -(1040 + 243)))=="likizao_ac") then v269="Likizao-AC";elseif (v268:sub(1,5)=="greek") then v269="GreekAC";elseif (v268=="pac") then v269="PhoenixAC";elseif (v268=="electronac") then v269="ElectronAC";end if v269 then v233("Anti-Cheat: %s",v269);AntiCheat=v269;return v267,v269;end break;end if (v266==(0 -0)) then v267=GetResourceByFindIndex(v265);v268=string.lower(v267);v266=1;end end end v233("No Anti-Cheat found");return nil,nil;end);MachoMenuButton(v40[3],"Framework Checker",function() local v237=1847 -(559 + 1288) ;local v238;local v239;local v240;local v241;local v242;while true do if ((1934 -(609 + 1322))==v237) then function v241() local v297=0;while true do if (v297==(454 -(13 + 441))) then for v372,v373 in ipairs(v240) do for v376,v377 in ipairs(v373.globals) do if (_G[v377]~=nil) then return v373.label;end end end for v374,v375 in ipairs(v240) do for v378,v379 in ipairs(v375.resources) do if v239(v379) then return v375.label;end end end v297=3 -2 ;end if (v297==1) then return "Standalone";end end end v242=v241();v237=10 -6 ;end if (v237==(4 -3)) then v239=nil;function v239(v298) return GetResourceState(v298)=="started" ;end v237=2;end if (v237==(1 + 3)) then v238("Framework: %s",v242);break;end if ((7 -5)==v237) then v240={{label="ESX",globals={"ESX"},resources={"es_extended","esx-legacy"}},{label="QBCore",globals={"QBCore"},resources={"qb-core"}},{label="Qbox",globals={},resources={"qbox"}},{label="QBX Core",globals={},resources={"qbx-core"}},{label="ox_core",globals={"Ox"},resources={"ox_core"}},{label="ND_Core",globals={"NDCore"},resources={"nd-core","ND_Core"}},{label="vRP",globals={"vRP"},resources={"vrp"}}};v241=nil;v237=3;end if (v237==(0 + 0)) then v238=nil;function v238(v299,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v299,...));end v237=1 + 0 ;end end end);local v46=MachoMenuInputbox(v35[2 + 0 ],"Weapon:","...");MachoMenuButton(v35[2 + 0 ],"Spawn Weapon",function() local v243=0 -0 ;local v244;while true do if (v243==(0 + 0)) then v244=MachoMenuGetInputbox(WeaponSpawnerBox);if (v244 and (v244~="")) then MachoInjectResource((v41("monitor") and "monitor") or "any" ,string.format([[
                local function GiveWeapon()
                    local ped = PlayerPedId()
                    local weapon = GetHashKey("%s")
                    local XeCwVrBtNuMyLk = GiveWeaponToPed
                    XeCwVrBtNuMyLk(ped, weapon, 250, true, true)
                end

                GiveWeapon()
            ]],v244));end break;end end end);local v46=MachoMenuInputbox(v35[669 -(89 + 578) ],"Weapon:","...");MachoMenuButton(v35[2 + 0 ],"Spawn Weapon2",function() local v245=0 -0 ;local v246;while true do if ((1049 -(572 + 477))==v245) then v246=MachoMenuGetInputbox(WeaponSpawnerBox);if (v246 and (v246~="")) then MachoInjectResource((v41("monitor") and "monitor") or "any" ,string.format([[        
                 local function ntQ3LbwJxZ()
                     local LpKoMnJbHuGyTf = CreateThread
                     LpKoMnJbHuGyTf(function()
                         local SxWaQzEdCvTrBn = GetHashKey
                         local TyGuJhNbVfCrDx = RequestWeaponAsset
                         local UiJmNbGtFrVbCx = HasWeaponAssetLoaded
                         local XeCwVrBtNuMyLk = GiveWeaponToPed
                         local IuJhNbVgTfCvXz = PlayerPedId

                         local DfGhJkLpPoNmZx = SxWaQzEdCvTrBn("%s")
                         TyGuJhNbVfCrDx(DfGhJkLpPoNmZx, 31, 0)

                         while not UiJmNbGtFrVbCx(DfGhJkLpPoNmZx) do
                             Wait(0)
                         end

                         XeCwVrBtNuMyLk(IuJhNbVgTfCvXz(), DfGhJkLpPoNmZx, 250, true, true)
                     end)
                 end

                 ntQ3LbwJxZ()
             ]],v246));end break;end end end);local v47=0;local v48={[0 + 0 ]={name="Default",hash="MP_F_Freemode"},[1 + 0 ]={name="Gangster",hash="Gang1H"},[2]={name="Wild",hash="GangFemale"},[1 + 2 ]={name="Red Neck",hash="Hillbilly"}};