--[[------------------SPAGHETTICODE-------------------]]--
--[[█▀█ ██▀ ▀█▀ █▀█ █▀█ █    ▄▄ ▄ ▄ ▄▄▄ ▄▄▄ █▄▄ ▄▄  ▄▄]]--
--[[█▀▄ █▄▄  █  █▀▄ █▄█ █▄▄ ▀▄█ █▄█ █ █ █▄▄ █ █ ██▄ █ ]]--
--[[--------------------------------------------------]]--

--- Líneas para variables
-----------------------------------------------------------------------------------------
LOGOS = {
	DEFAULT = Graphics.loadImage("System/Medios/Logos/Default.png");
	DEFAULT_DEMO = Graphics.loadImage("System/Medios/Logos/Default_DEMO.png");
	MEGADRIVE = Graphics.loadImage("System/Medios/Logos/Megadrive.png");
	MASTERSYSTEM = Graphics.loadImage("System/Medios/Logos/MasterSystem.png");
	GAMEGEAR = Graphics.loadImage("System/Medios/Logos/GameGear.png");
	FAMICOM = Graphics.loadImage("System/Medios/Logos/Famicom.png");
	GAMEBOY = Graphics.loadImage("System/Medios/Logos/GameBoy.png");
	GAMEBOYCOLOR = Graphics.loadImage("System/Medios/Logos/GameBoyColor.png");
	GAMEBOYADVANCE = Graphics.loadImage("System/Medios/Logos/GameBoyAdvance.png");
	PLAYSTATION = Graphics.loadImage("System/Medios/Logos/PlayStation.png");
	ATARI2600 = Graphics.loadImage("System/Medios/Logos/Atari2600.png");
	SEGASG1000 = Graphics.loadImage("System/Medios/Logos/SegaSG1000.png");
	NEOGEOPOCKET = Graphics.loadImage("System/Medios/Logos/NeoGeoPocket.png");
	SUPERFAMICOM = Graphics.loadImage("System/Medios/Logos/SuperFamicom.png");
	APPS = Graphics.loadImage("System/Medios/Logos/Apps.png");
	PLAYSTATION2 = Graphics.loadImage("System/Medios/Logos/PlayStation2.png");
}; -- Pre cargar Logos

PRE_CARGADAS = {} -- Guarda todas las listas de cada emulador

JOYSTICK_LIMITE = 0 -- Define el límite de captura en los controles

PAD_IMG = {
	CIRCLE = Graphics.loadImage("System/Medios/Pads/circle.png");
	CROSS = Graphics.loadImage("System/Medios/Pads/cross.png");
	L1 = Graphics.loadImage("System/Medios/Pads/L1.png");
	R1 = Graphics.loadImage("System/Medios/Pads/R1.png");
	R3 = Graphics.loadImage("System/Medios/Pads/R3.png");
	SELECT_S = Graphics.loadImage("System/Medios/Pads/select.png");
	SQUARE = Graphics.loadImage("System/Medios/Pads/square.png");
	TRIANGLE = Graphics.loadImage("System/Medios/Pads/triangle.png");
	START = Graphics.loadImage("System/Medios/Pads/start.png");
}; -- Pre cargar imágenes de los Pads 

COLOR = {
	BLANCO = Color.new(128,128,128);
	BLANCO_LISTA = Color.new(128,128,128);
	NEGRO = Color.new(0,0,0);
	NEGRO_T = Color.new(0,0,0,85);
	BLANCO_T = Color.new(128,128,128,20);
}; -- Define los colores básicos

OPCIONES = {
	RGB_ON = 1;
	FONDO_RGB_ON = 1;
	FONDO_RGB_FIJO_ON = 0;
	R = 0;
	G = 80;
	B = 120;
	CAMBIO_FUENTE_ON = 1;
	FUENTES_ENCONTRADAS = {};
	CAMBIO_FONDO_ON = 1;
	FONDO_ENCONTRADOS = {};
	GUI_LIMPIA_ON = 0;
	APPS_MENU_FULL_PATH = 0;
	LIMITADOR_RAM_ON = 0;
	SALIDA_RETROLANCHER_ON = 0;
	SALIDA_RETROLANCHER = "PS2 SYSTEM MENU";
	SALIDA_DIR_ACTUALES = {};
	SALIDA_DIR_ANTERIORES = {};
	SOUND_ON = 0; 
	SCREENSHOT_BACK_ON = 0;
	SOUND_VOLUME = 65;
	SCANLINES_ON = 0;
	VIBRATION_ON = 0;
	DIR_EXTRAS_ON = 1;
	PREGUNTAR_PS2 = false;
}; -- Define los colores usados en el menú de opciones y las configuraciones

SISTEMAS = {
	MEGADRIVE_ON = 1;
	MASTERSYSTEM_ON = 1;
	GAMEGEAR_ON = 1;
	FAMICOM_ON = 1;
	GAMEBOY_ON = 1;
	GAMEBOYCOLOR_ON = 1;
	GAMEBOYADVANCE_ON = 1;
	PLAYSTATION_ON = 1;
	ATARI2600_ON = 1;
	SEGASG1000_ON = 1;
	NEOGEOPOCKET_ON = 1;
	SUPERFAMICOM_ON = 1;
	APPS_ON = 1;
	PLAYSTATION2_ON = 1;
}; -- Define el estado de los emuladores -Actvado/Desactivado-

CONTROL = {
	ANCHO = 640;
	ALTO = 480;
	LADO_ANI = false;
	SELECTOR = 1;
	ESTILO = 1;
	LISTA_ANCHO = 30;
	LISTA_ALTO = 90;
	IMG_ANCHO = 358;
	IMG_ALTO = 92;
	LOGO_ANCHO = 194;
	LOGO_ALTO = 5;
	Font.ftInit();
	fontARCA = Font.ftLoad("System/Medios/Font/PublicPixel.ttf");
	JOYSTICK_ON = false;
	TIME = Timer.new();
	TIEMPO = 0;
	ESPERA_CARGA_SCR = false;
	PAUSA_SCR_TEX = 0;
	EXTENSION = 5;
	FPS = Screen.getFPS(1);
}; -- Define las variables usadas para la ejecución del programa

LISTAS = {
	FONDO = Graphics.loadImage("System/Medios/Default/FONDO.png");
	LOADING = Graphics.loadImage("System/Medios/Default/LOADING.png");
	COVER_DEFAULT = Graphics.loadImage("System/Medios/Default/COVER_DEFAULT.png");
	SCREENSHOT_DEFAULT = Graphics.loadImage("System/Medios/Default/SCREENSHOT_DEFAULT.png");
	SCANLINES = Graphics.loadImage("System/Medios/Default/SCANLINES.png");
	LOGO = LOGOS.DEFAULT;
	IDENTIDAD = 1;
	INDICE = 1;
	INDICE2 = 1;
	INDICE3 = 1;
	ROMS = {};
	DIR_FULL_APP = {};
	MOSTRAR = 0;
	ART_LIMITE = 7;
	SCREENSHOT_ON = false;
	SCREENSHOT_FULL = false;
	COVER_ART = nil;
	COVER_DIR = "nada";
	COVER_ART2 = nil;
	COVER_DIR2 = "nada";
	COVER_ART3 = nil;
	COVER_DIR3 = "nada";
	SCREENSHOT = nil;
	SCREENSHOT_DIR = "nada";
	SCROLL_TEX = 1;
	EXISTE_COV = false;
	EXISTE_SCR = false;
	EXISTE_COV2 = false;
	EXISTE_COV3 = false;
}; -- Define las variables usadas para la ejecución de las listas

CAMBIOS_EMUS = {
	COLOR_EMU = Color.new(0,0,0);
	COLOR_EMU_BACK = Color.new(0,80,120);
	COLOR_ACTUAL = 0;
	COLOR_MAX = 0;
	COLOR_MIN = 0;
	RGB_COLOR = 1;
	CAM_COLOR_ACTUAL = false ;
	R = 0;
	G = 80;
	B = 120;
}; -- Define los colores usados para cada emulador

--- Líneas para audio
-----------------------------------------------------------------------------------------
-- Define formato de audio
Sound.setFormat(16,48000,4)

function set_volume() -- Define el volumen
	Sound.setADPCMVolume(1,OPCIONES.SOUND_VOLUME)
	if OPCIONES.SOUND_VOLUME >= 9 then
		Sound.setADPCMVolume(2,OPCIONES.SOUND_VOLUME-8)
	else
		Sound.setADPCMVolume(2,0)
	end
	Sound.setADPCMVolume(3,OPCIONES.SOUND_VOLUME)
	Sound.setADPCMVolume(4,OPCIONES.SOUND_VOLUME)
end

function verificar_sonidos(sonido,dir) -- Verifica los sonidos
	local actual = System.currentDirectory()
	if doesFileExist(actual .."/".. dir) then
		sonido = Sound.loadADPCM(dir)
	else 
		sonido = nil
	end
	return sonido
end

MENU_SONIDOS = {
	ERROR = verificar_sonidos(ERROR,"System/Medios/Sound/Menu/error.adp");
	CANCELAR = verificar_sonidos(CANCELAR,"System/Medios/Sound/Menu/back.adp");
	MOVER = verificar_sonidos(MOVER,"System/Medios/Sound/Menu/move.adp");
	MUSICA = verificar_sonidos(MUSICA,"System/Medios/Sound/Background/music.adp");
	EJECUTAR = verificar_sonidos(EJECUTAR,"System/Medios/Sound/Menu/run.adp");
	NETX = verificar_sonidos(NETX,"System/Medios/Sound/Menu/next.adp");
}; -- Pre cargar sonidos del menu

--- Líneas para funciones
-----------------------------------------------------------------------------------------
function refrescar() -- Refrescar pantalla
	if OPCIONES.SCANLINES_ON == 1 and LISTAS.SCANLINES ~= nil then
		Graphics.drawScaleImage(LISTAS.SCANLINES,-5,0,CONTROL.ANCHO+5,CONTROL.ALTO)
	end
	Screen.flip()
	if OPCIONES.LIMITADOR_RAM_ON == 1 then
		collectgarbage("collect")
	end
	if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.MUSICA ~= nil then
		Sound.playADPCM(2,MENU_SONIDOS.MUSICA)
	end
end

function orden_alfabetico(a,b) -- Ordena las listas ignorando mayúsculas
	return a:lower() < b:lower()
end

function capturar(limite) -- Controla los tiempos de captura y pausa para los controles
	if CONTROL.JOYSTICK_ON == false or limite >= CONTROL.FPS//3 then
		PAD = Pads.get()
		JOYSTICK_LIMITE = 0
		CONTROL.JOYSTICK_ON = false				
	end
	if CONTROL.JOYSTICK_ON == true then
		PAD = 0 
		JOYSTICK_LIMITE = JOYSTICK_LIMITE+1
		Pads.rumble(0,0)
	end
end

function control_FPS(vel) -- Cambia los tiempos de captura de los controles, de acuerdo a los FPS
	if vel == 1 then
		return 0-CONTROL.FPS//3
	elseif vel == 2 then
		if CONTROL.FPS <= 3 then
			return CONTROL.FPS
		elseif CONTROL.FPS <= 8 then
			return 0+CONTROL.FPS//3
		elseif CONTROL.FPS >= 9 then
			return CONTROL.FPS//4
		end
	end
end

function salida_texto_dir(texto,archivo) -- Determina directorio de la aplicación
	if archivo == false then
		local final_dir = string.reverse(texto)
		local borrar = string.find(final_dir,"/",1,false)
		final_dir = string.reverse(final_dir)
		if borrar ~= nil then
			final_dir = string.sub(final_dir,1,-borrar)
		end
		return final_dir
	elseif archivo == true then
		local final_dir = string.reverse(texto)
		local borrar = string.find(final_dir,"/",1,false)
		final_dir = string.reverse(final_dir)
		if borrar ~= nil then
			final_dir = string.sub(final_dir,-borrar+1)
		end
		return final_dir
	end
end
		
function tiempo_arte() -- Retarda la carga de imágenes
	if LISTAS.MOSTRAR <= LISTAS.ART_LIMITE+1 then
		LISTAS.MOSTRAR = LISTAS.MOSTRAR+1
	else
		LISTAS.MOSTRAR = LISTAS.ART_LIMITE+2
	end
end

function indices_extras() -- Cambia los índices de las imágenes extras
	if LISTAS.INDICE >= 2 then
		LISTAS.INDICE2 = LISTAS.INDICE-1
	else
		LISTAS.INDICE2 = #LISTAS.ROMS
	end
	if LISTAS.INDICE <= #LISTAS.ROMS-1 then
		LISTAS.INDICE3 = LISTAS.INDICE+1
	else
		LISTAS.INDICE3 = 1
	end
end

function limpiar_art() -- Elimina las imágenes de memoria
	if CONTROL.ESTILO <= 1 or CONTROL.ESTILO >= 3 then
		if LISTAS.COVER_ART ~= nil then
			Graphics.freeImage(LISTAS.COVER_ART)
			LISTAS.COVER_ART = nil
		end
		if LISTAS.SCREENSHOT ~= nil then
			Graphics.freeImage(LISTAS.SCREENSHOT)
			LISTAS.SCREENSHOT = nil
		end
	elseif CONTROL.ESTILO == 2 then
		if LISTAS.COVER_ART ~= nil then
			Graphics.freeImage(LISTAS.COVER_ART)
			LISTAS.COVER_ART = nil
		end
		if LISTAS.SCREENSHOT ~= nil then
			Graphics.freeImage(LISTAS.SCREENSHOT)
			LISTAS.SCREENSHOT = nil
		end
		if LISTAS.COVER_ART2 ~= nil then
			Graphics.freeImage(LISTAS.COVER_ART2)
			LISTAS.COVER_ART2 = nil
		end
		if LISTAS.COVER_ART3 ~= nil then
			Graphics.freeImage(LISTAS.COVER_ART3)
			LISTAS.COVER_ART3 = nil
		end
	end
end

function cargar_art() -- Cargar imágenes en memoria 
	local actual = System.currentDirectory()
	local nombre = string.sub(LISTAS.ROMS[LISTAS.INDICE],1,-CONTROL.EXTENSION)
	local nombre2 = "nada"
	local nombre3 = "nada"
	if CONTROL.ESTILO == 2 then
		nombre2 = string.sub(LISTAS.ROMS[LISTAS.INDICE2],1,-CONTROL.EXTENSION)
		nombre3 = string.sub(LISTAS.ROMS[LISTAS.INDICE3],1,-CONTROL.EXTENSION)
	end
	if LISTAS.IDENTIDAD == 1 and LISTAS.MOSTRAR == 1 then -- Generar nombre de Sega Megadrive
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers Sega Megadrive/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots Sega Megadrive/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers Sega Megadrive/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers Sega Megadrive/".. nombre3 ..".png")
		end
	elseif LISTAS.IDENTIDAD == 2 and LISTAS.MOSTRAR == 1 then -- Generar nombre de Sega Master System
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers Sega Master System/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots Sega Master System/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers Sega Master System/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers Sega Master System/".. nombre3 ..".png")
		end
	elseif LISTAS.IDENTIDAD == 3 and LISTAS.MOSTRAR == 1 then -- Generar nombre de Sega Game Gear
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers Sega Game Gear/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots Sega Game Gear/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers Sega Game Gear/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers Sega Game Gear/".. nombre3 ..".png")
		end
	elseif LISTAS.IDENTIDAD == 4 and LISTAS.MOSTRAR == 1 then -- Generar nombre de Nintendo Famicom
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers Nintendo Famicom/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots Nintendo Famicom/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers Nintendo Famicom/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers Nintendo Famicom/".. nombre3 ..".png")
		end
	elseif LISTAS.IDENTIDAD == 5 and LISTAS.MOSTRAR == 1 then -- Generar nombre de Nintendo Game Boy
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers Nintendo Game Boy/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots Nintendo Game Boy/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers Nintendo Game Boy/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers Nintendo Game Boy/".. nombre3 ..".png")
		end
	elseif LISTAS.IDENTIDAD == 6 and LISTAS.MOSTRAR == 1 then -- Generar nombre de Nintendo Game Boy Color
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers Nintendo Game Boy Color/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots Nintendo Game Boy Color/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers Nintendo Game Boy Color/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers Nintendo Game Boy Color/".. nombre3 ..".png")
		end
	elseif LISTAS.IDENTIDAD == 7 and LISTAS.MOSTRAR == 1 then -- Generar nombre de Nintendo Game Boy Advance
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers Nintendo Game Boy Advance/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots Nintendo Game Boy Advance/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers Nintendo Game Boy Advance/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers Nintendo Game Boy Advance/".. nombre3 ..".png")
		end
	elseif LISTAS.IDENTIDAD == 8 and LISTAS.MOSTRAR == 1 then -- Generar nombre de Play Station
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers PlayStation/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots PlayStation/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers PlayStation/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers PlayStation/".. nombre3 ..".png")
		end
	elseif LISTAS.IDENTIDAD == 9 and LISTAS.MOSTRAR == 1 then -- Generar nombre de Atari 2600
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers Atari 2600/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots Atari 2600/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers Atari 2600/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers Atari 2600/".. nombre3 ..".png")
		end
	elseif LISTAS.IDENTIDAD == 10 and LISTAS.MOSTRAR == 1 then -- Generar nombre de Sega SG-1000
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers Sega SG-1000/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots Sega SG-1000/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers Sega SG-1000/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers Sega SG-1000/".. nombre3 ..".png")
		end
	elseif LISTAS.IDENTIDAD == 11 and LISTAS.MOSTRAR == 1 then -- Generar nombre de Neo Geo Pocket
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers Neo Geo Pocket/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots Neo Geo Pocket/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers Neo Geo Pocket/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers Neo Geo Pocket/".. nombre3 ..".png")
		end
	elseif LISTAS.IDENTIDAD == 12 and LISTAS.MOSTRAR == 1 then -- Generar nombre de Super Famicom
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers Nintendo Super Famicom/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots Nintendo Super Famicom/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers Nintendo Super Famicom/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers Nintendo Super Famicom/".. nombre3 ..".png")
		end
	elseif LISTAS.IDENTIDAD == 13 and LISTAS.MOSTRAR == 1 then -- Generar nombre de APPS
		if OPCIONES.APPS_MENU_FULL_PATH == 1 then
			nombre = salida_texto_dir(string.sub(LISTAS.ROMS[LISTAS.INDICE],1,-CONTROL.EXTENSION),true)
			if CONTROL.ESTILO == 2 then 
				nombre2 = salida_texto_dir(string.sub(LISTAS.ROMS[LISTAS.INDICE2],1,-CONTROL.EXTENSION),true)
				nombre3 = salida_texto_dir(string.sub(LISTAS.ROMS[LISTAS.INDICE3],1,-CONTROL.EXTENSION),true)
			end
		end
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers APPS/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots APPS/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers APPS/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers APPS/".. nombre3 ..".png")
		end
	elseif LISTAS.IDENTIDAD == 14 and LISTAS.MOSTRAR == 1 then -- Generar nombre de Play Station 2
		LISTAS.COVER_DIR = (actual .."/Multimedia/Covers/Covers PlayStation 2/".. nombre ..".png")
		LISTAS.SCREENSHOT_DIR = (actual .."/Multimedia/Screenshots/Screenshots PlayStation 2/".. nombre ..".png")
		if CONTROL.ESTILO == 2 then
			LISTAS.COVER_DIR2 = (actual .."/Multimedia/Covers/Covers PlayStation 2/".. nombre2 ..".png")
			LISTAS.COVER_DIR3 = (actual .."/Multimedia/Covers/Covers PlayStation 2/".. nombre3 ..".png")
		end
	end
	if LISTAS.MOSTRAR == LISTAS.ART_LIMITE then
		if doesFileExist(LISTAS.COVER_DIR) then
			LISTAS.COVER_ART = Graphics.loadImage(LISTAS.COVER_DIR)
			LISTAS.EXISTE_COV = true
		else
			LISTAS.COVER_ART = nil
			LISTAS.EXISTE_COV = false
		end
		if doesFileExist(LISTAS.SCREENSHOT_DIR) then
			LISTAS.SCREENSHOT = Graphics.loadImage(LISTAS.SCREENSHOT_DIR)
			LISTAS.EXISTE_SCR = true
		else
			LISTAS.SCREENSHOT = nil
			LISTAS.EXISTE_SCR = false
		end
		if CONTROL.ESTILO == 2 then
			if doesFileExist(LISTAS.COVER_DIR2) then
				LISTAS.COVER_ART2 = Graphics.loadImage(LISTAS.COVER_DIR2)
				LISTAS.EXISTE_COV2 = true
			else
				LISTAS.COVER_ART2 = nil
				LISTAS.EXISTE_COV2 = false
			end
			if doesFileExist(LISTAS.COVER_DIR3) then
				LISTAS.COVER_ART3 = Graphics.loadImage(LISTAS.COVER_DIR3)
				LISTAS.EXISTE_COV3 = true
			else
				LISTAS.COVER_ART3 = nil
				LISTAS.EXISTE_COV3 = false
			end
		end
	end
end

function guardar() -- Guardar último ROM y emulador usado
	local actual = System.currentDirectory()
	local config = ("".. LISTAS.IDENTIDAD .." ".. LISTAS.INDICE .."")
	if doesFileExist(actual .."/System/Config/Config.cfg") then
		local carga_de_config = System.openFile("System/Config/Config.cfg",FWRITE)
		System.writeFile(carga_de_config,config .."                              ",string.len(config)+30)
		System.closeFile(carga_de_config)
	else
		if doesFileExist(actual .."/System/Respaldo/Config.cfg") then
			System.copyFile(actual .."/System/Respaldo/Config.cfg","System/Config/Config.cfg")
			guardar()
		else
			error("No found ".. actual .."/System/Respaldo/Config.cfg")
		end
	end
end

function cargar_directorio_elf() -- Carga el directorio de salida seleccionado 
	local actual = System.currentDirectory()
	if doesFileExist(actual .."/System/Config/Path_file.cfg") then
		local carga_de_dir = System.openFile(actual .."/System/Config/Path_file.cfg",FREAD)
		System.seekFile(carga_de_dir,0,SET)
		local size = System.sizeFile(carga_de_dir)
		local temp_dir = System.readFile(carga_de_dir,size)
		if temp_dir ~= "PS2 SYSTEM MENU" and doesFileExist(temp_dir) then
			OPCIONES.SALIDA_RETROLANCHER = temp_dir
			return true
		else
			OPCIONES.SALIDA_RETROLANCHER = "PS2 SYSTEM MENU"
			OPCIONES.SALIDA_DIR_ACTUALES = {}
			OPCIONES.SALIDA_DIR_ANTERIORES = {}
			return false
		end
		System.closeFile(carga_de_dir)
	else
		guardar_directorio_elf()
		cargar_directorio_elf()
	end
end

function guardar_directorio_elf() -- Guardar el directorio de salida seleccionado 
	local actual = System.currentDirectory()
	local dir = ("".. OPCIONES.SALIDA_RETROLANCHER .."")
	if doesFileExist(actual .."/System/Config/Path_file.cfg") then
		System.removeFile(actual .."/System/Config/Path_file.cfg")
	end
	local carga_de_dir = System.openFile("System/Config/Path_file.cfg",FCREATE)
	System.writeFile(carga_de_dir,dir,string.len(dir))
	System.closeFile(carga_de_dir)
end

function guardar_opciones() -- Guardar opciones
	local actual = System.currentDirectory()
	local config = ("".. OPCIONES.RGB_ON .." ".. OPCIONES.FONDO_RGB_ON .." ".. OPCIONES.FONDO_RGB_FIJO_ON .." ".. OPCIONES.R .." ".. OPCIONES.G .." ".. OPCIONES.B .." ".. CONTROL.ESTILO .." ".. SISTEMAS.MEGADRIVE_ON .." ".. SISTEMAS.MASTERSYSTEM_ON .." ".. SISTEMAS.GAMEGEAR_ON .." ".. SISTEMAS.FAMICOM_ON .." ".. SISTEMAS.GAMEBOY_ON .." ".. SISTEMAS.GAMEBOYCOLOR_ON .." ".. SISTEMAS.GAMEBOYADVANCE_ON .." ".. SISTEMAS.PLAYSTATION_ON .." ".. SISTEMAS.ATARI2600_ON .." ".. SISTEMAS.SEGASG1000_ON .." ".. SISTEMAS.NEOGEOPOCKET_ON .." ".. SISTEMAS.SUPERFAMICOM_ON .." ".. SISTEMAS.APPS_ON .." ".. OPCIONES.CAMBIO_FUENTE_ON .." ".. OPCIONES.CAMBIO_FONDO_ON .." ".. OPCIONES.GUI_LIMPIA_ON .." ".. OPCIONES.LIMITADOR_RAM_ON .." ".. OPCIONES.SALIDA_RETROLANCHER_ON .." ".. OPCIONES.APPS_MENU_FULL_PATH .." ".. OPCIONES.SOUND_ON .." ".. OPCIONES.SOUND_VOLUME .." ".. OPCIONES.SCREENSHOT_BACK_ON .." ".. OPCIONES.SCANLINES_ON .." ".. OPCIONES.VIBRATION_ON .." ".. SISTEMAS.PLAYSTATION2_ON .." ".. OPCIONES.DIR_EXTRAS_ON .."")
	if doesFileExist(actual .."/System/Config/System.cfg") then
		local carga_de_opciones = System.openFile("System/Config/System.cfg",FWRITE)
		System.writeFile(carga_de_opciones,config .."                              ",string.len(config)+30)
		System.closeFile(carga_de_opciones)
	else
		if doesFileExist(actual .."/System/Respaldo/System.cfg") then
			System.copyFile(actual .."/System/Respaldo/System.cfg","System/Config/System.cfg")
			guardar_opciones()
		else
			error("No found ".. actual .."/System/Respaldo/System.cfg")
		end
	end
end

function cargar_config() -- Cargar último ROM y emulador usado / Cargar opciones guardadas
	local actual = System.currentDirectory()
	local config2 = ("".. OPCIONES.RGB_ON .." ".. OPCIONES.FONDO_RGB_ON .." ".. OPCIONES.FONDO_RGB_FIJO_ON .." ".. OPCIONES.R .." ".. OPCIONES.G .." ".. OPCIONES.B .." ".. CONTROL.ESTILO .." ".. SISTEMAS.MEGADRIVE_ON .." ".. SISTEMAS.MASTERSYSTEM_ON .." ".. SISTEMAS.GAMEGEAR_ON .." ".. SISTEMAS.FAMICOM_ON .." ".. SISTEMAS.GAMEBOY_ON .." ".. SISTEMAS.GAMEBOYCOLOR_ON .." ".. SISTEMAS.GAMEBOYADVANCE_ON .." ".. SISTEMAS.PLAYSTATION_ON .." ".. SISTEMAS.ATARI2600_ON .." ".. SISTEMAS.SEGASG1000_ON .." ".. SISTEMAS.NEOGEOPOCKET_ON .." ".. SISTEMAS.SUPERFAMICOM_ON .." ".. SISTEMAS.APPS_ON .." ".. OPCIONES.CAMBIO_FUENTE_ON .." ".. OPCIONES.CAMBIO_FONDO_ON .." ".. OPCIONES.GUI_LIMPIA_ON .." ".. OPCIONES.LIMITADOR_RAM_ON .." ".. OPCIONES.SALIDA_RETROLANCHER_ON .." ".. OPCIONES.APPS_MENU_FULL_PATH .." ".. OPCIONES.SOUND_ON .." ".. OPCIONES.SOUND_VOLUME .." ".. OPCIONES.SCREENSHOT_BACK_ON .." ".. OPCIONES.SCANLINES_ON .." ".. OPCIONES.VIBRATION_ON .." ".. SISTEMAS.PLAYSTATION2_ON .." ".. OPCIONES.DIR_EXTRAS_ON .."")
	if doesFileExist(actual .."/System/Config/System.cfg") then
		local carga_de_config2 = System.openFile(actual .."/System/Config/System.cfg",FREAD)
		System.seekFile(carga_de_config2,0,SET)
		local temp2 = System.readFile(carga_de_config2,string.len(config2)+30)
		local lista_config2 = {}
		for linea in string.gmatch(temp2,"%d+") do 
			table.insert(lista_config2,tonumber(linea))
		end
		if lista_config2 ~= nil and #lista_config2 == 33 then
			if lista_config2[1] <= 1 and lista_config2[1] >= 0 then
				OPCIONES.RGB_ON = lista_config2[1]
			end
			if lista_config2[2] <= 1 and lista_config2[2] >= 0 then
				OPCIONES.FONDO_RGB_ON = lista_config2[2]
			end
			if lista_config2[3] <= 1 and lista_config2[3] >= 0 then
				OPCIONES.FONDO_RGB_FIJO_ON = lista_config2[3]
			end
			if lista_config2[4] <= 128 and lista_config2[4] >= 0 then
				OPCIONES.R = lista_config2[4]
			end
			if lista_config2[5] <= 128 and lista_config2[5] >= 0 then
				OPCIONES.G = lista_config2[5]
			end
			if lista_config2[6] <= 128 and lista_config2[6] >= 0 then
				OPCIONES.B = lista_config2[6]
			end
			if lista_config2[7] >= 1 and lista_config2[7] <= 6 then
				CONTROL.ESTILO = lista_config2[7]
				if CONTROL.ESTILO == 1 then
					CONTROL.IMG_ANCHO = 358
					CONTROL.IMG_ALTO = 92
					CONTROL.LISTA_ANCHO = 30
					CONTROL.LISTA_ALTO = 90
				elseif CONTROL.ESTILO == 2 then
					CONTROL.IMG_ANCHO = 195
					CONTROL.IMG_ALTO = 110
					CONTROL.LISTA_ANCHO = 30
					CONTROL.LISTA_ALTO = 90
				elseif CONTROL.ESTILO == 3 then
					CONTROL.IMG_ANCHO = 340
					CONTROL.IMG_ALTO = 92
					CONTROL.LISTA_ANCHO = 48
					CONTROL.LISTA_ALTO = 300
				elseif CONTROL.ESTILO == 4 then
					CONTROL.IMG_ANCHO = 333
					CONTROL.IMG_ALTO = 92
					CONTROL.LISTA_ANCHO = 10
					CONTROL.LISTA_ALTO = 90
				elseif CONTROL.ESTILO == 5 then
					CONTROL.IMG_ANCHO = 12
					CONTROL.IMG_ALTO = 20
					CONTROL.LISTA_ANCHO = 10
					CONTROL.LISTA_ALTO = 300
				elseif CONTROL.ESTILO == 6 then
					CONTROL.IMG_ANCHO = 333
					CONTROL.IMG_ALTO = 10
					CONTROL.LISTA_ANCHO = 22
					CONTROL.LISTA_ALTO = 90
				end
			end
			if lista_config2[8] <= 1 and lista_config2[8] >= 0 then
				SISTEMAS.MEGADRIVE_ON = lista_config2[8]
				if SISTEMAS.MEGADRIVE_ON == 0 then
					PRE_CARGADAS[1] = {}
				end
			end
			if lista_config2[9] <= 1 and lista_config2[9] >= 0 then
				SISTEMAS.MASTERSYSTEM_ON = lista_config2[9]
				if SISTEMAS.MASTERSYSTEM_ON == 0 then
					PRE_CARGADAS[2] = {}
				end
			end
			if lista_config2[10] <= 1 and lista_config2[10] >= 0 then
				SISTEMAS.GAMEGEAR_ON = lista_config2[10]
				if SISTEMAS.GAMEGEAR_ON == 0 then
					PRE_CARGADAS[3] = {}
				end
			end
			if lista_config2[11] <= 1 and lista_config2[11] >= 0 then
				SISTEMAS.FAMICOM_ON = lista_config2[11]
				if SISTEMAS.FAMICOM_ON == 0 then
					PRE_CARGADAS[4] = {}
				end
			end
			if lista_config2[12] <= 1 and lista_config2[12] >= 0 then
				SISTEMAS.GAMEBOY_ON = lista_config2[12]
				if SISTEMAS.GAMEBOY_ON == 0 then
					PRE_CARGADAS[5] = {}
				end
			end
			if lista_config2[13] <= 1 and lista_config2[13] >= 0 then
				SISTEMAS.GAMEBOYCOLOR_ON = lista_config2[13]
				if SISTEMAS.GAMEBOYCOLOR_ON == 0 then
					PRE_CARGADAS[6] = {}
				end
			end
			if lista_config2[14] <= 1 and lista_config2[14] >= 0 then
				SISTEMAS.GAMEBOYADVANCE_ON = lista_config2[14]
				if SISTEMAS.GAMEBOYADVANCE_ON == 0 then
					PRE_CARGADAS[7] = {}
				end
			end
			if lista_config2[15] <= 1 and lista_config2[15] >= 0 then
				SISTEMAS.PLAYSTATION_ON = lista_config2[15]
				if SISTEMAS.PLAYSTATION_ON == 0 then
					PRE_CARGADAS[8] = {}
				end
			end
			if lista_config2[16] <= 1 and lista_config2[16] >= 0 then
				SISTEMAS.ATARI2600_ON = lista_config2[16]
				if SISTEMAS.ATARI2600_ON == 0 then
					PRE_CARGADAS[9] = {}
				end
			end
			if lista_config2[17] <= 1 and lista_config2[17] >= 0 then
				SISTEMAS.SEGASG1000_ON = lista_config2[17]
				if SISTEMAS.SEGASG1000_ON == 0 then
					PRE_CARGADAS[10] = {}
				end
			end
			if lista_config2[18] <= 1 and lista_config2[18] >= 0 then
				SISTEMAS.NEOGEOPOCKET_ON = lista_config2[18]
				if SISTEMAS.NEOGEOPOCKET_ON == 0 then
					PRE_CARGADAS[11] = {}
				end
			end
			if lista_config2[19] <= 1 and lista_config2[19] >= 0 then
				SISTEMAS.SUPERFAMICOM_ON = lista_config2[19]
				if SISTEMAS.SUPERFAMICOM_ON == 0 then
					PRE_CARGADAS[12] = {}
				end
			end
			if lista_config2[20] <= 1 and lista_config2[20] >= 0 then
				SISTEMAS.APPS_ON = lista_config2[20]
				if SISTEMAS.APPS_ON == 0 then
					PRE_CARGADAS[13] = {}
				end
			end
			if lista_config2[21] ~= 1 and lista_config2[21] >= 2 then
				buscar_fuentes()
				if lista_config2[21] <= #OPCIONES.FUENTES_ENCONTRADAS then
					Font.ftUnload(CONTROL.fontARCA)
					CONTROL.fontARCA = Font.ftLoad(OPCIONES.FUENTES_ENCONTRADAS[lista_config2[21]])
					OPCIONES.CAMBIO_FUENTE_ON = lista_config2[21]
				else
					OPCIONES.CAMBIO_FUENTE_ON = 1
				end
			end
			if lista_config2[22] ~= 1 and lista_config2[22] >= 2 then
				buscar_fondos()
				if lista_config2[22] <= #OPCIONES.FONDO_ENCONTRADOS then
					Graphics.freeImage(LISTAS.FONDO)
					LISTAS.FONDO = Graphics.loadImage(OPCIONES.FONDO_ENCONTRADOS[lista_config2[22]])
					OPCIONES.CAMBIO_FONDO_ON = lista_config2[22]
				else
					OPCIONES.CAMBIO_FONDO_ON = 1
				end
			end
			if lista_config2[23] <= 1 and lista_config2[23] >= 0 then
				OPCIONES.GUI_LIMPIA_ON = lista_config2[23]
			end
			if lista_config2[24] <= 1 and lista_config2[24] >= 0 then
				OPCIONES.LIMITADOR_RAM_ON = lista_config2[24]
			end
			if lista_config2[25] <= 3 and lista_config2[25] >= 0 then
				if lista_config2[25]  >= 1  and cargar_directorio_elf() == true then
					OPCIONES.SALIDA_RETROLANCHER_ON = lista_config2[25]
				else
					OPCIONES.SALIDA_RETROLANCHER_ON = 0
				end
			end
			if lista_config2[26] <= 1 and lista_config2[26] >= 0 then
				OPCIONES.APPS_MENU_FULL_PATH = lista_config2[26]
				if OPCIONES.APPS_MENU_FULL_PATH == 1 then
					PRE_CARGADAS[13] = crear_listas(13,PRE_CARGADAS[13])
				end
			end
			if lista_config2[27] <= 1 and lista_config2[27] >= 0 then
				OPCIONES.SOUND_ON = lista_config2[27]
			end
			if lista_config2[28] <= 100 and lista_config2[28] >= 0 then
				OPCIONES.SOUND_VOLUME = lista_config2[28]
				set_volume()
			end
			if lista_config2[29] <= 1 and lista_config2[29] >= 0 then
				OPCIONES.SCREENSHOT_BACK_ON = lista_config2[29]
			end
			if lista_config2[30] <= 1 and lista_config2[30] >= 0 then
				OPCIONES.SCANLINES_ON = lista_config2[30]
			end
			if lista_config2[31] <= 1 and lista_config2[31] >= 0 then
				OPCIONES.VIBRATION_ON = lista_config2[31]
			end
			if lista_config2[32] <= 1 and lista_config2[32] >= 0 then
				SISTEMAS.PLAYSTATION2_ON = lista_config2[32]
				if SISTEMAS.PLAYSTATION2_ON == 0 then
					PRE_CARGADAS[14] = {}
				end
			end
			if lista_config2[33] <= 1 and lista_config2[33] >= 0 then
				OPCIONES.DIR_EXTRAS_ON = lista_config2[33]
				if OPCIONES.DIR_EXTRAS_ON == 0 then
					PRE_CARGADAS[13] = crear_listas(13,PRE_CARGADAS[13])
					PRE_CARGADAS[14] = crear_listas(14,PRE_CARGADAS[14])
				end
			end
		else
			OPCIONES.RGB_ON = 1
			OPCIONES.FONDO_RGB_ON = 1
			OPCIONES.FONDO_RGB_FIJO_ON = 0
			OPCIONES.R = 0
			OPCIONES.G = 80
			OPCIONES.B = 120
			CONTROL.ESTILO = 1
			SISTEMAS.MEGADRIVE_ON = 1
			SISTEMAS.MASTERSYSTEM_ON = 1
			SISTEMAS.GAMEGEAR_ON = 1
			SISTEMAS.FAMICOM_ON = 1
			SISTEMAS.GAMEBOY_ON = 1
			SISTEMAS.GAMEBOYCOLOR_ON = 1
			SISTEMAS.GAMEBOYADVANCE_ON = 1
			SISTEMAS.PLAYSTATION_ON = 1
			SISTEMAS.ATARI2600_ON = 1
			SISTEMAS.SEGASG1000_ON = 1
			SISTEMAS.NEOGEOPOCKET_ON = 1
			SISTEMAS.SUPERFAMICOM_ON = 1
			SISTEMAS.APPS_ON = 1
			OPCIONES.CAMBIO_FUENTE_ON = 1
			OPCIONES.CAMBIO_FONDO_ON = 1
			OPCIONES.GUI_LIMPIA_ON = 0
			OPCIONES.LIMITADOR_RAM_ON = 1
			OPCIONES.SALIDA_RETROLANCHER_ON = 0
			OPCIONES.APPS_MENU_FULL_PATH = 0
			OPCIONES.SOUND_ON = 0
			OPCIONES.SOUND_VOLUME = 65
			set_volume()
			OPCIONES.SCREENSHOT_BACK_ON = 0
			OPCIONES.SCANLINES_ON = 0
			OPCIONES.VIBRATION_ON = 0
			SISTEMAS.PLAYSTATION2_ON = 0
			OPCIONES.DIR_EXTRAS_ON = 1
		end	
		System.closeFile(carga_de_config2)
	else
		OPCIONES.RGB_ON = 1
		OPCIONES.FONDO_RGB_ON = 1
		OPCIONES.FONDO_RGB_FIJO_ON = 0
		OPCIONES.R = 0
		OPCIONES.G = 80
		OPCIONES.B = 120
		CONTROL.ESTILO = 1
		SISTEMAS.MEGADRIVE_ON = 1
		SISTEMAS.MASTERSYSTEM_ON = 1
		SISTEMAS.GAMEGEAR_ON = 1
		SISTEMAS.FAMICOM_ON = 1
		SISTEMAS.GAMEBOY_ON = 1
		SISTEMAS.GAMEBOYCOLOR_ON = 1
		SISTEMAS.GAMEBOYADVANCE_ON = 1
		SISTEMAS.PLAYSTATION_ON = 1
		SISTEMAS.ATARI2600_ON = 1
		SISTEMAS.SEGASG1000_ON = 1
		SISTEMAS.NEOGEOPOCKET_ON = 1
		SISTEMAS.SUPERFAMICOM_ON = 1
		SISTEMAS.APPS_ON = 1
		OPCIONES.CAMBIO_FUENTE_ON = 1
		OPCIONES.CAMBIO_FONDO_ON = 1
		OPCIONES.GUI_LIMPIA_ON = 0
		OPCIONES.LIMITADOR_RAM_ON = 1
		OPCIONES.SALIDA_RETROLANCHER_ON = 0
		OPCIONES.APPS_MENU_FULL_PATH = 0
		OPCIONES.SOUND_ON = 0
		OPCIONES.SOUND_VOLUME = 65
		set_volume()
		OPCIONES.SCREENSHOT_BACK_ON = 0
		OPCIONES.SCANLINES_ON = 0
		OPCIONES.VIBRATION_ON = 0
		SISTEMAS.PLAYSTATION2_ON = 0
		OPCIONES.DIR_EXTRAS_ON = 1
		guardar_opciones()
	end
	local config = ("".. LISTAS.IDENTIDAD .." ".. LISTAS.INDICE .."")
	if doesFileExist(actual .."/System/Config/Config.cfg") then
		local carga_de_config = System.openFile(actual .."/System/Config/Config.cfg",FREAD)
		System.seekFile(carga_de_config,0,SET)
		local temp = System.readFile(carga_de_config,30)
		local lista_config = {}
		for linea in string.gmatch(temp,"%d+") do 
			table.insert(lista_config,tonumber(linea))
		end
		if lista_config ~= nil and #lista_config == 2 then
			LISTAS.IDENTIDAD = lista_config[1]
			LISTAS.ROMS = nil
			LISTAS.ROMS = PRE_CARGADAS[LISTAS.IDENTIDAD]
			if #LISTAS.ROMS >= 1 and LISTAS.IDENTIDAD ~= 13 then
				table.sort(LISTAS.ROMS,orden_alfabetico)
			end
			if lista_config[2] <= #LISTAS.ROMS then
				LISTAS.INDICE = lista_config[2]
				indices_extras()
			else
				LISTAS.INDICE = 1
				indices_extras()
			end
		else
			LISTAS.IDENTIDAD = 1
			LISTAS.ROMS = nil
			LISTAS.ROMS = PRE_CARGADAS[LISTAS.IDENTIDAD]
			if #LISTAS.ROMS >= 1 and LISTAS.IDENTIDAD ~= 13 then
				table.sort(LISTAS.ROMS,orden_alfabetico)
			end
			LISTAS.INDICE = 1
			indices_extras()
		end	
		System.closeFile(carga_de_config)
	else
		LISTAS.IDENTIDAD = 1
		LISTAS.ROMS = nil
		LISTAS.ROMS = PRE_CARGADAS[LISTAS.IDENTIDAD]
		if #LISTAS.ROMS >= 1 and LISTAS.IDENTIDAD ~= 13 then
			table.sort(LISTAS.ROMS,orden_alfabetico)
		end
		LISTAS.INDICE = 1
		indices_extras()
		guardar()
	end
	desactivados(nil)
	LISTAS.ROMS = nil
	LISTAS.ROMS = PRE_CARGADAS[LISTAS.IDENTIDAD]
	if #LISTAS.ROMS >= 1 and LISTAS.IDENTIDAD ~= 13 then
		table.sort(LISTAS.ROMS,orden_alfabetico)
	end
	indices_extras()
	animaciones()
end

function desactivados(lado) -- Verificar que emulador está desactivado y cuál no
	local buscar = true
	local sistemas_on = {SISTEMAS.MEGADRIVE_ON,SISTEMAS.MASTERSYSTEM_ON,SISTEMAS.GAMEGEAR_ON,SISTEMAS.FAMICOM_ON,SISTEMAS.GAMEBOY_ON,SISTEMAS.GAMEBOYCOLOR_ON,SISTEMAS.GAMEBOYADVANCE_ON,SISTEMAS.PLAYSTATION_ON,SISTEMAS.ATARI2600_ON,SISTEMAS.SEGASG1000_ON,SISTEMAS.NEOGEOPOCKET_ON,SISTEMAS.SUPERFAMICOM_ON,SISTEMAS.APPS_ON,SISTEMAS.PLAYSTATION2_ON}
	while buscar do
		if lado == true then
			if LISTAS.IDENTIDAD >=2 then
				LISTAS.IDENTIDAD = LISTAS.IDENTIDAD-1
			else
				LISTAS.IDENTIDAD = #PRE_CARGADAS
			end
		elseif lado == false then
			if LISTAS.IDENTIDAD <= (#PRE_CARGADAS-1) then
					LISTAS.IDENTIDAD = LISTAS.IDENTIDAD+1
			else
				LISTAS.IDENTIDAD = 1
			end
		end
		if sistemas_on[LISTAS.IDENTIDAD] == 1 then
			buscar = false
		elseif lado == nil then
			LISTAS.INDICE = 1
			lado = false
		end
	end
	LISTAS.ROMS = nil
	LISTAS.ROMS = PRE_CARGADAS[LISTAS.IDENTIDAD]
	if #LISTAS.ROMS >= 1 and LISTAS.IDENTIDAD ~= 13 then
		table.sort(LISTAS.ROMS,orden_alfabetico)
	end
	indices_extras()
end

function tiempo_cargar() -- Obtener el tiempo 
	CONTROL.TIEMPO = Timer.getTime(CONTROL.TIME)
end

function scroll_texto(scroll,texto,limite) -- Realizar movimiento de Scroll en textos largos
	if string.len(texto) >= limite and scroll <= (string.len(texto)-1) then
		scroll = scroll+1
		reset_tiempo_espera(0)
	else
		reset_tiempo_espera(0-CONTROL.FPS)
		scroll = 1
	end
	return scroll
end

function tiempo_de_scroll() -- Determina las pausas del movimiento de Scroll en textos largos
	if CONTROL.ESPERA_CARGA_SCR == true then
		CONTROL.PAUSA_SCR_TEX = CONTROL.PAUSA_SCR_TEX+1
	end
	if CONTROL.PAUSA_SCR_TEX >= CONTROL.FPS//3 or CONTROL.ESPERA_CARGA_SCR == false then
		CONTROL.PAUSA_SCR_TEX = 0
		CONTROL.ESPERA_CARGA_SCR = false
	end
end
		
function reset_tiempo_espera (numero) -- Determina las pausas antes del Scroll en textos largos
	CONTROL.ESPERA_CARGA_SCR = true
	CONTROL.PAUSA_SCR_TEX = numero
end

function recargar_todas() -- Pre cargar y guardar todas las listas de cada emulador
	local crea = {}
	for contador = 1,14,1 do
		local nueva = crear_listas(contador,nueva)
		table.insert(crea,nueva)
	end
	PRE_CARGADAS = crea
	LISTAS.IDENTIDAD = 1
end

function recargar_una(identidad) -- Recarga una lista determinada de un emulador
	PRE_CARGADAS[identidad] = crear_listas(identidad,PRE_CARGADAS[identidad])
	LISTAS.IDENTIDAD = identidad
end

function puerto_usb() -- Verifica que el programa no se ejecute desde el segundo puerto
	local actual = System.currentDirectory()
	local buscar = System.listDirectory("mass1:/")
	if actual == "mass1:/RETROLauncher" or buscar ~= nil then
		while true do
			Screen.clear(COLOR.NEGRO)
			if actual == "mass1:/RETROLauncher" then
				Font.ftPrint(CONTROL.fontARCA,5,140,0,CONTROL.ANCHO,400,"Warning\nThis program was created to run from the first\nport(USB) of PS2.\nPlease, reconnect the USB to the first port and\nrestart the program.",COLOR.BLANCO)
			elseif buscar ~= nil then
				Font.ftPrint(CONTROL.fontARCA,5,140,0,CONTROL.ANCHO,400,"Warning\nUSB storage device detected on second port(USB)\nPlease, Disconnect the USB from the second port\nand restart the program.",COLOR.BLANCO)
			end
			refrescar()
		end
	end
end

function buscar_VMC() -- Busca y guarda VMC/Modos de PS2 
	local buscar_VMC_USB = System.listDirectory("mass:/VMC")
	local VMC_encontradas = {}
	if buscar_VMC_USB ~= nil then
		for contador = 1,#buscar_VMC_USB do
			if buscar_VMC_USB[contador].directory == false and string.lower(string.sub(buscar_VMC_USB[contador].name,-4)) == ".bin" then
				table.insert(VMC_encontradas,"mass:/VMC/".. buscar_VMC_USB[contador].name)
			end
		end
	end
	return VMC_encontradas
end

function menu_neutrino(nombre_iso) -- Menú de Configuración PS2
	local actual = System.currentDirectory()
	local pregunta = true
	Pads.rumble(0,0)
	OPCIONES.PREGUNTAR_PS2 = true
	local VMCD, MODE = ejecutar_iso(nombre_iso)
	OPCIONES.PREGUNTAR_PS2 = false
	local VMC_encontradas = buscar_VMC()
	local selector_VMC = 1
	if #VMC_encontradas <= 0 then
		selector_VMC = 0
	elseif #VMC_encontradas >= 1 and VMCD ~= nil then
		for contador = 1,#VMC_encontradas do
			if string.lower(VMC_encontradas[contador]) == string.lower(string.sub(VMCD,6)) then
				selector_VMC = contador
			end
		end
	end
	local encontrado_vmcd = 0
	if VMCD ~= nil then
		encontrado_vmcd = 1
	end
	local modo_0 = 0
	local modo_1 = 0
	local modo_2 = 0
	local modo_3 = 0
	local modo_5 = 0
	if MODE ~= nil then
		if string.match(MODE, "0") == "0" then
			modo_0 = 1
		end
		if string.match(MODE, "1") == "1" then
			modo_1 = 1
		end
		if string.match(MODE, "2") == "2" then
			modo_2 = 1
		end
		if string.match(MODE, "3") == "3" then
			modo_3 = 1
		end
		if string.match(MODE, "5") == "5" then
			modo_5 = 1
		end
	end
	local menus_nombres = {"USE VIRTUAL MEMORY CARD","NO VIRTUAL MEMORY CARD","COMPATIBILITY MODES:","DISABLE BUILTIN COMPAT FLAGS","IOP: ACCURATE READS","IOP: SYNC READS","EE : UNHOOK SYSCALLS","IOP: EMULATE DVD-DL","SAVE GAME SETTINGS"}
	local menus_valores = {encontrado_vmcd,selector_VMC,0,modo_0,modo_1,modo_2,modo_3,modo_5,"SAVE"}
	local selector = 1
	while pregunta do
		-- Controlar menú de Configuración PS2
		CONTROL.FPS = Screen.getFPS(1)
		capturar(JOYSTICK_LIMITE)
		if Pads.check(PAD,PAD_CROSS) and CONTROL.JOYSTICK_ON == false then
			if selector == 2 and #VMC_encontradas >= 1 and menus_valores[1] == 1 then
				if selector_VMC <= #VMC_encontradas-1 then
					selector_VMC = selector_VMC + 1 
				else
					selector_VMC = 1
				end
			elseif selector == 2 and #VMC_encontradas <= 0 then
				selector_VMC = 0
			elseif selector ~= 2 and selector ~= #menus_valores then
				if menus_valores[selector] == 0 then
					menus_valores[selector] = 1
				else
					menus_valores[selector] = 0
				end
			elseif selector ~= 2 and selector == #menus_valores then
				if doesFileExist(actual .."/Roms/ISOs Play Station 2/".. string.sub(nombre_iso,1,-5) ..".vmcd")  then
					System.removeFile(actual .."/Roms/ISOs Play Station 2/".. string.sub(nombre_iso,1,-5) ..".vmcd")
				end
				if doesFileExist("mass:/DVD/".. string.sub(nombre_iso,1,-5) ..".vmcd") then
					System.removeFile("mass:/DVD/".. string.sub(nombre_iso,1,-5) ..".vmcd")
				end
				if doesFileExist("mass:/CD/".. string.sub(nombre_iso,1,-5) ..".vmcd") then
					System.removeFile("mass:/CD/".. string.sub(nombre_iso,1,-5) ..".vmcd")
				end
				if doesFileExist(actual .."/Roms/ISOs Play Station 2/".. string.sub(nombre_iso,1,-5) ..".mode")  then
					System.removeFile(actual .."/Roms/ISOs Play Station 2/".. string.sub(nombre_iso,1,-5) ..".mode")
				end
				if doesFileExist("mass:/DVD/".. string.sub(nombre_iso,1,-5) ..".mode") then
					System.removeFile("mass:/DVD/".. string.sub(nombre_iso,1,-5) ..".mode")
				end
				if doesFileExist("mass:/CD/".. string.sub(nombre_iso,1,-5) ..".mode") then
					System.removeFile("mass:/CD/".. string.sub(nombre_iso,1,-5) ..".mode")
				end
				if menus_valores[1] == 1 then
					local carga_de_VMC = "nada"
					local dir = ("-mc0=".. VMC_encontradas[selector_VMC])
					if doesFileExist(actual .."/Roms/ISOs Play Station 2/".. nombre_iso) then
						carga_de_VMC = System.openFile(actual .."/Roms/ISOs Play Station 2/".. string.sub(nombre_iso,1,-5) ..".vmcd",FCREATE)
						System.writeFile(carga_de_VMC,dir,string.len(dir))
						System.closeFile(carga_de_VMC)
					elseif doesFileExist("mass:/DVD/".. nombre_iso) then
						carga_de_VMC = System.openFile("mass:/DVD/".. string.sub(nombre_iso,1,-5) ..".vmcd",FCREATE)
						System.writeFile(carga_de_VMC,dir,string.len(dir))
						System.closeFile(carga_de_VMC)
					elseif doesFileExist("mass:/CD/".. nombre_iso) then
						carga_de_VMC = System.openFile("mass:/CD/".. string.sub(nombre_iso,1,-5) ..".vmcd",FCREATE)
						System.writeFile(carga_de_VMC,dir,string.len(dir))
						System.closeFile(carga_de_VMC)
					end
				end
				local modos_on = "-gc="
				local crear_modos = false
				local carga_de_modos = "nada"
				if menus_valores[4] == 1 then
					modos_on = modos_on.. "0"
					crear_modos = true
				end
				if menus_valores[5] == 1 then
					modos_on = modos_on.. "1"
					crear_modos = true
				end
				if menus_valores[6] == 1 then
					modos_on = modos_on.. "2"
					crear_modos = true
				end
				if menus_valores[7] == 1 then
					modos_on = modos_on.. "3"
					crear_modos = true
				end
				if menus_valores[8] == 1 then
					modos_on = modos_on.. "5"
					crear_modos = true
				end
				if crear_modos == true then
					if doesFileExist(actual .."/Roms/ISOs Play Station 2/".. nombre_iso) then
						carga_de_modos = System.openFile(actual .."/Roms/ISOs Play Station 2/".. string.sub(nombre_iso,1,-5) ..".mode",FCREATE)
						System.writeFile(carga_de_modos,modos_on,string.len(modos_on))
						System.closeFile(carga_de_modos)
					elseif doesFileExist("mass:/DVD/".. nombre_iso) then
						carga_de_modos = System.openFile("mass:/DVD/".. string.sub(nombre_iso,1,-5) ..".mode",FCREATE)
						System.writeFile(carga_de_modos,modos_on,string.len(modos_on))
						System.closeFile(carga_de_modos)
					elseif doesFileExist("mass:/CD/".. nombre_iso) then
						carga_de_modos = System.openFile("mass:/CD/".. string.sub(nombre_iso,1,-5) ..".mode",FCREATE)
						System.writeFile(carga_de_modos,modos_on,string.len(modos_on))
						System.closeFile(carga_de_modos)
					end
				end
				pregunta = false
			end
			CONTROL.JOYSTICK_ON = true 
			JOYSTICK_LIMITE = control_FPS(1)
		elseif Pads.check(PAD,PAD_DOWN) and CONTROL.JOYSTICK_ON == false then
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.MOVER ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.MOVER)
			end
			if selector <= #menus_nombres-1 then
				selector = selector+1
			else
				selector = 1
			end  
			CONTROL.JOYSTICK_ON = true 
			JOYSTICK_LIMITE = control_FPS(1)
		elseif Pads.check(PAD,PAD_UP) and CONTROL.JOYSTICK_ON == false then
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.MOVER ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.MOVER)
			end
			if selector >= 2 then
				selector = selector-1
			else
				selector = #menus_nombres
			end
			CONTROL.JOYSTICK_ON = true 
			JOYSTICK_LIMITE = control_FPS(1)
		elseif Pads.check(PAD,PAD_TRIANGLE) and CONTROL.JOYSTICK_ON == false then
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.CANCELAR ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.CANCELAR)
			end
			if OPCIONES.VIBRATION_ON == 1 then
				Pads.rumble(1,200)
			end
			pregunta = false
			CONTROL.JOYSTICK_ON = true 
			JOYSTICK_LIMITE = control_FPS(1)
		end
		
		-- Mostrar todo en pantalla
		Screen.clear(COLOR.NEGRO)
		RGB()
		if OPCIONES.FONDO_RGB_ON == 1 then
			Graphics.drawRect(0,0,640,480,CAMBIOS_EMUS.COLOR_EMU_BACK)
			Graphics.drawScaleImage(LISTAS.FONDO,-5,0,CONTROL.ANCHO+5,CONTROL.ALTO,CAMBIOS_EMUS.COLOR_EMU_BACK)
		else
			Graphics.drawScaleImage(LISTAS.FONDO,-5,0,CONTROL.ANCHO+5,CONTROL.ALTO)
		end	
		if LISTAS.SCREENSHOT ~= nil and LISTAS.EXISTE_SCR == true and OPCIONES.SCREENSHOT_BACK_ON == 1 then
			Graphics.drawScaleImage(LISTAS.SCREENSHOT,-5,0,CONTROL.ANCHO+5,CONTROL.ALTO)
		end
		Graphics.drawScaleImage(LISTAS.LOGO,194,15,252,76)
		Graphics.drawRect(12,100,615,312,COLOR.NEGRO_T)
		Font.ftPrint(CONTROL.fontARCA,22,110,0,540,8,"GAME SETTINGS:")
		Font.ftPrint(CONTROL.fontARCA,22,134,0,600,8,nombre_iso,COLOR.BLANCO)
		if OPCIONES.GUI_LIMPIA_ON == 0 then
			if OPCIONES.CAMBIO_FUENTE_ON == 1 then	 
				Graphics.drawRect(490,420,114,20,COLOR.NEGRO_T)
			end
			Graphics.drawScaleImage(PAD_IMG.TRIANGLE,488,418,25,25)
			Font.ftPrint(CONTROL.fontARCA,518,420,0,0,8,"CANCEL",COLOR.BLANCO)
		end
		for contador = 1,#menus_nombres do
			local acti = "STATE: ON"
			if menus_valores[contador] == 0 then
				acti = "STATE: OFF"
			end
			if contador == 2 or contador == 3 then
				acti = " "
			end
			if #VMC_encontradas <= 0 and menus_valores[1] == 1 then
				menus_nombres[2] = "VIRTUAL MEMORY CARD NOT FOUND"
			elseif #VMC_encontradas >= 1 and menus_valores[1] == 1 and selector_VMC >= 1 then
				menus_nombres[2] = string.sub(VMC_encontradas[selector_VMC],11)
			elseif menus_valores[1] == 0 then
				menus_nombres[2] = "NO VIRTUAL MEMORY CARD"
			end
			local espacio_linea = 148+((contador)*26)
			if contador == selector and contador ~= #menus_valores then
				Font.ftPrint(CONTROL.fontARCA,22,espacio_linea,0,600,25,menus_nombres[selector],CAMBIOS_EMUS.COLOR_EMU)
				Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,25,acti,CAMBIOS_EMUS.COLOR_EMU)
			elseif contador == selector and contador == #menus_valores then
				Font.ftPrint(CONTROL.fontARCA,22,espacio_linea,0,600,25,menus_nombres[selector],CAMBIOS_EMUS.COLOR_EMU)
			elseif contador ~= selector and contador ~= #menus_valores then
				Font.ftPrint(CONTROL.fontARCA,22,espacio_linea,0,600,25,menus_nombres[contador],COLOR.BLANCO_LISTA)
				Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,25,acti,COLOR.BLANCO_LISTA)
			elseif contador ~= selector and contador == #menus_valores then
				Font.ftPrint(CONTROL.fontARCA,22,espacio_linea,0,600,25,menus_nombres[contador],COLOR.BLANCO_LISTA)
			end
		end
		refrescar()
	end
end

function buscar_fuentes() -- Busca y guarda fuentes de texto
	local actual = System.currentDirectory() 
	local buscar_fuentes = System.listDirectory(actual .."/Multimedia/Others/Font")
	OPCIONES.FUENTES_ENCONTRADAS = {}
	table.insert(OPCIONES.FUENTES_ENCONTRADAS,actual .."/System/Medios/Font/PublicPixel.ttf")
	if buscar_fuentes ~= nil then
		for contador = 1,#buscar_fuentes do
			if buscar_fuentes[contador].directory == false and (string.lower(string.sub(buscar_fuentes[contador].name,-4)) == ".ttf" or string.lower(string.sub(buscar_fuentes[contador].name,-4)) == ".otf") then
				table.insert(OPCIONES.FUENTES_ENCONTRADAS,actual .."/Multimedia/Others/Font/".. buscar_fuentes[contador].name)
			end
		end
	end
end

function buscar_fondos() -- Busca y guarda fondos de pantallas 
	local actual = System.currentDirectory() 
	local buscar_fondos = System.listDirectory(actual .."/Multimedia/Others/Background")
	OPCIONES.FONDO_ENCONTRADOS = {}
	table.insert(OPCIONES.FONDO_ENCONTRADOS,actual .."/System/Medios/Default/FONDO.png")
	if buscar_fondos ~= nil then
		for contador = 1,#buscar_fondos do
			if buscar_fondos[contador].directory == false and string.lower(string.sub(buscar_fondos[contador].name,-4)) == ".png" then
				table.insert(OPCIONES.FONDO_ENCONTRADOS,actual .."/Multimedia/Others/Background/".. buscar_fondos[contador].name)
			end
		end
	end
end

function buscar_directorio(dir) -- Busca y guarda directorios / Busca y guarda aplicaciones .ELF
	if dir == true and OPCIONES.SALIDA_RETROLANCHER ~= nil then
		local buscar_directorios = System.listDirectory(OPCIONES.SALIDA_RETROLANCHER)
		if buscar_directorios ~= nil then
			OPCIONES.SALIDA_DIR_ACTUALES = {}
			table.insert(OPCIONES.SALIDA_DIR_ANTERIORES,OPCIONES.SALIDA_RETROLANCHER)
			for contador = 1,#buscar_directorios do
				if buscar_directorios[contador].directory == true and string.sub(buscar_directorios[contador].name,-1) ~= "." and string.sub(buscar_directorios[contador].name,-2) ~= ".." then
					table.insert(OPCIONES.SALIDA_DIR_ACTUALES,OPCIONES.SALIDA_DIR_ANTERIORES[#OPCIONES.SALIDA_DIR_ANTERIORES] .. buscar_directorios[contador].name .."/")
				elseif buscar_directorios[contador].directory == false and string.lower(string.sub(buscar_directorios[contador].name,-4)) == ".elf" then
					table.insert(OPCIONES.SALIDA_DIR_ACTUALES,OPCIONES.SALIDA_DIR_ANTERIORES[#OPCIONES.SALIDA_DIR_ANTERIORES] .. buscar_directorios[contador].name)
				end
			end
		end
	elseif dir == false then
		if #OPCIONES.SALIDA_DIR_ANTERIORES >=2 then
			table.remove(OPCIONES.SALIDA_DIR_ANTERIORES,#OPCIONES.SALIDA_DIR_ANTERIORES)
		end
		local buscar_directorios = System.listDirectory(OPCIONES.SALIDA_DIR_ANTERIORES[#OPCIONES.SALIDA_DIR_ANTERIORES])
		OPCIONES.SALIDA_DIR_ACTUALES = {}
		if buscar_directorios ~= nil then
			for contador = 1,#buscar_directorios do
				if buscar_directorios[contador].directory == true then
					table.insert(OPCIONES.SALIDA_DIR_ACTUALES,OPCIONES.SALIDA_DIR_ANTERIORES[#OPCIONES.SALIDA_DIR_ANTERIORES] .. buscar_directorios[contador].name .."/")
				elseif buscar_directorios[contador].directory == false and string.lower(string.sub(buscar_directorios[contador].name,-4)) == ".elf" then
					table.insert(OPCIONES.SALIDA_DIR_ACTUALES,OPCIONES.SALIDA_DIR_ANTERIORES[#OPCIONES.SALIDA_DIR_ANTERIORES] .. buscar_directorios[contador].name)
				end
			end
		end
	elseif dir == nil then
		if OPCIONES.SALIDA_RETROLANCHER_ON == 0 then
			OPCIONES.SALIDA_RETROLANCHER = "PS2 SYSTEM MENU"
			OPCIONES.SALIDA_DIR_ACTUALES = {}
			OPCIONES.SALIDA_DIR_ANTERIORES = {}
		elseif OPCIONES.SALIDA_RETROLANCHER_ON == 1 then
			OPCIONES.SALIDA_RETROLANCHER = "mc0:/"
			OPCIONES.SALIDA_DIR_ACTUALES = {}
			OPCIONES.SALIDA_DIR_ANTERIORES = {}
		elseif OPCIONES.SALIDA_RETROLANCHER_ON == 2 then
			OPCIONES.SALIDA_RETROLANCHER = "mc1:/"
			OPCIONES.SALIDA_DIR_ACTUALES = {}
			OPCIONES.SALIDA_DIR_ANTERIORES = {}
		elseif OPCIONES.SALIDA_RETROLANCHER_ON == 3 then
			OPCIONES.SALIDA_RETROLANCHER = "mass:/"
			OPCIONES.SALIDA_DIR_ACTUALES = {}
			OPCIONES.SALIDA_DIR_ANTERIORES = {}
		end
	end
	if #OPCIONES.SALIDA_DIR_ACTUALES >=1 then
		table.sort(OPCIONES.SALIDA_DIR_ACTUALES)
	end
end

function marcar_directorio() -- Muestra mini explorador de directorios
	local selector = 1
	local cachucho = true
	CONTROL.JOYSTICK_ON = true
	JOYSTICK_LIMITE = control_FPS(1)-20
	buscar_directorio(true)
	while cachucho do
		CONTROL.FPS = Screen.getFPS(1)
		capturar(JOYSTICK_LIMITE)
		tiempo_de_scroll()
		
		-- Controlar menú explorador
		if Pads.check(PAD,PAD_CROSS) and CONTROL.JOYSTICK_ON == false then
			if #OPCIONES.SALIDA_DIR_ANTERIORES >= 1 then
				OPCIONES.SALIDA_RETROLANCHER = OPCIONES.SALIDA_DIR_ACTUALES[selector]
			elseif #OPCIONES.SALIDA_DIR_ANTERIORES <= 0 then
				buscar_directorio(nil)
			end
			buscar_directorio(true)
			CONTROL.JOYSTICK_ON = true
			JOYSTICK_LIMITE = control_FPS(1)-5
			selector = 1
			LISTAS.SCROLL_TEX = 1
			reset_tiempo_espera(-CONTROL.FPS-CONTROL.FPS)
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.EJECUTAR ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.EJECUTAR)
			end
		elseif Pads.check(PAD,PAD_CIRCLE) and CONTROL.JOYSTICK_ON == false then
			if #OPCIONES.SALIDA_DIR_ANTERIORES >= 1 then
				buscar_directorio(false)
			else
				buscar_directorio(nil)
				buscar_directorio(true)
			end
			CONTROL.JOYSTICK_ON = true
			JOYSTICK_LIMITE = control_FPS(1)-5
			selector = 1
			LISTAS.SCROLL_TEX = 1
			reset_tiempo_espera(-CONTROL.FPS-CONTROL.FPS)
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.CANCELAR ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.CANCELAR)
			end
		elseif Pads.check(PAD,PAD_DOWN) and #OPCIONES.SALIDA_DIR_ACTUALES >= 1 and CONTROL.JOYSTICK_ON == false then
			if selector <= (#OPCIONES.SALIDA_DIR_ACTUALES-1) then
				selector = selector+1
			else
				selector = 1
			end
			CONTROL.JOYSTICK_ON = true
			JOYSTICK_LIMITE = control_FPS(1)
			LISTAS.SCROLL_TEX = 1
			reset_tiempo_espera(-CONTROL.FPS-CONTROL.FPS)
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.MOVER ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.MOVER)
			end
		elseif Pads.check(PAD,PAD_UP) and #OPCIONES.SALIDA_DIR_ACTUALES >= 1 and CONTROL.JOYSTICK_ON == false then
			if selector >= 2 then
				selector = selector-1
			else
				selector = #OPCIONES.SALIDA_DIR_ACTUALES
			end
			CONTROL.JOYSTICK_ON = true 
			JOYSTICK_LIMITE = control_FPS(1)
			LISTAS.SCROLL_TEX = 1
			reset_tiempo_espera(-CONTROL.FPS-CONTROL.FPS)
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.MOVER ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.MOVER)
			end
		elseif Pads.check(PAD,PAD_TRIANGLE) and CONTROL.JOYSTICK_ON == false then
			if OPCIONES.SALIDA_RETROLANCHER ~= nil and string.lower(string.sub(OPCIONES.SALIDA_RETROLANCHER,-4)) == ".elf" then
				cachucho = false
				if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.EJECUTAR ~= nil then
					Sound.playADPCM(1,MENU_SONIDOS.EJECUTAR)
				end
			else
				OPCIONES.SALIDA_RETROLANCHER_ON = 0
				buscar_directorio(nil)
				cachucho = false
				if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.ERROR ~= nil then
					Sound.playADPCM(1,MENU_SONIDOS.ERROR)
				end
			end
		end
		
		-- Mostrar todo en pantalla
		Screen.clear(COLOR.NEGRO)
		Graphics.drawRect(0,0,640,480,CAMBIOS_EMUS.COLOR_EMU_BACK)	
		if OPCIONES.FONDO_RGB_ON == 1 then
			Graphics.drawRect(0,0,640,480,CAMBIOS_EMUS.COLOR_EMU_BACK)
			Graphics.drawScaleImage(LISTAS.FONDO,-5,0,CONTROL.ANCHO+5,CONTROL.ALTO,CAMBIOS_EMUS.COLOR_EMU_BACK)
		else
			Graphics.drawScaleImage(LISTAS.FONDO,-5,0,CONTROL.ANCHO+5,CONTROL.ALTO)
		end
		Graphics.drawRect(12,28,615,375,COLOR.NEGRO_T)
		if #OPCIONES.SALIDA_DIR_ACTUALES >= 1 then
			if CONTROL.ESPERA_CARGA_SCR == false then
				LISTAS.SCROLL_TEX = scroll_texto(LISTAS.SCROLL_TEX,OPCIONES.SALIDA_DIR_ACTUALES[selector],44)
			end
			local mostrar_lista = 0
			for contador = 0,12,1 do
				local espacio_linea = 62+((contador)*25)
				if contador == 0 then
					Graphics.drawRect(12+5,espacio_linea-3,610,25,COLOR.NEGRO_T)
					Font.ftPrint(CONTROL.fontARCA,22,espacio_linea,0,601,2,string.sub(OPCIONES.SALIDA_DIR_ACTUALES[selector],LISTAS.SCROLL_TEX),CAMBIOS_EMUS.COLOR_EMU)
				elseif (selector+contador) <= #OPCIONES.SALIDA_DIR_ACTUALES then
					Font.ftPrint(CONTROL.fontARCA,22,espacio_linea,0,601,2,"".. OPCIONES.SALIDA_DIR_ACTUALES[selector+contador],COLOR.BLANCO_LISTA)
				end
			end
		else
			if CONTROL.ESPERA_CARGA_SCR == false then
				LISTAS.SCROLL_TEX = scroll_texto(LISTAS.SCROLL_TEX,"THE FOLDER IS EMPTY OR THE FILES ARE NOT SUPPORTED",44)
			end
			Font.ftPrint(CONTROL.fontARCA,22,65,0,601,40,string.sub("THE FOLDER IS EMPTY OR THE FILES ARE NOT SUPPORTED",LISTAS.SCROLL_TEX),CAMBIOS_EMUS.COLOR_EMU)
		end
		if OPCIONES.SALIDA_RETROLANCHER ~= nil then
			Graphics.drawRect(-5,22,650,25,COLOR.NEGRO)
			Font.ftPrint(CONTROL.fontARCA,22,25,0,601,2,OPCIONES.SALIDA_RETROLANCHER,COLOR.BLANCO)
			if string.lower(string.sub(OPCIONES.SALIDA_RETROLANCHER,-4)) == ".elf" then
				cachucho = false
			end
		else
			Graphics.drawRect(-5,22,650,25,COLOR.NEGRO)
			Font.ftPrint(CONTROL.fontARCA,22,25,0,601,2,"NO VALID FILES",COLOR.BLANCO)
		end
		Graphics.drawRect(-5,392,650,25,COLOR.NEGRO)
		Graphics.drawScaleImage(PAD_IMG.TRIANGLE,60,392,25,25)
		Font.ftPrint(CONTROL.fontARCA,95,395,0,0,8,"CANCEL",COLOR.BLANCO)
		Graphics.drawScaleImage(PAD_IMG.CIRCLE,478,392,25,25)
		Font.ftPrint(CONTROL.fontARCA,513,395,0,0,8,"BACK",COLOR.BLANCO)
		Graphics.drawScaleImage(PAD_IMG.CROSS,263,392,25,25)
		Font.ftPrint(CONTROL.fontARCA,298,395,0,0,8,"SELECT",COLOR.BLANCO)
		refrescar()
	end
end

function menu_config() -- Muestra, cambia y guarda las configuraciones  
	local noob = true
	Pads.rumble(0,0)
	color_emu(LISTAS.IDENTIDAD)
	local conf_numero = true
	local page = "PAGE 1"
	local clean = false
	local lista_config = {OPCIONES.RGB_ON,
	OPCIONES.FONDO_RGB_ON,OPCIONES.FONDO_RGB_FIJO_ON,OPCIONES.R,OPCIONES.G,OPCIONES.B,CONTROL.ESTILO,SISTEMAS.MEGADRIVE_ON,SISTEMAS.MASTERSYSTEM_ON,SISTEMAS.GAMEGEAR_ON,SISTEMAS.FAMICOM_ON,SISTEMAS.GAMEBOY_ON,SISTEMAS.GAMEBOYCOLOR_ON,SISTEMAS.GAMEBOYADVANCE_ON,SISTEMAS.PLAYSTATION_ON,SISTEMAS.ATARI2600_ON,SISTEMAS.SEGASG1000_ON,SISTEMAS.NEOGEOPOCKET_ON,SISTEMAS.SUPERFAMICOM_ON,SISTEMAS.APPS_ON,SISTEMAS.PLAYSTATION2_ON,OPCIONES.CAMBIO_FUENTE_ON,OPCIONES.CAMBIO_FONDO_ON,OPCIONES.GUI_LIMPIA_ON,OPCIONES.LIMITADOR_RAM_ON,OPCIONES.SALIDA_RETROLANCHER_ON,OPCIONES.SALIDA_RETROLANCHER,OPCIONES.APPS_MENU_FULL_PATH,OPCIONES.SOUND_ON,OPCIONES.SOUND_VOLUME,OPCIONES.SCREENSHOT_BACK_ON,OPCIONES.SCANLINES_ON,OPCIONES.VIBRATION_ON,OPCIONES.DIR_EXTRAS_ON,0,0,"SAVE"}
	local lista_texto_config = {"RGB EFFECT",
	"COLOR IN BACKGROUNDS","FIXED COLOR IN BACKGROUNDS","RED","GREEN","BLUE","LIST STYLE","MEGADRIVE","MASTER SYSTEM","GAME GEAR","FAMICOM","GAME BOY","GAME BOY COLOR","GAME BOY ADVANCE","PLAY STATION","ATARI 2600","SEGA SG-1000","NEO GEO POCKET","SUPER FAMICOM","APPS","PLAY STATION 2","FONT TYPE","CHANGE THE BACKGROUND","CLEAN GUI","FORCE GARBAGE COLLECTION","CUSTOM APP/ELF OUTPUT","DIRECTORY","SEE FULL ROUTE IN THE APPS MENU","SOUND IN THE MENU","SOUND VOLUME","SCREENSHOT AS BACKGROUND","SCANLINES ON THE MENU","VIBRATION IN MENU","EXTRA DIRECTORIES","RESET ALL SETTINGS","CREDITS","- SAVE SETTINGS -"}
	local selector = 1
	local estilo_lista = lista_config[7]
	local color1 = OPCIONES.R
	local color2 = OPCIONES.G
	local color3 = OPCIONES.B
	local volume = OPCIONES.SOUND_VOLUME
	local color_demo = Color.new(color1,color2,color3)
	local selec_dir = OPCIONES.SALIDA_RETROLANCHER_ON
	lista_texto_config[27] = OPCIONES.SALIDA_RETROLANCHER
	local selec_fuente = 1
	if OPCIONES.CAMBIO_FUENTE_ON <= #OPCIONES.FUENTES_ENCONTRADAS then
		selec_fuente = OPCIONES.CAMBIO_FUENTE_ON
	end
	local selec_fondo = 1
	if OPCIONES.CAMBIO_FONDO_ON <= #OPCIONES.FONDO_ENCONTRADOS then
		selec_fondo = OPCIONES.CAMBIO_FONDO_ON
	end
	local reinicio = false
	buscar_fuentes()
	buscar_fondos()
	while noob do
		CONTROL.FPS = Screen.getFPS(1)
		capturar(JOYSTICK_LIMITE)
		tiempo_de_scroll()
		
		-- Controlar menú de configuraciones
		local rev2 = true
		for rev = 8,21 do
			if lista_config[rev] == 1 then
				rev2 = false
				break	
			end
		end
		if rev2 == true then
			lista_config[8] = 1
		end
		if Pads.check(PAD,PAD_R3) or Pads.check(PAD,PAD_L3) and CONTROL.JOYSTICK_ON == false then
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.EJECUTAR ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.EJECUTAR)
			end
			if doesFileExist("System/Medios/Default/HELP.png") then
				local yoshi = true
				local help = Graphics.loadImage("System/Medios/Default/HELP.png")
				while yoshi do
					CONTROL.FPS = Screen.getFPS(1)
					capturar(JOYSTICK_LIMITE)
					Screen.clear(CAMBIOS_EMUS.COLOR_EMU_BACK)
					Graphics.drawScaleImage(help,-5,0,CONTROL.ANCHO+5,CONTROL.ALTO)
					refrescar()
					if not Pads.check(PAD,PAD_L3) and not Pads.check(PAD,PAD_R3) and not Pads.check(PAD,PAD_CIRCLE) and not Pads.check(PAD,PAD_TRIANGLE) and not Pads.check(PAD,PAD_CROSS) and PAD ~= 0 then
						yoshi = false
						if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.CANCELAR ~= nil then
							Sound.playADPCM(1,MENU_SONIDOS.CANCELAR)
						end
					end
				end
				CONTROL.JOYSTICK_ON = true
				JOYSTICK_LIMITE = control_FPS(1)
				Graphics.freeImage(help)
			end
		end
		if Pads.check(PAD,PAD_CIRCLE) or Pads.check(PAD,PAD_TRIANGLE) and CONTROL.JOYSTICK_ON == false then
			noob = false
			CONTROL.JOYSTICK_ON = true 
			JOYSTICK_LIMITE = control_FPS(1)
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.CANCELAR ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.CANCELAR)
			end
		end
		if Pads.check(PAD,PAD_L1) or Pads.check(PAD,PAD_R1) or Pads.check(PAD,PAD_L2) or Pads.check(PAD,PAD_R2) and CONTROL.JOYSTICK_ON == false then
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.NETX ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.NETX)
			end
			if conf_numero == true then
				conf_numero = false
				selector = 22
				page = "PAGE 2"
			else
				conf_numero = true
				selector = 1
				page = "PAGE 1"
			end
			if OPCIONES.VIBRATION_ON == 1 then
				Pads.rumble(1,255)
			end
			CONTROL.JOYSTICK_ON = true 
			JOYSTICK_LIMITE = control_FPS(1)
		end
		if Pads.check(PAD,PAD_CROSS) and (selector <= 3 or selector >= 7) and CONTROL.JOYSTICK_ON == false then
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.EJECUTAR ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.EJECUTAR)
			end
			if selector ~= #lista_config and selector ~= 7 and selector ~= 27 and selector ~= 26 and selector ~= 22 and selector ~= 23 and selector ~= 30 and selector ~= 35 and selector ~= 36 then
				if lista_config[selector] == 0 then
					lista_config[selector] = 1
				elseif lista_config[selector] == 1 then
					lista_config[selector] = 0
				end
				if selector == 28 then
					OPCIONES.APPS_MENU_FULL_PATH = lista_config[28]
					OPCIONES.DIR_EXTRAS_ON = lista_config[34]
					PRE_CARGADAS[13] = crear_listas(13,PRE_CARGADAS[13])
					desactivados(nil)
				end
				if selector == 34 then
					OPCIONES.APPS_MENU_FULL_PATH = lista_config[28]
					OPCIONES.DIR_EXTRAS_ON = lista_config[34]
					PRE_CARGADAS[13] = crear_listas(13,PRE_CARGADAS[13])
					PRE_CARGADAS[14] = crear_listas(14,PRE_CARGADAS[14])
					desactivados(nil)
				end
			elseif selector == 7 then
				if estilo_lista <= 5 then
					estilo_lista = estilo_lista+1
				elseif estilo_lista == 6 then
					estilo_lista = 1
				end
			elseif selector == 35 then
				local pregunta = true
				Pads.rumble(0,0)
				while pregunta do
					capturar(JOYSTICK_LIMITE)
					Graphics.drawRect(175,162,290,153,Color.new(0,0,0,10))
					Font.ftPrint(CONTROL.fontARCA,188,180,0,0,8,"RESET ALL SETTINGS ?",COLOR.BLANCO)
					Graphics.drawScaleImage(PAD_IMG.SQUARE,193,215,20,20)
					Font.ftPrint(CONTROL.fontARCA,228,215,0,0,8,"RESET",COLOR.BLANCO)
					Graphics.drawScaleImage(PAD_IMG.CIRCLE,330,215,20,20)
					Font.ftPrint(CONTROL.fontARCA,365,215,0,0,8,"CANCEL",COLOR.BLANCO)
					Graphics.drawScaleImage(PAD_IMG.R1,268,271,35,35)
					if clean == false then
						Font.ftPrint(CONTROL.fontARCA,325,280,0,0,8,"NO",COLOR.BLANCO)
					else
						Font.ftPrint(CONTROL.fontARCA,325,280,0,0,8,"YES",COLOR.BLANCO)
					end
					Font.ftPrint(CONTROL.fontARCA,180,250,0,0,8,"DELETING SAVES STATES",COLOR.BLANCO)
					if Pads.check(PAD,PAD_R1) and CONTROL.JOYSTICK_ON == false then
						if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.NETX ~= nil then
							Sound.playADPCM(1,MENU_SONIDOS.NETX)
						end
						if clean == false then
							clean = true
						else
							clean = false
						end
						CONTROL.JOYSTICK_ON = true 
						JOYSTICK_LIMITE = control_FPS(1)
					elseif Pads.check(PAD,PAD_SQUARE) then
						if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.EJECUTAR ~= nil then
							Sound.playADPCM(1,MENU_SONIDOS.EJECUTAR)
						end
						noob = false
						reinicio = true
						pregunta = false
					elseif Pads.check(PAD,PAD_CIRCLE) then
						if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.CANCELAR ~= nil then
							Sound.playADPCM(1,MENU_SONIDOS.CANCELAR)
						end
						pregunta = false
						clean = false
						CONTROL.JOYSTICK_ON = true 
						JOYSTICK_LIMITE = control_FPS(1)
					end
					refrescar()
				end
			elseif selector == 22 then
				if selec_fuente <= #OPCIONES.FUENTES_ENCONTRADAS-1 then
					selec_fuente = selec_fuente+1
				elseif selec_fuente == #OPCIONES.FUENTES_ENCONTRADAS then
					selec_fuente = 1
				end
				if selec_fuente <= #OPCIONES.FUENTES_ENCONTRADAS and selec_fuente >= 1  then
					Font.ftUnload(CONTROL.fontARCA)
					CONTROL.fontARCA = Font.ftLoad(OPCIONES.FUENTES_ENCONTRADAS[selec_fuente])
					OPCIONES.CAMBIO_FUENTE_ON = selec_fuente
				end
			elseif selector == 23 then
				if selec_fondo <= #OPCIONES.FONDO_ENCONTRADOS-1 then
					selec_fondo = selec_fondo+1
				elseif selec_fondo == #OPCIONES.FONDO_ENCONTRADOS then
					selec_fondo = 1
				end
				if selec_fondo <= #OPCIONES.FONDO_ENCONTRADOS and selec_fondo >= 1 then
					Graphics.freeImage(LISTAS.FONDO)
					LISTAS.FONDO = Graphics.loadImage(OPCIONES.FONDO_ENCONTRADOS[selec_fondo])
					OPCIONES.CAMBIO_FONDO_ON = selec_fondo
				end
			elseif selector == 26 then
				if selec_dir <= 2 then
					selec_dir = selec_dir+1
				elseif selec_dir >= 3 then
					selec_dir = 0
				end
				OPCIONES.SALIDA_RETROLANCHER_ON = selec_dir
				buscar_directorio(nil)
				lista_config[27] = OPCIONES.SALIDA_RETROLANCHER
				lista_texto_config[27] = OPCIONES.SALIDA_RETROLANCHER
			elseif selector == 27 then
				if selec_dir ~= 0 then
					buscar_directorio(nil)
					marcar_directorio()
					selec_dir = OPCIONES.SALIDA_RETROLANCHER_ON
					lista_config[27] = OPCIONES.SALIDA_RETROLANCHER
					lista_texto_config[27] = OPCIONES.SALIDA_RETROLANCHER
				end
			elseif selector == 36 then
				creditos()
			elseif selector == #lista_config then
				OPCIONES.RGB_ON = lista_config[1]
				OPCIONES.FONDO_RGB_ON = lista_config[2]
				OPCIONES.FONDO_RGB_FIJO_ON = lista_config[3]
				OPCIONES.R = color1
				OPCIONES.G = color2
				OPCIONES.B = color3
				CONTROL.ESTILO = estilo_lista
				SISTEMAS.MEGADRIVE_ON = lista_config[8]
				if SISTEMAS.MEGADRIVE_ON == 0 then
					PRE_CARGADAS[1] = {}
				end
				SISTEMAS.MASTERSYSTEM_ON = lista_config[9]
				if SISTEMAS.MASTERSYSTEM_ON == 0 then
					PRE_CARGADAS[2] = {}
				end
				SISTEMAS.GAMEGEAR_ON = lista_config[10]
				if SISTEMAS.GAMEGEAR_ON == 0 then
					PRE_CARGADAS[3] = {}
				end
				SISTEMAS.FAMICOM_ON = lista_config[11]
				if SISTEMAS.FAMICOM_ON == 0 then
					PRE_CARGADAS[4] = {}
				end
				SISTEMAS.GAMEBOY_ON = lista_config[12]
				if SISTEMAS.GAMEBOY_ON == 0 then
					PRE_CARGADAS[5] = {}
				end
				SISTEMAS.GAMEBOYCOLOR_ON = lista_config[13]
				if SISTEMAS.GAMEBOYCOLOR_ON == 0 then
					PRE_CARGADAS[6] = {}
				end
				SISTEMAS.GAMEBOYADVANCE_ON = lista_config[14]
				if SISTEMAS.GAMEBOYADVANCE_ON == 0 then
					PRE_CARGADAS[7] = {}
				end
				SISTEMAS.PLAYSTATION_ON = lista_config[15]
				if SISTEMAS.PLAYSTATION_ON == 0 then
					PRE_CARGADAS[8] = {}
				end
				SISTEMAS.ATARI2600_ON = lista_config[16]
				if SISTEMAS.ATARI2600_ON == 0 then
					PRE_CARGADAS[9] = {}
				end
				SISTEMAS.SEGASG1000_ON = lista_config[17]
				if SISTEMAS.SEGASG1000_ON == 0 then
					PRE_CARGADAS[10] = {}
				end
				SISTEMAS.NEOGEOPOCKET_ON = lista_config[18]
				if SISTEMAS.NEOGEOPOCKET_ON == 0 then
					PRE_CARGADAS[11] = {}
				end
				SISTEMAS.SUPERFAMICOM_ON = lista_config[19]
				if SISTEMAS.SUPERFAMICOM_ON == 0 then
					PRE_CARGADAS[12] = {}
				end
				SISTEMAS.APPS_ON = lista_config[20]
				if SISTEMAS.APPS_ON == 0 then
					PRE_CARGADAS[13] = {}
				end
				SISTEMAS.PLAYSTATION2_ON = lista_config[21]
				if SISTEMAS.PLAYSTATION2_ON == 0 then
					PRE_CARGADAS[14] = {}
				end
				OPCIONES.CAMBIO_FUENTE_ON = selec_fuente
				OPCIONES.CAMBIO_FONDO_ON = selec_fondo
				OPCIONES.GUI_LIMPIA_ON = lista_config[24]
				OPCIONES.LIMITADOR_RAM_ON = lista_config[25]
				if doesFileExist(OPCIONES.SALIDA_RETROLANCHER) and string.lower(string.sub(OPCIONES.SALIDA_RETROLANCHER,-4)) == ".elf" then
					OPCIONES.SALIDA_RETROLANCHER_ON = selec_dir
					guardar_directorio_elf()
				else
					OPCIONES.SALIDA_RETROLANCHER_ON = 0
					OPCIONES.SALIDA_RETROLANCHER = "PS2 SYSTEM MENU"
					guardar_directorio_elf()
				end
				OPCIONES.APPS_MENU_FULL_PATH = lista_config[28]
				OPCIONES.SOUND_ON = lista_config[29]
				OPCIONES.SOUND_VOLUME = volume
				OPCIONES.SCREENSHOT_BACK_ON = lista_config[31]
				OPCIONES.SCANLINES_ON = lista_config[32]
				OPCIONES.VIBRATION_ON = lista_config[33]
				OPCIONES.DIR_EXTRAS_ON = lista_config[34]
				if CONTROL.ESTILO == 1 then
					CONTROL.IMG_ANCHO = 358
					CONTROL.IMG_ALTO = 92
					CONTROL.LISTA_ANCHO = 30
					CONTROL.LISTA_ALTO = 90
					CONTROL.LOGO_ALTO = 5
					CONTROL.LOGO_ANCHO = 194
				elseif CONTROL.ESTILO == 2 then
					CONTROL.IMG_ANCHO = 195
					CONTROL.IMG_ALTO = 110
					CONTROL.LISTA_ANCHO = 30
					CONTROL.LISTA_ALTO = 90
					CONTROL.LOGO_ALTO = 5
					CONTROL.LOGO_ANCHO = 194
				elseif CONTROL.ESTILO == 3 then
					CONTROL.IMG_ANCHO = 340
					CONTROL.IMG_ALTO = 92
					CONTROL.LISTA_ANCHO = 48
					CONTROL.LISTA_ALTO = 300
					CONTROL.LOGO_ALTO = 5
					CONTROL.LOGO_ANCHO = 194
				elseif CONTROL.ESTILO == 4 then
					CONTROL.IMG_ANCHO = 333
					CONTROL.IMG_ALTO = 92
					CONTROL.LISTA_ANCHO = 10
					CONTROL.LISTA_ALTO = 90
					CONTROL.LOGO_ALTO = 5
					CONTROL.LOGO_ANCHO = 194
				elseif CONTROL.ESTILO == 5 then
					CONTROL.IMG_ANCHO = 12
					CONTROL.IMG_ALTO = 20
					CONTROL.LISTA_ANCHO = 10
					CONTROL.LISTA_ALTO = 300
				elseif CONTROL.ESTILO == 6 then
					CONTROL.IMG_ANCHO = 333
					CONTROL.IMG_ALTO = 10
					CONTROL.LISTA_ANCHO = 22
					CONTROL.LISTA_ALTO = 90
					CONTROL.LOGO_ALTO = 5
				end
				desactivados(nil)
				guardar_opciones()
				noob = false
			end
			if (lista_config[2] == 0 or lista_config[3] == 1) and lista_config[1] == 1 then
				lista_config[1] = 0
			end
			if lista_config[3] == 1 then
				CAMBIOS_EMUS.COLOR_EMU = Color.new(color1,color2,color3)
			elseif lista_config[3] == 0 then
				color_emu(LISTAS.IDENTIDAD)
			end
			OPCIONES.SOUND_ON = lista_config[29]
			OPCIONES.SCANLINES_ON = lista_config[32]
			OPCIONES.VIBRATION_ON = lista_config[33]
			if OPCIONES.VIBRATION_ON == 1 then
				Pads.rumble(1,255)
			end
			CONTROL.JOYSTICK_ON = true 
			JOYSTICK_LIMITE = control_FPS(1) 
		end
		if Pads.check(PAD,PAD_DOWN) and CONTROL.JOYSTICK_ON == false then
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.MOVER ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.MOVER)
			end
			if conf_numero == true then
				if selector <= 21 or selector <= #lista_config-1 then
					selector = selector+1
					if selector == 22 then
						selector = #lista_config
					end
				else
					selector = 1
				end  
			else
				if selector <= #lista_config-1 then
					selector = selector+1
				else
					selector = 22
				end  
			end
			CONTROL.JOYSTICK_ON = true 
			JOYSTICK_LIMITE = control_FPS(1)
		end
		if Pads.check(PAD,PAD_UP) and CONTROL.JOYSTICK_ON == false then
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.MOVER ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.MOVER)
			end
			if conf_numero == true then
				if selector >= 2 then
					selector = selector-1
					if selector == #lista_config-1 then
						selector = 21
					end
				else
					selector = #lista_config
				end  
			else
				if selector >= 23 then
					selector = selector-1
				else
					selector = #lista_config
				end
			end
			CONTROL.JOYSTICK_ON = true 
			JOYSTICK_LIMITE = control_FPS(1)
		end
		if selector == 30 and (Pads.check(PAD,PAD_RIGHT) or Pads.check(PAD,PAD_LEFT)) and CONTROL.JOYSTICK_ON == false then
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.MOVER ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.MOVER)
			end
			if Pads.check(PAD,PAD_RIGHT) then
				if volume <= 99 then
					volume = volume+1
				else
					volume = 1
				end
			elseif Pads.check(PAD,PAD_LEFT) then
				if volume >= 1 then
					volume = volume-1
				else
					volume = 100
				end
			end
			OPCIONES.SOUND_VOLUME = volume
			set_volume()
			if OPCIONES.VIBRATION_ON == 1 then
				Pads.rumble(1,150+volume)
			end
			CONTROL.JOYSTICK_ON = true 
			JOYSTICK_LIMITE = control_FPS(1) 
		end
		if Pads.check(PAD,PAD_RIGHT) and selector >= 4 and selector <= 6 and CONTROL.JOYSTICK_ON == false then
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.MOVER ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.MOVER)
			end
			if selector == 4 then
				if color1 <= 127 then
					color1 = color1+1
				else
					color1 = 0
				end 
			elseif selector == 5 then
				if color2 <= 127 then
					color2 = color2+1
				else
					color2 = 0
				end 
			elseif selector == 6 then
				if color3 <= 127 then
					color3 = color3+1
				else
					color3 = 0
				end 
			end
			color_demo = Color.new(color1,color2,color3)
			if lista_config[3] == 1 then
				CAMBIOS_EMUS.COLOR_EMU = Color.new(color1,color2,color3)
			elseif lista_config[3] == 0 then
				color_emu(LISTAS.IDENTIDAD)
			end
			if OPCIONES.VIBRATION_ON == 1 then
				Pads.rumble(1,255)
			end
			CONTROL.JOYSTICK_ON = true 
			JOYSTICK_LIMITE = control_FPS(1) 
		end
		if Pads.check(PAD,PAD_LEFT) and selector >= 4 and selector <= 6 and CONTROL.JOYSTICK_ON == false then
			if OPCIONES.SOUND_ON == 1 and MENU_SONIDOS.MOVER ~= nil then
				Sound.playADPCM(1,MENU_SONIDOS.MOVER)
			end
			if selector == 4 then
				if color1 >= 1 then
					color1 = color1-1
				else
					color1 = 128
				end 
			elseif selector == 5 then
				if color2 >= 1 then
					color2 = color2-1
				else
					color2 = 128
				end 
			elseif selector == 6 then
				if color3 >= 1 then
					color3 = color3-1
				else
					color3 = 128
				end 
			end
			color_demo = Color.new(color1,color2,color3)
			if lista_config[3] == 1 then
				CAMBIOS_EMUS.COLOR_EMU = Color.new(color1,color2,color3)
			elseif lista_config[3] == 0 then
				color_emu(LISTAS.IDENTIDAD)
			end
			if OPCIONES.VIBRATION_ON == 1 then
				Pads.rumble(1,255)
			end
			CONTROL.JOYSTICK_ON = true 
			JOYSTICK_LIMITE = control_FPS(1) 
		end
	
		-- Mostrar todo en pantalla
		Screen.clear(COLOR.NEGRO)
		if lista_config[1] == 1 then
			RGB()
		end
		if lista_config[2] == 1 and lista_config[3] == 0 then
			Graphics.drawRect(0,0,640,480,CAMBIOS_EMUS.COLOR_EMU_BACK)
			Graphics.drawScaleImage(LISTAS.FONDO,-5,0,CONTROL.ANCHO+5,CONTROL.ALTO,CAMBIOS_EMUS.COLOR_EMU_BACK)
		elseif lista_config[3] == 1 and lista_config[2] == 1 then
			Graphics.drawRect(0,0,640,480,color_demo)
			Graphics.drawScaleImage(LISTAS.FONDO,-5,0,CONTROL.ANCHO+5,CONTROL.ALTO,color_demo)
		else
			Graphics.drawScaleImage(LISTAS.FONDO,-5,0,CONTROL.ANCHO+5,CONTROL.ALTO)
		end
		Graphics.drawRect(12,28,615,405,COLOR.NEGRO_T)
		Graphics.drawScaleImage(PAD_IMG.L1,214,0,32,32)
		Font.ftPrint(CONTROL.fontARCA,279,6,0,0,8,page,COLOR.BLANCO_LISTA)
		Graphics.drawScaleImage(PAD_IMG.R1,392,0,32,32)
		local contador = 1
		local ini = 1
		if conf_numero == true then
			ini = 1
		else
			ini = 22
		end
		if CONTROL.ESPERA_CARGA_SCR == false then
			LISTAS.SCROLL_TEX = scroll_texto(LISTAS.SCROLL_TEX,lista_texto_config[27],44)
		end
		for estado = ini,#lista_config do
			local acti = "ON"
			if lista_config[estado] == 0 then
				acti = "OFF"
			end
			if contador == 7 and conf_numero == true then
				if estilo_lista == 1 then
					acti = "SIMPLE"
				elseif estilo_lista == 2 then
					acti = "COVER ART"
				elseif estilo_lista == 3 then
					acti = "FULL ART"
				elseif estilo_lista == 4 then
					acti = "BIG COVER"
				elseif estilo_lista == 5 then
					acti = "BIG ART"
				elseif estilo_lista == 6 then
					acti = "BIG LIST"
				end
			end
			if contador == 5 and conf_numero == false then
				if selec_dir == 0 then
					acti = "DEFAULT"
				elseif selec_dir == 1 then
					acti = "MC 0"
				elseif selec_dir == 2 then
					acti = "MC 1"
				elseif selec_dir == 3 then
					acti = "USB"
				end
			end
			local espacio_linea = (8+(contador)*25)
			if estado <= 7 or estado >= 22 or estado == #lista_config then
				if estado == selector then
				    if estado ~= #lista_config then
						Graphics.drawRect(12+5,espacio_linea-3,610,25,COLOR.NEGRO_T)
					end
					if estado == #lista_config then
						Font.ftPrint(CONTROL.fontARCA,209,408,0,0,8,"".. lista_texto_config[estado],CAMBIOS_EMUS.COLOR_EMU)
					elseif estado == 27 then 
						Font.ftPrint(CONTROL.fontARCA,22,espacio_linea,0,601,8,"".. string.sub(lista_texto_config[estado],LISTAS.SCROLL_TEX),CAMBIOS_EMUS.COLOR_EMU)
					else
						Font.ftPrint(CONTROL.fontARCA,22,espacio_linea,0,0,8,"".. lista_texto_config[estado],CAMBIOS_EMUS.COLOR_EMU)
					end
					if estado >= 4 and estado <= 6 then
						Graphics.drawRect(565,19+100,45,45,color_demo)
						if estado == 4 then 
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. color1,CAMBIOS_EMUS.COLOR_EMU)
						elseif estado == 5 then 
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. color2,CAMBIOS_EMUS.COLOR_EMU)
						elseif estado == 6 then 
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. color3,CAMBIOS_EMUS.COLOR_EMU)
						end	
					else
						if estado == 7 then
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. acti,CAMBIOS_EMUS.COLOR_EMU)
						elseif estado == #lista_config then
							Font.ftPrint(CONTROL.fontARCA,209,408,0,0,8," ",CAMBIOS_EMUS.COLOR_EMU)
						elseif estado == 22 then
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. selec_fuente,CAMBIOS_EMUS.COLOR_EMU)
						elseif estado == 23 then 
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. selec_fondo,CAMBIOS_EMUS.COLOR_EMU)
						elseif estado == 26 then 
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. acti,CAMBIOS_EMUS.COLOR_EMU)
						elseif estado == 30 then 
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. volume,CAMBIOS_EMUS.COLOR_EMU)
						elseif estado == 27 or estado == 35 or estado == 36 then 
							Font.ftPrint(CONTROL.fontARCA,16,espacio_linea,0,0,8,"",CAMBIOS_EMUS.COLOR_EMU)
						else
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"STATE: ".. acti,CAMBIOS_EMUS.COLOR_EMU)
						end
					end
				else
					if estado == #lista_config then
						Font.ftPrint(CONTROL.fontARCA,209,408,0,0,8,"".. lista_texto_config[estado],COLOR.BLANCO_LISTA)
					elseif estado == 27 then 
						Font.ftPrint(CONTROL.fontARCA,22,espacio_linea,0,601,8,"".. string.sub(lista_texto_config[estado],LISTAS.SCROLL_TEX),COLOR.BLANCO_LISTA)
					else
						Font.ftPrint(CONTROL.fontARCA,22,espacio_linea,0,0,8,"".. lista_texto_config[estado],COLOR.BLANCO_LISTA)
					end
					if estado >= 4 and estado <= 6 then
						Graphics.drawRect(565,19+100,45,45,color_demo)
						if estado == 4 then 
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. color1,COLOR.BLANCO_LISTA)
						elseif estado == 5 then 
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. color2,COLOR.BLANCO_LISTA)
						elseif estado == 6 then 
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. color3,COLOR.BLANCO_LISTA)
						end	
					else
						if estado == 7 then
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. acti,COLOR.BLANCO_LISTA)
						elseif estado == #lista_config then
							Font.ftPrint(CONTROL.fontARCA,209,408,0,0,8," ",COLOR.BLANCO_LISTA)
						elseif estado == 22 then 
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. selec_fuente,COLOR.BLANCO_LISTA)
						elseif estado == 23 then 
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. selec_fondo,COLOR.BLANCO_LISTA)
						elseif estado == 26 then 
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. acti,COLOR.BLANCO_LISTA)
						elseif estado == 30 then 
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"".. volume,COLOR.BLANCO_LISTA)
						elseif estado == 27 or estado == 35 or estado == 36 then 
							Font.ftPrint(CONTROL.fontARCA,16,espacio_linea,0,0,8,"",COLOR.BLANCO_LISTA)
						else
							Font.ftPrint(CONTROL.fontARCA,489,espacio_linea,0,0,8,"STATE: ".. acti,COLOR.BLANCO_LISTA)
						end
					end
				end
			else
				Font.ftPrint(CONTROL.fontARCA,189,206,0,0,8,"- Activate Systems -",COLOR.BLANCO_LISTA)
				if estado <= 14 then
					if estado == selector then
						Graphics.drawRect(17,espacio_linea-3+23,293,25,COLOR.NEGRO_T)
						Font.ftPrint(CONTROL.fontARCA,22,espacio_linea+23,0,0,8,"".. lista_texto_config[estado],CAMBIOS_EMUS.COLOR_EMU)
						Font.ftPrint(CONTROL.fontARCA,268,espacio_linea+23,0,0,8,"".. acti,CAMBIOS_EMUS.COLOR_EMU)
					else
						Font.ftPrint(CONTROL.fontARCA,22,espacio_linea+23,0,0,8,"".. lista_texto_config[estado],COLOR.BLANCO_LISTA)
						Font.ftPrint(CONTROL.fontARCA,268,espacio_linea+23,0,0,8,"".. acti,COLOR.BLANCO_LISTA)
					end
				else	
					if estado == selector then
						Graphics.drawRect(332,espacio_linea-155,280,25,COLOR.NEGRO_T)
						Font.ftPrint(CONTROL.fontARCA,337,espacio_linea-152,0,0,8,"".. lista_texto_config[estado],CAMBIOS_EMUS.COLOR_EMU)
						Font.ftPrint(CONTROL.fontARCA,570,espacio_linea-152,0,0,8,"".. acti,CAMBIOS_EMUS.COLOR_EMU)
					else
						Font.ftPrint(CONTROL.fontARCA,337,espacio_linea-152,0,0,8,"".. lista_texto_config[estado],COLOR.BLANCO_LISTA)
						Font.ftPrint(CONTROL.fontARCA,570,espacio_linea-152,0,0,8,"".. acti,COLOR.BLANCO_LISTA)
					end
				end
			end
			contador = contador+1
		end
		if conf_numero == true then
			Graphics.drawScaleImage(LOGOS.DEFAULT_DEMO,194,109,252,76,CAMBIOS_EMUS.COLOR_EMU)
		end
		refrescar()
	end
	Pads.rumble(0,0)
	if reinicio == false then
		animaciones()
	elseif reinicio == true then
		reiniciar_conf(clean)
	end
	CONTROL.JOYSTICK_ON = false 
	JOYSTICK_LIMITE = control_FPS(2)
	limpiar_art()
	LISTAS.MOSTRAR = 0
end

function animaciones() -- Muestra los distintos tipos de animaciones al cambiar de emuladores
	local saibot = true
	local cambio_ani = false 
	local velocidad = 35
	color_emu(LISTAS.IDENTIDAD)
	local actual_ancho = CONTROL.LISTA_ANCHO
	local actual_alto = CONTROL.IMG_ALTO
	while saibot do
		if CONTROL.ESTILO == 1 then
			if CONTROL.LADO_ANI == false then
				if CONTROL.LISTA_ANCHO < actual_ancho-velocidad and cambio_ani == true then
					CONTROL.LISTA_ANCHO = CONTROL.LISTA_ANCHO+velocidad
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+328
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+164
				elseif CONTROL.LISTA_ANCHO >= actual_ancho-velocidad and cambio_ani == true then
					CONTROL.LISTA_ANCHO = actual_ancho
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+328
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+164
					saibot = false
				elseif CONTROL.LISTA_ANCHO <= CONTROL.ANCHO+velocidad and cambio_ani == false then
					CONTROL.LISTA_ANCHO = CONTROL.LISTA_ANCHO+velocidad
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+328
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+164
				elseif CONTROL.LISTA_ANCHO >= CONTROL.ANCHO+velocidad and cambio_ani == false then
					CONTROL.LISTA_ANCHO = -10-610
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+328
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+164
					cargar_logo(LISTAS.IDENTIDAD)
					cambio_ani = true
				end
			elseif CONTROL.LADO_ANI == true then
				if CONTROL.LISTA_ANCHO > actual_ancho+velocidad and cambio_ani == true then
					CONTROL.LISTA_ANCHO = CONTROL.LISTA_ANCHO-velocidad
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+328
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+164
				elseif CONTROL.LISTA_ANCHO <= actual_ancho+velocidad and cambio_ani == true then
					CONTROL.LISTA_ANCHO = actual_ancho
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+328
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+164
					saibot = false
				elseif CONTROL.LISTA_ANCHO+610 >= 0-velocidad and cambio_ani == false then
					CONTROL.LISTA_ANCHO = CONTROL.LISTA_ANCHO-velocidad
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+328
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+164
				elseif CONTROL.LISTA_ANCHO+610 <= 0-velocidad and cambio_ani == false then
					CONTROL.LISTA_ANCHO = CONTROL.ANCHO+4
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+328
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+164
					cargar_logo(LISTAS.IDENTIDAD)
					cambio_ani = true
				end
			end				
		elseif CONTROL.ESTILO == 2 then
			if CONTROL.LADO_ANI == false then
				if CONTROL.IMG_ALTO < actual_alto-velocidad and cambio_ani == true then
					CONTROL.IMG_ALTO = CONTROL.IMG_ALTO+velocidad
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-105
				elseif CONTROL.IMG_ALTO >= actual_alto-velocidad and cambio_ani == true then
					CONTROL.IMG_ALTO = actual_alto
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-105
					saibot = false
				elseif CONTROL.IMG_ALTO <= CONTROL.ALTO+velocidad and cambio_ani == false then
					CONTROL.IMG_ALTO = CONTROL.IMG_ALTO+velocidad
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-105
				elseif CONTROL.IMG_ALTO >= CONTROL.ALTO+velocidad and cambio_ani == false then
					CONTROL.IMG_ALTO = -10-330
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-105
					cargar_logo(LISTAS.IDENTIDAD)
					cambio_ani = true
				end
			elseif CONTROL.LADO_ANI == true then
				if CONTROL.IMG_ALTO > actual_alto+velocidad and cambio_ani == true then
					CONTROL.IMG_ALTO = CONTROL.IMG_ALTO-velocidad
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-105
				elseif CONTROL.IMG_ALTO <= actual_alto+velocidad and cambio_ani == true then
					CONTROL.IMG_ALTO = actual_alto
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-105
					saibot = false
				elseif CONTROL.IMG_ALTO+330 >= 0-velocidad and cambio_ani == false then
					CONTROL.IMG_ALTO = CONTROL.IMG_ALTO-velocidad
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-105
				elseif CONTROL.IMG_ALTO+330 <= 0-velocidad and cambio_ani == false then
					CONTROL.IMG_ALTO = CONTROL.ALTO+4
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-105
					cargar_logo(LISTAS.IDENTIDAD)
					cambio_ani = true
				end
			end
		elseif CONTROL.ESTILO == 3 then
			if CONTROL.LADO_ANI == false then
				if CONTROL.IMG_ALTO < actual_alto-velocidad and cambio_ani == true then
					CONTROL.IMG_ALTO = CONTROL.IMG_ALTO+velocidad
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-87
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+208
				elseif CONTROL.IMG_ALTO >= actual_alto-velocidad and cambio_ani == true then
					CONTROL.IMG_ALTO = actual_alto
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-87
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+208
					saibot = false
				elseif CONTROL.IMG_ALTO <= CONTROL.ALTO+velocidad and cambio_ani == false then
					CONTROL.IMG_ALTO = CONTROL.IMG_ALTO+velocidad
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-87
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+208
				elseif CONTROL.IMG_ALTO >= CONTROL.ALTO+velocidad and cambio_ani == false then
					CONTROL.IMG_ALTO = -10-348
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-87
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+208
					cargar_logo(LISTAS.IDENTIDAD)
					cambio_ani = true
				end
			elseif CONTROL.LADO_ANI == true then
				if CONTROL.IMG_ALTO > actual_alto+velocidad and cambio_ani == true then
					CONTROL.IMG_ALTO = CONTROL.IMG_ALTO-velocidad
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-87
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+208
				elseif CONTROL.IMG_ALTO >= actual_alto-velocidad and cambio_ani == true then
					CONTROL.IMG_ALTO = actual_alto
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-87
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+208
					saibot = false
				elseif CONTROL.IMG_ALTO+348 >= 0-velocidad and cambio_ani == false then
					CONTROL.IMG_ALTO = CONTROL.IMG_ALTO-velocidad
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-87
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+208
				elseif CONTROL.IMG_ALTO+348 <= 0-velocidad and cambio_ani == false then
					CONTROL.IMG_ALTO = CONTROL.ALTO+4
					CONTROL.LOGO_ALTO = CONTROL.IMG_ALTO-87
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+208
					cargar_logo(LISTAS.IDENTIDAD)
					cambio_ani = true
				end
			end
		elseif CONTROL.ESTILO == 4 then
			if CONTROL.LADO_ANI == false then
				if CONTROL.LISTA_ANCHO < actual_ancho-velocidad and cambio_ani == true then
					CONTROL.LISTA_ANCHO = CONTROL.LISTA_ANCHO+velocidad
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+184
				elseif CONTROL.LISTA_ANCHO >= actual_ancho-velocidad and cambio_ani == true then
					CONTROL.LISTA_ANCHO = actual_ancho
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+184
					saibot = false
				elseif CONTROL.LISTA_ANCHO <= CONTROL.ANCHO+velocidad and cambio_ani == false then
					CONTROL.LISTA_ANCHO = CONTROL.LISTA_ANCHO+velocidad
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+184
				elseif CONTROL.LISTA_ANCHO >= CONTROL.ANCHO+velocidad and cambio_ani == false then
					CONTROL.LISTA_ANCHO = -10-630
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+184
					cargar_logo(LISTAS.IDENTIDAD)
					cambio_ani = true
				end
			elseif CONTROL.LADO_ANI == true then
				if CONTROL.LISTA_ANCHO > actual_ancho+velocidad and cambio_ani == true then
					CONTROL.LISTA_ANCHO = CONTROL.LISTA_ANCHO-velocidad
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+184
				elseif CONTROL.LISTA_ANCHO <= actual_ancho+velocidad and cambio_ani == true then
					CONTROL.LISTA_ANCHO = actual_ancho
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+184
					saibot = false
				elseif CONTROL.LISTA_ANCHO+630 >= 0-velocidad and cambio_ani == false then
					CONTROL.LISTA_ANCHO = CONTROL.LISTA_ANCHO-velocidad
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+184
				elseif CONTROL.LISTA_ANCHO+630 <= 0-velocidad and cambio_ani == false then
					CONTROL.LISTA_ANCHO = CONTROL.ANCHO+4
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+184
					cargar_logo(LISTAS.IDENTIDAD)
					cambio_ani = true
				end
			end
		elseif CONTROL.ESTILO == 5 then
			if CONTROL.LADO_ANI == false then
				if CONTROL.IMG_ALTO < actual_alto-velocidad and cambio_ani == true then
					CONTROL.IMG_ALTO = CONTROL.IMG_ALTO+velocidad
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+243
					CONTROL.LOGO_ALTO = CONTROL.LISTA_ALTO+20
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+340
				elseif CONTROL.IMG_ALTO >= actual_alto-velocidad and cambio_ani == true then
					CONTROL.IMG_ALTO = actual_alto
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+243
					CONTROL.LOGO_ALTO = CONTROL.LISTA_ALTO+20
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+340
					saibot = false
				elseif CONTROL.IMG_ALTO <= CONTROL.ALTO+velocidad and cambio_ani == false then
					CONTROL.IMG_ALTO = CONTROL.IMG_ALTO+velocidad
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+243
					CONTROL.LOGO_ALTO = CONTROL.LISTA_ALTO+20
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+340
				elseif CONTROL.IMG_ALTO >= CONTROL.ALTO+velocidad and cambio_ani == false then
					CONTROL.IMG_ALTO = -10-420
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+243
					CONTROL.LOGO_ALTO = CONTROL.LISTA_ALTO+20
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+340
					cargar_logo(LISTAS.IDENTIDAD)
					cambio_ani = true
				end
			elseif CONTROL.LADO_ANI == true then
				if CONTROL.IMG_ALTO > actual_alto+velocidad and cambio_ani == true then
					CONTROL.IMG_ALTO = CONTROL.IMG_ALTO-velocidad
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+243
					CONTROL.LOGO_ALTO = CONTROL.LISTA_ALTO+20
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+340
				elseif CONTROL.IMG_ALTO >= actual_alto-velocidad and cambio_ani == true then
					CONTROL.IMG_ALTO = actual_alto
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+243
					CONTROL.LOGO_ALTO = CONTROL.LISTA_ALTO+20
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+340
					saibot = false
				elseif CONTROL.IMG_ALTO+420 >= 0-velocidad and cambio_ani == false then
					CONTROL.IMG_ALTO = CONTROL.IMG_ALTO-velocidad
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+243
					CONTROL.LOGO_ALTO = CONTROL.LISTA_ALTO+20
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+340
				elseif CONTROL.IMG_ALTO+420 <= 0-velocidad and cambio_ani == false then
					CONTROL.IMG_ALTO = CONTROL.ALTO+4
					CONTROL.LISTA_ALTO = CONTROL.IMG_ALTO+243
					CONTROL.LOGO_ALTO = CONTROL.LISTA_ALTO+20
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+340
					cargar_logo(LISTAS.IDENTIDAD)
					cambio_ani = true
				end
			end
		elseif CONTROL.ESTILO == 6 then
			if CONTROL.LADO_ANI == false then
				if CONTROL.LISTA_ANCHO < actual_ancho-velocidad and cambio_ani == true then
					CONTROL.LISTA_ANCHO = CONTROL.LISTA_ANCHO+velocidad
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+30
				elseif CONTROL.LISTA_ANCHO >= actual_ancho-velocidad and cambio_ani == true then
					CONTROL.LISTA_ANCHO = actual_ancho
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+30
					saibot = false
				elseif CONTROL.LISTA_ANCHO <= CONTROL.ANCHO+velocidad and cambio_ani == false then
					CONTROL.LISTA_ANCHO = CONTROL.LISTA_ANCHO+velocidad
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+30
				elseif CONTROL.LISTA_ANCHO >= CONTROL.ANCHO+velocidad and cambio_ani == false then
					CONTROL.LISTA_ANCHO = -10-630
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+30
					cargar_logo(LISTAS.IDENTIDAD)
					cambio_ani = true
				end
			elseif CONTROL.LADO_ANI == true then
				if CONTROL.LISTA_ANCHO > actual_ancho+velocidad and cambio_ani == true then
					CONTROL.LISTA_ANCHO = CONTROL.LISTA_ANCHO-velocidad
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+30
				elseif CONTROL.LISTA_ANCHO <= actual_ancho+velocidad and cambio_ani == true then
					CONTROL.LISTA_ANCHO = actual_ancho
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+30
					saibot = false
				elseif CONTROL.LISTA_ANCHO+630 >= 0-velocidad and cambio_ani == false then
					CONTROL.LISTA_ANCHO = CONTROL.LISTA_ANCHO-velocidad
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+30
				elseif CONTROL.LISTA_ANCHO+630 <= 0-velocidad and cambio_ani == false then
					CONTROL.LISTA_ANCHO = CONTROL.ANCHO+4
					CONTROL.IMG_ANCHO = CONTROL.LISTA_ANCHO+323
					CONTROL.LOGO_ANCHO = CONTROL.LISTA_ANCHO+30
					cargar_logo(LISTAS.IDENTIDAD)
					cambio_ani = true
				end
			end
		end

		-- Mostrar todo en pantalla
		Screen.clear(COLOR.NEGRO)
		RGB()
		if OPCIONES.FONDO_RGB_ON == 1 then
			Graphics.drawRect(0,0,640,480,CAMBIOS_EMUS.COLOR_EMU_BACK)
			Graphics.drawScaleImage(LISTAS.FONDO,-5,0,CONTROL.ANCHO+5,CONTROL.ALTO,CAMBIOS_EMUS.COLOR_EMU_BACK)
		else
			Graphics.drawScaleImage(LISTAS.FONDO,-5,0,CONTROL.ANCHO+5,CONTROL.ALTO)
		end
		if CONTROL.ESTILO == 1 then
			Graphics.drawScaleImage(LISTAS.LOGO,CONTROL.LOGO_ANCHO,CONTROL.LOGO_ALTO,252,76)
			Graphics.drawRect(CONTROL.LISTA_ANCHO-3,CONTROL.LISTA_ALTO-3,316,296,COLOR.NEGRO_T)
			Graphics.drawRect(CONTROL.IMG_ANCHO-5,CONTROL.IMG_ALTO-5,260,203,COLOR.NEGRO_T)
		elseif CONTROL.ESTILO == 2 then
			Graphics.drawScaleImage(LISTAS.LOGO,CONTROL.LOGO_ANCHO,CONTROL.LOGO_ALTO,252,76)
			Graphics.drawRect(CONTROL.IMG_ANCHO-5,CONTROL.IMG_ALTO-5,260,203,COLOR.NEGRO_T)
			Graphics.drawRect(CONTROL.IMG_ANCHO-180-5,CONTROL.IMG_ALTO+40-5,160+10,103+10,COLOR.NEGRO_T)
			Graphics.drawRect(CONTROL.IMG_ANCHO+270-5,CONTROL.IMG_ALTO+40-5,160+10,103+10,COLOR.NEGRO_T)
			Graphics.drawRect(165,CONTROL.IMG_ALTO+218,310,25,COLOR.NEGRO_T)
			Graphics.drawRect(CONTROL.IMG_ANCHO-180,CONTROL.IMG_ALTO+158,160,25,COLOR.NEGRO_T)
			Graphics.drawRect(CONTROL.IMG_ANCHO+270,CONTROL.IMG_ALTO+158,160,25,COLOR.NEGRO_T)
		elseif CONTROL.ESTILO == 3 then
			local largo = 310
			if OPCIONES.GUI_LIMPIA_ON == 1 then
				largo = 544
			end
			Graphics.drawScaleImage(LISTAS.LOGO,CONTROL.LOGO_ANCHO,CONTROL.LOGO_ALTO,252,76)
			Graphics.drawRect(CONTROL.LISTA_ANCHO-3,CONTROL.LISTA_ALTO-3,largo+6,143,COLOR.NEGRO_T)
			Graphics.drawRect(CONTROL.IMG_ANCHO-5,CONTROL.IMG_ALTO-5,260,203,COLOR.NEGRO_T)
			Graphics.drawRect(CONTROL.LISTA_ANCHO-5,CONTROL.IMG_ALTO-5,260,203,COLOR.NEGRO_T)
		elseif CONTROL.ESTILO == 4 then
			Graphics.drawScaleImage(LISTAS.LOGO,CONTROL.LOGO_ANCHO,CONTROL.LOGO_ALTO,252,76)
			Graphics.drawRect(CONTROL.LISTA_ANCHO-3,CONTROL.LISTA_ALTO-3,316,296,COLOR.NEGRO_T)
			Graphics.drawRect(CONTROL.IMG_ANCHO-5,CONTROL.IMG_ALTO-5,305,238,COLOR.NEGRO_T)
		elseif CONTROL.ESTILO == 5 then
			Graphics.drawScaleImage(LISTAS.LOGO,CONTROL.LOGO_ANCHO,CONTROL.LOGO_ALTO,252,76)
			Graphics.drawRect(CONTROL.LISTA_ANCHO-3,CONTROL.LISTA_ALTO-3,306,121,COLOR.NEGRO_T)
			Graphics.drawRect(CONTROL.IMG_ANCHO-5,CONTROL.IMG_ALTO-5,305,238,COLOR.NEGRO_T)
			Graphics.drawRect(CONTROL.IMG_ANCHO+315,CONTROL.IMG_ALTO-5,305,238,COLOR.NEGRO_T)
		elseif CONTROL.ESTILO == 6 then
			Graphics.drawScaleImage(LISTAS.LOGO,CONTROL.LOGO_ANCHO,CONTROL.LOGO_ALTO,252,76)
			Graphics.drawRect(CONTROL.LISTA_ANCHO-3,CONTROL.LISTA_ALTO-3,316,296,COLOR.NEGRO_T)
			Graphics.drawRect(CONTROL.IMG_ANCHO-5,CONTROL.IMG_ALTO-5,280,218,COLOR.NEGRO_T)
			Graphics.drawRect(CONTROL.IMG_ANCHO-5,CONTROL.IMG_ALTO+215,280,218,COLOR.NEGRO_T)
		end
		refrescar()
	end
	
	-- Cambia el límite de las extensiones de archivos
	if LISTAS.IDENTIDAD == 3 or LISTAS.IDENTIDAD == 5 or LISTAS.IDENTIDAD == 10 then
		CONTROL.EXTENSION = 4
	else
		CONTROL.EXTENSION = 5
	end
end

function color_emu(identidad) -- Determina los colores predeterminados de cada emulador
	if identidad == 1 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores Sega Megadrive
		CAMBIOS_EMUS.COLOR_EMU = Color.new(128,128,128) 
		CAMBIOS_EMUS.R = 120
		CAMBIOS_EMUS.G = 120
		CAMBIOS_EMUS.B = 120 
		CAMBIOS_EMUS.COLOR_MAX = 126 
		CAMBIOS_EMUS.COLOR_MIN = 115
		CAMBIOS_EMUS.RGB_COLOR = 7
		CAMBIOS_EMUS.COLOR_ACTUAL = 115
		COLOR.BLANCO_LISTA = Color.new(74,74,74)
	elseif identidad == 2 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores Sega Master System
		CAMBIOS_EMUS.COLOR_EMU = Color.new(0,60,128)
		CAMBIOS_EMUS.R = 0
		CAMBIOS_EMUS.G = 60
		CAMBIOS_EMUS.B = 128
		CAMBIOS_EMUS.COLOR_MAX = 100 
		CAMBIOS_EMUS.COLOR_MIN = 60
		CAMBIOS_EMUS.RGB_COLOR = 2
		CAMBIOS_EMUS.COLOR_ACTUAL = 60
		COLOR.BLANCO_LISTA = Color.new(128,128,128)
	elseif identidad == 3 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores Sega Game Gear
		CAMBIOS_EMUS.COLOR_EMU = Color.new(0,90,100)
		CAMBIOS_EMUS.R = 0
		CAMBIOS_EMUS.G = 90
		CAMBIOS_EMUS.B = 100 
		CAMBIOS_EMUS.COLOR_MAX = 120 
		CAMBIOS_EMUS.COLOR_MIN = 90 
		CAMBIOS_EMUS.RGB_COLOR = 2
		CAMBIOS_EMUS.COLOR_ACTUAL = 90
		COLOR.BLANCO_LISTA = Color.new(128,128,128)
	elseif identidad == 4 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores Nintendo Famicom
		CAMBIOS_EMUS.COLOR_EMU = Color.new(115,20,20)
		CAMBIOS_EMUS.R = 125
		CAMBIOS_EMUS.G = 0
		CAMBIOS_EMUS.B = 0
		CAMBIOS_EMUS.COLOR_MAX = 45
		CAMBIOS_EMUS.COLOR_MIN = 4
		CAMBIOS_EMUS.RGB_COLOR = 4
		CAMBIOS_EMUS.COLOR_ACTUAL = 0
		COLOR.BLANCO_LISTA = Color.new(128,128,128)
	elseif identidad == 5 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores Nintendo Game Boy
		CAMBIOS_EMUS.COLOR_EMU = Color.new(0,90,40)
		CAMBIOS_EMUS.R = 0
		CAMBIOS_EMUS.G = 100
		CAMBIOS_EMUS.B = 20 
		CAMBIOS_EMUS.COLOR_MAX = 120
		CAMBIOS_EMUS.COLOR_MIN = 100 
		CAMBIOS_EMUS.RGB_COLOR = 2
		CAMBIOS_EMUS.COLOR_ACTUAL = 100
		COLOR.BLANCO_LISTA = Color.new(128,128,128)
	elseif identidad == 6 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores Nintendo Game Boy Color
		CAMBIOS_EMUS.COLOR_EMU = Color.new(110,110,10)
		CAMBIOS_EMUS.R = 95
		CAMBIOS_EMUS.G = 95
		CAMBIOS_EMUS.B = 0 
		CAMBIOS_EMUS.COLOR_MAX = 120 
		CAMBIOS_EMUS.COLOR_MIN = 95 
		CAMBIOS_EMUS.RGB_COLOR = 6
		CAMBIOS_EMUS.COLOR_ACTUAL = 95
		COLOR.BLANCO_LISTA = Color.new(128,128,128)
	elseif identidad == 7 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores Nintendo Game Boy Advance
		CAMBIOS_EMUS.COLOR_EMU = Color.new(118,25,118)
		CAMBIOS_EMUS.R = 100
		CAMBIOS_EMUS.G = 0
		CAMBIOS_EMUS.B = 100 
		CAMBIOS_EMUS.COLOR_MAX = 120 
		CAMBIOS_EMUS.COLOR_MIN = 100 
		CAMBIOS_EMUS.RGB_COLOR = 5
		CAMBIOS_EMUS.COLOR_ACTUAL = 100
		COLOR.BLANCO_LISTA = Color.new(128,128,128)
	elseif identidad == 8 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores Play Station
		CAMBIOS_EMUS.COLOR_EMU = Color.new(0,60,128)
		CAMBIOS_EMUS.R = 0
		CAMBIOS_EMUS.G = 50
		CAMBIOS_EMUS.B = 125
		CAMBIOS_EMUS.COLOR_MAX = 80
		CAMBIOS_EMUS.COLOR_MIN = 50
		CAMBIOS_EMUS.RGB_COLOR = 2
		CAMBIOS_EMUS.COLOR_ACTUAL = 50
		COLOR.BLANCO_LISTA = Color.new(128,128,128)
	elseif identidad == 9 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores Atari 2600
		CAMBIOS_EMUS.COLOR_EMU = Color.new(128,100,10)
		CAMBIOS_EMUS.R = 128
		CAMBIOS_EMUS.G = 95
		CAMBIOS_EMUS.B = 0 
		CAMBIOS_EMUS.COLOR_MAX = 120 
		CAMBIOS_EMUS.COLOR_MIN = 90 
		CAMBIOS_EMUS.RGB_COLOR = 2
		CAMBIOS_EMUS.COLOR_ACTUAL = 90
		COLOR.BLANCO_LISTA = Color.new(128,128,128)
	elseif identidad == 10 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores Sega SG 1000
		CAMBIOS_EMUS.COLOR_EMU = Color.new(0,120,80)
		CAMBIOS_EMUS.R = 0
		CAMBIOS_EMUS.G = 70
		CAMBIOS_EMUS.B = 50 
		CAMBIOS_EMUS.COLOR_MAX = 100 
		CAMBIOS_EMUS.COLOR_MIN = 70
		CAMBIOS_EMUS.RGB_COLOR = 2
		CAMBIOS_EMUS.COLOR_ACTUAL = 70
		COLOR.BLANCO_LISTA = Color.new(74,74,74)
	elseif identidad == 11 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores Neo Geo Pocket
		CAMBIOS_EMUS.COLOR_EMU = Color.new(0,100,120)
		CAMBIOS_EMUS.R = 0
		CAMBIOS_EMUS.G = 80
		CAMBIOS_EMUS.B = 80 
		CAMBIOS_EMUS.COLOR_MAX = 95
		CAMBIOS_EMUS.COLOR_MIN = 80 
		CAMBIOS_EMUS.RGB_COLOR = 2
		CAMBIOS_EMUS.COLOR_ACTUAL = 80
		COLOR.BLANCO_LISTA = Color.new(128,128,128)
	elseif identidad == 12 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores Nintendo Super Famicom
		CAMBIOS_EMUS.COLOR_EMU = Color.new(108,25,108)
		CAMBIOS_EMUS.R = 100
		CAMBIOS_EMUS.G = 50
		CAMBIOS_EMUS.B = 100 
		CAMBIOS_EMUS.COLOR_MAX = 120 
		CAMBIOS_EMUS.COLOR_MIN = 100 
		CAMBIOS_EMUS.RGB_COLOR = 5
		CAMBIOS_EMUS.COLOR_ACTUAL = 100
		COLOR.BLANCO_LISTA = Color.new(128,128,128)
	elseif identidad == 13 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores APPS
		CAMBIOS_EMUS.COLOR_EMU = Color.new(0,120,128)
		CAMBIOS_EMUS.R = 0
		CAMBIOS_EMUS.G = 100
		CAMBIOS_EMUS.B = 128 
		CAMBIOS_EMUS.COLOR_MAX = 120 
		CAMBIOS_EMUS.COLOR_MIN = 100 
		CAMBIOS_EMUS.RGB_COLOR = 2
		CAMBIOS_EMUS.COLOR_ACTUAL = 100
		COLOR.BLANCO_LISTA = Color.new(128,128,128)
	elseif identidad == 14 and OPCIONES.FONDO_RGB_ON == 1 and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		-- Colores Play Station 2
		CAMBIOS_EMUS.COLOR_EMU = Color.new(0,60,120)
		CAMBIOS_EMUS.R = 0
		CAMBIOS_EMUS.G = 60
		CAMBIOS_EMUS.B = 120
		CAMBIOS_EMUS.COLOR_MAX = 110
		CAMBIOS_EMUS.COLOR_MIN = 60
		CAMBIOS_EMUS.RGB_COLOR = 2
		CAMBIOS_EMUS.COLOR_ACTUAL = 60
		COLOR.BLANCO_LISTA = Color.new(128,128,128)
	elseif OPCIONES.FONDO_RGB_FIJO_ON == 1 then
		-- Colores personalizados 
		CAMBIOS_EMUS.COLOR_EMU = Color.new(OPCIONES.R,OPCIONES.G,OPCIONES.B)
		CAMBIOS_EMUS.R = OPCIONES.R
		CAMBIOS_EMUS.G = OPCIONES.G
		CAMBIOS_EMUS.B = OPCIONES.B
		CAMBIOS_EMUS.COLOR_MAX = 0
		CAMBIOS_EMUS.COLOR_MIN = 0
		CAMBIOS_EMUS.RGB_COLOR = 0
		CAMBIOS_EMUS.COLOR_ACTUAL = 0
		COLOR.BLANCO_LISTA = Color.new(74,74,74)
	elseif OPCIONES.FONDO_RGB_ON == 0 then
		-- Sin Colores
		CAMBIOS_EMUS.COLOR_EMU = Color.new(128,128,128)
		CAMBIOS_EMUS.R = 128
		CAMBIOS_EMUS.G = 128
		CAMBIOS_EMUS.B = 128
		CAMBIOS_EMUS.COLOR_MAX = 0
		CAMBIOS_EMUS.COLOR_MIN = 0
		CAMBIOS_EMUS.RGB_COLOR = 0
		CAMBIOS_EMUS.COLOR_ACTUAL = 128
		COLOR.BLANCO_LISTA = Color.new(74,74,74)
	end
end

function RGB() -- Realiza el efecto de cambio de colores del fondo
	if CAMBIOS_EMUS.CAM_COLOR_ACTUAL == true and OPCIONES.FONDO_RGB_FIJO_ON == 0 then
		if CAMBIOS_EMUS.COLOR_ACTUAL <= CAMBIOS_EMUS.COLOR_MAX then
			CAMBIOS_EMUS.COLOR_ACTUAL = CAMBIOS_EMUS.COLOR_ACTUAL+1
		else
			CAMBIOS_EMUS.CAM_COLOR_ACTUAL = false
		end
	elseif CAMBIOS_EMUS.CAM_COLOR_ACTUAL == false then
		if CAMBIOS_EMUS.COLOR_ACTUAL >= CAMBIOS_EMUS.COLOR_MIN then
			CAMBIOS_EMUS.COLOR_ACTUAL = CAMBIOS_EMUS.COLOR_ACTUAL-1
		else
			CAMBIOS_EMUS.CAM_COLOR_ACTUAL = true
		end
	end
	if CAMBIOS_EMUS.RGB_COLOR == 0 or (OPCIONES.RGB_ON == 0 or OPCIONES.FONDO_RGB_FIJO_ON == 1) then
		CAMBIOS_EMUS.COLOR_EMU_BACK = Color.new(CAMBIOS_EMUS.R,CAMBIOS_EMUS.G,CAMBIOS_EMUS.B)
	elseif CAMBIOS_EMUS.RGB_COLOR == 1 then
		CAMBIOS_EMUS.COLOR_EMU_BACK = Color.new(CAMBIOS_EMUS.COLOR_ACTUAL,CAMBIOS_EMUS.G,CAMBIOS_EMUS.B) 
	elseif CAMBIOS_EMUS.RGB_COLOR == 2 then
		CAMBIOS_EMUS.COLOR_EMU_BACK = Color.new(CAMBIOS_EMUS.R,CAMBIOS_EMUS.COLOR_ACTUAL,CAMBIOS_EMUS.B)
	elseif CAMBIOS_EMUS.RGB_COLOR == 3 then
		CAMBIOS_EMUS.COLOR_EMU_BACK = Color.new(CAMBIOS_EMUS.R,CAMBIOS_EMUS.G,CAMBIOS_EMUS.COLOR_ACTUAL)
	elseif CAMBIOS_EMUS.RGB_COLOR == 4 then
		CAMBIOS_EMUS.COLOR_EMU_BACK = Color.new(CAMBIOS_EMUS.R,CAMBIOS_EMUS.COLOR_ACTUAL,CAMBIOS_EMUS.COLOR_ACTUAL)
	elseif CAMBIOS_EMUS.RGB_COLOR == 5 then
		CAMBIOS_EMUS.COLOR_EMU_BACK = Color.new(CAMBIOS_EMUS.COLOR_ACTUAL,CAMBIOS_EMUS.G,CAMBIOS_EMUS.COLOR_ACTUAL)
	elseif CAMBIOS_EMUS.RGB_COLOR == 6 then
		CAMBIOS_EMUS.COLOR_EMU_BACK = Color.new(CAMBIOS_EMUS.COLOR_ACTUAL,CAMBIOS_EMUS.COLOR_ACTUAL,CAMBIOS_EMUS.B)	
	elseif CAMBIOS_EMUS.RGB_COLOR == 7 then
		CAMBIOS_EMUS.COLOR_EMU_BACK = Color.new(CAMBIOS_EMUS.COLOR_ACTUAL,CAMBIOS_EMUS.COLOR_ACTUAL,CAMBIOS_EMUS.COLOR_ACTUAL)	
	end
end

function cargar_logo(identidad) -- Determina que logo cargar de acuerdo al emulador
	if identidad == 1 then
		LISTAS.LOGO = LOGOS.MEGADRIVE
	elseif identidad == 2 then
		LISTAS.LOGO = LOGOS.MASTERSYSTEM
	elseif identidad == 3 then
		LISTAS.LOGO = LOGOS.GAMEGEAR
	elseif identidad == 4 then
		LISTAS.LOGO = LOGOS.FAMICOM
	elseif identidad == 5 then
		LISTAS.LOGO = LOGOS.GAMEBOY
	elseif identidad == 6 then
		LISTAS.LOGO = LOGOS.GAMEBOYCOLOR
	elseif identidad == 7 then
		LISTAS.LOGO = LOGOS.GAMEBOYADVANCE
	elseif identidad == 8 then
		LISTAS.LOGO = LOGOS.PLAYSTATION
	elseif identidad == 9 then
		LISTAS.LOGO = LOGOS.ATARI2600
	elseif identidad == 10 then
		LISTAS.LOGO = LOGOS.SEGASG1000
	elseif identidad == 11 then
		LISTAS.LOGO = LOGOS.NEOGEOPOCKET
	elseif identidad == 12 then
		LISTAS.LOGO = LOGOS.SUPERFAMICOM
	elseif identidad == 13 then
		LISTAS.LOGO = LOGOS.APPS
	elseif identidad == 14 then
		LISTAS.LOGO = LOGOS.PLAYSTATION2
	else
		LISTAS.LOGO = LOGOS.DEFAULT
	end
end

function existe(identidad,nombre_juego,alternativo) -- Verifica los ROMS y archivos necesarios de cada emulador
	local actual = System.currentDirectory() 
	if identidad == 1 then -- Verifica si existen emulador/juego SEGA Megadrive
		if doesFileExist(actual .."/Roms/Roms Sega Megadrive/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Sega Megadrive/cores/picodrive_libretro_ps2.elf") and alternativo == false then	
			return true
		elseif doesFileExist(actual .."/Roms/Roms Sega Megadrive/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Sega Megadrive/cores/picodrive_libretro_ps2_alt.elf") and alternativo == true then	
			return true
		else
			return false
		end
	elseif identidad == 2 then -- Verifica si existen emulador/juego SEGA Master System
		if doesFileExist(actual .."/Roms/Roms Sega Master System/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Sega Master System/cores/picodrive_libretro_ps2.elf") then	
			return true
		else
			return false
		end
	elseif identidad == 3 then -- Verifica si existen emulador/juego SEGA Game Gear
		if doesFileExist(actual .."/Roms/Roms Sega Game Gear/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Sega Game Gear/cores/picodrive_libretro_ps2.elf") then	
			return true
		else
			return false
		end
	elseif identidad == 4 then -- Verifica si existen emulador/juego Nintendo Famicom
		if doesFileExist(actual .."/Roms/Roms Nintendo Famicom/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Nintendo Famicom/cores/fceumm_libretro_ps2.elf") and alternativo == false then	
			return true
		elseif doesFileExist(actual .."/Roms/Roms Nintendo Famicom/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Nintendo Famicom/cores/quicknes_libretro_ps2.elf") and alternativo == true then	
			return true
		else
			return false
		end
	elseif identidad == 5 then -- Verifica si existen emulador/juego Nintendo Game Boy
		if doesFileExist(actual .."/Roms/Roms Nintendo Game Boy/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Nintendo Game Boy/cores/gambatte_libretro_ps2.elf") then	
			return true
		else
			return false
		end
	elseif identidad == 6 then -- Verifica si existen emulador/juego Nintendo Game Boy Color
		if doesFileExist(actual .."/Roms/Roms Nintendo Game Boy Color/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Nintendo Game Boy Color/cores/gambatte_libretro_ps2.elf") then	
			return true
		else
			return false
		end
	elseif identidad == 7 then -- Verifica si existen emulador/juego Nintendo Game Boy Advance
		if doesFileExist(actual .."/Roms/Roms Nintendo Game Boy Advance/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Nintendo Game Boy Advance/cores/gpsp_libretro_ps2.elf") then	
			return true
		else
			return false
		end
	elseif identidad == 8 then -- Verifica si existen emulador/juego Play Station
		if doesFileExist("mass:/POPS/".. nombre_juego) and doesFileExist("mass:/POPS/POPS_IOX.PAK") and doesFileExist("mass:/POPS/IOPRP252.IMG") then
			return true
		else
			return false
		end
	elseif identidad == 9 then -- Verifica si existen emulador/juego Atari 2600
		if doesFileExist(actual .."/Roms/Roms Atari 2600/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Atari 2600/cores/stella2014_libretro_ps2.elf") then	
			return true
		else
			return false
		end
	elseif identidad == 10 then -- Verifica si existen emulador/juego Sega SG-1000
		if doesFileExist(actual .."/Roms/Roms Sega SG-1000/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Sega SG-1000/cores/picodrive_libretro_ps2.elf") then	
			return true
		else
			return false
		end
	elseif identidad == 11 then -- Verifica si existen emulador/juego Neo Geo Pocket
		if doesFileExist(actual .."/Roms/Roms Neo Geo Pocket/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Neo Geo Pocket/cores/race_libretro_ps2.elf") then	
			return true
		else
			return false
		end
	elseif identidad == 12 then -- Verifica si existen emulador/juego Nintendo Super Famicom
		if doesFileExist(actual .."/Roms/Roms Nintendo Super Famicom/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Nintendo Super Famicom/cores/snes9x2002_libretro_ps2.elf") then	
			return true
		else
			return false
		end
	elseif identidad == 13 then -- Verifica si existe APPS
		if doesFileExist(LISTAS.DIR_FULL_APP[LISTAS.INDICE]) then	
			return true
		else
			return false
		end
	elseif identidad == 14 then -- Verifica si existen emulador/juego Play Station 2
		if doesFileExist(actual .."/Roms/ISOs Play Station 2/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf") then	
			return true
		elseif doesFileExist("mass:/DVD/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf") and OPCIONES.DIR_EXTRAS_ON == 1 then
			return true
		elseif doesFileExist("mass:/CD/".. nombre_juego) and doesFileExist(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf") and OPCIONES.DIR_EXTRAS_ON == 1 then
			return true
		else
			return false
		end
	else
		return false
	end
end

function obtener_nombre_DVD(nombre_id) -- Busca el nombre del juego DVD PS2
	local nombre = "PS2 DISK: ".. nombre_id .. "    "
	local actual = System.currentDirectory()
	if doesFileExist(actual.. "/System/Respaldo/PS2_IDs.cfg") then
		local carga_id = System.openFile(actual.. "/System/Respaldo/PS2_IDs.cfg",FREAD)
		System.seekFile(carga_id,0,SET)
		local size = System.sizeFile(carga_id)
		local temp_tex = System.readFile(carga_id,size)
		for linea in string.gmatch(temp_tex,nombre_id .."=.+\n") do
			local salto = string.find(linea, "=")
			local fin = string.find(linea, "\n")
			if salto ~= nil and salto ~= nil then
				nombre = (string.sub(linea,salto+1,fin-2).. "    ")
			end
		end
		System.closeFile(carga_id)
	end
	return nombre
end

function obtener_nombre_SAS(archivo_cfg, nombre_APP) -- Busca el nombre de la APPS(SAS) en el archivo.cfg
	local nombre = nombre_APP
	if doesFileExist(archivo_cfg) then
		local carga_cfg = System.openFile(archivo_cfg,FREAD)
		System.seekFile(carga_cfg,0,SET)
		local size = System.sizeFile(carga_cfg)
		local temp_tex = System.readFile(carga_cfg,size)
		for linea in string.gmatch(temp_tex,"title=.+") do
			local salto = string.find(linea, "\r\n")
			if salto ~= nil then
				nombre = (string.sub(linea,7,salto-1).. "    ")
			else
				nombre = (string.sub(linea,7).. "    ")
			end
		end
		System.closeFile(carga_cfg)
	end
	return nombre
end

function crear_listas(identidad,lista) -- Crea las listas de ROMS encontradas para cada emulador
	local actual = System.currentDirectory()
	local encontrados = {}
	if identidad == 1 then	-- Buscar para SEGA Megadrive
		local buscar = System.listDirectory(actual.."/Roms/Roms Sega Megadrive")
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and (string.lower(string.sub(buscar[contador].name,-4)) == ".bin" or string.lower(string.sub(buscar[contador].name,-4)) == ".gen" or string.lower(string.sub(buscar[contador].name,-4)) == ".smd" or string.lower(string.sub(buscar[contador].name,-3)) == ".md" )then
					if string.lower(string.sub(buscar[contador].name,-3)) == ".md" then
						table.insert(encontrados,buscar[contador].name .." ")
					else
						table.insert(encontrados,buscar[contador].name)
					end
				end
			end
			if encontrados ~= nil and #encontrados >= 1 then
				lista = encontrados
				table.sort(lista)
				return lista
			else
				lista = {}
				return lista
			end
		else
			lista = {}
			return lista
		end
	elseif identidad == 2 then	-- Buscar para SEGA Master System
		local buscar = System.listDirectory(actual.."/Roms/Roms Sega Master System")
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and string.lower(string.sub(buscar[contador].name,-4)) == ".sms" then
					table.insert(encontrados,buscar[contador].name)
				end
			end
			if encontrados ~= nil and #encontrados >= 1 then
				lista = encontrados
				table.sort(lista)
				return lista
			else
				lista = {}
				return lista
			end
		else
			lista = {}
			return lista
		end
	elseif identidad == 3 then	-- Buscar para SEGA Game Gear
		local buscar = System.listDirectory(actual.."/Roms/Roms Sega Game Gear")
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and string.lower(string.sub(buscar[contador].name,-3)) == ".gg" then
					table.insert(encontrados,buscar[contador].name)
				end
			end
			if encontrados ~= nil and #encontrados >= 1 then
				lista = encontrados
				table.sort(lista)
				return lista
			else
				lista = {}
				return lista
			end
		else
			lista = {}
			return lista
		end
	elseif identidad == 4 then	-- Buscar para Nintendo Famicom 
		local buscar = System.listDirectory(actual.."/Roms/Roms Nintendo Famicom")
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and (string.lower(string.sub(buscar[contador].name,-4)) == ".nes" or string.lower(string.sub(buscar[contador].name,-4)) == ".fds" or string.lower(string.sub(buscar[contador].name,-4)) == ".unf") then
					table.insert(encontrados,buscar[contador].name)
				end
			end
			if encontrados ~= nil and #encontrados >= 1 then
				lista = encontrados
				table.sort(lista)
				return lista
			else
				lista = {}
				return lista
			end
		else
			lista = {}
			return lista
		end
	elseif identidad == 5 then	-- Buscar para Nintendo Game Boy 
		local buscar = System.listDirectory(actual.."/Roms/Roms Nintendo Game Boy")
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and string.lower(string.sub(buscar[contador].name,-3)) == ".gb" then
					table.insert(encontrados,buscar[contador].name)
				end
			end
			if encontrados ~= nil and #encontrados >= 1 then
				lista = encontrados
				table.sort(lista)
				return lista
			else
				lista = {}
				return lista
			end
		else
			lista = {}
			return lista
		end
	elseif identidad == 6 then	-- Buscar para Nintendo Game Boy Color 
		local buscar = System.listDirectory(actual.."/Roms/Roms Nintendo Game Boy Color")
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and string.lower(string.sub(buscar[contador].name,-4)) == ".gbc" then
					table.insert(encontrados,buscar[contador].name)
				end
			end
			if encontrados ~= nil and #encontrados >= 1 then
				lista = encontrados
				table.sort(lista)
				return lista
			else
				lista = {}
				return lista
			end
		else
			lista = {}
			return lista
		end
	elseif identidad == 7 then	-- Buscar para Nintendo Game Boy Advance 
		local buscar = System.listDirectory(actual.."/Roms/Roms Nintendo Game Boy Advance")
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and (string.lower(string.sub(buscar[contador].name,-4)) == ".gba" or string.lower(string.sub(buscar[contador].name,-4)) == ".bin") then
					table.insert(encontrados,buscar[contador].name)
				end
			end
			if encontrados ~= nil and #encontrados >= 1 then
				lista = encontrados
				table.sort(lista)
				return lista
			else
				lista = {}
				return lista
			end
		else
			lista = {}
			return lista
		end
	elseif identidad == 8 then	-- Buscar para Play Station
		local buscar = System.listDirectory("mass:/POPS")
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and string.lower(string.sub(buscar[contador].name,-4)) == ".vcd" then
					table.insert(encontrados,buscar[contador].name)
				end
			end
			if encontrados ~= nil and #encontrados >= 1 then
				lista = encontrados
				table.sort(lista)
				return lista
			else
				lista = {}
				return lista
			end
		else
			lista = {}
			return lista
		end
	elseif identidad == 9 then	-- Buscar para Atari 2600
		local buscar = System.listDirectory(actual.."/Roms/Roms Atari 2600")
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and (string.lower(string.sub(buscar[contador].name,-4)) == ".a26" or string.lower(string.sub(buscar[contador].name,-4)) == ".bin") then
					table.insert(encontrados,buscar[contador].name)
				end
			end
			if encontrados ~= nil and #encontrados >= 1 then
				lista = encontrados
				table.sort(lista)
				return lista
			else
				lista = {}
				return lista
			end
		else
			lista = {}
			return lista
		end
	elseif identidad == 10 then	-- Buscar para Sega SG-1000
		local buscar = System.listDirectory(actual.."/Roms/Roms Sega SG-1000")
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and string.lower(string.sub(buscar[contador].name,-3)) == ".sg" then
					table.insert(encontrados,buscar[contador].name)
				end
			end
			if encontrados ~= nil and #encontrados >= 1 then
				lista = encontrados
				table.sort(lista)
				return lista
			else
				lista = {}
				return lista
			end
		else
			lista = {}
			return lista
		end
	elseif identidad == 11 then	-- Buscar para Neo Geo Pocket
		local buscar = System.listDirectory(actual.."/Roms/Roms Neo Geo Pocket")
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and (string.lower(string.sub(buscar[contador].name,-4)) == ".ngc" or string.lower(string.sub(buscar[contador].name,-4)) == ".ngp" or string.lower(string.sub(buscar[contador].name,-4)) == ".npc") then
					table.insert(encontrados,buscar[contador].name)
				end
			end
			if encontrados ~= nil and #encontrados >= 1 then
				lista = encontrados
				table.sort(lista)
				return lista
			else
				lista = {}
				return lista
			end
		else
			lista = {}
			return lista
		end
	elseif identidad == 12 then	-- Buscar para Nintendo Super Famicom
		local buscar = System.listDirectory(actual.."/Roms/Roms Nintendo Super Famicom")
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and (string.lower(string.sub(buscar[contador].name,-4)) == ".smc" or string.lower(string.sub(buscar[contador].name,-4)) == ".sfc") then
					table.insert(encontrados,buscar[contador].name)
				end
			end
			if encontrados ~= nil and #encontrados >= 1 then
				lista = encontrados
				table.sort(lista)
				return lista
			else
				lista = {}
				return lista
			end
		else
			lista = {}
			return lista
		end
	elseif identidad == 13 then	-- Buscar para APPS / Ejecutables .elf
		local buscar = System.listDirectory("mass:/APPS")
		local buscar2 = System.listDirectory("mc0:/APPS")
		local buscar3 = System.listDirectory("mc1:/APPS")
		local buscar4 = System.listDirectory(actual .."/Roms/APPS")
		local buscar5 = System.listDirectory("cdfs:")
		local buscar6 = System.listDirectory("mc0:")
		local buscar7 = System.listDirectory("mc1:")
		local buscar8 = System.listDirectory("mass:")
		if OPCIONES.DIR_EXTRAS_ON == 0 then
			buscar = nil
			buscar2 = nil
			buscar3 = nil
			buscar6 = nil
			buscar7 = nil
			buscar8 = nil
		end
		lista = {}
		LISTAS.DIR_FULL_APP = {}
		if buscar5 ~= nil then
			for contador = 1,#buscar5 do
				if buscar5[contador].directory == false and string.lower(string.sub(buscar5[contador].name,-4)) == ".elf" or string.match(buscar5[contador].name,"%a+_%d+.%d+") == buscar5[contador].name then
					if string.match(buscar5[contador].name,"%a+_%d+.%d+") == buscar5[contador].name then
						table.insert(encontrados,obtener_nombre_DVD(buscar5[contador].name))
						table.insert(LISTAS.DIR_FULL_APP,"cdfs:/".. buscar5[contador].name)
					else
						table.insert(encontrados,buscar5[contador].name)
						table.insert(LISTAS.DIR_FULL_APP,"cdfs:/".. buscar5[contador].name)
					end
				end
			end
		end
		if buscar2 ~= nil then
			for contador = 1,#buscar2 do
				if buscar2[contador].directory == false and string.lower(string.sub(buscar2[contador].name,-4)) == ".elf" then
					table.insert(encontrados,buscar2[contador].name)
					table.insert(LISTAS.DIR_FULL_APP,"mc0:/APPS/".. buscar2[contador].name)
				elseif buscar2[contador].directory == true and string.sub(buscar2[contador].name,-1) ~= "." and string.sub(buscar2[contador].name,-2) ~= ".." then
					local recursiva = System.listDirectory("mc0:/APPS/".. buscar2[contador].name)
					if recursiva ~= nil then
						for contador2 = 1,#recursiva do
							if recursiva[contador2].directory == false and string.lower(string.sub(recursiva[contador2].name,-4)) == ".elf" then
								if doesFileExist("mc0:/APPS/".. buscar2[contador].name .."/title.cfg") then
									table.insert(encontrados,obtener_nombre_SAS("mc0:/APPS/".. buscar2[contador].name .."/title.cfg",recursiva[contador2].name))
								else
									table.insert(encontrados,recursiva[contador2].name)
								end
								table.insert(LISTAS.DIR_FULL_APP,"mc0:/APPS/".. buscar2[contador].name .."/".. recursiva[contador2].name)
							end
						end
					end
				end
			end
		end
		if buscar3 ~= nil then
			for contador = 1,#buscar3 do
				if buscar3[contador].directory == false and string.lower(string.sub(buscar3[contador].name,-4)) == ".elf" then
					table.insert(encontrados,buscar3[contador].name)
					table.insert(LISTAS.DIR_FULL_APP,"mc1:/APPS/".. buscar3[contador].name)
				elseif buscar3[contador].directory == true and string.sub(buscar3[contador].name,-1) ~= "." and string.sub(buscar3[contador].name,-2) ~= ".." then
					local recursiva = System.listDirectory("mc1:/APPS/".. buscar3[contador].name)
					if recursiva ~= nil then
						for contador2 = 1,#recursiva do
							if recursiva[contador2].directory == false and string.lower(string.sub(recursiva[contador2].name,-4)) == ".elf" then
								if doesFileExist("mc1:/APPS/".. buscar3[contador].name .."/title.cfg") then
									table.insert(encontrados,obtener_nombre_SAS("mc1:/APPS/".. buscar3[contador].name .."/title.cfg",recursiva[contador2].name))
								else
									table.insert(encontrados,recursiva[contador2].name)
								end
								table.insert(LISTAS.DIR_FULL_APP,"mc1:/APPS/".. buscar3[contador].name .."/".. recursiva[contador2].name)
							end
						end
					end
				end
			end
		end
		if buscar6 ~= nil then
			for contador = 1,#buscar6 do
				if buscar6[contador].directory == true and string.match(buscar6[contador].name,".+_.+") == buscar6[contador].name and string.sub(buscar6[contador].name,-1) ~= "." and string.sub(buscar6[contador].name,-2) ~= ".." then
					local recursiva = System.listDirectory("mc0:/".. buscar6[contador].name)
					if recursiva ~= nil then
						for contador2 = 1,#recursiva do
							if recursiva[contador2].directory == false and string.lower(string.sub(recursiva[contador2].name,-4)) == ".elf" then
								if doesFileExist("mc0:/".. buscar6[contador].name .."/title.cfg") then
									table.insert(encontrados,obtener_nombre_SAS("mc0:/".. buscar6[contador].name .."/title.cfg",recursiva[contador2].name))
								else
									table.insert(encontrados,recursiva[contador2].name)
								end
								table.insert(LISTAS.DIR_FULL_APP,"mc0:/".. buscar6[contador].name .."/".. recursiva[contador2].name)
							end
						end
					end
				end
			end
		end
		if buscar7 ~= nil then
			for contador = 1,#buscar7 do
				if buscar7[contador].directory == true and string.match(buscar7[contador].name,".+_.+") == buscar7[contador].name and string.sub(buscar7[contador].name,-1) ~= "." and string.sub(buscar7[contador].name,-2) ~= ".." then
					local recursiva = System.listDirectory("mc1:/".. buscar7[contador].name)
					if recursiva ~= nil then
						for contador2 = 1,#recursiva do
							if recursiva[contador2].directory == false and string.lower(string.sub(recursiva[contador2].name,-4)) == ".elf" then
								if doesFileExist("mc1:/".. buscar7[contador].name .."/title.cfg") then
									table.insert(encontrados,obtener_nombre_SAS("mc1:/".. buscar7[contador].name .."/title.cfg",recursiva[contador2].name))
								else
									table.insert(encontrados,recursiva[contador2].name)
								end
								table.insert(LISTAS.DIR_FULL_APP,"mc1:/".. buscar7[contador].name .."/".. recursiva[contador2].name)
							end
						end
					end
				end
			end
		end
		if buscar4 ~= nil then
			for contador = 1,#buscar4 do
				if buscar4[contador].directory == false and string.lower(string.sub(buscar4[contador].name,-4)) == ".elf" then
					table.insert(encontrados,buscar4[contador].name)
					table.insert(LISTAS.DIR_FULL_APP,actual .."/Roms/APPS/".. buscar4[contador].name)
				elseif buscar4[contador].directory == true then
					local recursiva = System.listDirectory(actual .."/Roms/APPS/".. buscar4[contador].name)
					if recursiva ~= nil then
						for contador2 = 1,#recursiva do
							if recursiva[contador2].directory == false and string.lower(string.sub(recursiva[contador2].name,-4)) == ".elf" then
								if doesFileExist(actual .."/Roms/APPS/".. buscar4[contador].name .."/title.cfg") then
									table.insert(encontrados,obtener_nombre_SAS(actual .."/Roms/APPS/".. buscar4[contador].name .."/title.cfg",recursiva[contador2].name))
								else
									table.insert(encontrados,recursiva[contador2].name)
								end
								table.insert(LISTAS.DIR_FULL_APP,actual .."/Roms/APPS/".. buscar4[contador].name .."/".. recursiva[contador2].name)
							end
						end
					end
				end
			end
		end
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and string.lower(string.sub(buscar[contador].name,-4)) == ".elf" then
					table.insert(encontrados,buscar[contador].name)
					table.insert(LISTAS.DIR_FULL_APP,"mass:/APPS/".. buscar[contador].name)
				elseif buscar[contador].directory == true then
					local recursiva = System.listDirectory("mass:/APPS/".. buscar[contador].name)
					if recursiva ~= nil then
						for contador2 = 1,#recursiva do
							if recursiva[contador2].directory == false and string.lower(string.sub(recursiva[contador2].name,-4)) == ".elf" then
								if doesFileExist("mass:/APPS/".. buscar[contador].name .."/title.cfg") then
									table.insert(encontrados,obtener_nombre_SAS("mass:/APPS/".. buscar[contador].name .."/title.cfg",recursiva[contador2].name))
								else
									table.insert(encontrados,recursiva[contador2].name)
								end
								table.insert(LISTAS.DIR_FULL_APP,"mass:/APPS/".. buscar[contador].name .."/".. recursiva[contador2].name)
							end
						end
					end
				end
			end
		end
		if buscar8 ~= nil then
			for contador = 1,#buscar8 do
				if buscar8[contador].directory == true and string.lower(buscar8[contador].name) ~= "sys-conf" and string.lower(buscar8[contador].name) ~= "boot" and string.lower(buscar8[contador].name) ~= "pops" and string.lower(buscar8[contador].name) ~= "apps" and string.lower(buscar8[contador].name) ~= "retrolauncher" then
					local recursiva = System.listDirectory("mass:/".. buscar8[contador].name)
					if recursiva ~= nil then
						for contador2 = 1,#recursiva do
							if recursiva[contador2].directory == false and string.lower(string.sub(recursiva[contador2].name,-4)) == ".elf" then
								if doesFileExist("mass:/".. buscar8[contador].name .."/title.cfg") then
									table.insert(encontrados,obtener_nombre_SAS("mass:/".. buscar8[contador].name .."/title.cfg",recursiva[contador2].name))
								else
									table.insert(encontrados,recursiva[contador2].name)
								end
								table.insert(LISTAS.DIR_FULL_APP,"mass:/".. buscar8[contador].name .."/".. recursiva[contador2].name)
							end
						end
					end
				end
			end
		end
		if encontrados ~= nil and #encontrados >= 1 then
			if OPCIONES.APPS_MENU_FULL_PATH == 1 then
				lista = LISTAS.DIR_FULL_APP 
			else
				lista = encontrados
			end
			return lista
		else
			lista = {}
			LISTAS.DIR_FULL_APP = {}
			return lista
		end
	elseif identidad == 14 then	-- Buscar para Play Station 2
		local buscar = System.listDirectory(actual.."/Roms/ISOs Play Station 2")
		local buscar2 = System.listDirectory("mass:/DVD")
		local buscar3 = System.listDirectory("mass:/CD")
		if OPCIONES.DIR_EXTRAS_ON == 0 then
			buscar2 = nil
			buscar3 = nil
		end
		if buscar ~= nil then
			for contador = 1,#buscar do
				if buscar[contador].directory == false and string.lower(string.sub(buscar[contador].name,-4)) == ".iso" then
					table.insert(encontrados,buscar[contador].name)
				end
			end
		end
		if buscar2 ~= nil then
			for contador = 1,#buscar2 do
				if buscar2[contador].directory == false and string.lower(string.sub(buscar2[contador].name,-4)) == ".iso" or string.lower(string.sub(buscar2[contador].name,-4)) == ".mx4" or string.lower(string.sub(buscar2[contador].name,-4)) == ".hdd" then
					table.insert(encontrados,buscar2[contador].name)
				end
			end
		end
		if buscar3 ~= nil then
			for contador = 1,#buscar3 do
				if buscar3[contador].directory == false and string.lower(string.sub(buscar3[contador].name,-4)) == ".iso" or string.lower(string.sub(buscar3[contador].name,-4)) == ".mx4" or string.lower(string.sub(buscar3[contador].name,-4)) == ".hdd" then
					table.insert(encontrados,buscar3[contador].name)
				end
			end
		end
		if encontrados ~= nil and #encontrados >= 1 then
			lista = encontrados
			table.sort(lista)
			return lista
		else
			lista = {}
			return lista
		end
	else
		lista = {}
		return lista
	end
end

function ejecutar_iso(nombre) -- Ejecuta las ISO de Play Station 2
	local vmc = nil
	local modos = nil
	local actual = System.currentDirectory()
	if doesFileExist(actual .."/Roms/ISOs Play Station 2/".. string.sub(nombre,1,-5) ..".vmcd") then
		local carga_vmc = System.openFile(actual .."/Roms/ISOs Play Station 2/".. string.sub(nombre,1,-5) ..".vmcd",FREAD)
		System.seekFile(carga_vmc,0,SET)
		local size = System.sizeFile(carga_vmc)
		local temp = System.readFile(carga_vmc,size)
		for linea in string.gmatch(temp,"-mc0=.+") do 
			vmc = linea
		end
		if vmc ~= nil then 
			if doesFileExist(string.sub(vmc,6)) == false then
				vmc = nil
			end
		end
		System.closeFile(carga_vmc)
	elseif doesFileExist("mass:/DVD/".. string.sub(nombre,1,-5) ..".vmcd") and OPCIONES.DIR_EXTRAS_ON == 1 then
		local carga_vmc = System.openFile("mass:/DVD/".. string.sub(nombre,1,-5) ..".vmcd",FREAD)
		System.seekFile(carga_vmc,0,SET)
		local size = System.sizeFile(carga_vmc)
		local temp = System.readFile(carga_vmc,size)
		for linea in string.gmatch(temp,"-mc0=.+") do 
			vmc = linea
		end
		if vmc ~= nil then 
			if doesFileExist(string.sub(vmc,6)) == false then
				vmc = nil
			end
		end
		System.closeFile(carga_vmc)
	elseif doesFileExist("mass:/CD/".. string.sub(nombre,1,-5) ..".vmcd") and OPCIONES.DIR_EXTRAS_ON == 1 then
		local carga_vmc = System.openFile("mass:/CD/".. string.sub(nombre,1,-5) ..".vmcd",FREAD)
		System.seekFile(carga_vmc,0,SET)
		local size = System.sizeFile(carga_vmc)
		local temp = System.readFile(carga_vmc,size)
		for linea in string.gmatch(temp,"-mc0=.+") do 
			vmc = linea
		end
		if vmc ~= nil then 
			if doesFileExist(string.sub(vmc,6)) == false then
				vmc = nil
			end
		end
		System.closeFile(carga_vmc)
	end
	if doesFileExist(actual .."/Roms/ISOs Play Station 2/".. string.sub(nombre,1,-5) ..".mode") then
		local carga_mode = System.openFile(actual .."/Roms/ISOs Play Station 2/".. string.sub(nombre,1,-5) ..".mode",FREAD)
		System.seekFile(carga_mode,0,SET)
		local size2 = System.sizeFile(carga_mode)
		local temp2 = System.readFile(carga_mode,size2)
		for linea in string.gmatch(temp2,"-gc=%d+") do 
			modos = linea
		end
		System.closeFile(carga_mode)
	elseif doesFileExist("mass:/DVD/".. string.sub(nombre,1,-5) ..".mode") and OPCIONES.DIR_EXTRAS_ON == 1 then
		local carga_mode = System.openFile("mass:/DVD/".. string.sub(nombre,1,-5) ..".mode",FREAD)
		System.seekFile(carga_mode,0,SET)
		local size2 = System.sizeFile(carga_mode)
		local temp2 = System.readFile(carga_mode,size2)
		for linea in string.gmatch(temp2,"-gc=%d+") do 
			modos = linea
		end
		System.closeFile(carga_mode)
	elseif doesFileExist("mass:/CD/".. string.sub(nombre,1,-5) ..".mode") and OPCIONES.DIR_EXTRAS_ON == 1 then
		local carga_mode = System.openFile("mass:/CD/".. string.sub(nombre,1,-5) ..".mode",FREAD)
		System.seekFile(carga_mode,0,SET)
		local size2 = System.sizeFile(carga_mode)
		local temp2 = System.readFile(carga_mode,size2)
		for linea in string.gmatch(temp2,"-gc=%d+") do 
			modos = linea
		end
		System.closeFile(carga_mode)
	end
	if OPCIONES.PREGUNTAR_PS2 == false then
		if modos == nil and vmc == nil then
			if doesFileExist(actual .."/Roms/ISOs Play Station 2/".. nombre) then
				System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,"-dbc","-bsd=usb","-dvd=".. actual .."/Roms/ISOs Play Station 2/".. nombre)
			elseif doesFileExist("mass:/DVD/".. nombre) then
				if string.lower(string.sub(nombre,-4)) == ".mx4" then
					local nombre_mx4 = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,"-dbc","-bsd=mx4sio","-dvd=mass:/DVD/".. nombre_mx4)
				elseif string.lower(string.sub(nombre,-4)) == ".hdd" then
					local nombre_hdd = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,"-dbc","-bsd=ata","-dvd=mass:/DVD/".. nombre_hdd)
				else
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,"-dbc","-bsd=usb","-dvd=mass:/DVD/".. nombre)
				end
			elseif doesFileExist("mass:/CD/".. nombre) then
				if string.lower(string.sub(nombre,-4)) == ".mx4" then
					local nombre_mx4 = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,"-dbc","-bsd=mx4sio","-dvd=mass:/CD/".. nombre_mx4)
				elseif string.lower(string.sub(nombre,-4)) == ".hdd" then
					local nombre_hdd = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,"-dbc","-bsd=ata","-dvd=mass:/CD/".. nombre_hdd)
				else
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,"-dbc","-bsd=usb","-dvd=mass:/CD/".. nombre)
				end
			end
		elseif modos == nil and vmc ~= nil then
			if doesFileExist(actual .."/Roms/ISOs Play Station 2/".. nombre) then
				System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,"-dbc","-bsd=usb","-dvd=".. actual .."/Roms/ISOs Play Station 2/".. nombre)
			elseif doesFileExist("mass:/DVD/".. nombre) then
				if string.lower(string.sub(nombre,-4)) == ".mx4" then
					local nombre_mx4 = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,"-dbc","-bsd=mx4sio","-dvd=mass:/DVD/".. nombre_mx4)
				elseif string.lower(string.sub(nombre,-4)) == ".hdd" then
					local nombre_hdd = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,"-dbc","-bsd=ata","-dvd=mass:/DVD/".. nombre_hdd)
				else
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,"-dbc","-bsd=usb","-dvd=mass:/DVD/".. nombre)
				end
			elseif doesFileExist("mass:/CD/".. nombre) then
				if string.lower(string.sub(nombre,-4)) == ".mx4" then
					local nombre_mx4 = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,"-dbc","-bsd=mx4sio","-dvd=mass:/CD/".. nombre_mx4)
				elseif string.lower(string.sub(nombre,-4)) == ".hdd" then
					local nombre_hdd = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,"-dbc","-bsd=ata","-dvd=mass:/CD/".. nombre_hdd)
				else
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,"-dbc","-bsd=usb","-dvd=mass:/CD/".. nombre)
				end
			end
		elseif modos ~= nil and vmc == nil then
			if doesFileExist(actual .."/Roms/ISOs Play Station 2/".. nombre) then
				System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,modos,"-dbc","-bsd=usb","-dvd=".. actual .."/Roms/ISOs Play Station 2/".. nombre)
			elseif doesFileExist("mass:/DVD/".. nombre) then
				if string.lower(string.sub(nombre,-4)) == ".mx4" then
					local nombre_mx4 = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,modos,"-dbc","-bsd=mx4sio","-dvd=mass:/DVD/".. nombre_mx4)
				elseif string.lower(string.sub(nombre,-4)) == ".hdd" then
					local nombre_hdd = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,modos,"-dbc","-bsd=ata","-dvd=mass:/DVD/".. nombre_hdd)
				else
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,modos,"-dbc","-bsd=usb","-dvd=mass:/DVD/".. nombre)
				end
			elseif doesFileExist("mass:/CD/".. nombre) then
				if string.lower(string.sub(nombre,-4)) == ".mx4" then
					local nombre_mx4 = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,modos,"-dbc","-bsd=mx4sio","-dvd=mass:/CD/".. nombre_mx4)
				elseif string.lower(string.sub(nombre,-4)) == ".hdd" then
					local nombre_hdd = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,modos,"-dbc","-bsd=ata","-dvd=mass:/CD/".. nombre_hdd)
				else
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,modos,"-dbc","-bsd=usb","-dvd=mass:/CD/".. nombre)
				end
			end
		elseif modos ~= nil and vmc ~= nil then
			if doesFileExist(actual .."/Roms/ISOs Play Station 2/".. nombre) then
				System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,modos,"-dbc","-bsd=usb","-dvd=".. actual .."/Roms/ISOs Play Station 2/".. nombre)
			elseif doesFileExist("mass:/DVD/".. nombre) then
				if string.lower(string.sub(nombre,-4)) == ".mx4" then
					local nombre_mx4 = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,modos,"-dbc","-bsd=mx4sio","-dvd=mass:/DVD/".. nombre_mx4)
				elseif string.lower(string.sub(nombre,-4)) == ".hdd" then
					local nombre_hdd = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,modos,"-dbc","-bsd=ata","-dvd=mass:/DVD/".. nombre_hdd)
				else
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,modos,"-dbc","-bsd=usb","-dvd=mass:/DVD/".. nombre)
				end
			elseif doesFileExist("mass:/CD/".. nombre) then
				if string.lower(string.sub(nombre,-4)) == ".mx4" then
					local nombre_mx4 = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,modos,"-dbc","-bsd=mx4sio","-dvd=mass:/CD/".. nombre_mx4)
				elseif string.lower(string.sub(nombre,-4)) == ".hdd" then
					local nombre_hdd = string.sub(nombre,1,-5) ..".iso"
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,modos,"-dbc","-bsd=ata","-dvd=mass:/CD/".. nombre_hdd)
				else
					System.loadELF(actual .."/System/RetroarchPS2/Sony PlayStation 2/neutrino.elf",0,vmc,modos,"-dbc","-bsd=usb","-dvd=mass:/CD/".. nombre)
				end
			end
		end
	elseif OPCIONES.PREGUNTAR_PS2 == true then
		return vmc, modos
	end
end

function ejecutar_juego(identidad,nombre_juego,alternativo) -- Ejecuta la ROM con su respectivo emulador
	local actual = System.currentDirectory()
	if identidad == 1 then -- Ejecutar para SEGA Megadrive
		guardar()
		if alternativo == true then
			System.loadELF(actual .."/System/RetroarchPS2/Sega Megadrive/cores/picodrive_libretro_ps2_alt.elf",0,actual .."/Roms/Roms Sega Megadrive/".. nombre_juego)
		else
			System.loadELF(actual .."/System/RetroarchPS2/Sega Megadrive/cores/picodrive_libretro_ps2.elf",0,actual .."/Roms/Roms Sega Megadrive/".. nombre_juego)
		end
	elseif identidad == 2 then -- Ejecutar para SEGA Master System
		guardar()
		System.loadELF(actual .."/System/RetroarchPS2/Sega Master System/cores/picodrive_libretro_ps2.elf",0,actual .."/Roms/Roms Sega Master System/".. nombre_juego)
	elseif identidad == 3 then -- Ejecutar para SEGA Game Gear
		guardar()
		System.loadELF(actual .."/System/RetroarchPS2/Sega Game Gear/cores/picodrive_libretro_ps2.elf",0,actual .."/Roms/Roms Sega Game Gear/".. nombre_juego)
	elseif identidad == 4 then -- Ejecutar para Nintendo Famicom
		guardar()
		if alternativo == true then
			System.loadELF(actual .."/System/RetroarchPS2/Nintendo Famicom/cores/quicknes_libretro_ps2.elf",0,actual .."/Roms/Roms Nintendo Famicom/".. nombre_juego)
		else
			System.loadELF(actual .."/System/RetroarchPS2/Nintendo Famicom/cores/fceumm_libretro_ps2.elf",0,actual .."/Roms/Roms Nintendo Famicom/".. nombre_juego)
		end
	elseif identidad == 5 then -- Ejecutar para Nintendo Game Boy
		guardar()
		System.loadELF(actual .."/System/RetroarchPS2/Nintendo Game Boy/cores/gambatte_libretro_ps2.elf",0,actual .."/Roms/Roms Nintendo Game Boy/".. nombre_juego)
	elseif identidad == 6 then -- Ejecutar para Nintendo Game Boy Color
		guardar()
		System.loadELF(actual .."/System/RetroarchPS2/Nintendo Game Boy Color/cores/gambatte_libretro_ps2.elf",0,actual .."/Roms/Roms Nintendo Game Boy Color/".. nombre_juego)
	elseif identidad == 7 then -- Ejecutar para Nintendo Game Boy Advance
		guardar()
		System.loadELF(actual .."/System/RetroarchPS2/Nintendo Game Boy Advance/cores/gpsp_libretro_ps2.elf",0,actual .."/Roms/Roms Nintendo Game Boy Advance/".. nombre_juego)
	elseif identidad == 8 then -- Ejecutar para Play Station
		guardar()
		if doesFileExist("mass:/POPS/XX.".. string.sub(nombre_juego,1,-5) ..".ELF") then	
			System.loadELF("mass:/POPS/XX.".. string.sub(nombre_juego,1,-5) ..".ELF",0,"mass:/POPS/","--nr")
			error("No found mass:/POPS/XX.".. string.sub(nombre_juego,1,-5) ..".ELF")
		else
			if doesFileExist(actual .."/System/RetroarchPS2/Sony PlayStation/POPSTARTER.ELF") then
				System.copyFile(actual .."/System/RetroarchPS2/Sony PlayStation/POPSTARTER.ELF","mass:/POPS/XX.".. string.sub(nombre_juego,1,-5) ..".ELF")
			else
				error("No found ".. actual .."/System/RetroarchPS2/Sony PlayStation/POPSTARTER.ELF")
			end
			System.loadELF("mass:/POPS/XX.".. string.sub(nombre_juego,1,-5) ..".ELF",0,"mass:/POPS/","--nr")
			error("No found mass:/POPS/XX.".. string.sub(nombre_juego,1,-5) ..".ELF")
		end
	elseif identidad == 9 then -- Ejecutar para Atari 2600
		guardar()
		System.loadELF(actual .."/System/RetroarchPS2/Atari 2600/cores/stella2014_libretro_ps2.elf",0,actual .."/Roms/Roms Atari 2600/".. nombre_juego)
	elseif identidad == 10 then	-- Ejecutar para Sega SG-1000
		guardar()
		System.loadELF(actual .."/System/RetroarchPS2/Sega SG-1000/cores/picodrive_libretro_ps2.elf",0,actual .."/Roms/Roms Sega SG-1000/".. nombre_juego)
	elseif identidad == 11 then	-- Ejecutar para Neo Geo Pocket
		guardar()
		System.loadELF(actual .."/System/RetroarchPS2/Neo Geo Pocket/cores/race_libretro_ps2.elf",0,actual .."/Roms/Roms Neo Geo Pocket/".. nombre_juego)
	elseif identidad == 12 then	-- Ejecutar para Nintendo Super Famicom
		guardar()
		System.loadELF(actual .."/System/RetroarchPS2/Nintendo Super Famicom/cores/snes9x2002_libretro_ps2.elf",0,actual .."/Roms/Roms Nintendo Super Famicom/".. nombre_juego)
	elseif identidad == 13 then	-- Ejecutar para Aplicaciones
		System.loadELF(LISTAS.DIR_FULL_APP[LISTAS.INDICE],0,salida_texto_dir(LISTAS.DIR_FULL_APP[LISTAS.INDICE],false))
	elseif identidad == 14 then -- Ejecutar para Play Station 2
		guardar()
		ejecutar_iso(nombre_juego)
	end
end

function limpiar_retroarch(emulador) -- Elimina save states/save files(srm) de juegos creados por Retroarch
	local actual = System.currentDirectory()
	local limpiar =  System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/savestates")
	if limpiar ~= nil then
		for contador = 1,#limpiar do
			System.removeFile(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/savestates/".. limpiar[contador].name)
		end
	end
	local limpiar2 =  System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/savefiles")
	if limpiar2 ~= nil then
		for contador = 1,#limpiar2 do
			System.removeFile(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/savefiles/".. limpiar2[contador].name)
		end
	end
end

function pantalla_reiniciar_conf(FONDO,estado,limpiar) -- Muestra barra de progreso
	Screen.clear(Color.new(0,0,0))
	Graphics.drawScaleImage(FONDO,-5,0,640+5,480,Color.new(0,80,120))
	Graphics.drawScaleImage(LISTAS.LOADING,0,0,640,480)
	Graphics.drawRect(-5,290-3,650,25,COLOR.NEGRO)
	if limpiar == true then
		Font.ftPrint(CONTROL.fontARCA,150,290,0,0,8,"- DELETING SAVES STATES -",COLOR.BLANCO)
	else
		Font.ftPrint(CONTROL.fontARCA,150,290,0,0,8,"-RESTARTING ALL SETTINGS-",COLOR.BLANCO)
	end
	Font.ftPrint(CONTROL.fontARCA,152,315,0,0,8,"█████████████████████████",COLOR.BLANCO)
	if estado ~= 0 then
		Font.ftPrint(CONTROL.fontARCA,152,315,0,0,8,string.sub("█████████████████████████",1,estado),Color.new(0,80,120))
	end
	refrescar()
end

function directorios_faltantes(emulador,core) -- Crea los directorios faltantes
	local actual = System.currentDirectory()
	if emulador == "Nintendo Game Boy" or emulador == "Nintendo Game Boy Color" then
		if System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch") == nil then
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/".. core)
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/remaps")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/remaps/".. core)
		end
		if System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config") == nil then
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/".. core)
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/remaps")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/remaps/".. core)
		end
		if System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/".. core) == nil then
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/".. core)
		end
		if System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/remaps") == nil then
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/remaps")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/remaps/".. core)
		end
		if System.listDirectory(actual .."/System/RetroarchPS2/".. emulador.. "/retroarch/config/remaps/".. core) == nil then
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador.. "/retroarch/config/remaps/".. core)
		end
	elseif emulador == "Nintendo Famicom" then
		if System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch") == nil then
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/".. core)
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/remaps")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/remaps/".. core)
		end
		if System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config") == nil then
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .. "/retroarch/config")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/".. core)
		end
		if System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/remaps") == nil then
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/remaps")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/remaps/".. core)
		end
		if System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/".. core) == nil then
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador.. "/retroarch/config/".. core)
		end
		if System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/remaps/".. core) == nil then
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/remaps/".. core)
		end
	else
		if System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch") == nil then
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/".. core)
		elseif System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config") == nil then
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config")
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/".. core)
		elseif System.listDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/".. core) == nil then
			System.createDirectory(actual .."/System/RetroarchPS2/".. emulador .."/retroarch/config/".. core)
		end
	end
end

function reiniciar_conf(limpiar) -- Reinicia todas las configuraciones
	local actual = System.currentDirectory()
	local FONDO_LOAD = Graphics.loadImage("System/Medios/Default/FONDO.png")
	pantalla_reiniciar_conf(FONDO_LOAD,0,limpiar)
	OPCIONES.RGB_ON = 1
	OPCIONES.FONDO_RGB_ON = 1
	OPCIONES.FONDO_RGB_FIJO_ON = 0
	OPCIONES.R = 0
	OPCIONES.G = 80
	OPCIONES.B = 120
	CONTROL.ESTILO = 1
	CONTROL.LOGO_ALTO = 5
	CONTROL.LOGO_ANCHO = 194
	SISTEMAS.MEGADRIVE_ON = 1
	SISTEMAS.MASTERSYSTEM_ON = 1
	SISTEMAS.GAMEGEAR_ON = 1
	SISTEMAS.FAMICOM_ON = 1
	SISTEMAS.GAMEBOY_ON = 1
	SISTEMAS.GAMEBOYCOLOR_ON = 1
	SISTEMAS.GAMEBOYADVANCE_ON = 1
	SISTEMAS.PLAYSTATION_ON = 1
	SISTEMAS.ATARI2600_ON = 1
	SISTEMAS.SEGASG1000_ON = 1
	SISTEMAS.NEOGEOPOCKET_ON = 1
	SISTEMAS.SUPERFAMICOM_ON = 0
	SISTEMAS.APPS_ON = 0
	Font.ftUnload(CONTROL.fontARCA)
	CONTROL.fontARCA = Font.ftLoad("System/Medios/Font/PublicPixel.ttf")
	OPCIONES.CAMBIO_FUENTE_ON = 1
	Graphics.freeImage(LISTAS.FONDO)
	LISTAS.FONDO = Graphics.loadImage("System/Medios/Default/FONDO.png")
	OPCIONES.CAMBIO_FONDO_ON = 1
	OPCIONES.GUI_LIMPIA_ON = 0
	OPCIONES.LIMITADOR_RAM_ON = 1
	OPCIONES.SALIDA_RETROLANCHER_ON = 0
	OPCIONES.SALIDA_RETROLANCHER = "PS2 SYSTEM MENU"
	OPCIONES.SALIDA_DIR_ACTUALES = {}
	OPCIONES.SALIDA_DIR_ANTERIORES = {}
	OPCIONES.APPS_MENU_FULL_PATH = 0
	OPCIONES.SOUND_ON = 0
	OPCIONES.SOUND_VOLUME = 65
	set_volume()
	OPCIONES.SCREENSHOT_BACK_ON = 0
	OPCIONES.SCANLINES_ON = 0
	OPCIONES.VIBRATION_ON = 0
	SISTEMAS.PLAYSTATION2_ON = 0
	OPCIONES.DIR_EXTRAS_ON = 1
	
	-- Limpiar saves de Retroarch ----------------
	if limpiar == true then
		pantalla_reiniciar_conf(FONDO_LOAD,5,true)
		limpiar_retroarch("Atari 2600")
		pantalla_reiniciar_conf(FONDO_LOAD,10,true)
		limpiar_retroarch("Neo Geo Pocket")
		pantalla_reiniciar_conf(FONDO_LOAD,15,true)
		limpiar_retroarch("Nintendo Famicom")
		pantalla_reiniciar_conf(FONDO_LOAD,20,true)
		limpiar_retroarch("Nintendo Game Boy")
		pantalla_reiniciar_conf(FONDO_LOAD,25,true)
		limpiar_retroarch("Nintendo Game Boy Advance")
		pantalla_reiniciar_conf(FONDO_LOAD,30,true)
		limpiar_retroarch("Nintendo Game Boy Color")
		pantalla_reiniciar_conf(FONDO_LOAD,35,true)
		limpiar_retroarch("Nintendo Super Famicom")
		pantalla_reiniciar_conf(FONDO_LOAD,40,true)
		limpiar_retroarch("Sega Game Gear")
		pantalla_reiniciar_conf(FONDO_LOAD,45,true)
		limpiar_retroarch("Sega Master System")
		pantalla_reiniciar_conf(FONDO_LOAD,50,true)
		limpiar_retroarch("Sega Megadrive")
		pantalla_reiniciar_conf(FONDO_LOAD,75,true)
		limpiar_retroarch("Sega SG-1000")
	end
	----------------------------------------------
	
	-- Restaura Atari 2600 -----------------------
	directorios_faltantes("Atari 2600","Stella 2014")
	pantalla_reiniciar_conf(FONDO_LOAD,3,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Atari 2600/retroarch/retroarch.cfg") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Atari 2600/retroarch/retroarch.cfg",actual .."/System/RetroarchPS2/Atari 2600/retroarch/retroarch.cfg")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,6,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Atari 2600/retroarch/config/Stella 2014/Stella 2014.opt") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Atari 2600/retroarch/config/Stella 2014/Stella 2014.opt",actual .."/System/RetroarchPS2/Atari 2600/retroarch/config/Stella 2014/Stella 2014.opt")
	end
	----------------------------------------------
	
	-- Restaura Neo Geo Pocket -------------------
	directorios_faltantes("Neo Geo Pocket","RACE")
	pantalla_reiniciar_conf(FONDO_LOAD,9,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Neo Geo Pocket/retroarch/retroarch.cfg") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Neo Geo Pocket/retroarch/retroarch.cfg",actual .."/System/RetroarchPS2/Neo Geo Pocket/retroarch/retroarch.cfg")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,12,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Neo Geo Pocket/retroarch/config/RACE/RACE.opt") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Neo Geo Pocket/retroarch/config/RACE/RACE.opt",actual .."/System/RetroarchPS2/Neo Geo Pocket/retroarch/config/RACE/RACE.opt")
	end
	----------------------------------------------
	
	-- Restaura Nintendo Famicom -----------------
	directorios_faltantes("Nintendo Famicom","FCEUmm")
	pantalla_reiniciar_conf(FONDO_LOAD,15,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Famicom/retroarch/retroarch.cfg") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Famicom/retroarch/retroarch.cfg",actual .."/System/RetroarchPS2/Nintendo Famicom/retroarch/retroarch.cfg")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,17,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Famicom/retroarch/remaps/FCEUmm/FCEUmm.rmp") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Famicom/retroarch/remaps/FCEUmm/FCEUmm.rmp",actual .."/System/RetroarchPS2/Nintendo Famicom/retroarch/remaps/FCEUmm/FCEUmm.rmp")
	end
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Famicom/retroarch/remaps/QuickNES/QuickNES.rmp") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Famicom/retroarch/remaps/QuickNES/QuickNES.rmp",actual .."/System/RetroarchPS2/Nintendo Famicom/retroarch/remaps/QuickNES/QuickNES.rmp")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,19,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Famicom/retroarch/config/FCEUmm/FCEUmm.opt") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Famicom/retroarch/config/FCEUmm/FCEUmm.opt",actual .."/System/RetroarchPS2/Nintendo Famicom/retroarch/config/FCEUmm/FCEUmm.opt")
	end
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Famicom/retroarch/config/QuickNES/QuickNES.opt") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Famicom/retroarch/config/QuickNES/QuickNES.opt",actual .."/System/RetroarchPS2/Nintendo Famicom/retroarch/config/QuickNES/QuickNES.opt")
	end
	----------------------------------------------
	
	-- Restaura Nintendo Game Boy ----------------
	directorios_faltantes("Nintendo Game Boy","Gambatte")
	pantalla_reiniciar_conf(FONDO_LOAD,22,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy/retroarch/retroarch.cfg") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy/retroarch/retroarch.cfg",actual .."/System/RetroarchPS2/Nintendo Game Boy/retroarch/retroarch.cfg")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,24,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy/retroarch/config/remaps/Gambatte/Gambatte.rmp") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy/retroarch/config/remaps/Gambatte/Gambatte.rmp",actual .."/System/RetroarchPS2/Nintendo Game Boy/retroarch/config/remaps/Gambatte/Gambatte.rmp")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,26,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy/retroarch/config/Gambatte/Gambatte.opt") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy/retroarch/config/Gambatte/Gambatte.opt",actual .."/System/RetroarchPS2/Nintendo Game Boy/retroarch/config/Gambatte/Gambatte.opt")
	end
	----------------------------------------------
	
	-- Restaura Nintendo Game Boy Advance --------
	directorios_faltantes("Nintendo Game Boy Advance","gpSP")
	pantalla_reiniciar_conf(FONDO_LOAD,29,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy Advance/retroarch/retroarch.cfg") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy Advance/retroarch/retroarch.cfg",actual .."/System/RetroarchPS2/Nintendo Game Boy Advance/retroarch/retroarch.cfg")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,32,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy Advance/retroarch/config/gpSP/gpSP.opt") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy Advance/retroarch/config/gpSP/gpSP.opt",actual .."/System/RetroarchPS2/Nintendo Game Boy Advance/retroarch/config/gpSP/gpSP.opt")
	end
	----------------------------------------------
	
	-- Restaura Nintendo Game Boy Color ----------
	directorios_faltantes("Nintendo Game Boy Color","Gambatte")
	pantalla_reiniciar_conf(FONDO_LOAD,35,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy Color/retroarch/retroarch.cfg") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy Color/retroarch/retroarch.cfg",actual .."/System/RetroarchPS2/Nintendo Game Boy Color/retroarch/retroarch.cfg")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,37,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy Color/retroarch/config/remaps/Gambatte/Gambatte.rmp") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy Color/retroarch/config/remaps/Gambatte/Gambatte.rmp",actual .."/System/RetroarchPS2/Nintendo Game Boy Color/retroarch/config/remaps/Gambatte/Gambatte.rmp")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,39,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy Color/retroarch/config/Gambatte/Gambatte.opt") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Game Boy Color/retroarch/config/Gambatte/Gambatte.opt",actual .."/System/RetroarchPS2/Nintendo Game Boy Color/retroarch/config/Gambatte/Gambatte.opt")
	end
	----------------------------------------------
	
	-- Restaura Nintendo Super Famicom -----------
	directorios_faltantes("Nintendo Super Famicom","Snes9x 2002")
	pantalla_reiniciar_conf(FONDO_LOAD,42,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Super Famicom/retroarch/retroarch.cfg") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Super Famicom/retroarch/retroarch.cfg",actual .."/System/RetroarchPS2/Nintendo Super Famicom/retroarch/retroarch.cfg")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,45,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Nintendo Super Famicom/retroarch/config/Snes9x 2002/Snes9x 2002.opt") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Nintendo Super Famicom/retroarch/config/Snes9x 2002/Snes9x 2002.opt",actual .."/System/RetroarchPS2/Nintendo Super Famicom/retroarch/config/Snes9x 2002/Snes9x 2002.opt")
	end
	----------------------------------------------
	
	-- Restaura Sega Game Gear -------------------
	directorios_faltantes("Sega Game Gear","PicoDrive")
	pantalla_reiniciar_conf(FONDO_LOAD,48,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Sega Game Gear/retroarch/retroarch.cfg") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Sega Game Gear/retroarch/retroarch.cfg",actual .."/System/RetroarchPS2/Sega Game Gear/retroarch/retroarch.cfg")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,51,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Sega Game Gear/retroarch/config/PicoDrive/PicoDrive.opt") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Sega Game Gear/retroarch/config/PicoDrive/PicoDrive.opt",actual .."/System/RetroarchPS2/Sega Game Gear/retroarch/config/PicoDrive/PicoDrive.opt")
	end
	----------------------------------------------
	
	-- Restaura Sega Master System ---------------
	directorios_faltantes("Sega Master System","PicoDrive")
	pantalla_reiniciar_conf(FONDO_LOAD,54,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Sega Master System/retroarch/retroarch.cfg") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Sega Master System/retroarch/retroarch.cfg",actual .."/System/RetroarchPS2/Sega Master System/retroarch/retroarch.cfg")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,57,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Sega Master System/retroarch/config/PicoDrive/PicoDrive.opt") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Sega Master System/retroarch/config/PicoDrive/PicoDrive.opt",actual .."/System/RetroarchPS2/Sega Master System/retroarch/config/PicoDrive/PicoDrive.opt")
	end
	----------------------------------------------
	
	-- Restaura Sega Megadrive -------------------
	directorios_faltantes("Sega Megadrive","PicoDrive")
	pantalla_reiniciar_conf(FONDO_LOAD,60,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Sega Megadrive/retroarch/retroarch.cfg") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Sega Megadrive/retroarch/retroarch.cfg",actual .."/System/RetroarchPS2/Sega Megadrive/retroarch/retroarch.cfg")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,63,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Sega Megadrive/retroarch/config/PicoDrive/PicoDrive.opt") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Sega Megadrive/retroarch/config/PicoDrive/PicoDrive.opt",actual .."/System/RetroarchPS2/Sega Megadrive/retroarch/config/PicoDrive/PicoDrive.opt")
	end
	----------------------------------------------
	
	-- Restaura Sega SG-1000 ---------------------
	directorios_faltantes("Sega SG-1000","PicoDrive")
	pantalla_reiniciar_conf(FONDO_LOAD,66,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Sega SG-1000/retroarch/retroarch.cfg") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Sega SG-1000/retroarch/retroarch.cfg",actual .."/System/RetroarchPS2/Sega SG-1000/retroarch/retroarch.cfg")
	end
	pantalla_reiniciar_conf(FONDO_LOAD,68,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/Sega SG-1000/retroarch/config/PicoDrive/PicoDrive.opt") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/Sega SG-1000/retroarch/config/PicoDrive/PicoDrive.opt",actual .."/System/RetroarchPS2/Sega SG-1000/retroarch/config/PicoDrive/PicoDrive.opt")
	end
	----------------------------------------------
	
	-- Restaura retroarch-salamander.cfg ---------
	pantalla_reiniciar_conf(FONDO_LOAD,70,false)
	if doesFileExist(actual .."/System/Respaldo/RetroarchPS2/retroarch-salamander.cfg") then
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/retroarch-salamander.cfg",actual .."/System/RetroarchPS2/Atari 2600/retroarch/retroarch-salamander.cfg")
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/retroarch-salamander.cfg",actual .."/System/RetroarchPS2/Neo Geo Pocket/retroarch/retroarch-salamander.cfg")
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/retroarch-salamander.cfg",actual .."/System/RetroarchPS2/Nintendo Famicom/retroarch/retroarch-salamander.cfg")
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/retroarch-salamander.cfg",actual .."/System/RetroarchPS2/Nintendo Game Boy/retroarch/retroarch-salamander.cfg")
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/retroarch-salamander.cfg",actual .."/System/RetroarchPS2/Nintendo Game Boy Advance/retroarch/retroarch-salamander.cfg")
		pantalla_reiniciar_conf(FONDO_LOAD,71,false)
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/retroarch-salamander.cfg",actual .."/System/RetroarchPS2/Nintendo Game Boy Color/retroarch/retroarch-salamander.cfg")
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/retroarch-salamander.cfg",actual .."/System/RetroarchPS2/Nintendo Super Famicom/retroarch/retroarch-salamander.cfg")
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/retroarch-salamander.cfg",actual .."/System/RetroarchPS2/Sega Game Gear/retroarch/retroarch-salamander.cfg")
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/retroarch-salamander.cfg",actual .."/System/RetroarchPS2/Sega Master System/retroarch/retroarch-salamander.cfg")
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/retroarch-salamander.cfg",actual .."/System/RetroarchPS2/Sega Megadrive/retroarch/retroarch-salamander.cfg")
		System.copyFile(actual .."/System/Respaldo/RetroarchPS2/retroarch-salamander.cfg",actual .."/System/RetroarchPS2/Sega SG-1000/retroarch/retroarch-salamander.cfg")
	end
	----------------------------------------------
	
	-- Restaura las configuraciones --------------
	pantalla_reiniciar_conf(FONDO_LOAD,72,false)
	if doesFileExist(actual .."/System/Respaldo/Path_file.cfg") then
		System.copyFile(actual .."/System/Respaldo/Path_file.cfg",actual .."/System/Config/Path_file.cfg")
	end
	if doesFileExist(actual .."/System/Respaldo/Config.cfg") then
		System.copyFile(actual .."/System/Respaldo/Config.cfg",actual .."/System/Config/Config.cfg")
	end
	if doesFileExist(actual .."/System/Respaldo/System.cfg") then
		System.copyFile(actual .."/System/Respaldo/System.cfg",actual .."/System/Config/System.cfg")
	end
	----------------------------------------------
	
	-- Restaura variables ------------------------
	pantalla_reiniciar_conf(FONDO_LOAD,73,false)
	guardar_opciones()
	pantalla_reiniciar_conf(FONDO_LOAD,75,false)
	recargar_todas()
	cargar_config()
	cargar_directorio_elf()
	----------------------------------------------
	Graphics.freeImage(FONDO_LOAD)
end

function creditos() -- Muestra los créditos
	local FONDO_LOAD = Graphics.loadImage("System/Medios/Default/FONDO.png")
	local LOADING_LOAD = Graphics.loadImage("System/Medios/Default/LOADING.png")
	Screen.clear(Color.new(0,0,0))
	Graphics.drawScaleImage(FONDO_LOAD,-5,0,640+5,480,Color.new(0,80,120))
	Graphics.drawScaleImage(LOADING_LOAD,0,0,640,480)
	refrescar()
	local ENCELADUS = Graphics.loadImage("System/Medios/Credits/ENCELADUS.png")
	local POPSTARTER = Graphics.loadImage("System/Medios/Credits/POPSTARTER.png")
	local RETROARCH = Graphics.loadImage("System/Medios/Credits/RETROARCH.png")
	local RETROLAUNCHER = Graphics.loadImage("System/Medios/Credits/RETROLAUNCHER.png")
	local NEUTRINO = Graphics.loadImage("System/Medios/Credits/NEUTRINO.png")
	local SPAGHETTICODE = Graphics.loadImage("System/Medios/Credits/SPAGHETTICODE.png")
	local CREDITOS_IMG = {ENCELADUS,RETROARCH,POPSTARTER,NEUTRINO,SPAGHETTICODE,RETROLAUNCHER,RETROLAUNCHER}
	local CREDITOS_TXT = {"Enceladus is an enhanced Lua environment for\ncreating homebrew software for the PS2.\nDanielSant0s X: https://x.com/danadsees\n\nProject Link:\nhttps://github.com/DanielSant0s/Enceladus\nLicense: Distributed under GNU GPL-3.0 License.","Retroarch port created by RetroArch contributor\nfjtrujy (Francisco J. Trujillo).\nfjtrujy X: https://x.com/fjtrujy\n\nRetroarch Link:\nhttps://www.retroarch.com\n\nLicenses: There is software behind RetroArch\nthat is protected by Non-Commercial licenses.\nIt is important to respect the wishes of the\ndevelopers and people behind the respective\nprojects.\nhttps://docs.libretro.com/development/licenses/","POPStarter is a launcher which lets you play\nyour PS1 games in combination with PS1 emulator\nfor PS2.\n\nPOPStarter v13 was created by developer krHACKen.\nPOPStarter Link: https://\nwww.psx-place.com/threads/popstarter.19139/","Neutrino is a small, fast and modular PS2 device\nemulator that maximizes compatibility and\nperformance. Neutrino was created by developer\nMaximus32 (Rick Gaiser).\n\nNeutrino Link:\nhttps://github.com/rickgaiser/neutrino\n\nLicense: Academic Free License \"AFL\" v. 3.0","Thanks to public education for the support \nduring my technical training.\nSpaghetticode / LC - Mendoza - Argentina / 2024","Original background created by < e s c p > Art\nLicense: This Image is licensed under the\nCreative Commons Zero v1.0 Universal.\nFree images by https://www.artapixel.com\n\nFont \"Public Pixel\" Designed by GGBotNet.\nGGBotNet X: https://twitter.com/ggbotnet\nPublic Pixel Link: https://www.ggbot.net/fonts/\nLicense: This Font Software is licensed under\nthe Creative Commons Zero v1.0 Universal.\nCC0 1.0 Link: https://\ncreativecommons.org/publicdomain/zero/1.0/\n","Thanks for using RETROLauncher.     Boon Tobias"}
	local TheLastLive = true 
	local color_img = 129
	local color_tex = 128
	local cambio = true
	local cambio_t = true
	local pasaje = false
	local estado = 1
	local pos_imgX = 0
	local pos_imgY = -80
	local pos_tex = 290
	local pos_img_x = 640
	local pos_img_y = 480
	local autocambio = 0
	while TheLastLive do
		CONTROL.FPS = Screen.getFPS(1)
		capturar(JOYSTICK_LIMITE)
		Screen.clear(Color.new(0,0,0))
		if pasaje == false then
			if color_img >= 1 and cambio == true then
				color_img = color_img-1
			elseif color_img <= 0 and cambio == true then
				color_img = 0
			elseif color_img <= 127 and cambio == false then
				color_img = color_img+1
			elseif color_img <= 128 and cambio == false then
				color_img = 128
				cambio = true
				estado = estado+1
			end
			if color_tex >= 1 and cambio_t == true and color_img == 0 then
				color_tex = color_tex-1
			elseif color_tex <= 0 and cambio_t == true and color_img == 0 then
				color_tex = 0
				cambio_t = false
				pasaje = true
			elseif color_tex <= 127 and cambio_t == false and color_img == 0 then
				color_tex = color_tex+1
			elseif color_tex <= 128 and cambio_t == false and color_img == 0 then
				color_tex = 128
				cambio_t = true
				cambio = false
			end
			
		-- Controla los créditos
		elseif Pads.check(PAD,PAD_CIRCLE) or Pads.check(PAD,PAD_TRIANGLE) then
			TheLastLive = false 
		elseif pasaje == true and PAD ~= 0 then
			pasaje = false
			autocambio = 0
		elseif pasaje == true and autocambio >= 256 then
			pasaje = false
			autocambio = 0
		elseif pasaje == true then
			autocambio = autocambio+1
		end
		if estado == 1 and color_img == 128 and color_tex == 128 then
			pos_imgY = -73
			pos_imgX = 10
			pos_tex = 309
			pos_img_x = 620
			pos_img_y = 460
		elseif estado == 2 and color_img == 128 and color_tex == 128 then
			pos_imgY = -140
			pos_imgX = 0
			pos_tex = 185
			pos_img_x = 640
			pos_img_y = 480
		elseif estado == 3 and color_img == 128 and color_tex == 128 then
			pos_imgY = -40
			pos_imgX = 10
			pos_tex = 310
			pos_img_x = 620
			pos_img_y = 460
		elseif estado == 4 and color_img == 128 and color_tex == 128 then
			pos_imgY = -93
			pos_imgX = 10
			pos_tex = 260
			pos_img_x = 620
			pos_img_y = 460
		elseif estado == 5 and color_img == 128 and color_tex == 128 then
			pos_imgY = -80
			pos_imgX = -10
			pos_tex = 360
			pos_img_x = 660
			pos_img_y = 500
		elseif estado == 6 and color_img == 128 and color_tex == 128 then
			pos_imgY = -110
			pos_imgX = 0
			pos_tex = 210
			pos_img_x = 640
			pos_img_y = 480
		elseif estado == 7 and color_img == 128 and color_tex == 128 then
			pos_imgY = -110
			pos_imgX = 0
			pos_tex = 280
			pos_img_x = 640
			pos_img_y = 480
		end
		
		-- Mostrar todo en pantalla
		if estado <= #CREDITOS_IMG then
			Graphics.drawScaleImage(CREDITOS_IMG[estado],pos_imgX-5,pos_imgY,pos_img_x+5,pos_img_y)
			Graphics.drawRect(0,0,640,480,Color.new(0,0,0,color_img))
			Font.ftPrint(CONTROL.fontARCA,5,pos_tex,0,640,480,CREDITOS_TXT[estado],Color.new(128,128,128))
			Graphics.drawRect(0,pos_tex,640,300,Color.new(0,0,0,color_tex))
		else
			TheLastLive = false
		end
		refrescar()
	end
	Graphics.freeImage(FONDO_LOAD)
	Graphics.freeImage(LOADING_LOAD)
	Graphics.freeImage(ENCELADUS)
	Graphics.freeImage(POPSTARTER)
	Graphics.freeImage(NEUTRINO)
	Graphics.freeImage(RETROARCH)
	Graphics.freeImage(RETROLAUNCHER)
	Graphics.freeImage(SPAGHETTICODE)
	CREDITOS_IMG = nil
end
--[[------------------SPAGHETTICODE-------------------]]--