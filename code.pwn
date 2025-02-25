cef_subscribe("radial:menu:click", "CEF_RadialMenu_1"); // OnGameModeInit


forward CEF_RadialMenu_1(playerid, const argument[]);
public CEF_RadialMenu_1(playerid, const argument[])
{
	new id, message[64];
	sscanf(argument, "ii", id);
	switch(id)
	{
	    case 1:
		{
            ShowPlayerListOwnbaleCar(playerid, D_FIXCAR);
            
			cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 2:
		{
			PlayerPassive[playerid] = !PlayerPassive[playerid];
			
			format(message, 64, "��������� �����: %d", PlayerPassive[playerid]);
			ChatNew(playerid, COLOR_YELLOW, message, "����������");
			
			cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
	    case 3:
		{
            callcmd::anim(playerid, "");
            
            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 4:
		{
            callcmd::stats(playerid);

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 5:
		{
            ChatNew(playerid, COLOR_YELLOW, "������������� � ������", "����������");
            
            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 6:
		{
            ChatNew(playerid, COLOR_YELLOW, "���� �����", "����������");
            
            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 7:
		{
            ChatNew(playerid, COLOR_YELLOW, "������ �����", "����������");
            
            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 8:
		{
            ChatNew(playerid, COLOR_YELLOW, "������ ���", "����������");
            
            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 9:
		{
            ChatNew(playerid, COLOR_YELLOW, "������� ��������", "����������");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 10:
		{
            ChatNew(playerid, COLOR_YELLOW, "������������ �������", "����������");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		//--------------------------------------------------------------------------------
		case 11:
		{
            ChatNew(playerid, COLOR_YELLOW, "��������� �� ��", "����������");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 12:
		{
            ChatNew(playerid, COLOR_YELLOW, "����������� �� ������������", "����������");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 13:
		{
            ChatNew(playerid, COLOR_YELLOW, "��������� ������� �� ����������", "����������");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 14:
		{
            ChatNew(playerid, COLOR_YELLOW, "������������� ���������", "����������");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 15:
		{
            ChatNew(playerid, COLOR_YELLOW, "������� ���������", "����������");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 16:
		{
            ChatNew(playerid, COLOR_YELLOW, "��������� ���������", "����������");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		//--------------------------------------------------------------------------------
		case 17:
		{
            ChatNew(playerid, COLOR_YELLOW, "������ �������� �������", "����������");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 18:
		{
            ChatNew(playerid, COLOR_YELLOW, "������������� ����������", "����������");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 19:
		{
            ChatNew(playerid, COLOR_YELLOW, "���������� ������", "����������");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		case 20:
		{
            ChatNew(playerid, COLOR_YELLOW, "������������� �������������", "����������");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false));
			cef_focus_browser(playerid, 832, false);
		}
		//--------------------------------------------------------------------------------
	}
	return 1;
}

CMD:radial(playerid) {
    ShowRadialMenu(playerid);
}

stock ShowRadialMenu(playerid)
{
    cef_focus_browser(playerid, 832, true);
    cef_emit_event(playerid, "radial:menu:visible", CEFINT(true), CEFINT(1));

	//cef_emit_event(playerid, "radial:menu:cars", CEFSTR("uploaded")); // ��� ���� ������ ��������� �� ������ �������� �� ����������
	//cef_emit_event(playerid, "radial:menu:cars", CEFSTR("unloaded")); // � ��� ���� �� ���������, �� ������������ ������ "��������� ���������"
	
	cef_emit_event(playerid, "radial:menu:passive", CEFINT(PlayerPassive[playerid])); // ��������� �����
	
	cef_emit_event(playerid, "radial:menu:sleep", CEFINT(false), CEFSTR("�� �� ������ ����� � ���� ������� ����, �������� ������ �����"));
	
	new Float:health;
	GetPlayerHealth(playerid, health);
	if(health > 60) {
		cef_emit_event(playerid, "radial:menu:apteka", CEFINT(false), CEFSTR("�� �� ���������� � �������"));
	}
	else cef_emit_event(playerid, "radial:menu:apteka", CEFINT(true), CEFSTR(""));

    if(!PI[playerid][pDrugs]) {
        cef_emit_event(playerid, "radial:menu:drugs", CEFINT(false), CEFSTR("� ��� ��� �������"));
	} else cef_emit_event(playerid, "radial:menu:drugs", CEFINT(true), CEFSTR(""));


	//cef_emit_event(playerid, "radial:menu:carlocation", CEFINT(false), CEFSTR("��������� ��������� ����������"));
	//cef_emit_event(playerid, "radial:menu:carlocation", CEFINT(true), CEFSTR(""));
	
	new nickname[32], str_1[128], str_2[128];
	GetPlayerName(playerid, nickname, sizeof(nickname));
	
	format(str_1, 128, "���������� (52 ms, 0.0% loss)");
	format(str_2, 128, "���������� (60 ms, 0.0% loss)");
	cef_emit_event(playerid, "radial:menu:info", CEFINT(GetOnlinePlayers()), CEFSTR(nickname), CEFSTR(str_1), CEFSTR(str_2));
	
	cef_emit_event(playerid, "radial:menu:time", CEFINT(52), CEFINT(28), CEFINT(7));
 	return 1;
}

stock GetOnlinePlayers() {
    new z;
    for(new i; i<GetMaxPlayers(); i++) if(IsPlayerConnected(i)) z++;
    return z;
}
