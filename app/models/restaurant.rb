class Restaurant < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  searchkick

  has_many :reviews

  validates :name, :address, :phone, :website, :image, presence: true

   validates :phone, format: { with: /\A\(\d{3}\) \d{5}-\d{4}\z/,
    message: "format (000) 00000-0000" }

    validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
    message: "format https://www.example.com" }

    validates :address, format: { with: /\A[^,]+, \d+ [a-zA-Z]+-[A-Z]{2}\z/,
    message: "format : Nome da Rua, Número Cidade- Sigla Estado exemplo: Rua Teste, 128 Rio de Janeiro-RJ" }



end
