/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entidades;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author sossa
 */
@Entity
@Table(name = "tont_paises")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TontPaises.findAll", query = "SELECT t FROM TontPaises t")
    , @NamedQuery(name = "TontPaises.findByCdpais", query = "SELECT t FROM TontPaises t WHERE t.cdpais = :cdpais")
    , @NamedQuery(name = "TontPaises.findByDsnombre", query = "SELECT t FROM TontPaises t WHERE t.dsnombre = :dsnombre")})
public class TontPaises implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 3)
    @Column(name = "CDPAIS")
    private String cdpais;
    @Size(max = 100)
    @Column(name = "DSNOMBRE")
    private String dsnombre;
    @JoinTable(name = "tont_aves_pais", joinColumns = {
        @JoinColumn(name = "CDPAIS", referencedColumnName = "CDPAIS")}, inverseJoinColumns = {
        @JoinColumn(name = "CDAVE", referencedColumnName = "CDAVE")})
    @ManyToMany
    private Collection<TontAves> tontAvesCollection;
    @JoinColumn(name = "CDZONA", referencedColumnName = "CDZONA")
    @ManyToOne
    private TontZonas cdzona;

    public TontPaises() {
    }

    public TontPaises(String cdpais) {
        this.cdpais = cdpais;
    }

    public String getCdpais() {
        return cdpais;
    }

    public void setCdpais(String cdpais) {
        this.cdpais = cdpais;
    }

    public String getDsnombre() {
        return dsnombre;
    }

    public void setDsnombre(String dsnombre) {
        this.dsnombre = dsnombre;
    }

    @XmlTransient
    public Collection<TontAves> getTontAvesCollection() {
        return tontAvesCollection;
    }

    public void setTontAvesCollection(Collection<TontAves> tontAvesCollection) {
        this.tontAvesCollection = tontAvesCollection;
    }

    public TontZonas getCdzona() {
        return cdzona;
    }

    public void setCdzona(TontZonas cdzona) {
        this.cdzona = cdzona;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cdpais != null ? cdpais.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TontPaises)) {
            return false;
        }
        TontPaises other = (TontPaises) object;
        if ((this.cdpais == null && other.cdpais != null) || (this.cdpais != null && !this.cdpais.equals(other.cdpais))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.entidades.TontPaises[ cdpais=" + cdpais + " ]";
    }
    
}
