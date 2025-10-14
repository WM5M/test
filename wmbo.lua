local v0="https://raw.githack.com/WM5M/test/refs/heads/main/wmk.json";local v1=MachoWebRequest(v0);local v2=MachoAuthenticationKey();local function v3() local v63=0 + 0 ;local v64;local v65;while true do if (v63==(0 + 0)) then if  not v1 then return false;end v64,v65=pcall(json.decode,v1);v63=1;end if (v63==1) then if ( not v64 or  not v65 or (type(v65)~="table")) then return false;end for v287,v288 in ipairs(v65) do if (v288.key==v2) then return true;end end v63=4 -2 ;end if (v63==(2 + 0)) then return false;end end end if  not v3() then local v228=0;while true do if (v228==(700 -(271 + 429))) then MachoMenuNotification("WizeMenu","Your key ain't valid lmfao: "   .. v2 ,10 + 0 );return;end end end Citizen.CreateThread(function() local v66,v67=pcall(json.decode,v1);if (v66 and v67 and (type(v67)=="table")) then for v253,v254 in ipairs(v67) do if ((v254.key==v2) and v254.expires) then local v313,v314,v315,v316,v317,v318=string.match(v254.expires,"([%d]+)-([%d]+)-([%d]+)T([%d]+):([%d]+):([%d]+)Z");if (v313 and v314 and v315 and v316 and v317 and v318) then local v340=0;local v341;while true do if (v340==(1500 -(1408 + 92))) then v341="Your key is valid. Enjoy!";MachoMenuNotification("WizeMenu",v341,1091 -(461 + 625) );break;end end end break;end end end end);local v4=vec2(2038 -(993 + 295) ,26 + 474 );local v5=vec2(500,500);local v6=1321 -(418 + 753) ;local v7=10;local v8=6 + 9 ;local v9=v4.x-v6 ;local v10=v4.y-((1 + 1) * v7) ;local v11=(v9-(v7 * (1 + 2)))/2 ;local v12=(v10-(v7 * (1 + 2)))/(531 -(406 + 123)) ;local v13=MachoMenuTabbedWindow("WIZEMenu",v5.x,v5.y,v4.x,v4.y,v6);MachoMenuSetKeybind(v13,33);MachoMenuSetAccent(v13,207,1785 -(1749 + 20) ,8 + 24 );MachoMenuText(v13,"YT @JayThaaGamer");local v14=MachoMenuAddTab(v13,"Self");local v15=MachoMenuAddTab(v13,"Server");local v16=MachoMenuAddTab(v13,"Teleport");local v17=MachoMenuAddTab(v13,"Weapon");local v18=MachoMenuAddTab(v13,"Vehicle");local v19=MachoMenuAddTab(v13,"Animations");local v20=MachoMenuAddTab(v13,"Triggers");local v21=MachoMenuAddTab(v13,"Settings");local v22=MachoMenuAddTab(v13,"Purchase VIP");local function v23(v68) local v69=1322 -(1249 + 73) ;local v70;local v71;local v72;local v73;local v74;local v75;local v76;local v77;while true do if (v69==1) then v72=v71 + v12 + v7 ;v73=v70 + v11 + v7 ;v69=2;end if (v69==(1 + 1)) then v74=(v12 * (1147 -(466 + 679))) + v7 ;v75=MachoMenuGroup(v68,"Self",v70,v71,v70 + v11 ,v71 + v74 );v69=6 -3 ;end if (v69==0) then v70=v6 + v7 ;v71=v7 + v8 ;v69=1;end if (v69==(11 -7)) then return v75,v76,v77;end if (v69==(1903 -(106 + 1794))) then v76=MachoMenuGroup(v68,"Model Changer",v73,v71,v73 + v11 ,v71 + v12 );v77=MachoMenuGroup(v68,"Functions",v73,v72,v73 + v11 ,v72 + v12 );v69=4;end end end local function v24(v78) local v79=0;local v80;local v81;local v82;local v83;local v84;local v85;local v86;while true do if (v79==2) then v84=v82 + v7 ;v85=v84 + v80 ;v79=1 + 2 ;end if (3==v79) then v86=MachoMenuGroup(v78,"Everyone",v84,v7 + v8 ,v85,v10);return v83,v86;end if (v79==1) then v82=v81 + v80 ;v83=MachoMenuGroup(v78,"Player",v81,v7 + v8 ,v82,v10);v79=1 + 1 ;end if (v79==0) then v80=(v9-(v7 * 3))/(5 -3) ;v81=v6 + v7 ;v79=2 -1 ;end end end local function v25(v87) local v88=(v9-(v7 * (117 -(4 + 110))))/(586 -(57 + 527)) ;local v89=v6 + v7 ;local v90=v89 + v88 ;local v91=MachoMenuGroup(v87,"Teleport",v89,v7 + v8 ,v90,v10);local v92=v90 + v7 ;local v93=v92 + v88 ;local v94=MachoMenuGroup(v87,"Other",v92,v7 + v8 ,v93,v10);return v91,v94;end local function v26(v95) local v96=0;local v97;local v98;local v99;local v100;local v101;local v102;while true do if (0==v96) then v97=v6 + v7 ;v98=v7 + v8 ;v96=1;end if ((1428 -(41 + 1386))==v96) then v99=v98 + v12 + v7 ;v100=MachoMenuGroup(v95,"Mods",v97,v98,v97 + v11 ,v98 + v12 );v96=105 -(17 + 86) ;end if (v96==(3 + 0)) then return v100,SectionTwo,v102;end if (v96==(3 -1)) then v101=v97 + v11 + v7 ;v102=MachoMenuGroup(v95,"Other",v101,v7 + v8 ,v101 + v11 ,v10);v96=8 -5 ;end end end local function v27(v103) local v104=166 -(122 + 44) ;local v105;local v106;local v107;local v108;local v109;local v110;local v111;while true do if (v104==(1 -0)) then v107=v106 + v12 + v7 ;v108=MachoMenuGroup(v103,"Mods",v105,v106,v105 + v11 ,v106 + v12 );v104=6 -4 ;end if (v104==3) then v111=MachoMenuGroup(v103,"Other",v110,v7 + v8 ,v110 + v11 ,v10);return v108,v109,v111;end if (v104==(0 + 0)) then v105=v6 + v7 ;v106=v7 + v8 ;v104=1 + 0 ;end if ((3 -1)==v104) then v109=MachoMenuGroup(v103,"Plate & Spawning",v105,v107,v105 + v11 ,v107 + v12 );v110=v105 + v11 + v7 ;v104=68 -(30 + 35) ;end end end local function v28(v112) local v113=0 + 0 ;local v114;local v115;local v116;local v117;local v118;local v119;local v120;while true do if (v113==(1260 -(1043 + 214))) then v120=MachoMenuGroup(v112,"Force Emotes",v118,v7 + v8 ,v119,v10);return v117,v120;end if (v113==0) then v114=(v9-(v7 * (11 -8)))/(1214 -(323 + 889)) ;v115=v6 + v7 ;v113=1;end if (v113==(2 -1)) then v116=v115 + v114 ;v117=MachoMenuGroup(v112,"Animations",v115,v7 + v8 ,v116,v10);v113=582 -(361 + 219) ;end if (v113==2) then v118=v116 + v7 ;v119=v118 + v114 ;v113=3;end end end local function v29(v121) local v122=320 -(53 + 267) ;local v123;local v124;local v125;local v126;local v127;local v128;while true do if ((1 + 1)==v122) then v127=v123 + v11 + v7 ;v128=MachoMenuGroup(v121,"Common Exploits",v127,v124,v127 + v11 ,v124 + v12 );v122=416 -(15 + 398) ;end if (v122==3) then return v126,SectionTwo,v128,SectionFour;end if (v122==(982 -(18 + 964))) then v123=v6 + v7 ;v124=v7 + v8 ;v122=3 -2 ;end if (v122==(1 + 0)) then v125=v124 + v12 + v7 ;v126=MachoMenuGroup(v121,"Money Spawner",v123,v124,v123 + v11 ,v124 + v12 );v122=2;end end end local function v30(v129) local v130=0 + 0 ;local v131;local v132;local v133;local v134;local v135;while true do if (v130==(850 -(20 + 830))) then v131=v6 + v7 ;v132=v7 + v8 ;v130=1;end if (v130==(1 + 0)) then v133=v132 + v12 + v7 ;v134=MachoMenuGroup(v129,"UPGRADE TO PRO",v131,v132,v131 + v11 ,v132 + v12 );v130=128 -(116 + 10) ;end if (v130==(1 + 1)) then v135=v131 + v11 + v7 ;return v134,SectionTwo,SectionThree;end end end local function v31(v136) local v137=0;local v138;local v139;local v140;local v141;local v142;local v143;local v144;while true do if (v137==(741 -(542 + 196))) then v144=MachoMenuGroup(v136,"Server Settings",v143,v7 + v8 ,v143 + v11 ,v10);return v141,v142,v144;end if (v137==2) then v142=MachoMenuGroup(v136,"Menu Design",v138,v140,v138 + v11 ,v140 + v12 );v143=v138 + v11 + v7 ;v137=3;end if (v137==(1 -0)) then v140=v139 + v12 + v7 ;v141=MachoMenuGroup(v136,"Stop",v138,v139,v138 + v11 ,v139 + v12 );v137=2;end if (v137==(0 + 0)) then v138=v6 + v7 ;v139=v7 + v8 ;v137=1 + 0 ;end end end local v32={v23(v14)};local v33={v24(v15)};local v34={v25(v16)};local v35={v26(v17)};local v36={v27(v18)};local v37={v28(v19)};local v38={v29(v20)};local v39={v30(v22)};local v40={v31(v21)};local function v41(v145) return GetResourceState(v145)=="started" ;end local v42;if (GetResourceState("qbx_core")=="started") then v42="qbx_core";elseif (GetResourceState("es_extended")=="started") then v42="es_extended";elseif (GetResourceState("qb-core")=="started") then v42="qb-core";else v42="any";end MachoLockLogger();MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
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
]]);MachoMenuCheckbox(v32[1],"Godmode",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1122 -(118 + 1003) ],"Invisibility",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[2 -1 ],"No Ragdoll",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1],"Free Camera",function() MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
        
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
    ]]);end);MachoMenuCheckbox(v32[378 -(142 + 235) ],"Super Jump",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[4 -3 ],"Levitation",function() local v146=0;while true do if (v146==0) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Super Strength",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1],"Super Punch",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[978 -(553 + 424) ],"Throw From Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1],"Force Third Person",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1 -0 ],"Force Driveby",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Anti-Freeze",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v43=MachoMenuInputbox(v32[2 + 0 ],"Model Name:","...");MachoMenuButton(v32[2],"Change Model",function() local v147=MachoMenuGetInputbox(v43);if ((type(v147)=="string") and (v147~="")) then local v239=0 + 0 ;local v240;while true do if (v239==0) then v240=string.format([[
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
        ]],v147,v147,v147);MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,v240);break;end end end end);MachoMenuButton(v32[2 + 0 ],"White Thug Drip",function() function WhiteThugDrip() local v229=0 -0 ;local v230;while true do if ((7 -4)==v229) then SetPedPropIndex(v230,0 -0 ,1 + 0 ,0,true);break;end if (v229==(0 -0)) then v230=PlayerPedId();SetPedComponentVariation(v230,764 -(239 + 514) ,39 + 70 ,1329 -(797 + 532) ,2 + 0 );v229=1 + 0 ;end if (1==v229) then SetPedComponentVariation(v230,18 -10 ,1217 -(373 + 829) ,0,733 -(476 + 255) );SetPedComponentVariation(v230,1133 -(369 + 761) ,5,0 + 0 ,2 -0 );v229=2;end if (v229==2) then SetPedComponentVariation(v230,4,56,0 -0 ,2);SetPedComponentVariation(v230,244 -(64 + 174) ,3 + 16 ,0,2 -0 );v229=339 -(144 + 192) ;end end end WhiteThugDrip();end);MachoMenuButton(v32[2],"JTG Mafia Drip",function() local v148=216 -(42 + 174) ;while true do if (v148==(0 + 0)) then function JTGMafia() local v289=0;local v290;while true do if (v289==2) then SetPedComponentVariation(v290,4,35 + 7 ,0,2);SetPedComponentVariation(v290,3 + 3 ,6,0,1506 -(363 + 1141) );v289=3;end if (v289==(1583 -(1183 + 397))) then SetPedPropIndex(v290,0 -0 ,26,0 + 0 ,true);SetPedPropIndex(v290,1 + 0 ,1978 -(1913 + 62) ,0,true);break;end if (v289==1) then SetPedComponentVariation(v290,8,10 + 5 ,0 -0 ,1935 -(565 + 1368) );SetPedComponentVariation(v290,3,18 -13 ,1661 -(1477 + 184) ,2 -0 );v289=2 + 0 ;end if ((856 -(564 + 292))==v289) then v290=PlayerPedId();SetPedComponentVariation(v290,18 -7 ,15 -10 ,304 -(244 + 60) ,2);v289=1;end end end JTGMafia();break;end end end);MachoMenuButton(v32[3 + 0 ],"Heal",function() SetEntityHealth(PlayerPedId(),676 -(41 + 435) );end);MachoMenuButton(v32[3],"Armor",function() SetPedArmour(PlayerPedId(),100);end);MachoMenuButton(v32[1004 -(938 + 63) ],"Fill Hunger",function() MachoInjectResource2(3 + 0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function DawrjatjsfAW()
            TriggerEvent('esx_status:set', 'hunger', 1000000)
        end

        DawrjatjsfAW()
    ]]);end);MachoMenuButton(v32[1128 -(936 + 189) ],"Fill Thirst",function() MachoInjectResource2(1 + 2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function sWj238fsMAw()
            TriggerEvent('esx_status:set', 'thirst', 1000000)
        end

        sWj238fsMAw()
    ]]);end);MachoMenuButton(v32[1616 -(1565 + 48) ],"Revive",function() MachoInjectResource2(2 + 1 ,(v41("ox_inventory") and "ox_inventory") or (v41("ox_lib") and "ox_lib") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("wasabi_ambulance") and "wasabi_ambulance") or (v41("ak47_ambulancejob") and "ak47_ambulancejob") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v32[3],"Suicide",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function RGybF0JqEt()
            local aSdFgHjKlQwErTy = SetEntityHealth
            aSdFgHjKlQwErTy(PlayerPedId(), 0)
        end

        RGybF0JqEt()
    ]]);end);MachoMenuButton(v32[1141 -(782 + 356) ],"Force Ragdoll",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function awfAEDSADWEf()
            local cWAmdjakwDksFD = SetPedToRagdoll
            cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
        end

        awfAEDSADWEf()
    ]]);end);MachoMenuButton(v32[270 -(176 + 91) ],"Clear Task",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[2 -1 ],"Kill Player",function() local v149=0 -0 ;local v150;while true do if (v149==0) then v150=MachoMenuGetSelectedPlayer();if (v150 and (v150>(1092 -(975 + 117)))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v150));end break;end end end);MachoMenuButton(v33[1876 -(157 + 1718) ],"Taze Player",function() local v151=0 + 0 ;local v152;while true do if (v151==(0 -0)) then v152=MachoMenuGetSelectedPlayer();if (v152 and (v152>(0 -0))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v152));end break;end end end);MachoMenuButton(v33[1019 -(697 + 321) ],"Explode Player",function() local v153=0 -0 ;local v154;while true do if (v153==(0 -0)) then v154=MachoMenuGetSelectedPlayer();if (v154 and (v154>(0 -0))) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v154));end break;end end end);MachoMenuButton(v33[1 + 0 ],"Give All Nearby Objects",function() local v155=0;local v156;while true do if (0==v155) then v156=MachoMenuGetSelectedPlayer();if (v156 and (v156>(0 -0))) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,([[
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

        ]]):format(v156));end break;end end end);MachoMenuButton(v33[2 -1 ],"Teleport To Player",function() local v157=1227 -(322 + 905) ;local v158;while true do if (v157==0) then v158=MachoMenuGetSelectedPlayer();if (v158 and (v158>(611 -(602 + 9)))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v158));end break;end end end);MachoMenuButton(v33[1190 -(449 + 740) ],"Kick From Vehicle",function() local v159=872 -(826 + 46) ;local v160;while true do if (v159==0) then v160=MachoMenuGetSelectedPlayer();if (v160 and (v160>(947 -(245 + 702)))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
        ]]):format(v160));end break;end end end);MachoMenuButton(v33[1],"Freeze Player",function() local v161=0 -0 ;local v162;while true do if ((0 + 0)==v161) then v162=MachoMenuGetSelectedPlayer();if (v162 and (v162>(1898 -(260 + 1638)))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
                local veh = ZbLpVnXwQr(tgtCoords, 150.0, 0, 70)

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
        ]]):format(v162));end break;end end end);MachoMenuButton(v33[441 -(382 + 58) ],"Glitch Player",function() local v163=0 -0 ;local v164;while true do if (v163==(0 + 0)) then v164=MachoMenuGetSelectedPlayer();if (v164 and (v164>(0 -0))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
        ]]):format(v164));end break;end end end);MachoMenuButton(v33[2 -1 ],"Limbo Player",function() local v165=0;local v166;while true do if (v165==(1205 -(902 + 303))) then v166=MachoMenuGetSelectedPlayer();if (v166 and (v166>0)) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
        ]]):format(v166));end break;end end end);MachoMenuButton(v33[1 -0 ],"Copy Appearance",function() local v167=0 -0 ;local v168;while true do if (v167==(0 + 0)) then v168=MachoMenuGetSelectedPlayer();if (v168 and (v168>(1690 -(1121 + 569)))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v168));end break;end end end);MachoMenuButton(v33[1],"Feature Coming Soon",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            
    ]]);end);MachoMenuButton(v33[216 -(22 + 192) ],"Crash [Coming Soon]",function() MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("FiniAC") and "FiniAC") or (v41("WaveShield") and "WaveShield") or (v41("monitor") and "monitor") or "any" ,[[
    ]]);end);MachoMenuButton(v33[685 -(483 + 200) ],"Cone Everyone",function() local v169=0;local v170;local v171;local v172;while true do if (v169==(1464 -(1404 + 59))) then while  not HasModelLoaded(v170) do Wait(0 -0 );end v171=nil;v169=2 -0 ;end if (v169==(767 -(468 + 297))) then function v171(v291) local v292=562 -(334 + 228) ;local v293;local v294;local v295;while true do if (v292==(3 -2)) then v294=CreateObject(v170,v293.x,v293.y,v293.z,true,true,false);SetEntityAsMissionEntity(v294,true,true);v292=2;end if (v292==4) then AttachEntityToEntity(v294,v291,v295,0 -0 ,0 -0 ,0.25,0 + 0 ,236 -(141 + 95) ,0,false,false,true,false,2 + 0 ,true);break;end if (v292==(7 -4)) then SetEntityCanBeDamaged(v294,false);v295=GetPedBoneIndex(v291,31086);v292=9 -5 ;end if (v292==(0 + 0)) then if ( not DoesEntityExist(v291) or IsEntityDead(v291)) then return;end v293=GetEntityCoords(v291);v292=2 -1 ;end if (v292==2) then SetEntityCollision(v294,false,false);SetEntityInvincible(v294,true);v292=3 + 0 ;end end end v171(PlayerPedId());v169=2 + 1 ;end if (v169==3) then for v296,v297 in ipairs(GetActivePlayers()) do v171(GetPlayerPed(v297));end v172=(GetGamePool and GetGamePool("CPed")) or {} ;v169=5 -1 ;end if (v169==(0 + 0)) then v170=GetHashKey("prop_roadcone02a");RequestModel(v170);v169=164 -(92 + 71) ;end if (v169==4) then for v298,v299 in ipairs(v172) do if  not IsPedAPlayer(v299) then v171(v299);end end break;end end end);MachoMenuButton(v33[2],"Explode All Players",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[1 + 1 ],"Explode All Vehicles",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[2 -0 ],"Delete All Vehicles",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[767 -(574 + 191) ],"Delete All Peds",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[2 + 0 ],"Delete All Objects",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v33[4 -2 ],"Kill Everyone",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v33[2],"Permanent Kill Everyone",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v44=MachoMenuInputbox(v34[1 + 0 ],"Coords:","x, y, z");MachoMenuButton(v34[850 -(254 + 595) ],"Teleport to Coords",function() local v173=0;local v174;while true do if (v173==0) then v174=MachoMenuGetInputbox(v44);if (v174 and (v174~="")) then local v319=126 -(55 + 71) ;local v320;local v321;local v322;while true do if (v319==(2 -0)) then if (v320 and v321 and v322) then MachoInjectResource((v41("monitor") and "monitor") or "any" ,string.format([[
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
            ]],v320,v321,v322));end break;end if (v319==(1790 -(573 + 1217))) then v320,v321,v322=v174:match("([^,]+),%s*([^,]+),%s*([^,]+)");v320=tonumber(v320);v319=2 -1 ;end if (v319==(1 + 0)) then v321=tonumber(v321);v322=tonumber(v322);v319=2 -0 ;end end end break;end end end);MachoMenuButton(v34[940 -(714 + 225) ],"Waypoint",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[2 -1 ],"FIB Building",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1 -0 ],"Mission Row PD",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1 + 0 ],"Pillbox Hospital",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[807 -(118 + 688) ],"Grove Street",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[49 -(25 + 23) ],"Legion Square",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1 + 0 ],"LS Customs",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1887 -(927 + 959) ],"Maze Bank",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[3 -2 ],"Mirror Park",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[733 -(16 + 716) ],"Vespucci Beach",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1 -0 ],"Vinewood",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1],"Sandy Shores",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[99 -(11 + 86) ],"Print Current Coords",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v35[286 -(175 + 110) ],"Explosive Ammo",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v35[1],"Oneshot Kill",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v45=MachoMenuGetInputbox(WeaponSpawnerBox);if (v45 and (v45~="")) then MachoInjectResource((v41("monitor") and "monitor") or "any" ,string.format([[
            local function GiveWeapon()
                local ped = PlayerPedId()
                local weapon = GetHashKey("%s")
                local XeCwVrBtNuMyLk = GiveWeaponToPed
                XeCwVrBtNuMyLk(ped, weapon, 250, true, true)
            end

            GiveWeapon()
        ]],v45));end local v46=0 -0 ;local v47={[0 -0 ]={name="Default",hash="MP_F_Freemode"},[1797 -(503 + 1293) ]={name="Gangster",hash="Gang1H"},[2]={name="Wild",hash="GangFemale"},[8 -5 ]={name="Red Neck",hash="Hillbilly"}};MachoMenuDropDown(v35[3 + 0 ],"Aiming Style",function(v175) v46=v175;end,"Default","Gangster","Wild","Red Neck");MachoMenuButton(v35[1064 -(810 + 251) ],"Apply Aiming Style",function() local v176=v47[v46];if  not v176 then return;end MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
        local function vXK2dPLR07()
            local UiOpAsDfGhJkLz = PlayerPedId
            local PlMnBvCxZaSdFg = GetHashKey
            local QwErTyUiOpAsDf = SetWeaponAnimationOverride

            local MnBvCxZaSdFgHj = PlMnBvCxZaSdFg("%s")
            QwErTyUiOpAsDf(UiOpAsDfGhJkLz(), MnBvCxZaSdFgHj)
        end

        vXK2dPLR07()

    ]]):format(v176.hash));end);MachoMenuCheckbox(v36[1 + 0 ],"Vehicle Godmode",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[1 + 0 ],"Vehicle Auto Repair",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[534 -(43 + 490) ],"Freeze Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[734 -(711 + 22) ],"Rainbow Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[3 -2 ],"Drift Mode (Hold Shift)",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[1],"Easy Handling",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[860 -(240 + 619) ],"Shift Boost",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[1 -0 ],"Unlimited Fuel",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v48=MachoMenuInputbox(v36[1 + 1 ],"License Plate:","...");MachoMenuButton(v36[2],"Set License Plate",function() local v177=1744 -(1344 + 400) ;local v178;while true do if (v177==0) then v178=MachoMenuGetInputbox(v48);if ((type(v178)=="string") and (v178~="")) then local v323=405 -(255 + 150) ;local v324;while true do if ((0 + 0)==v323) then v324=string.format([[
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
        ]],v178);MachoInjectResource((v41("monitor") and "monitor") or "any" ,v324);break;end end end break;end end end);local v49=MachoMenuInputbox(v36[2 + 0 ],"Vehicle Model:","...");MachoMenuButton(v36[8 -6 ],"Spawn Car",function() local v179=0 -0 ;local v180;local v181;local v182;local v183;while true do if (v179==(1741 -(404 + 1335))) then if ( not v181 and v182) then local v325=0;while true do if (v325==(406 -(183 + 223))) then v183=([[ 
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
        ]]):format(v180);MachoInjectResource((v41("monitor") and "monitor") or "any" ,v183);end break;end if (v179==1) then v182=GetResourceState("lb-phone")=="started" ;v183=nil;v179=2;end if (v179==(0 -0)) then v180=MachoMenuGetInputbox(v49);v181=GetResourceState("WaveShield")=="started" ;v179=1 + 0 ;end end end);MachoMenuButton(v36[2 + 1 ],"Repair Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[340 -(10 + 327) ],"Flip Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[3 + 0 ],"Clean Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[341 -(118 + 220) ],"Delete Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[1 + 2 ],"Toggle Vehicle Engine",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[3],"Max Vehicle Upgrades",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[452 -(108 + 341) ],"Teleport into Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[2 + 1 ],"Unlock Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[12 -9 ],"Lock Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[1494 -(711 + 782) ],"Detach All Entitys",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function zXqLJWt7pN()
            local xPvA71LtqzW = ClearPedTasks
            local bXcT2mpqR9f = DetachEntity

            xPvA71LtqzW(PlayerPedId())
            bXcT2mpqR9f(PlayerPedId())
        end

        zXqLJWt7pN()
    ]]);end);MachoMenuButton(v37[1 -0 ],"Twerk On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[470 -(270 + 199) ],"Give Them Backshots",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[1 + 0 ],"Wank On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[1820 -(580 + 1239) ],"Piggyback On Player",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[1 + 0 ],"Sit On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[1 + 0 ],"Blow Driver",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[1],"Meditate On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v50=0 -0 ;local v51=false;local v52=nil;local v53={[0 + 0 ]="slapped",[1168 -(645 + 522) ]="punched",[1792 -(1010 + 780) ]="receiveblowjob",[3 + 0 ]="GiveBlowjob",[19 -15 ]="headbutted",[14 -9 ]="hug4",[6]="streetsexfemale",[7]="streetsexmale",[8]="pback2",[1845 -(1045 + 791) ]="carry3",[25 -15 ]=".....gta298",[16 -5 ]=".....gta304",[517 -(351 + 154) ]=".....gta284"};MachoMenuDropDown(v37[1576 -(1281 + 293) ],"Emote Choice",function(v184) v50=v184;end,"Slapped","Punched","Give BJ","Recieve BJ","Headbutt","Hug","StreetSexFemale","StreetSexMale","Piggyback","Carry","Butt Rape","Amazing Head","Lesbian Scissors");MachoMenuButton(v37[268 -(28 + 238) ],"Give Emote",function() local v185=0;local v186;while true do if (v185==(0 -0)) then v186=v53[v50];if v186 then MachoInjectResource2(3,(v41("monitor") and "monitor") or "any" ,string.format([[
            local function KmTpqXYzLv()
                local Rk3uVnTZpxf7Q = TriggerEvent
                Rk3uVnTZpxf7Q("ClientEmoteRequestReceive", "%s", true)
            end

            KmTpqXYzLv()
        ]],v186));end break;end end end);InputBoxHandle=MachoMenuInputbox(v38[1560 -(1381 + 178) ],"Name:","...");InputBoxHandle2=MachoMenuInputbox(v38[1],"Amount:","...");MachoMenuButton(v38[1 + 0 ],"Spawn",function() local v187=MachoMenuGetInputbox(InputBoxHandle);local v188=MachoMenuGetInputbox(InputBoxHandle2);if (v187 and (v187~="") and v188 and tonumber(v188)) then local v241=tonumber(v188);local v242={ak47_drugmanager=function() MachoInjectResource2(3 + 0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function efjwr8sfr()
                        TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v187   .. [[", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    efjwr8sfr()
                ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function safdagwawe()
                        TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    safdagwawe()
                ]] );end,["mc9-taco"]=function() MachoInjectResource2(10 -7 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function cesfw33w245d()
                        TriggerServerEvent('mc9-taco:server:addItem', "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    cesfw33w245d()
                ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function safdagwawe()
                        TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    safdagwawe()
                ]] );end,["wp-pocketbikes"]=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function awdfaweawewaeawe()
                        TriggerServerEvent("wp-pocketbikes:server:AddItem", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    awdfaweawewaeawe()
                ]] );end,["solos-jointroll"]=function() MachoInjectResource2(473 -(381 + 89) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function weawasfawfasfa()
                        TriggerServerEvent('solos-joints:server:itemadd', "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    weawasfawfasfa()
                ]] );end,["angelicxs-CivilianJobs"]=function() MachoInjectResource2(3 + 0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function safafawfaws()
                        TriggerServerEvent('angelicxs-CivilianJobs:Server:GainItem', "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end

                    safafawfaws()
                ]] );end,ars_whitewidow_v2=function() MachoInjectResource2(3 + 0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
                ]] );end,ars_cannabisstore_v2=function() MachoInjectResource2(4 -1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
                ]] );end,ars_hunting=function() MachoInjectResource2(1159 -(1074 + 82) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent("ars_hunting:sellBuyItem",  {
                            item = "]]   .. v187   .. [[",
                            price = 1,
                            quantity = ]]   .. v188   .. [[,
                            buy = true
                        })
                    end

                    sDfjMawT34()
                ]] );end,["boii-whitewidow"]=function() local v256=0;local v257;local v258;local v259;while true do if (v256==(1 -0)) then function v258(v342) local v343=0;while true do if (v343==0) then for v377,v378 in ipairs(v257) do if (v342==v378) then return true;end end return false;end end end v259=GetCurrentServerEndpoint();v256=2;end if (v256==0) then v257={"217.20.242.24:30120"};v258=nil;v256=1;end if (v256==2) then if v258(v259) then MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent('boii-whitewidow:server:AddItem', ']]   .. v187   .. [[', ]]   .. v188   .. [[)
                        end

                        sDfjMawT34()
                    ]] );end break;end end end,["codewave-cannabis-cafe"]=function() local v260=0;local v261;local v262;local v263;while true do if (v260==(1785 -(214 + 1570))) then function v262(v344) local v345=1455 -(990 + 465) ;while true do if (v345==(0 + 0)) then for v379,v380 in ipairs(v261) do if (v344==v380) then return true;end end return false;end end end v263=GetCurrentServerEndpoint();v260=1 + 1 ;end if (v260==0) then v261={"185.244.106.45:30120"};v262=nil;v260=1 + 0 ;end if (v260==(7 -5)) then if v262(v263) then MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("cannabis_cafe:giveStockItems", { item = "]]   .. v187   .. [[", newItem = "JTG", pricePerItem = 0 }, ]]   .. v188   .. [[)
                        end

                        sDfjMawT34()
                    ]] );end break;end end end,["snipe-boombox"]=function() MachoInjectResource2(1729 -(1668 + 58) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent("snipe-boombox:server:pickup", ]]   .. v188   .. [[, vector3(0.0, 0.0, 0.0), "]]   .. v187   .. [[")
                    end

                    sDfjMawT34()
                ]] );end,devkit_bbq=function() MachoInjectResource2(629 -(512 + 114) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent('devkit_bbq:addinv', ']]   .. v187   .. [[', ]]   .. v188   .. [[)
                    end

                    sDfjMawT34()
                ]] );end,mt_printers=function() MachoInjectResource2(7 -4 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[  
                    local function sDfjMawT34()
                        TriggerServerEvent('__ox_cb_mt_printers:server:itemActions', "mt_printers", "mt_printers:server:itemActions:JTG", "]]   .. v187   .. [[", "add")
                    end

                    sDfjMawT34()
                ]] );end,WayTooCerti_3D_Printer=function() MachoInjectResource2(5 -2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[ 
                    local function ZxUwQsErTy12()
                        TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', ']]   .. v187   .. [[', ]]   .. v188   .. [[)
                    end
                    ZxUwQsErTy12()
                ]] );end,["pug-fishing"]=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function MnBvCxZlKjHgFd23()
                        TriggerServerEvent('Pug:server:GiveFish', "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end
                    MnBvCxZlKjHgFd23()
                ]] );end,apex_koi=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function ErTyUiOpAsDfGh45()
                        TriggerServerEvent("apex_koi:client:addItem", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end
                    ErTyUiOpAsDfGh45()
                ]] );end,apex_peckerwood=function() MachoInjectResource2(10 -7 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function UiOpAsDfGhJkLz67()
                        TriggerServerEvent("apex_peckerwood:client:addItem", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end
                    UiOpAsDfGhJkLz67()
                ]] );end,apex_thetown=function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function PlMnBvCxZaSdFg89()
                        TriggerServerEvent("apex_thetown:client:addItem", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                    end
                    PlMnBvCxZaSdFg89()
                ]] );end,["codewave-bbq"]=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function QwErTyUiOpAsDf90()
                        for i = 1, ]]   .. v188   .. [[ do
                            TriggerServerEvent('placeProp:returnItem', "]]   .. v187   .. [[")
                            Wait(1)
                        end
                    end
                    QwErTyUiOpAsDf90()
                ]] );end,brutal_hunting=function() MachoInjectResource2(1 + 2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
                ]] );end,xmmx_bahamas=function() MachoInjectResource2(3 + 0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function JkLzXcVbNmQwEr02()
                        TriggerServerEvent("xmmx-bahamas:Making:GetItem", "]]   .. v187   .. [[", {
                            amount = ]]   .. v188   .. [[,
                            cash = {
                            }
                        })
                    end
                    JkLzXcVbNmQwEr02()
                ]] );end,ak47_drugmanager=function() local v264=0;local v265;local v266;local v267;while true do if (v264==0) then v265={"162.222.16.18:30120"};v266=nil;v264=1;end if (v264==(3 -2)) then function v266(v346) local v347=1994 -(109 + 1885) ;while true do if (v347==(1469 -(1269 + 200))) then for v381,v382 in ipairs(v265) do if (v346==v382) then return true;end end return false;end end end v267=GetCurrentServerEndpoint();v264=3 -1 ;end if (v264==(817 -(98 + 717))) then if v266(v267) then MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function aKf48SlWd()
                            Wait(1)
                            TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v187   .. [[", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                        end
                        aKf48SlWd()
                    ]] );end break;end end end,xmmx_letscookplus=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
                ]] );end,["xmmx-letscamp"]=function() local v268=826 -(802 + 24) ;local v269;local v270;local v271;while true do if (v268==2) then if  not v270(v271) then local v352=0 -0 ;local v353;while true do if (v352==(0 -0)) then v353=string.format([[ 
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
                    ]] ,v187);MachoInjectResource2(3,"xmmx-letscamp",v353);break;end end end break;end if (v268==(1 + 0)) then function v270(v348) for v354,v355 in ipairs(v269) do if (v348==v355) then return true;end end return false;end v271=GetCurrentServerEndpoint();v268=2;end if (v268==(0 + 0)) then v269={"66.70.153.70:80"};v270=nil;v268=1 + 0 ;end end end,wasabi_mining=function() MachoInjectResource2(8 -5 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
                ]] );end,apex_bahama=function() local v272=0 -0 ;local v273;local v274;local v275;while true do if (v272==(0 + 0)) then v273={"89.31.216.161:30120"};v274=nil;v272=1;end if (v272==1) then function v274(v349) local v350=0 + 0 ;while true do if (v350==(0 + 0)) then for v383,v384 in ipairs(v273) do if (v349==v384) then return true;end end return false;end end end v275=GetCurrentServerEndpoint();v272=2 + 0 ;end if (v272==2) then if v274(v275) then MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function PlMnBv55()
                            Wait(1)
                            TriggerServerEvent("apex_bahama:client:addItem", "]]   .. v187   .. [[", ]]   .. v188   .. [[)
                        end
                        PlMnBv55()
                    ]] );end break;end end end,["jg-mechanic"]=function() local v276={"91.190.154.43:30120"};local function v277(v300) local v301=0;while true do if ((1433 -(797 + 636))==v301) then for v356,v357 in ipairs(v276) do if (v300==v357) then return true;end end return false;end end end local v278=GetCurrentServerEndpoint();if v277(v278) then MachoInjectResource2(14 -11 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function HjKlYu89()
                            Wait(1)
                            TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v187   .. [[", 0, ]]   .. v188   .. [[, "autoexotic", 1)
                        end
                        HjKlYu89()
                    ]] );end end,["jg-mechanic"]=function() local v279={"191.96.152.17:30121"};local function v280(v302) local v303=0 + 0 ;while true do if (v303==(0 -0)) then for v358,v359 in ipairs(v279) do if (v302==v359) then return true;end end return false;end end end local v281=GetCurrentServerEndpoint();if v280(v281) then MachoInjectResource2(3 + 0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function LkJfQwOp78()
                            Wait(1)
                            TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v187   .. [[", 0, ]]   .. v188   .. [[, "TheCultMechShop", 1)
                        end
                        LkJfQwOp78()
                    ]] );end end};local v243=false;for v282,v283 in pairs(v242) do if (GetResourceState(v282)=="started") then v283();v243=true;break;end end if  not v243 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end else MachoMenuNotification("[NOTIFICATION] JTG Menu","Invalid Item or Amount.");end end);MoneyInputBox=MachoMenuInputbox(v38[1 + 1 ],"Amount:","...");MachoMenuButton(v38[328 -(192 + 134) ],"Spawn",function() local v189=MachoMenuGetInputbox(MoneyInputBox);if (v189 and tonumber(v189)) then local v244=1276 -(316 + 960) ;local v245;local v246;local v247;while true do if (v244==(1 + 0)) then v247=false;for v333,v334 in pairs(v246) do if (GetResourceState(v333)=="started") then v334();v247=true;break;end end v244=2;end if (v244==0) then v245=tonumber(v189);v246={["codewave-lashes-phone"]=function() MachoInjectResource2(3 + 0 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardlashes', ]]   .. v245   .. [[)
                ]] );end,["codewave-nails-phone"]=function() MachoInjectResource2(3 + 0 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardnails', ]]   .. v245   .. [[)
                ]] );end,["codewave-caps-client-phone"]=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardCaps', ]]   .. v245   .. [[)
                ]] );end,["codewave-wigs-v3-phone"]=function() MachoInjectResource2(11 -8 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardWigss', ]]   .. v245   .. [[)
                ]] );end,["codewave-icebox-phone"]=function() MachoInjectResource2(554 -(83 + 468) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardiceboxs', ]]   .. v245   .. [[)
                ]] );end,["codewave-sneaker-phone"]=function() MachoInjectResource2(1809 -(1202 + 604) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardShoes', ]]   .. v245   .. [[)
                ]] );end,["codewave-handbag-phone"]=function() MachoInjectResource2(13 -10 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardhandbags', ]]   .. v245   .. [[)
                ]] );end};v244=1 -0 ;end if (v244==2) then if  not v247 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end break;end end else MachoMenuNotification("[NOTIFICATION] JTG Menu","Invalid Item or Amount.");end end);local v54=MachoMenuInputbox(v38[4],"Event:","...");local v55=MachoMenuInputbox(v38[4],"Type:","...");local v56=MachoMenuInputbox(v38[4],"Resource:","...");local v57={"monitor","any"};MachoMenuButton(v38[329 -(45 + 280) ],"Execute",function() local v190=0 + 0 ;local v191;local v192;local v193;local v194;local v195;local v196;local v197;local v198;local v199;local v200;local v201;local v202;local v203;local v204;local v205;while true do if ((1 + 0)==v190) then if ( not v191 or (v191=="")) then return;end v194,v195=load("return function() return "   .. v191   .. " end" );if  not v194 then return;end v190=2;end if (4==v190) then for v304=3, #v198 do table.insert(v200,v198[v304]);end v201=nil;function v201(v305) if (type(v305)=="string") then return string.format("%q",v305);elseif ((type(v305)=="number") or (type(v305)=="boolean")) then return tostring(v305);elseif (type(v305)=="table") then local v374=0;local v375;local v376;while true do if (v374==0) then v375,v376=pcall(function() return json.encode(v305);end);return (v375 and string.format("json.decode(%q)",v376)) or "nil" ;end end else return "nil";end end v190=5;end if (v190==(3 + 3)) then v204=string.format([[
        local event = %q
        local triggerType = string.lower(%q)
        local args = { %s }

        if triggerType == "server" then
            TriggerServerEvent(event, table.unpack(args))
        else
            TriggerEvent(event, table.unpack(args))
        end
    ]],tostring(v199),string.lower(v192 or "client" ),v203);v205=nil;if (v193 and (v193~="")) then if (GetResourceState(v193)=="started") then v205=v193;end else for v335,v336 in ipairs(v57) do if (GetResourceState(v336)=="started") then v205=v336;break;end end end v190=7;end if (v190==0) then v191=MachoMenuGetInputbox(v54);v192=MachoMenuGetInputbox(v55);v193=MachoMenuGetInputbox(v56);v190=1 + 0 ;end if (v190==(1 + 1)) then v196,v197=pcall(v194);if ( not v196 or (type(v197)~="function")) then return;end v198={pcall(v197)};v190=1914 -(340 + 1571) ;end if ((2 + 1)==v190) then if  not v198[1773 -(1733 + 39) ] then return;end v199=v198[5 -3 ];v200={};v190=1038 -(125 + 909) ;end if ((1955 -(1096 + 852))==v190) then if v205 then MachoInjectResource(v205,v204);end break;end if (v190==5) then v202={};for v306,v307 in ipairs(v200) do table.insert(v202,v201(v307));end v203=(( #v202>0) and table.concat(v202,", ")) or "" ;v190=3 + 3 ;end end end);local v58=0;local v59={[0 -0 ]={name="[E] Force Rob",resource=nil,code=nil}};MachoMenuDropDown(v38[3 + 0 ],"Exploit Choice",function(v206) v58=v206;end,v59[512 -(409 + 103) ].name);MachoMenuButton(v38[3],"Execute",function() local v207=0;local v208;while true do if (v207==0) then v208=v59[v58];if  not v208 then return;end v207=237 -(46 + 190) ;end if (v207==(96 -(51 + 44))) then if (v58==0) then local v326=0;local v327;local v328;local v329;while true do if (1==v326) then v329={ox="ox_inventory",qb="qb-inventory"};for v364,v365 in pairs(v329) do if (GetResourceState(v365)=="started") then v327=v364;break;end end v326=1 + 1 ;end if (v326==(1319 -(1114 + 203))) then for v366,v367 in ipairs(v328 or {} ) do if (GetResourceState(v367)=="started") then MachoInjectResource2(729 -(228 + 498) ,v367,([[
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

                ]]):format(v327));break;end end break;end if (v326==(0 + 0)) then v327=nil;v328={"ox_inventory","ox_doorlock","ox_fuel","ox_target","ox_lib","ox_sit","ox_appearance"};v326=1 + 0 ;end end else MachoInjectResource2(1165 -(171 + 991) ,v208.resource,v208.code);end break;end end end);MachoMenuButton(v39[4 -3 ],"Gain VIP Access",function() if (ItemName and (ItemName~="") and ItemAmount and tonumber(ItemAmount)) then local v248=0 -0 ;local v249;local v250;while true do if (v248==(2 -1)) then if (GetResourceState("qb-uwujob")=="started") then v250["qb-uwujob"]();else MachoMenuNotification("[NOTIFICATION] WizeMenu","qb-uwujob not started.");end break;end if (v248==0) then v249=tonumber(ItemAmount);v250={["qb-uwujob"]=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function aswdaw4atsdf()
                            TriggerServerEvent("qb-uwujob:addItem", "]]   .. ItemName   .. [[", ]]   .. ItemAmount   .. [[)
                        end

                        aswdaw4atsdf()
                    ]] );end};v248=1 + 0 ;end end else MachoMenuNotification("[NOTIFICATION] WizeMenu","Open Ticket In WizeMenu Discord.");end end);MachoMenuButton(v39[6 -4 ],"Trigger Finder",function() local v209=0 -0 ;while true do if (v209==0) then if  not HasValidKey() then return;end if SomeLicenseCheck() then local v330=0 -0 ;local v331;local v332;while true do if (v330==0) then v331={skirpz_drugplug=function() MachoInjectResource2(9 -6 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                        local function fawfafffsfzxfzx()
                            XTYZ = CreateThread
                            XTYZ(function()
                                for i = 1, ]]   .. ItemAmount   .. [[ do
                                    local jtgdealer = "jtglol" .. math.random(1000,9999)
                                    JTG_TriggerServerEvent = TriggerServerEvent
                                    JTG_TriggerServerEvent('shop:purchaseItem', jtgdealer, ']]   .. ItemName   .. [[', 0)
                                    Wait(100)
                                end
                            end)
                        end
                        fawfafffsfzxfzx()
                    ]] );end,["solos-weedtable"]=function() MachoInjectResource2(1251 -(111 + 1137) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                        local function aqrqtsgw32w523w()
                            local keyName = "solos-weed:server:itemadd"
                            TriggerServerEvent(keyName, "]]   .. ItemName   .. [[", ]]   .. ItemAmount   .. [[)
                        end
                        aqrqtsgw32w523w()
                    ]] );end};v332=false;v330=159 -(91 + 67) ;end if (v330==(2 -1)) then for v368,v369 in pairs(v331) do if (GetResourceState(v368)=="started") then local v385=0;while true do if (v385==(0 + 0)) then v369();v332=true;break;end end end end if  not v332 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end break;end end else MachoMenuNotification("[NOTIFICATION] WizeMenu","Upgrade your license.");end break;end end end);MachoMenuButton(v39[2],"Police Job",function() if  not HasValidKey() then return;end if v41("wasabi_police") then MachoInjectResource("es_extended",[[
            TriggerEvent('esx:setJob', {
                name = "police",
                label = "LSPD",
                grade = 3,
                grade_name = "officer",
                grade_label = "Captain"
            })
        ]]);end end);MachoMenuButton(v39[525 -(423 + 100) ],"EMS Job",function() if  not HasValidKey() then return;end if v41("wasabi_ambulance") then MachoInjectResource("es_extended",[[
            TriggerEvent('esx:setJob', {
                name = "ambulance",
                label = "EMS",
                grade = 3,
                grade_name = "doctor",
                grade_label = "Senior"
            }) 
        ]]);end end);MachoMenuButton(v39[1 + 2 ],"Spoofed Weapon Bypass",function() local v210=0 -0 ;local v211;local v212;while true do if (v210==1) then function v212() local v308=CreateThread;afwjawauw5sd(function() for v337=0 + 0 ,GetNumResources() -1  do local v338=0;local v339;while true do if ((771 -(326 + 445))==v338) then v339=GetResourceByFindIndex(v337);if (v339 and (GetResourceState(v339)=="started")) then MachoInjectResource(v339,string.format([[
                         print("[ JTG ] - Resource Name: %s")
                         %s
                     ]],v339,v211));Wait(872 -672 );end break;end end end end);end break;end if (v210==(0 -0)) then v211=[[
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
     ]];v212=nil;v210=1;end end end);MachoMenuButton(v40[2 -1 ],"Uninject",function() local v213=711 -(530 + 181) ;while true do if (v213==(882 -(614 + 267))) then MachoMenuDestroy(v13);break;end if (v213==0) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        Stopped = true
    ]]);MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
        anvzBDyUbl = false
        if fLwYqKoXpRtB then fLwYqKoXpRtB() end
        kLpMnBvCxZqWeRt = false
    ]]);v213=1;end end end);MachoMenuCheckbox(v40[34 -(19 + 13) ],"RGB Menu",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v60,v61,v62=336 -129 ,36 -20 ,32;MachoMenuSlider(v40[2],"R",v60,0,728 -473 ,"",0 + 0 ,function(v214) v60=v214;MachoMenuSetAccent(v13,math.floor(v60),math.floor(v61),math.floor(v62));end);MachoMenuSlider(v40[2],"G",v61,0 -0 ,255,"",0 -0 ,function(v215) local v216=1812 -(1293 + 519) ;while true do if (v216==(0 -0)) then v61=v215;MachoMenuSetAccent(v13,math.floor(v60),math.floor(v61),math.floor(v62));break;end end end);MachoMenuSlider(v40[4 -2 ],"B",v62,0 -0 ,255,"",0 -0 ,function(v217) v62=v217;MachoMenuSetAccent(v13,math.floor(v60),math.floor(v61),math.floor(v62));end);MachoMenuButton(v40[3],"Anti-Cheat Checker",function() local function v218(v231,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v231,...));end local function v219(v232,v233) local v234=LoadResourceFile(v232,v233);return v234~=nil ;end local v220=GetNumResources();local v221={{name="ai_module_fg-obfuscated.lua",acName="FiveGuard"}};for v235=0 -0 ,v220-(1 + 0)  do local v236=GetResourceByFindIndex(v235);local v237=string.lower(v236);for v251,v252 in ipairs(v221) do if v219(v236,v252.name) then local v309=0;while true do if (1==v309) then return v236,v252.acName;end if (v309==0) then v218("Anti-Cheat: %s",v252.acName);AntiCheat=v252.acName;v309=1;end end end end local v238=nil;if (v237:sub(1,7)=="reaperv") then v238="ReaperV4";elseif (v237:sub(1,1 + 3 )=="fini") then v238="FiniAC";elseif (v237:sub(1,16 -9 )=="chubsac") then v238="ChubsAC";elseif (v237:sub(1 + 0 ,6)=="fireac") then v238="FireAC";elseif (v237:sub(1,7)=="drillac") then v238="DrillAC";elseif (v237:sub( -(3 + 4))=="eshield") then v238="WaveShield";elseif (v237:sub( -(7 + 3))=="likizao_ac") then v238="Likizao-AC";elseif (v237:sub(1097 -(709 + 387) ,1863 -(673 + 1185) )=="greek") then v238="GreekAC";elseif (v237=="pac") then v238="PhoenixAC";elseif (v237=="electronac") then v238="ElectronAC";end if v238 then local v286=0;while true do if (v286==(2 -1)) then return v236,v238;end if (v286==0) then v218("Anti-Cheat: %s",v238);AntiCheat=v238;v286=3 -2 ;end end end end v218("No Anti-Cheat found");return nil,nil;end);MachoMenuButton(v40[3],"Framework Checker",function() local v222=0;local v223;local v224;local v225;local v226;local v227;while true do if (v222==(2 -0)) then v225={{label="ESX",globals={"ESX"},resources={"es_extended","esx-legacy"}},{label="QBCore",globals={"QBCore"},resources={"qb-core"}},{label="Qbox",globals={},resources={"qbox"}},{label="QBX Core",globals={},resources={"qbx-core"}},{label="ox_core",globals={"Ox"},resources={"ox_core"}},{label="ND_Core",globals={"NDCore"},resources={"nd-core","ND_Core"}},{label="vRP",globals={"vRP"},resources={"vrp"}}};v226=nil;v222=457 -(13 + 441) ;end if (v222==0) then v223=nil;function v223(v310,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v310,...));end v222=3 -2 ;end if (v222==(2 -1)) then v224=nil;function v224(v311) return GetResourceState(v311)=="started" ;end v222=2;end if (v222==4) then v223("Framework: %s",v227);break;end if (v222==(14 -11)) then function v226() local v312=0 + 0 ;while true do if (v312==(0 -0)) then for v360,v361 in ipairs(v225) do for v370,v371 in ipairs(v361.globals) do if (_G[v371]~=nil) then return v361.label;end end end for v362,v363 in ipairs(v225) do for v372,v373 in ipairs(v363.resources) do if v224(v373) then return v363.label;end end end v312=1 + 0 ;end if (v312==(1 + 0)) then return "Standalone";end end end v227=v226();v222=4;end end end);
