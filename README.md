# matrix-collab
Proof of concept e2e collaboration writing using encrypted Matrix chat and commandline tools

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

