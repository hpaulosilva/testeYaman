class Compras
    include Capybara::DSL

    def tela_inicial
        #fill_in "email" , with: "paulo@teste.com.br"    
        find("#email").set "paulo@teste.com.br"
        find("#enterimg").click
        #email
    end

    def tela_formulario
        find('#basicBootstrapForm > div:nth-child(1) > div:nth-child(2) > input').set "Paulo"
        find('#basicBootstrapForm > div:nth-child(1) > div:nth-child(3) > input').set "Silva"
        find("#basicBootstrapForm > div:nth-child(2) > div > textarea").set "Teste WEB"
        find("#eid > input").set(Faker::Internet.email('paulotest'))
        find("#basicBootstrapForm > div:nth-child(4) > div > input").set (Faker::Number.number(10))
        find("#basicBootstrapForm > div:nth-child(5) > div > label:nth-child(1) > input").click
        find("#checkbox2").click
        find("#msdd").click
        btn = find('#basicBootstrapForm > div:nth-child(7) > div > multi-select > div:nth-child(2) > ul', text: "Serbian").click
        
        find("#basicBootstrapForm").click
        find("#Skills").click
        find("#Skills > option:nth-child(8)").click
        
        find("#countries").click
        
        find("#countries > option:nth-child(50)").click
       
        
        find("#basicBootstrapForm > div:nth-child(10) > div > span > span.selection > span > span.select2-selection__arrow").click
        
        
        find("#select2-country-results > li:nth-child(7)").click
        find("#yearbox > option:nth-child(78)").click
        find('#basicBootstrapForm > div:nth-child(11) > div:nth-child(3) > select').click
        find("#basicBootstrapForm > div:nth-child(11) > div:nth-child(3) > select > option:nth-child(6)").click
        find("#daybox").click
        find("#daybox > option:nth-child(18)").click
        find("#firstpassword").set "Paulo@10"
        find("#secondpassword").set "Paulo@10"
    end

    def sele_carrinho
        find("#text-22-sub_row_1-0-2-0-0 > div > ul > li > a.woocommerce-LoopProduct-link > img").click
        find("#product-160 > div.summary.entry-summary > form > button").click
        
    end

    def carrinho_compras
        find("#wpmenucartli > a").click
        find("#page-34 > div > div.woocommerce > div > div > div > a").click
    end

    def detalhes
        find("#billing_first_name").set "Paulo"
        find("#billing_last_name").set "Tester"
        find("#billing_company").set "P.Tester"
        find("#billing_email").set (Faker::Internet.email('paulotest'))
        find("#billing_phone").set (Faker::Number.number(10))
        find("##select2-drop").click
        find("#select2-result-label-1280").click
        find("#billing_address_1").set "Alameda araguaia"
        find("#billing_address_2").set "AP 57"
        find("#billing_city").set "Barueri"
        find("#select2-chosen-2").click
        find("#select2-result-label-1575").click
        find("#billing_postcode").set " 06352-090"
        find("#payment_method_cheque").click

    end
end