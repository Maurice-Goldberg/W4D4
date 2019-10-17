class Game
    attr_reader :towers

    def initialize(num_discs = 4)
        @num_discs = num_discs
        @towers = setup_towers
    end

    def move(take, give)
        if @towers[take].empty?
            raise "There are no discs for you to take!"
        elsif @towers[give].empty?
            @towers[give].unshift(@towers[take].shift)
        elsif @towers[take][0] > @towers[give][0]
            raise "You can't put a bigger disc on top of a smaller disc."
        else
            @towers[give].unshift(@towers[take].shift)
        end        
    end

    def start_game
        until won?
            render
            take, give = get_input
            move(take.to_i, give.to_i)
        end
        puts "You Won!!"
    end

    def won?
        i = 1
        winner = false
        while i < @towers.length
            if @towers[i].length == @num_discs && @towers[i] == @towers[i].sort
                winner = true
            end
            i += 1
        end
        winner
    end

    private
    def setup_towers
        setup = Array.new(3) { Array.new }
        (1..@num_discs).each do |i|
            setup[0] << i
        end
        setup
    end

    def render
        puts "Tower 0: #{@towers[0]}   Tower 1: #{@towers[1]}   Tower 2: #{@towers[2]}"
    end

    def get_input
        puts "Please enter a 'start' tower, a 'space', and an 'end' tower i.e. '2 3' " 
        gets.chomp.split  
    end
end

if __FILE__ == $PROGRAM_NAME
    game = Game.new(4)
    game.start_game    
end