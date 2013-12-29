package br.com.easistemas.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Resource;

@Resource
public class HomeController {

	@Get("/")
	public void index() {}
	
	@Get("/missao")
	public void missao() {}
	
	@Get("/visao")
	public void visao() {}

	@Get("/valores")
	public void valores() {}

	
}
