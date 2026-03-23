-- DoTimer_Patch.lua
-- Sistema de parches para soporte multiidioma en DoTimer
-- Versión: 1.1
-- Fecha: Enero 9, 2026

-- Guardar referencia a la función original de GetSpellName
local OriginalGetSpellName = GetSpellName

-- Cache de nombres normalizados para eficiencia
local SpellNameCache = {}

-- Función global para normalizar nombres de hechizos
function DoTimer_NormalizeSpellName(spellName)
    if not spellName or spellName == "" then
        return spellName
    end
    
    -- Verificar si ya está en cache
    if SpellNameCache[spellName] then
        return SpellNameCache[spellName]
    end
    
    -- Normalizar el nombre usando DoTimer_SpellLocalization
    local locale = GetLocale()
    if (locale == "esES" or locale == "esMX") and DoTimer_SpellLocalization then
        local normalizedName = DoTimer_SpellLocalization[spellName]
        if normalizedName then
            -- Guardar en cache
            SpellNameCache[spellName] = normalizedName
            -- Debug: Descomentar la siguiente línea para ver traducciones en tiempo real
            -- DEFAULT_CHAT_FRAME:AddMessage("[DoTimer] Normalizando: " .. spellName .. " -> " .. normalizedName)
            return normalizedName
        end
    end
    
    -- No hay traducción, guardar original en cache y devolver
    SpellNameCache[spellName] = spellName
    return spellName
end

-- NOTA: NO sobrescribimos GetSpellName() porque DoTimer necesita los nombres originales
-- La traducción se hace solo en el evento SPELLCAST_START

-- Comando para diagnosticar el estado de DoTimer
SLASH_DOTIMERDIAG1 = "/dotimerdiag"
SlashCmdList["DOTIMERDIAG"] = function(msg)
    DEFAULT_CHAT_FRAME:AddMessage("|cFF00FF00=== DoTimer Diagnóstico ===|r")
    
    -- Verificar si DoTimer está cargado
    if DoTimer_Settings then
        DEFAULT_CHAT_FRAME:AddMessage("|cFF00FF00DoTimer_Settings existe|r")
        
        -- Verificar configuración
        DEFAULT_CHAT_FRAME:AddMessage("Enabled: " .. tostring(DoTimer_Settings.enabled))
        DEFAULT_CHAT_FRAME:AddMessage("UI Visible: " .. tostring(DoTimer_Settings.uivisible))
        DEFAULT_CHAT_FRAME:AddMessage("Locked: " .. tostring(DoTimer_Settings.locked))
    else
        DEFAULT_CHAT_FRAME:AddMessage("|cFFFF0000DoTimer_Settings NO existe|r")
    end
    
    -- Verificar SpellSystem
    if SpellSystem_OnEvent then
        DEFAULT_CHAT_FRAME:AddMessage("|cFF00FF00SpellSystem_OnEvent existe|r")
    else
        DEFAULT_CHAT_FRAME:AddMessage("|cFFFF0000SpellSystem_OnEvent NO existe|r")
    end
    
    -- Verificar locale
    local locale = GetLocale()
    DEFAULT_CHAT_FRAME:AddMessage("Locale del cliente: " .. tostring(locale))
    
    -- Verificar clase
    local _, class = UnitClass("player")
    DEFAULT_CHAT_FRAME:AddMessage("Clase: " .. tostring(class))
end

-- Comando para listar hechizos y ver su estado de traducción
SLASH_DOTIMERSPELLS1 = "/dotimerspells"
SlashCmdList["DOTIMERSPELLS"] = function(msg)
    DEFAULT_CHAT_FRAME:AddMessage("|cFF00FF00=== DoTimer Spell List ===|r")
    DEFAULT_CHAT_FRAME:AddMessage("VERDE = Traducido | ROJO = SIN TRADUCCION")
    
    local spellCount = 0
    local translatedCount = 0
    local untranslatedCount = 0
    
    -- Escanear todos los hechizos del spellbook
    local i = 1
    while true do
        local spellName, spellRank = OriginalGetSpellName(i, BOOKTYPE_SPELL)
        if not spellName then
            break
        end
        
        spellCount = spellCount + 1
        
        -- Verificar si tiene traducción
        local locale = GetLocale()
        local hasTranslation = false
        if (locale == "esES" or locale == "esMX") and DoTimer_SpellLocalization then
            if DoTimer_SpellLocalization[spellName] then
                hasTranslation = true
                translatedCount = translatedCount + 1
            else
                untranslatedCount = untranslatedCount + 1
            end
        else
            hasTranslation = true -- No es español, no necesita traducción
            translatedCount = translatedCount + 1
        end
        
        -- Mostrar con color
        local color = hasTranslation and "|cFF00FF00" or "|cFFFF0000"
        local status = hasTranslation and "" or " (SIN TRADUCCION)"
        local rankText = (spellRank and spellRank ~= "") and (" (" .. spellRank .. ")") or ""
        
        if DoTimer_SpellLocalization and DoTimer_SpellLocalization[spellName] then
            DEFAULT_CHAT_FRAME:AddMessage(color .. spellName .. " -> " .. DoTimer_SpellLocalization[spellName] .. rankText .. "|r")
        else
            DEFAULT_CHAT_FRAME:AddMessage(color .. spellName .. rankText .. status .. "|r")
        end
        
        i = i + 1
    end
    
    DEFAULT_CHAT_FRAME:AddMessage("|cFF00FF00=== Resumen ===|r")
    DEFAULT_CHAT_FRAME:AddMessage("Total: " .. spellCount .. " hechizos")
    DEFAULT_CHAT_FRAME:AddMessage("|cFF00FF00Traducidos: " .. translatedCount .. "|r")
    if untranslatedCount > 0 then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFFF0000Sin traducir: " .. untranslatedCount .. "|r")
    end
end

-- Crear la función DoTimer_ReturnEnglish que DoTimer espera
function DoTimer_ReturnEnglish(spellname)
    if not spellname then return spellname end
    
    local locale = GetLocale()
    if (locale == "esES" or locale == "esMX") and DoTimer_SpellLocalization then
        local englishName = DoTimer_SpellLocalization[spellname]
        if englishName then
            return englishName
        end
    end
    
    return spellname -- Fallback if not mapped
end

-- Sistema de localización cargado exitosamente
