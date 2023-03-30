class Progress < ActiveHash::Base
  
    self.data = [
      { id: 1, name: '---' },
      { id: 2, name: '着工前' },
      { id: 3, name: '着工中' },
      { id: 4, name: '完成' }
    ]
  
    include ActiveHash::Associations
    has_many :sites
  end

