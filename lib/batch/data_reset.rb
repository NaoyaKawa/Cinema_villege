class Batch::DataReset
  def self.data_reset
    Recommendation.destroy_all#Recommendationの中の空にします
    Theater.all.shuffle.take(3).each do |theater
      Recommendation.create(recommendation_params(theater))
    end
    #商品全て中から3つランダムに取得
    #Recommendationの中に商品を追加させる
    p "おすすめの劇場"

  end
    #ストロングパラメータででitem.user_id,item.idを判定する。
  def self.recommendation_params(theater)
    {
      user_id: theater.user_id,
      theater_id: theater.id
    }
  end
end