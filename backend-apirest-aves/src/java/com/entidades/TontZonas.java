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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
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
@Table(name = "tont_zonas")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TontZonas.findAll", query = "SELECT t FROM TontZonas t")
    , @NamedQuery(name = "TontZonas.findByCdzona", query = "SELECT t FROM TontZonas t WHERE t.cdzona = :cdzona")
    , @NamedQuery(name = "TontZonas.findByDsnombre", query = "SELECT t FROM TontZonas t WHERE t.dsnombre = :dsnombre")})
public class TontZonas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 3)
    @Column(name = "CDZONA")
    private String cdzona;
    @Size(max = 45)
    @Column(name = "DSNOMBRE")
    private String dsnombre;
    @OneToMany(mappedBy = "cdzona")
    private Collection<TontPaises> tontPaisesCollection;

    public TontZonas() {
    }

    public TontZonas(String cdzona) {
        this.cdzona = cdzona;
    }

    public String getCdzona() {
        return cdzona;
    }

    public void setCdzona(String cdzona) {
        this.cdzona = cdzona;
    }

    public String getDsnombre() {
        return dsnombre;
    }

    public void setDsnombre(String dsnombre) {
        this.dsnombre = dsnombre;
    }

    @XmlTransient
    public Collection<TontPaises> getTontPaisesCollection() {
        return tontPaisesCollection;
    }

    public void setTontPaisesCollection(Collection<TontPaises> tontPaisesCollection) {
        this.tontPaisesCollection = tontPaisesCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cdzona != null ? cdzona.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TontZonas)) {
            return false;
        }
        TontZonas other = (TontZonas) object;
        if ((this.cdzona == null && other.cdzona != null) || (this.cdzona != null && !this.cdzona.equals(other.cdzona))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.entidades.TontZonas[ cdzona=" + cdzona + " ]";
    }

}
