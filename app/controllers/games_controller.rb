class GamesController < ApplicationController
  def show; end

  def result
    @result = who_winner(params[:game].to_i)

    @winner = @result[:winner]
    @computer_choice = @result[:computer_choice]
    @user_choice = params[:game].to_i
  end

  def who_winner(user_choice)
    computer_choice = rand(3)
    winner = ''

    winner = if user_choice == computer_choice
               'Ничья'
             elsif user_choice.zero? && computer_choice == 1 # у вас 0-камень И у компьютера 1-ножницы
               'Победили Вы'
             elsif user_choice == 1 && computer_choice == 2 # у вас ножницы И у компа бумага
               'Победили Вы'
             elsif user_choice == 2 && computer_choice.zero? # бумага И камень
               'Победили Вы'
             else # во ВСЕХ ОСТАЛЬНЫХ случаях победа за компом
               'Победил Компьютер'
             end
    { winner: winner, computer_choice: computer_choice }
  end
end
