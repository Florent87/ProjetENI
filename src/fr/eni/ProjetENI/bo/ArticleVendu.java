package fr.eni.ProjetENI.bo;


import java.time.LocalDate;

import fr.eni.ProjetENI.bo.Categorie;

public class ArticleVendu {
		
		private int noArticle;
		private String nomArticle;
		private String description;
		private LocalDate dateDebutEncheres;
		private LocalDate dateFinEncheres;
		private int miseAPrix;
		private int prixVente;
		private int etatVente;
		private Categorie categorieArticle;

		public ArticleVendu() {
		}

		public ArticleVendu(int noArticle, String nomArticle, String description, LocalDate dateDebutEncheres,
				LocalDate dateFinEncheres, int miseAPrix, int prixVente, int etatVente, Categorie categorieArticle) {
			super();
			this.noArticle = noArticle;
			this.nomArticle = nomArticle;
			this.description = description;
			this.dateDebutEncheres = dateDebutEncheres;
			this.dateFinEncheres = dateFinEncheres;
			this.miseAPrix = miseAPrix;
			this.prixVente = prixVente;
			this.etatVente = etatVente;
			this.categorieArticle = categorieArticle;
		}

		public Categorie getCategorieArticle() {
			return categorieArticle;
		}
		
		public void setCategorieArticle(Categorie categorieArticle) {
			this.categorieArticle = categorieArticle;
		}
		
		public int getNoArticle() {
			return noArticle;
		}

		public void setNoArticle(int noArticle) {
			this.noArticle = noArticle;
		}

		public String getNomArticle() {
			return nomArticle;
		}

		public void setNomArticle(String nomArticle) {
			this.nomArticle = nomArticle;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public LocalDate getDateDebutEncheres() {
			return dateDebutEncheres;
		}

		public void setDateDebutEncheres(LocalDate dateDebutEncheres) {
			this.dateDebutEncheres = dateDebutEncheres;
		}

		public LocalDate getDateFinEncheres() {
			return dateFinEncheres;
		}

		public void setDateFinEncheres(LocalDate dateFinEncheres) {
			this.dateFinEncheres = dateFinEncheres;
		}

		public int getMiseAPrix() {
			return miseAPrix;
		}

		public void setMiseAPrix(int miseAPrix) {
			this.miseAPrix = miseAPrix;
		}

		public int getPrixVente() {
			return prixVente;
		}

		public void setPrixVente(int prixVente) {
			this.prixVente = prixVente;
		}

		public int getEtatVente() {
			return etatVente;
		}

		public void setEtatVente(int etatVente) {
			this.etatVente = etatVente;
		}

		@Override
		public String toString() {
			return "ArticleVendu [noArticle=" + noArticle + ", nomArticle=" + nomArticle + ", description=" + description
					+ ", dateDebutEncheres=" + dateDebutEncheres + ", dateFinEncheres=" + dateFinEncheres + ", miseAPrix="
					+ miseAPrix + ", prixVente=" + prixVente + ", etatVente=" + etatVente + ", categorieArticle="
					+ categorieArticle + "]";
		}

	}



