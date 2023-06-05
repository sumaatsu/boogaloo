class MusicController < ApplicationController
  def identify
    audio_file = params[:audio].tempfile.path
    result = ACRCloudService.identify_music(audio_file)
    #this should process the result and pull a response
    # do we need an IF/THEN statemnt to handle errors here as well or if the app times-out?
  end
end
