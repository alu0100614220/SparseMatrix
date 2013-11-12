require 'sparse_matrix'

describe Matrix_T do
    before :all do
        A = Matrix_T.new("input/matrix_a")
    end
    describe "Basicas" do
        it 'Existe una clase Matrix?' do
            A.instance_of?(Matrix_T) == true
        end

        it 'Se puede acceder a la matriz?' do
            A.mat.should == 0
        end
    end

    describe "Construyendo Matriz" do
        it 'Existe metodo para leer matrices (READ-MATRIX)?' do
            A.should respond_to("read_matrix")
        end

        it 'Existe sub-metodo para leer matrices (MAPMAP)?' do
            A.should respond_to("mapmap")
        end

        it 'Existe sub-metodo para leer matrices (TO_M)?' do
            A.should respond_to("to_m")
        end

        it 'Se han cargado los datos al objeto A' do
            A.read_matrix
            A.mat.should be_kind_of(Array)
        end

    end

    describe "Mostrando Matrices" do
        it 'Existe metodo to_s para devolver una matriz?' do
            A.should respond_to("to_s")
        end

        it 'Existe metodo print para mostrar una matriz?' do
            A.should respond_to("print")
        end
        
        it 'El Metodo to_s devuelve correctamente la matriz?' do
            A.to_s.should eq("| { 1.0\t2.0\t } , { 4.0\t5.0\t } , |")
        end
        
        it 'El metodo print imprime correctamente la matriz?' do
            A.print.should eq(nil)
        end
    end
        

end
