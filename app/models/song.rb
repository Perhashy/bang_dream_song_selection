class Song < ActiveHash::Base
  self.data = [
      {id: 1, name: "ときめきエクスペリエンス！", easy: "8", normal: "13", hard: "16", expert: "25", band_id: 1},
  ]
end