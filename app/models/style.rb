class Style < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ショートボード' },
    { id: 3, name: 'ミッドレングス/オルタナティブ' },
    { id: 4, name: 'ロングボード' },
    { id: 5, name: 'ボディボード' },
    { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :visiters
  has_many :guides
  has_many :guidances

  end