class Service
  def streaming(method = :userstream, *args, &proc)
    twitter.__send__(method, {'include_followings_activity' => true}, &proc)
  end
end
