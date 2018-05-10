module Plugin::Twitter
  class World < Diva::Model
    def streaming(method = :userstream , *args , &proc)
      twitter.__send__(method , {'include_followings_activity' => true} , *args , &proc)
    end
  end
end

