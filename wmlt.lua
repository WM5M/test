local v0="https://raw.githack.com/WM5M/test/refs/heads/main/wmk.json";local v1=MachoWebRequest(v0);local v2=MachoAuthenticationKey();local function v3() local v64=0 -0 ;local v65;local v66;while true do if (v64==(1 + 0)) then if ( not v65 or  not v66 or (type(v66)~="table")) then return false;end for v253,v254 in ipairs(v66) do if (v254.key==v2) then return true;end end v64=1 + 1 ;end if (v64==(653 -(494 + 157))) then return false;end if (v64==0) then if  not v1 then return false;end v65,v66=pcall(json.decode,v1);v64=1 -0 ;end end end if  not v3() then MachoMenuNotification("WizeMenu","Your key ain't valid lmfao: "   .. v2 ,9 + 1 );return;end Citizen.CreateThread(function() local v67=0 + 0 ;local v68;local v69;while true do if (v67==0) then v68,v69=pcall(json.decode,v1);if (v68 and v69 and (type(v69)=="table")) then for v293,v294 in ipairs(v69) do if ((v294.key==v2) and v294.expires) then local v341,v342,v343,v344,v345,v346=string.match(v294.expires,"([%d]+)-([%d]+)-([%d]+)T([%d]+):([%d]+):([%d]+)Z");if (v341 and v342 and v343 and v344 and v345 and v346) then local v352=0;local v353;while true do if (v352==(0 + 0)) then v353="Your key is valid. Enjoy!";MachoMenuNotification("WizeMenu",v353,5);break;end end end break;end end end break;end end end);local v4=vec2(335 + 415 ,1336 -(660 + 176) );local v5=vec2(364 + 136 ,234 + 266 );local v6=19 + 131 ;local v7=212 -(14 + 188) ;local v8=690 -(534 + 141) ;local v9=v4.x-v6 ;local v10=v4.y-((1 + 1) * v7) ;local v11=(v9-(v7 * (3 + 0)))/(2 + 0) ;local v12=(v10-(v7 * 3))/(3 -1) ;local v13=MachoMenuTabbedWindow("WIZEMenu",v5.x,v5.y,v4.x,v4.y,v6);MachoMenuSetKeybind(v13,52 -19 );MachoMenuSetAccent(v13,94 + 113 ,16,89 -57 );MachoMenuText(v13,"YT @JayThaaGamer");local v14=MachoMenuAddTab(v13,"Self");local v15=MachoMenuAddTab(v13,"Server");local v16=MachoMenuAddTab(v13,"Teleport");local v17=MachoMenuAddTab(v13,"Weapon");local v18=MachoMenuAddTab(v13,"Vehicle");local v19=MachoMenuAddTab(v13,"Animations");local v20=MachoMenuAddTab(v13,"Triggers");local v21=MachoMenuAddTab(v13,"Settings");local v22=MachoMenuAddTab(v13,"Purchase VIP");local function v23(v70) local v71=0 + 0 ;local v72;local v73;local v74;local v75;local v76;local v77;local v78;local v79;while true do if (v71==(2 + 0)) then v76=(v12 * (398 -(115 + 281))) + v7 ;v77=MachoMenuGroup(v70,"Self",v72,v73,v72 + v11 ,v73 + v76 );v71=6 -3 ;end if (v71==(1 + 0)) then v74=v73 + v12 + v7 ;v75=v72 + v11 + v7 ;v71=4 -2 ;end if (v71==(14 -10)) then return v77,v78,v79;end if (v71==(11 -8)) then v78=MachoMenuGroup(v70,"Model Changer",v75,v73,v75 + v11 ,v73 + v12 );v79=MachoMenuGroup(v70,"Functions",v75,v74,v75 + v11 ,v74 + v12 );v71=871 -(550 + 317) ;end if (v71==0) then v72=v6 + v7 ;v73=v7 + v8 ;v71=1 -0 ;end end end local function v24(v80) local v81=(v9-(v7 * (3 -0)))/(5 -3) ;local v82=v6 + v7 ;local v83=v82 + v81 ;local v84=MachoMenuGroup(v80,"Player",v82,v7 + v8 ,v83,v10);local v85=v83 + v7 ;local v86=v85 + v81 ;local v87=MachoMenuGroup(v80,"Everyone",v85,v7 + v8 ,v86,v10);return v84,v87;end local function v25(v88) local v89=(v9-(v7 * (4 -1)))/(287 -(134 + 151)) ;local v90=v6 + v7 ;local v91=v90 + v89 ;local v92=MachoMenuGroup(v88,"Teleport",v90,v7 + v8 ,v91,v10);local v93=v91 + v7 ;local v94=v93 + v89 ;local v95=MachoMenuGroup(v88,"Other",v93,v7 + v8 ,v94,v10);return v92,v95;end local function v26(v96) local v97=1665 -(970 + 695) ;local v98;local v99;local v100;local v101;local v102;local v103;while true do if (v97==(1 + 0)) then v100=v99 + v12 + v7 ;v101=MachoMenuGroup(v96,"Mods",v98,v99,v98 + v11 ,v99 + v12 );v97=3 -1 ;end if (v97==(1992 -(582 + 1408))) then v102=v98 + v11 + v7 ;v103=MachoMenuGroup(v96,"Other",v102,v7 + v8 ,v102 + v11 ,v10);v97=3;end if (0==v97) then v98=v6 + v7 ;v99=v7 + v8 ;v97=3 -2 ;end if (v97==(2 + 1)) then return v101,SectionTwo,v103;end end end local function v27(v104) local v105=0 + 0 ;local v106;local v107;local v108;local v109;local v110;local v111;local v112;while true do if (v105==(3 -1)) then v110=MachoMenuGroup(v104,"Plate & Spawning",v106,v108,v106 + v11 ,v108 + v12 );v111=v106 + v11 + v7 ;v105=3 -0 ;end if (v105==(3 -2)) then v108=v107 + v12 + v7 ;v109=MachoMenuGroup(v104,"Mods",v106,v107,v106 + v11 ,v107 + v12 );v105=1826 -(1195 + 629) ;end if (v105==(0 -0)) then v106=v6 + v7 ;v107=v7 + v8 ;v105=1;end if (v105==(244 -(187 + 54))) then v112=MachoMenuGroup(v104,"Other",v111,v7 + v8 ,v111 + v11 ,v10);return v109,v110,v112;end end end local function v28(v113) local v114=780 -(162 + 618) ;local v115;local v116;local v117;local v118;local v119;local v120;local v121;while true do if (v114==(1 + 0)) then v117=v116 + v115 ;v118=MachoMenuGroup(v113,"Animations",v116,v7 + v8 ,v117,v10);v114=2 + 0 ;end if (v114==(3 -1)) then v119=v117 + v7 ;v120=v119 + v115 ;v114=4 -1 ;end if (v114==(1 + 2)) then v121=MachoMenuGroup(v113,"Force Emotes",v119,v7 + v8 ,v120,v10);return v118,v121;end if (v114==(1636 -(1373 + 263))) then v115=(v9-(v7 * (1003 -(451 + 549))))/2 ;v116=v6 + v7 ;v114=1 + 0 ;end end end local function v29(v122) local v123=0;local v124;local v125;local v126;local v127;local v128;local v129;while true do if (v123==(1 -0)) then v126=v125 + v12 + v7 ;v127=MachoMenuGroup(v122,"Item Spawner",v124,v125,v124 + v11 ,v125 + v12 );v123=514 -(409 + 103) ;end if (v123==0) then v124=v6 + v7 ;v125=v7 + v8 ;v123=1;end if (v123==(2 -0)) then v128=v124 + v11 + v7 ;v129=MachoMenuGroup(v122,"Common Exploits",v128,v125,v128 + v11 ,v125 + v12 );v123=1387 -(746 + 638) ;end if (v123==(2 + 1)) then return v127,SectionTwo,v129,SectionFour;end end end local function v30(v130) local v131=0 -0 ;local v132;local v133;local v134;local v135;local v136;while true do if (v131==(342 -(218 + 123))) then v134=v133 + v12 + v7 ;v135=MachoMenuGroup(v130,"UPGRADE TO PRO",v132,v133,v132 + v11 ,v133 + v12 );v131=728 -(228 + 498) ;end if (v131==(0 + 0)) then v132=v6 + v7 ;v133=v7 + v8 ;v131=1 + 0 ;end if (v131==(665 -(174 + 489))) then v136=v132 + v11 + v7 ;return v135,SectionTwo,SectionThree;end end end local function v31(v137) local v138=1581 -(1535 + 46) ;local v139;local v140;local v141;local v142;local v143;local v144;local v145;while true do if (v138==3) then v145=MachoMenuGroup(v137,"Server Settings",v144,v7 + v8 ,v144 + v11 ,v10);return v142,v143,v145;end if (v138==(0 + 0)) then v139=v6 + v7 ;v140=v7 + v8 ;v138=1;end if (v138==(1 + 1)) then v143=MachoMenuGroup(v137,"Menu Design",v139,v141,v139 + v11 ,v141 + v12 );v144=v139 + v11 + v7 ;v138=1908 -(830 + 1075) ;end if (v138==(525 -(303 + 221))) then v141=v140 + v12 + v7 ;v142=MachoMenuGroup(v137,"Stop",v139,v140,v139 + v11 ,v140 + v12 );v138=562 -(306 + 254) ;end end end local v32={v23(v14)};local v33={v24(v15)};local v34={v25(v16)};local v35={v26(v17)};local v36={v27(v18)};local v37={v28(v19)};local v38={v29(v20)};local v39={v30(v22)};local v40={v31(v21)};local function v41(v146) return GetResourceState(v146)=="started" ;end local function v42() local v147=290 -(60 + 230) ;local v148;local v149;local v150;while true do if (v147==(574 -(426 + 146))) then v149,v150=v148();if (v149 and v150) then MachoResourceStop(v150);end Wait(12 + 88 );v147=1459 -(282 + 1174) ;end if ((3 -2)==v147) then v148=nil;function v148() local function v255(v276,v277) local v278=811 -(569 + 242) ;local v279;while true do if (v278==(0 -0)) then v279=LoadResourceFile(v276,v277);return v279~=nil ;end end end local v256="ai_module_fg-obfuscated.lua";local v257=GetNumResources();for v280=1248 -(111 + 1137) ,v257-(159 -(91 + 67))  do local v281=GetResourceByFindIndex(v280);if v255(v281,v256) then return true,v281;end end return false,nil;end Wait(297 -197 );v147=1 + 1 ;end if (0==v147) then Wait(2023 -(423 + 100) );MachoMenuNotification("[NOTIFICATION] WizeMenu","Loading WaveSHIT Bypass.");MachoInjectResourceRaw("monitor",[[
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
        print('JayThaaGamer')
        SafeCTrigger('esx_ambulancejob:revive')
        --SafeSTrigger('SERVER_EVENT')
    end)
]]);v147=1025 -(706 + 318) ;end if (v147==(1254 -(721 + 530))) then MachoMenuNotification("[NOTIFICATION] WizeMenu","Finalizing.");Wait(1771 -(945 + 326) );MachoMenuNotification("[NOTIFICATION] WizeMenu","Finished Enjoy.");break;end end end v42();local v43;if (GetResourceState("qbx_core")=="started") then v43="qbx_core";elseif (GetResourceState("es_extended")=="started") then v43="es_extended";elseif (GetResourceState("qb-core")=="started") then v43="qb-core";else v43="any";end Citizen.CreateThread(function() local v151=0 -0 ;while true do if (v151==(0 + 0)) then MachoMenuNotification("[NOTIFICATION] WizeMenu","Finalizing.");Wait(500);v151=4 -3 ;end if (v151==(2 -1)) then MachoMenuNotification("[NOTIFICATION] WizeMenu","Finished. Enjoy!");break;end end end);MachoLockLogger();MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
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
]]);MachoMenuCheckbox(v32[701 -(271 + 429) ],"Godmode",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Invisibility",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1501 -(1408 + 92) ],"No Ragdoll",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1],"Tiny Ped",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1087 -(461 + 625) ],"No Clip",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1289 -(993 + 295) ],"Free Camera",function() MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
        
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
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Super Jump",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1172 -(418 + 753) ],"Levitation",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Super Punch",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Throw From Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Force Driveby",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[530 -(406 + 123) ],"Anti-Headshot",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1770 -(1749 + 20) ],"Anti-Freeze",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Anti-Blackscreen",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v44=MachoMenuInputbox(v32[1324 -(1249 + 73) ],"Model Name:","...");MachoMenuButton(v32[4 -2 ],"Change Model",function() local v152=0;local v153;while true do if (v152==(0 + 0)) then v153=MachoMenuGetInputbox(v44);if ((type(v153)=="string") and (v153~="")) then local v282=string.format([[
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
        ]],v153,v153,v153);MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,v282);end break;end end end);MachoMenuButton(v32[2],"White Thug Drip",function() local v154=1145 -(466 + 679) ;while true do if (v154==(0 -0)) then function WhiteThugDrip() local v258=PlayerPedId();SetPedComponentVariation(v258,31 -20 ,109,0,4 -2 );SetPedComponentVariation(v258,1908 -(106 + 1794) ,8 + 7 ,0 + 0 ,1 + 1 );SetPedComponentVariation(v258,1 + 2 ,14 -9 ,0 + 0 ,5 -3 );SetPedComponentVariation(v258,118 -(4 + 110) ,1152 -(709 + 387) ,584 -(57 + 527) ,1429 -(41 + 1386) );SetPedComponentVariation(v258,109 -(17 + 86) ,54 -35 ,0 + 0 ,3 -1 );SetPedPropIndex(v258,0,2 -1 ,0,true);end WhiteThugDrip();break;end end end);MachoMenuButton(v32[168 -(122 + 44) ],"JTG Mafia Drip",function() local v155=0 -0 ;while true do if (v155==0) then function JTGMafia() local v259=PlayerPedId();SetPedComponentVariation(v259,36 -25 ,5,0 + 0 ,1 + 1 );SetPedComponentVariation(v259,16 -8 ,80 -(30 + 35) ,0 + 0 ,1259 -(1043 + 214) );SetPedComponentVariation(v259,11 -8 ,5,0 -0 ,1214 -(323 + 889) );SetPedComponentVariation(v259,10 -6 ,622 -(361 + 219) ,320 -(53 + 267) ,1285 -(1040 + 243) );SetPedComponentVariation(v259,2 + 4 ,17 -11 ,413 -(15 + 398) ,984 -(18 + 964) );SetPedPropIndex(v259,0,97 -71 ,0,true);SetPedPropIndex(v259,1,2 + 1 ,0,true);end JTGMafia();break;end end end);MachoMenuButton(v32[2 + 1 ],"Heal",function() SetEntityHealth(PlayerPedId(),1050 -(20 + 830) );end);MachoMenuButton(v32[1 + 2 ],"Armor",function() SetPedArmour(PlayerPedId(),363 -263 );end);MachoMenuButton(v32[3 + 0 ],"Fill Hunger",function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function DawrjatjsfAW()
            TriggerEvent('esx_status:set', 'hunger', 1000000)
        end

        DawrjatjsfAW()
    ]]);end);MachoMenuButton(v32[129 -(116 + 10) ],"Fill Thirst",function() MachoInjectResource2(1 + 2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function sWj238fsMAw()
            TriggerEvent('esx_status:set', 'thirst', 1000000)
        end

        sWj238fsMAw()
    ]]);end);MachoMenuButton(v32[741 -(542 + 196) ],"Revive VIP Only",function() end);MachoMenuButton(v32[2 + 1 ],"Suicide",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function RGybF0JqEt()
            local aSdFgHjKlQwErTy = SetEntityHealth
            aSdFgHjKlQwErTy(PlayerPedId(), 0)
        end

        RGybF0JqEt()
    ]]);end);MachoMenuButton(v32[4 -1 ],"Force Ragdoll",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function awfAEDSADWEf()
            local cWAmdjakwDksFD = SetPedToRagdoll
            cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
        end

        awfAEDSADWEf()
    ]]);end);MachoMenuButton(v32[2 + 1 ],"Clear Task",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v32[6 -3 ],"Randomize Outfit",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[1 + 0 ],"Kill Player",function() local v156=MachoMenuGetSelectedPlayer();if (v156 and (v156>(0 + 0))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v156));end end);MachoMenuButton(v33[1],"Taze Player",function() local v157=0 + 0 ;local v158;while true do if (v157==(0 + 0)) then v158=MachoMenuGetSelectedPlayer();if (v158 and (v158>(0 -0))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v158));end break;end end end);MachoMenuButton(v33[1 + 0 ],"Explode Player",function() local v159=MachoMenuGetSelectedPlayer();if (v159 and (v159>(0 -0))) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v159));end end);MachoMenuButton(v33[1552 -(1126 + 425) ],"Give All Nearby Objects",function() local v160=MachoMenuGetSelectedPlayer();if (v160 and (v160>(405 -(118 + 287)))) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,([[
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

        ]]):format(v160));end end);MachoMenuButton(v33[3 -2 ],"Teleport To Player",function() local v161=1121 -(118 + 1003) ;local v162;while true do if (v161==(0 -0)) then v162=MachoMenuGetSelectedPlayer();if (v162 and (v162>(377 -(142 + 235)))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v162));end break;end end end);MachoMenuButton(v33[4 -3 ],"Kick From Vehicle",function() local v163=MachoMenuGetSelectedPlayer();if (v163 and (v163>(0 + 0))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
        ]]):format(v163));end end);MachoMenuButton(v33[1 + 0 ],"Freeze Player",function() local v164=MachoMenuGetSelectedPlayer();if (v164 and (v164>(977 -(553 + 424)))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
        ]]):format(v164));end end);MachoMenuButton(v33[1 -0 ],"Glitch Player",function() local v165=MachoMenuGetSelectedPlayer();if (v165 and (v165>(0 -0))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
        ]]):format(v165));end end);MachoMenuButton(v33[1 + 0 ],"Limbo Player",function() local v166=0;local v167;while true do if (v166==(0 + 0)) then v167=MachoMenuGetSelectedPlayer();if (v167 and (v167>(0 + 0))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
        ]]):format(v167));end break;end end end);MachoMenuButton(v33[1],"Copy Appearance",function() local v168=0;local v169;while true do if (v168==(0 -0)) then v169=MachoMenuGetSelectedPlayer();if (v169 and (v169>(1049 -(572 + 477)))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v169));end break;end end end);MachoMenuButton(v33[1 + 0 ],"Force Robbery",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[2 + 0 ],"Crash [VIP Only]",function() MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("FiniAC") and "FiniAC") or (v41("WaveShield") and "WaveShield") or (v41("monitor") and "monitor") or "any" ,[[
    ]]);end);MachoMenuButton(v33[2 + 0 ],"Cone Everyone",function() local v170=0 + 0 ;local v171;local v172;local v173;while true do if (v170==3) then for v260,v261 in ipairs(GetActivePlayers()) do v172(GetPlayerPed(v261));end v173=(GetGamePool and GetGamePool("CPed")) or {} ;v170=90 -(84 + 2) ;end if (v170==(1 + 0)) then while  not HasModelLoaded(v171) do Wait(0 -0 );end v172=nil;v170=5 -3 ;end if (v170==4) then for v262,v263 in ipairs(v173) do if  not IsPedAPlayer(v263) then v172(v263);end end break;end if (v170==(0 + 0)) then v171=GetHashKey("prop_roadcone02a");RequestModel(v171);v170=2 -1 ;end if (v170==(1335 -(605 + 728))) then function v172(v264) if ( not DoesEntityExist(v264) or IsEntityDead(v264)) then return;end local v265=GetEntityCoords(v264);local v266=CreateObject(v171,v265.x,v265.y,v265.z,true,true,false);SetEntityAsMissionEntity(v266,true,true);SetEntityCollision(v266,false,false);SetEntityInvincible(v266,true);SetEntityCanBeDamaged(v266,false);local v267=GetPedBoneIndex(v264,22180 + 8906 );AttachEntityToEntity(v266,v264,v267,0 -0 ,0 + 0 ,0.25,0 -0 ,753 -(239 + 514) ,0 + 0 ,false,false,true,false,7 -5 ,true);end v172(PlayerPedId());v170=1332 -(797 + 532) ;end end end);MachoMenuButton(v33[2 + 0 ],"Explode All Players",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[5 -3 ],"Explode All Vehicles",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[1 + 1 ],"Delete All Vehicles",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[491 -(457 + 32) ],"Delete All Peds",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[1204 -(373 + 829) ],"ShowIDs [New Feature]",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v33[733 -(476 + 255) ],"Kill Everyone",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v33[1132 -(369 + 761) ],"Permanent Kill Everyone",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v45=MachoMenuInputbox(v34[1],"Coords:","x, y, z");MachoMenuButton(v34[1 + 0 ],"Teleport to Coords",function() local v174=MachoMenuGetInputbox(v45);if (v174 and (v174~="")) then local v236=0 -0 ;local v237;local v238;local v239;while true do if (v236==(0 -0)) then v237,v238,v239=v174:match("([^,]+),%s*([^,]+),%s*([^,]+)");v237=tonumber(v237);v236=1 + 0 ;end if (v236==(239 -(64 + 174))) then v238=tonumber(v238);v239=tonumber(v239);v236=6 -4 ;end if ((1 + 1)==v236) then if (v237 and v238 and v239) then MachoInjectResource((v41("monitor") and "monitor") or "any" ,string.format([[
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
            ]],v237,v238,v239));end break;end end end end);MachoMenuButton(v34[1 + 0 ],"Waypoint",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1 -0 ],"FIB Building",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[2 -1 ],"Mission Row PD",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[337 -(144 + 192) ],"Pillbox Hospital",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1 -0 ],"Del Perro Pier",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[217 -(42 + 174) ],"Grove Street",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1 + 0 ],"Legion Square",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1],"LS Customs",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1 + 0 ],"Maze Bank",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1 + 0 ],"Mirror Park",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1505 -(363 + 1141) ],"Vespucci Beach",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1581 -(1183 + 397) ],"Vinewood",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[606 -(316 + 289) ],"Sandy Shores",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v35[2 -1 ],"Infinite Ammo",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v35[1 + 0 ],"Explosive Ammo",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v46=MachoMenuGetInputbox(WeaponSpawnerBox);if (v46 and (v46~="")) then MachoInjectResource((v41("monitor") and "monitor") or "any" ,string.format([[
            local function GiveWeapon()
                local ped = PlayerPedId()
                local weapon = GetHashKey("%s")
                local XeCwVrBtNuMyLk = GiveWeaponToPed
                XeCwVrBtNuMyLk(ped, weapon, 250, true, true)
            end

            GiveWeapon()
        ]],v46));end local v47=1975 -(1913 + 62) ;local v48={[0 + 0 ]={name="Default",hash="MP_F_Freemode"},[2 -1 ]={name="Gangster",hash="Gang1H"},[2 -0 ]={name="Wild",hash="GangFemale"},[1936 -(565 + 1368) ]={name="Red Neck",hash="Hillbilly"}};MachoMenuDropDown(v35[3],"Aiming Style",function(v175) v47=v175;end,"Default","Gangster","Wild","Red Neck");MachoMenuButton(v35[8 -5 ],"Apply Aiming Style",function() local v176=v48[v47];if  not v176 then return;end MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
        local function vXK2dPLR07()
            local UiOpAsDfGhJkLz = PlayerPedId
            local PlMnBvCxZaSdFg = GetHashKey
            local QwErTyUiOpAsDf = SetWeaponAnimationOverride

            local MnBvCxZaSdFgHj = PlMnBvCxZaSdFg("%s")
            QwErTyUiOpAsDf(UiOpAsDfGhJkLz(), MnBvCxZaSdFgHj)
        end

        vXK2dPLR07()

    ]]):format(v176.hash));end);MachoMenuCheckbox(v36[1],"Vehicle Godmode",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[1],"Force Vehicle Engine",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[3 -2 ],"Vehicle Auto Repair",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[1662 -(1477 + 184) ],"Freeze Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[1 -0 ],"Vehicle Hop",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[1 + 0 ],"Rainbow Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[857 -(564 + 292) ],"Drift Mode (Hold Shift)",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[1 -0 ],"Easy Handling",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[3 -2 ],"Shift Boost",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[2 -1 ],"Instant Breaks",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[1],"Unlimited Fuel",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v49=MachoMenuInputbox(v36[306 -(244 + 60) ],"License Plate:","...");MachoMenuButton(v36[2 + 0 ],"Set License Plate",function() local v177=476 -(41 + 435) ;local v178;while true do if (v177==(1001 -(938 + 63))) then v178=MachoMenuGetInputbox(v49);if ((type(v178)=="string") and (v178~="")) then local v283=0 + 0 ;local v284;while true do if (v283==(0 -0)) then v284=string.format([[
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
        ]],v178);MachoInjectResource((v41("monitor") and "monitor") or "any" ,v284);break;end end end break;end end end);local v50=MachoMenuInputbox(v36[1 + 1 ],"Vehicle Model:","...");MachoMenuButton(v36[2],"Spawn Car",function() local v179=1125 -(936 + 189) ;local v180;local v181;local v182;local v183;while true do if ((1 + 0)==v179) then v182=GetResourceState("lb-phone")=="started" ;v183=nil;v179=1615 -(1565 + 48) ;end if (v179==(2 + 0)) then if ( not v181 and v182) then local v285=1138 -(782 + 356) ;while true do if (v285==(946 -(88 + 858))) then v183=([[ 
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
        ]]):format(v180);MachoInjectResource("lb-phone",v183);break;end end else v183=([[ 
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
        ]]):format(v180);MachoInjectResource((v41("monitor") and "monitor") or "any" ,v183);end break;end if (v179==(267 -(176 + 91))) then v180=MachoMenuGetInputbox(v50);v181=GetResourceState("WaveShield")=="started" ;v179=2 -1 ;end end end);MachoMenuButton(v36[4 -1 ],"Repair Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[1 + 2 ],"Flip Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[3],"Clean Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[792 -(766 + 23) ],"Delete Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[1095 -(975 + 117) ],"Toggle Vehicle Engine",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[1878 -(157 + 1718) ],"Max Vehicle Upgrades",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[3 + 0 ],"Teleport into Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[7 -4 ],"Unlock Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[10 -7 ],"Lock Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[3 -2 ],"Detach All Entitys",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function zXqLJWt7pN()
            local xPvA71LtqzW = ClearPedTasks
            local bXcT2mpqR9f = DetachEntity

            xPvA71LtqzW(PlayerPedId())
            bXcT2mpqR9f(PlayerPedId())
        end

        zXqLJWt7pN()
    ]]);end);MachoMenuButton(v37[3 -2 ],"Twerk On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[1019 -(697 + 321) ],"Give Them Backshots",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[2 -1 ],"Wank On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[1 -0 ],"Piggyback On Player",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[2 -1 ],"Blame Arrest",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[1481 -(641 + 839) ],"Blame Carry",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[914 -(910 + 3) ],"Sit On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[1 + 0 ],"Ride Driver",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[2 -1 ],"Meditate On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v51=0 -0 ;local v52=false;local v53=nil;local v54={[0 -0 ]="slapped",[1228 -(322 + 905) ]="punched",[613 -(602 + 9) ]="receiveblowjob",[3]="GiveBlowjob",[1193 -(449 + 740) ]="headbutted",[877 -(826 + 46) ]="hug4",[814 -(329 + 479) ]="streetsexfemale",[954 -(245 + 702) ]="streetsexmale",[24 -16 ]="pback2",[3 + 6 ]="carry3",[1908 -(260 + 1638) ]=".....gta298",[451 -(382 + 58) ]=".....gta304",[38 -26 ]=".....gta284"};MachoMenuDropDown(v37[2 + 0 ],"Emote Choice",function(v184) v51=v184;end,"Slapped","Punched","Give BJ","Recieve BJ","Headbutt","Hug","StreetSexFemale","StreetSexMale","Piggyback","Carry","Butt Rape","Amazing Head","Lesbian Scissors");MachoMenuButton(v37[3 -1 ],"Give Emote",function() local v185=v54[v51];if v185 then MachoInjectResource2(8 -5 ,(v41("monitor") and "monitor") or "any" ,string.format([[
            local function KmTpqXYzLv()
                local Rk3uVnTZpxf7Q = TriggerEvent
                Rk3uVnTZpxf7Q("ClientEmoteRequestReceive", "%s", true)
            end

            KmTpqXYzLv()
        ]],v185));end end);InputBoxHandle=MachoMenuInputbox(v38[1206 -(902 + 303) ],"Name:","...");InputBoxHandle2=MachoMenuInputbox(v38[1390 -(135 + 1254) ],"Amount:","...");MachoMenuButton(v38[3 -2 ],"Spawn Item",function() local v186=0 -0 ;local v187;local v188;while true do if (v186==(0 -0)) then v187=MachoMenuGetInputbox(InputBoxHandle);v188=MachoMenuGetInputbox(InputBoxHandle2);v186=1528 -(389 + 1138) ;end if ((2 -1)==v186) then if (v187 and (v187~="") and v188 and tonumber(v188)) then local v286=tonumber(v188);local v287={ak47_drugmanager=function() MachoInjectResource2(1 + 2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function efjwr8sfr()
                        TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v187   .. [[", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    efjwr8sfr()
                ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(3 + 0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function safdagwawe()
                        TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    safdagwawe()
                ]] );end,["mc9-taco"]=function() MachoInjectResource2(1693 -(1121 + 569) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function cesfw33w245d()
                        TriggerServerEvent('mc9-taco:server:addItem', "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    cesfw33w245d()
                ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(217 -(22 + 192) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function safdagwawe()
                        TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    safdagwawe()
                ]] );end,["wp-pocketbikes"]=function() MachoInjectResource2(686 -(483 + 200) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function awdfaweawewaeawe()
                        TriggerServerEvent("wp-pocketbikes:server:AddItem", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    awdfaweawewaeawe()
                ]] );end,["solos-jointroll"]=function() MachoInjectResource2(1466 -(1404 + 59) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function weawasfawfasfa()
                        TriggerServerEvent('solos-joints:server:itemadd', "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    weawasfawfasfa()
                ]] );end,["angelicxs-CivilianJobs"]=function() MachoInjectResource2(8 -5 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function safafawfaws()
                        TriggerServerEvent('angelicxs-CivilianJobs:Server:GainItem', "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    safafawfaws()
                ]] );end,ars_whitewidow_v2=function() MachoInjectResource2(3 -0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent('ars_whitewidow_v2:Buyitem', {
                            items = {
                                {
                                    id = "]]   .. v187   .. [[",
                                    image = "JTG",
                                    name = "JTG",
                                    page = 1,
                                    price = 500,
                                    quantity = ]]   .. v188   .. [[,
                                    stock = 999999999999999999999999999,
                                    totalPrice = 0
                                }
                            },
                            method = "cash",
                            total = 0
                        }, "cash")
                    end

                    sDfjMawT34()
                ]] );end,ars_cannabisstore_v2=function() MachoInjectResource2(1467 -(157 + 1307) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                local function sDfjMawT34()
                    TriggerServerEvent("ars_cannabisstore_v2:Buyitem", {
                        items = {
                            {
                                id = "]]   .. v187   .. [[",
                                image = "JTG",
                                name = "JTG",
                                page = JTG,
                                price = JTG,
                                quantity = ]]   .. v188   .. [[,
                                stock = JTG,
                                totalPrice = 0
                            }
                        },
                        method = "JTG",
                        total = 0
                    }, "cash")
                end

                sDfjMawT34()
                ]] );end,ars_hunting=function() MachoInjectResource2(768 -(468 + 297) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent("ars_hunting:sellBuyItem",  {
                            item = "]]   .. v187   .. [[",
                            price = 1,
                            quantity = ]]   .. v188   .. [[,
                            buy = true
                        })
                    end

                    sDfjMawT34()
                ]] );end,["boii-whitewidow"]=function() local v295=562 -(334 + 228) ;local v296;local v297;local v298;while true do if ((6 -4)==v295) then if v297(v298) then MachoInjectResource2(6 -3 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent('boii-whitewidow:server:AddItem', ']]   .. v187   .. [[', ]]   .. v188   .. [[)
                        end

                        sDfjMawT34()
                    ]] );end break;end if (v295==(0 -0)) then v296={"217.20.242.24:30120"};v297=nil;v295=1;end if (v295==(237 -(141 + 95))) then function v297(v354) local v355=1026 -(834 + 192) ;while true do if (v355==(0 + 0)) then for v366,v367 in ipairs(v296) do if (v354==v367) then return true;end end return false;end end end v298=GetCurrentServerEndpoint();v295=1 + 1 ;end end end,["codewave-cannabis-cafe"]=function() local v299=0;local v300;local v301;local v302;while true do if (v299==1) then function v301(v356) local v357=0 + 0 ;while true do if (v357==(0 -0)) then for v368,v369 in ipairs(v300) do if (v356==v369) then return true;end end return false;end end end v302=GetCurrentServerEndpoint();v299=4 -2 ;end if (v299==(0 + 0)) then v300={"185.244.106.45:30120"};v301=nil;v299=2 -1 ;end if (v299==(2 + 0)) then if v301(v302) then MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("cannabis_cafe:giveStockItems", { item = "]]   .. v187   .. [[", newItem = "JTG", pricePerItem = 0 }, ]]   .. v188   .. [[)
                        end

                        sDfjMawT34()
                    ]] );end break;end end end,["snipe-boombox"]=function() MachoInjectResource2(4 -1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent("snipe-boombox:server:pickup", ]]   .. v188   .. [[, vector3(0.0, 0.0, 0.0), "]]   .. v187   .. [[")
                    end

                    sDfjMawT34()
                ]] );end,devkit_bbq=function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent('devkit_bbq:addinv', ']]   .. v187   .. [[', ]]   .. v188   .. [[)
                    end

                    sDfjMawT34()
                ]] );end,mt_printers=function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[  
                    local function sDfjMawT34()
                        TriggerServerEvent('__ox_cb_mt_printers:server:itemActions', "mt_printers", "mt_printers:server:itemActions:JTG", "]]   .. v187   .. [[", "add")
                    end

                    sDfjMawT34()
                ]] );end,WayTooCerti_3D_Printer=function() MachoInjectResource2(7 -4 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[ 
                    local function ZxUwQsErTy12()
                        TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', ']]   .. v187   .. [[', ]]   .. v188   .. [[)
                    end
                    ZxUwQsErTy12()
                ]] );end,["pug-fishing"]=function() MachoInjectResource2(166 -(92 + 71) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function MnBvCxZlKjHgFd23()
                        TriggerServerEvent('Pug:server:GiveFish', "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end
                    MnBvCxZlKjHgFd23()
                ]] );end,apex_koi=function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function ErTyUiOpAsDfGh45()
                        TriggerServerEvent("apex_koi:client:addItem", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end
                    ErTyUiOpAsDfGh45()
                ]] );end,apex_peckerwood=function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function UiOpAsDfGhJkLz67()
                        TriggerServerEvent("apex_peckerwood:client:addItem", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end
                    UiOpAsDfGhJkLz67()
                ]] );end,apex_thetown=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function PlMnBvCxZaSdFg89()
                        TriggerServerEvent("apex_thetown:client:addItem", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end
                    PlMnBvCxZaSdFg89()
                ]] );end,["codewave-bbq"]=function() MachoInjectResource2(3 + 0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function QwErTyUiOpAsDf90()
                        for i = 1, ]]   .. v188   .. [[ do
                            TriggerServerEvent('placeProp:returnItem', "]]   .. v187   .. [[")
                            Wait(1)
                        end
                    end
                    QwErTyUiOpAsDf90()
                ]] );end,brutal_hunting=function() MachoInjectResource2(4 -1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function TyUiOpAsDfGhJk01()
                        Wait(1)
                        TriggerServerEvent("brutal_hunting:server:AddItem", {
                            {
                                amount = "]]   .. v188   .. [[",
                                item = "]]   .. v187   .. [[",
                                label = "J",
                                price = 0
                            }
                        })
                    end
                    TyUiOpAsDfGhJk01()
                ]] );end,xmmx_bahamas=function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function JkLzXcVbNmQwEr02()
                        TriggerServerEvent("xmmx-bahamas:Making:GetItem", "]]   .. v187   .. [[", {
                            amount = ]]   .. v188   .. [[,
                            cash = {
                            }
                        })
                    end
                    JkLzXcVbNmQwEr02()
                ]] );end,ak47_drugmanager=function() local v303=0;local v304;local v305;local v306;while true do if ((767 -(574 + 191))==v303) then if v305(v306) then MachoInjectResource2(1417 -(1001 + 413) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function aKf48SlWd()
                            Wait(1)
                            TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v187   .. [[", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                        end
                        aKf48SlWd()
                    ]] );end break;end if ((0 + 0)==v303) then v304={"162.222.16.18:30120"};v305=nil;v303=2 -1 ;end if (v303==(694 -(627 + 66))) then function v305(v358) local v359=0 + 0 ;while true do if (v359==0) then for v370,v371 in ipairs(v304) do if (v358==v371) then return true;end end return false;end end end v306=GetCurrentServerEndpoint();v303=851 -(254 + 595) ;end end end,xmmx_letscookplus=function() MachoInjectResource2(129 -(55 + 71) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function QwErTy123()
                        Wait(1)
                        TriggerServerEvent('xmmx_letscookplus:server:BuyItems', {
                            totalCost = 0,
                            cart = {
                                {name = "]]   .. v187   .. [[", quantity = ]]   .. v188   .. [[}
                            }
                        }, "bank")
                    end
                    QwErTy123()
                ]] );end,["xmmx-letscamp"]=function() local v307={"66.70.153.70:80"};local function v308(v337) for v347,v348 in ipairs(v307) do if (v337==v348) then return true;end end return false;end local v309=GetCurrentServerEndpoint();if  not v308(v309) then local v349=string.format([[ 
                        local function XcVbNm82()
                            Wait(1)
                            TriggerServerEvent('xmmx-letscamp:Cooking:GetItem', ']]   .. v187   .. [[', {
                                ["%s"] = {
                                    ['lccampherbs'] = 0,
                                    ['lccampmeat'] = 0,
                                    ['lccampbutta'] = 0
                                },
                                ['amount'] = ]]   .. v188   .. [[
                            })
                        end
                        XcVbNm82()
                    ]] ,v187);MachoInjectResource2(720 -(373 + 344) ,"xmmx-letscamp",v349);end end,wasabi_mining=function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function MzXnJqKs88()
                        local item = {
                            difficulty = { "medium", "medium" },
                            item = "]]   .. v187   .. [[",
                            label = "JTG",
                            price = { 110, 140 }
                        }

                        local index = 3
                        local amount = ]]   .. v188   .. [[

                        for i = 1, amount do
                            Wait(1)
                            TriggerServerEvent('wasabi_mining:mineRock', item, index)
                        end
                    end
                    MzXnJqKs88()
                ]] );end,apex_bahama=function() local v310=0;local v311;local v312;local v313;while true do if (v310==(1790 -(573 + 1217))) then v311={"89.31.216.161:30120"};v312=nil;v310=1 + 0 ;end if (v310==1) then function v312(v360) local v361=0 -0 ;while true do if (v361==(939 -(714 + 225))) then for v372,v373 in ipairs(v311) do if (v360==v373) then return true;end end return false;end end end v313=GetCurrentServerEndpoint();v310=5 -3 ;end if ((2 -0)==v310) then if v312(v313) then MachoInjectResource2(1 + 2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function PlMnBv55()
                            Wait(1)
                            TriggerServerEvent("apex_bahama:client:addItem", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                        end
                        PlMnBv55()
                    ]] );end break;end end end,["jg-mechanic"]=function() local v314={"91.190.154.43:30120"};local function v315(v338) local v339=806 -(118 + 688) ;while true do if (v339==(1236 -(298 + 938))) then for v364,v365 in ipairs(v314) do if (v338==v365) then return true;end end return false;end end end local v316=GetCurrentServerEndpoint();if v315(v316) then MachoInjectResource2(51 -(25 + 23) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function HjKlYu89()
                            Wait(1)
                            TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v187   .. [[", 0, ]]   .. v188   .. [[, "autoexotic", 1)
                        end
                        HjKlYu89()
                    ]] );end end,["jg-mechanic"]=function() local v317={"191.96.152.17:30121"};local function v318(v340) for v350,v351 in ipairs(v317) do if (v340==v351) then return true;end end return false;end local v319=GetCurrentServerEndpoint();if v318(v319) then MachoInjectResource2(1889 -(927 + 959) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function LkJfQwOp78()
                            Wait(1)
                            TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v187   .. [[", 0, ]]   .. v188   .. [[, "TheCultMechShop", 1)
                        end
                        LkJfQwOp78()
                    ]] );end end};local v288=false;for v320,v321 in pairs(v287) do if (GetResourceState(v320)=="started") then v321();v288=true;break;end end if  not v288 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end else MachoMenuNotification("[NOTIFICATION] JTG Menu","Invalid Item or Amount.");end break;end end end);MoneyInputBox=MachoMenuInputbox(v38[6 -4 ],"Amount:","...");MachoMenuButton(v38[734 -(16 + 716) ],"Spawn Money",function() local v189=MachoMenuGetInputbox(MoneyInputBox);if (v189 and tonumber(v189)) then local v240=0 -0 ;local v241;local v242;local v243;while true do if (v240==(1 + 1)) then if  not v243 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end break;end if (v240==(222 -(55 + 166))) then v243=false;for v322,v323 in pairs(v242) do if (GetResourceState(v322)=="started") then v323();v243=true;break;end end v240=99 -(11 + 86) ;end if ((0 + 0)==v240) then v241=tonumber(v189);v242={["codewave-lashes-phone"]=function() MachoInjectResource2(6 -3 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardlashes', ]]   .. v241   .. [[)
                ]] );end,["codewave-nails-phone"]=function() MachoInjectResource2(288 -(175 + 110) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardnails', ]]   .. v241   .. [[)
                ]] );end,["codewave-caps-client-phone"]=function() MachoInjectResource2(6 -3 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardCaps', ]]   .. v241   .. [[)
                ]] );end,["codewave-wigs-v3-phone"]=function() MachoInjectResource2(300 -(36 + 261) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardWigss', ]]   .. v241   .. [[)
                ]] );end,["codewave-icebox-phone"]=function() MachoInjectResource2(14 -11 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardiceboxs', ]]   .. v241   .. [[)
                ]] );end,["codewave-sneaker-phone"]=function() MachoInjectResource2(1799 -(503 + 1293) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardShoes', ]]   .. v241   .. [[)
                ]] );end,["codewave-handbag-phone"]=function() MachoInjectResource2(8 -5 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardhandbags', ]]   .. v241   .. [[)
                ]] );end};v240=1 + 0 ;end end else MachoMenuNotification("[NOTIFICATION] JTG Menu","Invalid Item or Amount.");end end);local v55=MachoMenuInputbox(v38[1065 -(810 + 251) ],"Event:","...");local v56=MachoMenuInputbox(v38[3 + 1 ],"Type:","...");local v57=MachoMenuInputbox(v38[4],"Resource:","...");local v58={"monitor","any"};MachoMenuButton(v38[4],"Execute",function() local v190=0 + 0 ;local v191;local v192;local v193;local v194;local v195;local v196;local v197;local v198;local v199;local v200;local v201;local v202;local v203;local v204;local v205;while true do if (v190==7) then if v205 then MachoInjectResource(v205,v204);end break;end if (v190==(320 -(134 + 185))) then if ( not v191 or (v191=="")) then return;end v194,v195=load("return function() return "   .. v191   .. " end" );if  not v194 then return;end v190=535 -(43 + 490) ;end if (v190==(737 -(711 + 22))) then for v268=11 -8 , #v198 do table.insert(v200,v198[v268]);end v201=nil;function v201(v269) if (type(v269)=="string") then return string.format("%q",v269);elseif ((type(v269)=="number") or (type(v269)=="boolean")) then return tostring(v269);elseif (type(v269)=="table") then local v362,v363=pcall(function() return json.encode(v269);end);return (v362 and string.format("json.decode(%q)",v363)) or "nil" ;else return "nil";end end v190=864 -(240 + 619) ;end if (v190==(1 + 1)) then v196,v197=pcall(v194);if ( not v196 or (type(v197)~="function")) then return;end v198={pcall(v197)};v190=1175 -(786 + 386) ;end if (v190==(1 + 2)) then if  not v198[1380 -(1055 + 324) ] then return;end v199=v198[1746 -(1344 + 400) ];v200={};v190=409 -(255 + 150) ;end if (v190==(4 + 1)) then v202={};for v270,v271 in ipairs(v200) do table.insert(v202,v201(v271));end v203=(( #v202>(0 + 0)) and table.concat(v202,", ")) or "" ;v190=25 -19 ;end if (v190==(19 -13)) then v204=string.format([[
        local event = %q
        local triggerType = string.lower(%q)
        local args = { %s }

        if triggerType == "server" then
            TriggerServerEvent(event, table.unpack(args))
        else
            TriggerEvent(event, table.unpack(args))
        end
    ]],tostring(v199),string.lower(v192 or "client" ),v203);v205=nil;if (v193 and (v193~="")) then if (GetResourceState(v193)=="started") then v205=v193;end else for v324,v325 in ipairs(v58) do if (GetResourceState(v325)=="started") then v205=v325;break;end end end v190=1746 -(404 + 1335) ;end if (v190==(0 -0)) then v191=MachoMenuGetInputbox(v55);v192=MachoMenuGetInputbox(v56);v193=MachoMenuGetInputbox(v57);v190=1 + 0 ;end end end);local v59=0;local v60={[406 -(183 + 223) ]={name="[E] Force Rob",resource=nil,code=nil}};MachoMenuDropDown(v38[10 -7 ],"Exploit Choice",function(v206) v59=v206;end,v60[0 -0 ].name);MachoMenuButton(v38[2 + 1 ],"Execute",function() local v207=v60[v59];if  not v207 then return;end if (v59==(0 + 0)) then local v244=337 -(10 + 327) ;local v245;local v246;local v247;while true do if ((1 + 0)==v244) then v247={ox="ox_inventory",qb="qb-inventory"};for v326,v327 in pairs(v247) do if (GetResourceState(v327)=="started") then v245=v326;break;end end v244=5 -3 ;end if (v244==(338 -(118 + 220))) then v245=nil;v246={"ox_inventory","ox_doorlock","ox_fuel","ox_target","ox_lib","ox_sit","ox_appearance"};v244=4 -3 ;end if ((1495 -(711 + 782))==v244) then for v328,v329 in ipairs(v246 or {} ) do if (GetResourceState(v329)=="started") then MachoInjectResource2(5 -2 ,v329,([[
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

                ]]):format(v245));break;end end break;end end else MachoInjectResource2(472 -(270 + 199) ,v207.resource,v207.code);end end);MachoMenuButton(v39[1 + 0 ],"Gain VIP Access",function() if (ItemName and (ItemName~="") and ItemAmount and tonumber(ItemAmount)) then local v248=tonumber(ItemAmount);local v249={["qb-uwujob"]=function() MachoInjectResource2(1 + 2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function aswdaw4atsdf()
                            TriggerServerEvent("qb-uwujob:addItem", "]]   .. ItemName   .. [[", ]]   .. ItemAmount   .. [[)
                        end

                        aswdaw4atsdf()
                    ]] );end};if (GetResourceState("qb-uwujob")=="started") then v249["qb-uwujob"]();else MachoMenuNotification("[NOTIFICATION] WizeMenu","qb-uwujob not started.");end else MachoMenuNotification("[NOTIFICATION] WizeMenu","Open Ticket In WizeMenu Discord.");end end);MachoMenuButton(v39[1821 -(580 + 1239) ],"Police Job",function() if  not v3() then return;end if v41("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
           local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
           TriggerServerEvent('wasabi_multijob:addJob', job)
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end end);MachoMenuButton(v39[5 -3 ],"EMS Job",function() if  not v3() then return;end if v41("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
            local job = { label = "EMS", name = "ambulance", grade = 1, grade_label = "Medic", grade_name = "medic" }
            TriggerServerEvent('wasabi_multijob:addJob', job)
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end end);MachoMenuButton(v39[3 + 0 ],"Spoofed Weapon Bypass",function() local v208=0 + 0 ;local v209;local v210;while true do if (v208==(3 -2)) then function v210() local v272=CreateThread;afwjawauw5sd(function() for v330=0 + 0 ,GetNumResources() -(1 + 0)  do local v331=0 -0 ;local v332;while true do if (v331==(0 + 0)) then v332=GetResourceByFindIndex(v330);if (v332 and (GetResourceState(v332)=="started")) then MachoInjectResource(v332,string.format([[
                         print("[ JTG ] - Resource Name: %s")
                         %s
                     ]],v332,v209));Wait(1367 -(645 + 522) );end break;end end end end);end break;end if (v208==(0 + 0)) then v209=[[
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
     ]];v210=nil;v208=1791 -(1010 + 780) ;end end end);MachoMenuButton(v40[1 + 0 ],"Uninject",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        Stopped = true
    ]]);MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
        anvzBDyUbl = false
        if fLwYqKoXpRtB then fLwYqKoXpRtB() end
        kLpMnBvCxZqWeRt = false
    ]]);MachoMenuDestroy(v13);end);MachoMenuCheckbox(v40[2],"RGB Menu",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v61,v62,v63=986 -779 ,16,32;MachoMenuSlider(v40[5 -3 ],"R",v61,1836 -(1045 + 791) ,645 -390 ,"",0 -0 ,function(v211) local v212=0;while true do if (v212==(513 -(203 + 310))) then v61=v211;MachoMenuSetAccent(v13,math.floor(v61),math.floor(v62),math.floor(v63));break;end end end);MachoMenuSlider(v40[507 -(351 + 154) ],"G",v62,1574 -(1281 + 293) ,521 -(28 + 238) ,"",0 -0 ,function(v213) local v214=1559 -(1381 + 178) ;while true do if (v214==(0 + 0)) then v62=v213;MachoMenuSetAccent(v13,math.floor(v61),math.floor(v62),math.floor(v63));break;end end end);MachoMenuSlider(v40[2 + 0 ],"B",v63,0 + 0 ,879 -624 ,"",0 + 0 ,function(v215) local v216=0;while true do if (v216==(470 -(381 + 89))) then v63=v215;MachoMenuSetAccent(v13,math.floor(v61),math.floor(v62),math.floor(v63));break;end end end);MachoMenuButton(v40[3 + 0 ],"Anti-Cheat Checker",function() local function v217(v227,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v227,...));end local function v218(v228,v229) local v230=0 + 0 ;local v231;while true do if (v230==(0 -0)) then v231=LoadResourceFile(v228,v229);return v231~=nil ;end end end local v219=GetNumResources();local v220={{name="ai_module_fg-obfuscated.lua",acName="FiveGuard"}};for v232=1156 -(1074 + 82) ,v219-(1 -0)  do local v233=GetResourceByFindIndex(v232);local v234=string.lower(v233);for v250,v251 in ipairs(v220) do if v218(v233,v251.name) then v217("Anti-Cheat: %s",v251.acName);AntiCheat=v251.acName;return v233,v251.acName;end end local v235=nil;if (v234:sub(94 -(4 + 89) ,1791 -(214 + 1570) )=="reaperv") then v235="ReaperV4";elseif (v234:sub(1456 -(990 + 465) ,2 + 2 )=="fini") then v235="FiniAC";elseif (v234:sub(1 + 0 ,7 + 0 )=="chubsac") then v235="ChubsAC";elseif (v234:sub(1487 -(35 + 1451) ,1459 -(28 + 1425) )=="fireac") then v235="FireAC";elseif (v234:sub(3 -2 ,1733 -(1668 + 58) )=="drillac") then v235="DrillAC";elseif (v234:sub( -(633 -(512 + 114)))=="eshield") then v235="WaveShield";elseif (v234:sub( -(26 -16))=="likizao_ac") then v235="Likizao-AC";elseif (v234:sub(1 + 0 ,10 -5 )=="greek") then v235="GreekAC";elseif (v234=="pac") then v235="PhoenixAC";elseif (v234=="electronac") then v235="ElectronAC";end if v235 then v217("Anti-Cheat: %s",v235);AntiCheat=v235;return v233,v235;end end v217("No Anti-Cheat found");return nil,nil;end);MachoMenuButton(v40[3 + 0 ],"Framework Checker",function() local v221=0 -0 ;local v222;local v223;local v224;local v225;local v226;while true do if (0==v221) then v222=nil;function v222(v274,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v274,...));end v221=1;end if (v221==(1 + 0)) then v223=nil;function v223(v275) return GetResourceState(v275)=="started" ;end v221=4 -2 ;end if (v221==(1 + 3)) then v222("Framework: %s",v226);break;end if ((2 + 0)==v221) then v224={{label="ESX",globals={"ESX"},resources={"es_extended","esx-legacy"}},{label="QBCore",globals={"QBCore"},resources={"qb-core"}},{label="Qbox",globals={},resources={"qbox"}},{label="QBX Core",globals={},resources={"qbx-core"}},{label="ox_core",globals={"Ox"},resources={"ox_core"}},{label="ND_Core",globals={"NDCore"},resources={"nd-core","ND_Core"}},{label="vRP",globals={"vRP"},resources={"vrp"}}};v225=nil;v221=1 + 2 ;end if ((2 + 1)==v221) then function v225() for v289,v290 in ipairs(v224) do for v333,v334 in ipairs(v290.globals) do if (_G[v334]~=nil) then return v290.label;end end end for v291,v292 in ipairs(v224) do for v335,v336 in ipairs(v292.resources) do if v223(v336) then return v292.label;end end end return "Standalone";end v226=v225();v221=15 -11 ;end end end);