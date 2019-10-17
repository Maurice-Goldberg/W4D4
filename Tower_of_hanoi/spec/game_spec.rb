require "game"

describe Game do
    subject(:game) { Game.new(4) }
    it "#initialize sets up three towers, with the correct number of discs on each one" do 
        expect(game.towers).to eq([[1,2,3,4], [], []])
    end

    describe "move method" do
        it "#move takes the smallest disc from the start tower" do
            game.move(0,1) 
            expect(game.towers[0]).to eq([2,3,4])    
        end

       it "#move gives the appropriate disc to the end tower" do
            game.move(0,1)
            expect(game.towers[1]).to eq([1])
        end

        it "doesn't allow for bigger discs to be placed on smaller discs" do
            arr = [[],[1],[2,3,4]]
            game.instance_variable_set(:@towers, arr)
            expect { game.move(2,1) }.to raise_error
        end

        it "doesn't let you move discs from an empty tower" do
            arr = [[],[1],[2,3,4]]
            game.instance_variable_set(:@towers, arr)
            expect { game.move(0,1) }.to raise_error
        end
        
    end

    describe "won?" do
        it "#won? returns true when all discs are on one tower (not the starting tower), in order" do
            win_arr=[[],[1,2,3,4],[]]
            game.instance_variable_set(:@towers, win_arr)
            expect(game.won?).to eq(true)
        end

        it "#won? returns false when discs are not in a winning position" do
            lose_arr=[[1],[2,3,4],[]]
            game.instance_variable_set(:@towers, lose_arr)
            expect(game.won?).to eq(false)
        end
    end
end

