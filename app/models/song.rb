class Song < ActiveHash::Base
  self.data = [
      {id: 1, name: "ときめきエクスペリエンス！", easy: "8", normal: "13", hard: "16", expert: "25", band: "Poppin'Party"},
      {id: 2, name: "キラキラだとか夢だとか〜Sing Girls〜", easy: "8", normal: "14", hard: "17", expert: "25", special: "26", band: "Poppin'Party"},

  ]
end