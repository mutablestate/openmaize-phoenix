# mix run priv/repo/seeds.ex

users = [
  %{
    name: "tom",
    password_hash: Comeonin.Bcrypt.hashpwsalt("mangoes"),
    role: "admin",
    email: "tom@mail.com",
    bio: "I was born in..."
  },
  %{
    name: "dick",
    password_hash: Comeonin.Bcrypt.hashpwsalt("mangoes"),
    role: "user",
    email: "dick@mail.com",
    bio: "I was born in..."
  },
  %{
    name: "harry",
    password_hash: Comeonin.Bcrypt.hashpwsalt("mangoes"),
    role: "user",
    email: "harry@mail.com",
    bio: "I was born in..."
  }
]

for user <- users do
  Map.merge(%Welcome.User{}, user) |> Welcome.Repo.insert
end
