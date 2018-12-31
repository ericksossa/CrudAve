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
import javax.persistence.ManyToMany;
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
@Table(name = "tont_aves")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TontAves.findAll",
            query = "SELECT t FROM TontAves t")
    , @NamedQuery(name = "TontAves.findByCdave", 
            query = "SELECT t FROM TontAves t WHERE t.cdave = :cdave")
    , @NamedQuery(name = "TontAves.findByDsnombreComun", 
            query = "SELECT t FROM TontAves t WHERE t.dsnombreComun = :dsnombreComun")
    , @NamedQuery(name = "TontAves.findByDsnombreCientifico", 
            query = "SELECT t FROM TontAves t WHERE t.dsnombreCientifico = :dsnombreCientifico")
, @NamedQuery(name = "TontAves.findByDsAve", 
        query = "SELECT t FROM TontAves t WHERE t.dsnombreCientifico LIKE CONCAT('%', :dsnombreCientifico,'%') or t.dsnombreComun LIKE CONCAT('%', :dsnombreComun,'%')")})
public class TontAves implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "CDAVE")
    private String cdave;
    @Size(max = 100)
    @Column(name = "DSNOMBRE_COMUN")
    private String dsnombreComun;
    @Size(max = 200)
    @Column(name = "DSNOMBRE_CIENTIFICO")
    private String dsnombreCientifico;
    @ManyToMany(mappedBy = "tontAvesCollection")
    private Collection<TontPaises> tontPaisesCollection;

    public TontAves() {
    }

    public TontAves(String cdave) {
        this.cdave = cdave;
    }

    public String getCdave() {
        return cdave;
    }

    public void setCdave(String cdave) {
        this.cdave = cdave;
    }

    public String getDsnombreComun() {
        return dsnombreComun;
    }

    public void setDsnombreComun(String dsnombreComun) {
        this.dsnombreComun = dsnombreComun;
    }

    public String getDsnombreCientifico() {
        return dsnombreCientifico;
    }

    public void setDsnombreCientifico(String dsnombreCientifico) {
        this.dsnombreCientifico = dsnombreCientifico;
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
        hash += (cdave != null ? cdave.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TontAves)) {
            return false;
        }
        TontAves other = (TontAves) object;
        if ((this.cdave == null && other.cdave != null) || (this.cdave != null && !this.cdave.equals(other.cdave))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.entidades.TontAves[ cdave=" + cdave + " ]";
    }
    
}
