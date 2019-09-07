package beans;

public class PublicacaoBean {

	//Atributos
	
	private int idPub;
	private int idAnunciante;
	private String tituloPub;
	private String conteudoPub;
	private String cbServico;
	private String imagemPub;
	private String preco;
	
	public String getPreco() {
		return preco;
	}
	public void setPreco(String preco) {
		this.preco = preco;
	}
	public String getCbServico() {
		return cbServico;
	}
	public void setCbServico(String cbServico) {
		this.cbServico = cbServico;
	}
	public int getIdPub() {
		return idPub;
	}
	public void setIdPub(int idPub) {
		this.idPub = idPub;
	}
	public int getIdAnunciante() {
		return idAnunciante;
	}
	public void setIdAnunciante(int idAnunciante) {
		this.idAnunciante = idAnunciante;
	}
	public String getTituloPub() {
		return tituloPub;
	}
	public void setTituloPub(String tituloPub) {
		this.tituloPub = tituloPub;
	}
	public String getConteudoPub() {
		return conteudoPub;
	}
	public void setConteudoPub(String conteudoPub) {
		this.conteudoPub = conteudoPub;
	}
	public String getImagemPub() {
		return imagemPub;
	}
	public void setImagemPub(String imagemPub) {
		this.imagemPub = imagemPub;
	}
	
	
	
	
}
