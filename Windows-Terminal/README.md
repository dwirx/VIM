# How to Customize Windows 10 Terminal Like A Pro | Windows Terminal Themes | Oh My ZSH!

- [How to Customize Windows 10 Terminal Like A Pro | Windows Terminal Themes | Oh My ZSH! - YouTube](https://www.youtube.com/watch?v=ialuEXkoKr0&list=PLd4C242RnKWT1pGeYWJuG7Lup11qCr2WI&index=22&t=315s)

- [denysdovhan/spaceship-prompt: A Zsh prompt for Astronauts (github.com)](https://github.com/denysdovhan/spaceship-prompt)

  ```bash
  Instructions
  1. sudo apt update
  
  2. sudo apt install zsh -y
  
  3. sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  
  4.git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
  
  5.ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 
  
  6.install mononoki fonts from nerdfonts https://www.nerdfonts.com/font-downloads
  
  7.code ~/.zshrc
  
  #Put​ this on the bottom of file
  SPACESHIP_PROMPT_ADD_NEWLINE="true" 
  SPACESHIP_CHAR_SYMBOL=" \uf0e7" 
  #SPACESHIP_CHAR_PREFIX​="\uf296" 
  SPACESHIP_CHAR_SUFFIX=(" ") 
  SPACESHIP_CHAR_COLOR_SUCCESS="yellow" 
  SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER" 
  SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true" 
  SPACESHIP_USER_SHOW="true"
  
  export LS_COLORS="di=34;40:ln=36;40:so=35;40:pi=33;40:ex=32;40:bd=1;33;40:cd=1;33;40:su=0;41:sg=0;43:tw=0;42:ow=34;40:"
  zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
  
  8.edit terminal settings example https://github.com/codingphasedotcom/CodingPhaseThemes/tree/master
  
  ```
  
  [nvbn/thefuck: Magnificent app which corrects your previous console command. (github.com)](https://github.com/nvbn/thefuck)
  

  
