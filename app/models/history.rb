class History < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1~5年' },
    { id: 3, name: '6~10年' },
    { id: 4, name: '11~15年' },
    { id: 5, name: '16~20年' },
    { id: 6, name: '20~30年' },
    { id: 7, name: '31~40年' },
    { id: 8, name: '41年以上' }
  ]

  include ActiveHash::Associations
  has_many :visiters
  has_many :guides

  end