
cd ~/projects/
find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && mr register" \;

mr -j5 update
