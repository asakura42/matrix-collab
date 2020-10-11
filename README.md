# matrix-collab
Proof of concept e2e collaboration writing using encrypted Matrix chat and commandline tools

### Background

There are many collaborative tools. But each of them is full of problems: somewhere there is no protection from strangers' eyes, even such banal as a password (CodiMD). Others are full of JavaScript and useless functions which makes it impossible to work quickly on, for example, an old laptop (Cryptpad.fr). Third ones don't allow deleting data in principle. Even if you erase the page content, you can find out what was written there with the built-in versioning (Etherpad). Fourthly, very badly treat personal data and require a phone number during registration (Google Docs). The fifth for primitive synchronization require a separate server, the sixth want people to pass each other their IP addresses for the connection... This is a big problem!

I decided to fix the situation at least a little and used in my tiny idea the software https://github.com/8go/matrix-commander, which is cli client for Matrix and supports encrypted rooms. It does not work very fast (since I use full versions of the text, not patches for example) but it works. It is a tool for your personal encrypted collaboration, which you can remove from the server or forgot about it at all, because e2e encryption ensures that no one without decryption key can see it.

### Arch Linux

```
# create room for collaboration and get address
git clone https://github.com/asakura42/matrix-collab/
cd matrix-collab
makepkg -si
# now you can set up m-c. paste user, pass and link to that room for collaboration
matrix-commander
mkdir $HOME/.config/matrix-commander
cp credentials.json $HOME/.config/matrix-commander
mkdir $HOME/.local/share/matrix-commander
cp -r store $HOME/.local/share/matrix-commander
bash collab.sh
```

