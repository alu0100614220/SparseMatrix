require 'sparse_matrix.rb'

describe SparseMatrix do

    before :all do
        A = SparseMatrix.new()
    end

    describe "Basicas" do
       
        it 'Existe una clase SparseMatrix?' do
            A.instance_of?(SparseMatrix) == true
        end

    end
end
