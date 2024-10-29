class RecentActivities
    attr_accessor :atividades_para_mostrar, :dinheiro, :pedidos, :threads
    
    def initialize
      @atividades_para_mostrar = 5
      @dinheiro = []
      @pedidos = []
      @threads = []
    end
  
    def obter_atualizacoes_dinheiro
      @dinheiro << { estado: 'empenhado', evento: 'modificado' }
    end
  
    def obter_atualizacoes_pedidos
      @pedidos << { pedido: 'pedido_1' }
    end
  
    def obter_atualizacoes_comentarios
      @threads << { nome_thread: 'thread_1', comentarios: ['comentario_1'] }
    end
  
    def atividades
      (@pedidos + @dinheiro + @threads).sort_by { |item| item[:data] || Time.now }
    end
  
    def carregar_mais
      if @atividades_para_mostrar > atividades.count
        @atividades_para_mostrar += 5
      end
    end
  end
  

RSpec.describe RecentActivities do
    let(:atividades) { RecentActivities.new }

    it 'inicializa com 5 atividades para mostrar' do
        expect(atividades.atividades_para_mostrar).to eq(5)
    end

    it 'aumenta atividades' do
        atividades.carregar_mais
        expect(atividades.atividades_para_mostrar).to eq(10)
    end

    it 'obtem atualizacoes de dinheiro' do
        atividades.obter_atualizacoes_dinheiro
        expect(atividades.dinheiro).to eq([{ estado: 'empenhado', evento: 'modificado' }])

    end
end
  