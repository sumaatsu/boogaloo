require 'httparty'
require 'json'

class ACRCloudService
  def self.identify_music(audio_file)
    access_key = ''
    secret_key = ''
    host = 'identify-eu-west-1.acrcloud.com'
    endpoint = '/v1/identify'

    url = "http://#{host}#{endpoint}"

    file_data = File.read(audio_file)

    response = HTTParty.post(
      url,
      body: { file: file_data }.to_json,
      headers: {
        'access_key' => access_key,
        'access_secret' => secret_key
      },
      format: :json
    )

    # HTTP status code '200' means 'OK' -> API call was successfull, anything else means it failed

    if reesponse.code == 200
      result = JSON.parse(response.body)
      #specify content pulled here
      return result
    else
      return "API call unsuccessful."
    end
  end
end
