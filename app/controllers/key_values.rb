class DatabaseServer < Sinatra::Base

  before do
    @key_val = KeyValue.instance || KeyValue.create
  end

  get '/set' do
    if !params.empty?
      @key_val.pairs[params.keys.first] = params.values.first
      "Success"
    end
  end

  get '/get' do
    if !params.empty? && params.keys.first == "key"
      @key_val.pairs[params.values.first]
    end
  end

end
