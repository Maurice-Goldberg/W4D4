#expect some base array to return an array with only unique values
require "problems"

describe Array do
    subject(:array) { [1,2,3,3,4,5,5] }

    it "#my_unique removes all duplicate values" do
        expect(array.my_unique).to eq([1,2,3,4,5])
    end
    
    let(:array2) { [-1, 0, 2, -2, 1] }
    it "#two_sum finds all pairs of indices whose sum is equal to 0" do
        expect(array2.two_sum).to eq([[0, 4], [2, 3]])
    end

    let(:array3) { [[0, 1, 2],[3, 4, 5],[6, 7, 8]] }
    it "#transpose swaps rows for columns" do
        expect(array3.my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end

    let(:array4) { [1,3,4,2,6] }
    it "#stock_picker returns the indexes of the lowest value and highest value" do
        expect(array4.stock_picker).to eq( [0,4] )
    end
end