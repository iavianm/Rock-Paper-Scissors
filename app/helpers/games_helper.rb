module GamesHelper
  def show_choice(choice)
    link = ''
    case choice
    when 0
      link = asset_pack_path('media/images/stone.png')
    when 1
      link = asset_pack_path('media/images/scissors.png')
    when 2
      link = asset_pack_path('media/images/paper.png')
    end
    link
  end
end
