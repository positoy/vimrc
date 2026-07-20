# Skip theme initialization for better compatibility
if [[ -n "$CURSOR_AGENT" ]]; then
  PS1='\u@\h \W \$ '
  exit 0;
else
  [[ -r ~/.p10k.zsh ]] && source ~/.p10k.zsh
fi

# tmux 자동 실행: 터미널을 점유하므로 반드시 p10k instant prompt 블록보다 위에 둬야 한다.
# (instant prompt 가 터미널 I/O 를 가로채면 tmux 가 "open terminal failed: not a terminal" 로 실패)
# 대화형 쉘이고, tmux가 설치돼 있고, 아직 tmux 안이 아닐 때만 실행
if command -v tmux >/dev/null 2>&1 && [[ -z "$TMUX" ]] && [[ -o interactive ]]; then
  tmux new-session -A -s default
fi

function fixhosts() {
    # 사용자님이 만든 커스텀 호스트 파일 경로
    local CUSTOM_FILE="$HOME/hosts"
    
    # 파일이 실제로 있는지 확인
    if [ ! -f "$CUSTOM_FILE" ]; then
        echo "❌ $CUSTOM_FILE 파일을 찾을 수 없습니다."
        return 1
    fi

    # 중복 추가를 막기 위한 식별자 (마커)
    local MARKER="# --- MY CUSTOM HOSTS ---"
    
    # /etc/hosts에 마커가 없다면(VPN이 초기화했다면) 내용 추가
    if ! grep -q "$MARKER" /etc/hosts; then
        echo "" | sudo tee -a /etc/hosts > /dev/null
        echo "$MARKER" | sudo tee -a /etc/hosts > /dev/null
        cat "$CUSTOM_FILE" | sudo tee -a /etc/hosts > /dev/null
        echo "✅ ~/hosts 내용이 /etc/hosts에 성공적으로 복구되었습니다."
    else
        echo "ℹ️ 이미 커스텀 설정이 적용되어 있습니다."
    fi
}
