#realizando login
Dado("que eu tenha consultado um usuario") do
	visit "https://opensource-demo.orangehrmlive.com/"
	sleep 1

	fill_in('txtUsername', :with => 'Admin')
	sleep 1

	fill_in('txtPassword', :with => 'admin123')
	sleep 1

	click_button('btnLogin')
	sleep 2

#acessando o menu de usuarios
	click_link('menu_pim_viewPimModule')
	sleep 2
end

#Consultando o usuario
Quando("editar os dados do usuario") do
	fill_in('empsearch_employee_name_empName', :with => 'Teste')
	sleep 2

	click_button('searchBtn')
	sleep 3


	click_link('Teste')
	sleep 3


#Editando os dados do usuario

	click_link('Job')
	sleep 3

	click_button('btnSave')
	sleep 3

	select('CEO', :from => 'job_job_title')
	sleep 3

	click_button('btnSave')
	sleep 3

end

Entao("os dados sao alterado na tabela de resultados") do
	click_link('menu_pim_viewPimModule')
	sleep 2

	assert_text('CEO')
	sleep 3
end