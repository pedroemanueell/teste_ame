class ApiUsers

    def cadastrando_usuario
        HTTParty.post(
            "http://dummy.restapiexample.com/api/v1/create", 
                body: {
                    status: "success", 
                    name: "teste", 
                    salary: "123", 
                    age: "23", 
                    id: "25"
                }.to_json,

                headers:{
                   "Content-Type" => "application/json"
                }
        )
    end

    def validando_usuario
        HTTParty.get(
            "http://dummy.restapiexample.com/api/v1/employees",
                body:{
                    status: "sucesso",
                    dados:[
                            {
                                id: "1",
                                employee_name: "Tiger Nixon",
                                employee_salary: "320800",
                                employee_age: "61",
                                magem_de_perfil: ""
                            },
                    ],
                }.to_json,

                headers:{
                    "Content-Type" => "application/json"
                }
        )
    end

    def deletando_usuario
        HTTParty.delete(
            "http://dummy.restapiexample.com/api/v1/delete/2",
            body:{
                status:  "success",
                message: "successfully! deleted Records"
            }.to_json,

            headers:{
                "Content-Type" => "application/json"
            }
        )
    end

end
