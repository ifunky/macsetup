## MAC Core Setup

From a fresh new laptop straight from Apple in order to even clone this repo you will need to follow a few simple steps:

### 1. Mac Command Line Tools

The very first item to install are the Mac command line tools:

`xcode-select --install`

Follow the prompts and install the tools which takes about 15 minutes.

### Brew
Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


## Docker
Install Docker desktop
https://docs.docker.com/desktop/mac/install/

## Do you like "normal" home and end keys?
mkdir -p ~/Library/KeyBindings
vi ~/Library/KeyBindings/DefaultKeyBinding.dict

{
/* Remap Home / End keys */

/* Home Button*/
"\UF729" = "moveToBeginningOfLine:";

/* End Button */
"\UF72B" = "moveToEndOfLine:";

/* Shift + Home Button */
"$\UF729" = "moveToBeginningOfLineAndModifySelection:";

/* Shift + End Button */
"$\UF72B" = "moveToEndOfLineAndModifySelection:";

/* Ctrl + Home Button */
"^\UF729" = "moveToBeginningOfDocument:";

/* Ctrl + End Button */
"^\UF72B" = "moveToEndOfDocument:";

/* Shift + Ctrl + Home Button */
"$^\UF729" = "moveToBeginningOfDocumentAndModifySelection:";

/* Shift + Ctrl + End Button*/
"$^\UF72B" = "moveToEndOfDocumentAndModifySelection:";
}

Reboot!



# Optional Software



### Logitech Keyboard and Mouse

I really like the Logitech MX mouse and keyboard :-)

https://www.logitech.com/en-gb/software/logi-options-plus.html#software-download

### Webcam software

https://www.logitech.com/en-gb/video-collaboration/software/logi-tune-software.html

- 

