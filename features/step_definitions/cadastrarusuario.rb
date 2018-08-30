#Dado(/^que esteja no site da Inmetrics$/) do
#  visit "https://opensource-demo.orangehrmlive.com/index.php"
  
#end

#Quando(/^acessar a pagina quem somos$/) do
#  find(:xpath, '//*[@id="nav-menu-container"]/ul/li[2]/a').click
  
#end

#E(/^clicar no botao salvar$/) do
#  find(:xpath, '//*[@id="nav-menu-container"]/ul/li[2]/a').click
  
#end

#Entao(/^e exibida a frase somos a Inmetrics\.SomosHardtech\.$/) do
#  assert_text(' Somos a Inmetrics. Somos HardTech.')
#  sleep 10
#end

#realizando login
Dado("que esteja na tela de cadastro") do
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

	click_button('btnAdd')
	sleep 2

#preenchendo os dados do novo usuario
	fill_in('firstName', :with => 'Teste')
	sleep 1

	fill_in('middleName', :with => 'Rodoming')
	sleep 1

	fill_in('lastName', :with => 'Inmetrics')
	sleep 1

	check('chkLogin')
	sleep 2
end


Quando("preencher os campos") do
	fill_in('user_name', :with => 'Rodoming')
	sleep 1

	fill_in('user_password', :with => 'T3ste@inmetrics')
	sleep 1

	fill_in('re_password', :with => 'T3ste@inmetrics')
	sleep 6
end


Quando("clicar no botao salvar") do
	click_button('btnSave')
	sleep 2
end


Entao("e exibido na tabela de usuarios os dados do usuario cadastrados") do
	assert_text('Teste Rodoming Inmetrics')
end