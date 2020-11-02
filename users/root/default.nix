{lib, ... }:
{
  users.users.root.hashedPassword = lib.fileContents ../../secrets/root;
}
