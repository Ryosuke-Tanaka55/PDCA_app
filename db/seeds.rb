# coding: utf-8

User.create!(name: "管理者",
  email: "sample@email.com",
  password: "password",
  password_confirmation: "password",
  agreement: true,
  admin: true)

User.create!(name: "福田 周平",
  email: "fukuda@email.com",
  password: "password",
  password_confirmation: "password",
  agreement: true)

User.create!(name: "宗 佑真",
  email: "mune@email.com",
  password: "password",
  password_confirmation: "password",
  agreement: true)

User.create!(name: "吉田 正尚",
  email: "yoshida@email.com",
  password: "password",
  password_confirmation: "password",
  agreement: true)

User.create!(name: "杉本 祐太郎(ラオウ)",
  email: "sugimoto@email.com",
  password: "password",
  password_confirmation: "password",
  agreement: true)

User.create!(name: "T-岡田",
  email: "t-okada@email.com",
  password: "password",
  password_confirmation: "password",
  agreement: true)

User.create!(name: "安達 了一",
  email: "adachi@email.com",
  password: "password",
  password_confirmation: "password",
  agreement: true)

User.create!(name: "スティーブン・モヤ",
  email: "moya@email.com",
  password: "password",
  password_confirmation: "password",
  agreement: true)

User.create!(name: "紅林 幸太郎",
  email: "kurebayashi@email.com",
  password: "password",
  password_confirmation: "password",
  agreement: true)

User.create!(name: "若月 健矢",
  email: "wakatsuki@email.com",
  password: "password",
  password_confirmation: "password",
  agreement: true)

User.create!(name: "宮城 大弥",
  email: "miyagi@email.com",
  password: "password",
  password_confirmation: "password",
  agreement: true)
  
  User.create!(name: "山崎 福也",
    email: "yamazaki@email.com",
    password: "password",
    password_confirmation: "password",
    agreement: true)

  User.create!(name: "増井 浩俊",
    email: "masui@email.com",
    password: "password",
    password_confirmation: "password",
    agreement: true)

  User.create!(name: "平野 佳寿",
    email: "hirano@email.com",
    password: "password",
    password_confirmation: "password",
    agreement: true)

  User.create!(name: "山本 由伸",
    email: "yamamoto@email.com",
    password: "password",
    password_confirmation: "password",
    agreement: true)
  
  User.create!(name: "山岡 泰輔",
    email: "yamaoka@email.com",
    password: "password",
    password_confirmation: "password",
    agreement: true)
  
  User.create!(name: "能見 篤史",
    email: "nohmi@email.com",
    password: "password",
    password_confirmation: "password",
    agreement: true)
  
  User.create!(name: "田嶋 大樹",
    email: "tajima@email.com",
    password: "password",
    password_confirmation: "password",
    agreement: true)椋
  
  User.create!(name: "太田 椋",
    email: "ohta@email.com",
    password: "password",
    password_confirmation: "password",
    agreement: true)
  
  User.create!(name: "後藤 駿太",
    email: "shunta@email.com",
    password: "password",
    password_confirmation: "password",
    agreement: true)

end

# 以下のリレーションシップを作成する
users = User.all
user  = users.second
following = users[3..15]
followers = users[4..15]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }