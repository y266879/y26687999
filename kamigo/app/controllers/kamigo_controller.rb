class KamigoController < ActionController::Base
  protect_from_forgery with: :null_session
    def eat 
		render plain:"吃土啦"
    end


    def response_headers
      response.headers['1'] = '第四小組'
      response.headers['2'] = '組員:陳建佑,王譚翔,鄭宏偉,周伯謙'
      render plain: response.headers.to_h.map{ |key, value|
        "#{key}: #{value} " }.sort.join("\n")
    end

    def show_response_body
      puts "===這是設定前的response.body:#{response.body}==="
      render plain: "虎哇花哈哈哈"
      puts "===這是設定後的response.body:#{response.body}==="
    end

    def sent_request
      uri = URI('https://eip.sinon.com.tw/')
      response = Net::HTTP.get(uri)
      render plain: response
    end
  
    
end
