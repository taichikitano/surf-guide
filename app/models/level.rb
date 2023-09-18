class Level < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '初心者' },
    { id: 3, name: '中級者' },
    { id: 4, name: '上級者' },
    { id: 5, name: 'プロ/エキスパート' }
  ] 

  include ActiveHash::Associations
  has_many :visiters

  end