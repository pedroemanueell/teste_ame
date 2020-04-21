class Cadastro_page < SitePrism::Page
    element :btn_login,             '.login'
    element :input_email,           '#email_create'
    element :radium_gender1,        '#uniform-id_gender1'
    element :input_firstname,       '#customer_firstname'
    element :input_lastname,        '#customer_lastname'
    element :input_passwd,          '#passwd'
    element :select_days,           '#uniform-days'
    element :select_months,         '#uniform-months'
    element :select_years,          '#uniform-years'
    element :input_address1,        '#address1'
    element :input_city,            '#city'
    element :select_state,          '#uniform-id_state'
    element :input_postcode,        '#postcode'
    element :select_country,        '#uniform-id_country'
    element :input_phone_mobile,    '#phone_mobile'
    element :input_alias,           '#alias'
    

    
    def acesso_cadastro
        btn_login.click
        input_email.set 'ame_teste@ame.com.br'
        click_button 'SubmitCreate'
    end

    def cadastrando_usuario
        radium_gender1.click
        input_firstname.set 'ame'
        input_lastname.set 'digital'
        input_passwd.set 'amedigital'
        select_days.select'15'
        select_months.select 'October'
        select_years.select '1994'
        input_address1.set 'Rua Ame'
        input_city.set 'New York'
        select_state.select 'New York'
        input_postcode.set '00000'
        select_country.select 'United States'
        input_phone_mobile.set '+5511970352405'
        input_alias.set 'Rua Ame2'
        click_button 'submitAccount'
    end

end
