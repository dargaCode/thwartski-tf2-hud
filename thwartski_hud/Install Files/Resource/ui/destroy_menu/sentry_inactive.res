"Resource/UI/destroy_menu/sentry_inactive.res"
{
	"ItemNameLabel"
	{	
		"ControlName"	"CExLabel"
		"fieldName"		"ItemNameLabel"
		"font"			"HudFontSmallest"//"Default"
		"xpos"			"22"
		"ypos"			"16"
		"zpos"			"1"
		"wide"			"56"
		"tall"			"15"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"#TF_Object_Sentry"
		"textAlignment"	"Center"
		"dulltext"		"0"
		"brighttext"	"0"
	}
	
	"BuildingIconThwartski"	
	{
		"ControlName"	"CIconPanel"
		"fieldName"		"BuildingIconThwartski"
		"xpos"			"22"
		"ypos"			"33"
		"zpos"			"2"
		"wide"			"56"
		"tall"			"56"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"icon"			"hud_menu_sentry_build"
		"iconColor"		"128 122 40 255"
	}
	
	"ItemBackground"	
	{
		"ControlName"	"CIconPanel"
		"fieldName"		"ItemBackground"
		"xpos"			"4"
		"ypos"			"14"
		"zpos"			"0"
		"wide"			"98"
		"tall"			"105"
		"visible"		"0"
		"enabled"		"1"
		"scaleImage"	"1"	
		"icon"			"hud_menu_item_bg_outline"
		"iconColor"		"ProgressOffWhiteTransparent"
	}
	
	"NotBuiltLabel"
	{	
		"ControlName"	"CExLabel"
		"fieldName"		"NotBuiltLabel"
	    "font"			"HudFontSmallest"//"Default"
		"xpos"			"22"
		"ypos"			"94"
		"zpos"			"1"
		"wide"			"56"
		"tall"			"12"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"Not Yet Built"//"#Hud_Menu_Build_Already_Built"
		"textAlignment"	"Center"
		"dulltext"		"0"
		"brighttext"	"0"
		"fgcolor"		"84 80 35 255"
	}

	"UnavailableLabel"
	{	
		"ControlName"	"CExLabel"
		"fieldName"		"UnavailableLabel"
		"font"			"Default"
		"xpos"			"10"
		"ypos"			"48"
		"zpos"			"2"
		"wide"			"80"
		"tall"			"18"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"labelText"		"#Hud_Menu_Build_Unavailable"
		"textAlignment"	"Center"
		"dulltext"		"0"
		"brighttext"	"0"
	}		
			
	"NumberBg"	
	{
		"ControlName"	"CIconPanel"
		"fieldName"		"NumberBg"
		"xpos"			"41"
		"ypos"			"99"
		"zpos"			"0"
		"wide"			"18"
		"tall"			"18"
		"visible"		"0"
		"enabled"		"1"
		"scaleImage"	"1"	
		"icon"			"ico_key_blank"
		"iconColor"		"255 255 255 128"
	}
	
	"NumberLabel"
	{	
		"ControlName"	"CExLabel"
		"fieldName"		"NumberLabel"
		"font"			"HudMenuNumberFont"
		"fgcolor"		"Black"
		"xpos"			"0"
		"ypos"			"98"
		"zpos"			"1"
		"wide"			"100"
		"tall"			"18"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"labelText"		"1"
		"textAlignment"	"Center"
		"dulltext"		"1"
		"brighttext"	"0"
	}
}