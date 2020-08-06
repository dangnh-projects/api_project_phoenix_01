alias ApiProject01.Repo
alias ApiProject01.Management.Document

Repo.insert!(%Document{
  name: "Hướng dẫn học 1",
  content: "Study",
  view: 300,
  published: true,
  project_id: 1
})

Repo.insert!(%Document{
  name: "Hướng dẫn học 2",
  content: "Study",
  view: 440,
  published: true,
  project_id: 2
})

Repo.insert!(%Document{
  name: "Hướng dẫn học 3",
  content: "Study",
  view: 500,
  published: true,
  project_id: 1
})

# Repo.insert!(%Project{
#   title: "Super cool projects",
#   description: "This is best tutorial!"
# })

# Repo.insert!(%Project{
#   title: "Super cool projects",
#   description: "This is best tutorial!"
# })

# (
# Repo.insert! %Project{
#   title: "Super cool projects",
#  )
#  description: "This is best tutorial!"
# }
