{lib, ... }:
{
  users.users.root.hashedPassword = lib.fileContents ../../secrets/users/root;
}
