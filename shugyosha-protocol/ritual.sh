#!/bin/bash
# Define the log file path
LOGFILE="$HOME/.shugyosha_protocol/log.txt"
mkdir -p "$(dirname "$LOGFILE")"

STARLOG="$HOME/.shugyosha_protocol/stars.md"
mkdir -p "$(dirname "$STARLOG")"


starLog() {
  local intention="$1"
  echo "───────────────────────────────" >> "$STARLOG"
  echo "Bitácora de emisión - Hazáel" >> "$STARLOG"
  echo "Fecha: $(date '+%Y-%m-%d %H:%M:%S')" >> "$STARLOG"
  echo "Intención del día: $intention" >> "$STARLOG"
  echo "" >> "$STARLOG"
  echo "Notas:" >> "$STARLOG"
  echo "" >> "$STARLOG"

  # Open nvim at end of file for you to add notes
#  nvim +"normal! G" "$STARLOG"
}

# Simple log function
log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOGFILE"
}
# Shugyosha Protocol v0.1
# Color Palette: #a67d43 (gold), #ad0013 (alert red), #121312 (background)
clear

# ┌─[ Boot Banner ]────────────────────────────┐
gum style \
  --foreground="#a67d43" --border-foreground="#ad0013" --border double \
  --align center --width 60 --margin "1 2" --padding "1 4" \
  "SHUGYOSHA PROTOCOL INITIALIZATION"

afplay /System/Library/Sounds/Submarine.aiff &
echo -e "\033[38;5;94m[SYS]\033[0m Initializing Shugyosha Protocol..."
sleep 0.3
echo -e "\033[38;5;94m[CORE]\033[0m Syncing neural directives..."
sleep 0.3
echo -e "\033[38;5;94m[NODE]\033[0m Establishing temporal lock on $(date +"%Y-%m-%d")..."
sleep 0.3
# ┌─[ Code Phrase ]────────────────────────────┐
gum style \
  --foreground="#a67d43" --align center --width 50 \
  --padding "1 4" --margin "1 2" \
  "Nunca te apartes del camino"

# ┌─[ Mission Input ]──────────────────────────┐
INTENCION=$(gum input --prompt.foreground="#a67d43" --placeholder "Introduce intención del día")
gum style --foreground="#a67d43" --italic "Intención registrada: $INTENCION"
log "Intención registrada: $INTENCION"
# ┌─[ Hydration Check ]────────────────────────┐
gum style --foreground="#a67d43" --bold "Comprobando niveles de hidratación..."
HYDRO=$(gum choose --limit 1 \
  "✔️ Depositos de agua a capacidad óptima" \
  "⚠️ Proceder sin hidratación")
log "Niveles de hidratación: $HYDRO"

afplay /System/Library/Sounds/Submarine.aiff &
# ┌─[ Caffeine Scan ]──────────────────────────┐
gum style --foreground="#a67d43" --bold "Analizando cafeína en sangre..."
CAFEINA=$(gum choose --limit 1 \
  "✔️ Niveles óptimos de cafeína" \
  "⚠️ Proceder sin cafeína")
log "Niveles de cafeína: $CAFEINA"

afplay /System/Library/Sounds/Submarine.aiff &
# ┌─[ Cortisol Protocol ]──────────────────────┐
gum style --foreground="#a67d43" --bold "Ejecutar protocolo de reducción de cortisol:"
echo
echo "🧘 Respira profundo 10 veces"
gum confirm "¿Confirmar niveles estables de cortisol?"
log "Protocolo de cortisol ejecutado"

# ┌─[ Strategic Planning ]─────────────────────┐
gum style --foreground="#a67d43" --bold "Iniciar fase de planeación estratégica"
gum confirm "¿Plan de acción definido?"
log "Planeación estratégica iniciada"

# ┌─[ Isolation Sequence ]─────────────────────┐
gum style --foreground="#ad0013" --bold "⛔ Iniciando protocolo de aislamiento"
gum spin --spinner dot --title "Desactivando distracciones" -- sleep 4
shortcuts run DND
gum confirm "Distracciones desactivadas"

afplay /System/Library/Sounds/Submarine.aiff &
afplay /System/Library/Sounds/Submarine.aiff &
afplay /System/Library/Sounds/Submarine.aiff &
# ┌─[ Mission Log ]────────────────────────────┐
mkdir -p ~/bitacora
echo "$(date +%H:%M): INTENCIÓN - $INTENCION" >> ~/bitacora/$(date +%Y-%m-%d).log

# ┌─[ Exit Transmission ]──────────────────────┐
gum style \
  --foreground="#ad0013" --align center --width 60 \
  --padding "1 4" --margin "2 2" \
  "SHUGYOSHA PROTOCOL COMPLETE"

starLog "$INTENCION"

tmux new-window -n 'starlog' "nvim +\"normal! G\" \"$STARLOG\""
