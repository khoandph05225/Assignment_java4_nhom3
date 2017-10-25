package model;
import java.io.Serializable;
import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CATEGORY")
public class Category implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id @GeneratedValue
	@Column(name = "CATEGORY_ID")
	private String CATEGORY_ID;
	@Column(name = "CATEGORY_NAME")
    private String CATEGORY_NAME;
    public Category() {
    }

    public Category(String categoryID, String categoryName) {
        this.CATEGORY_ID = categoryID;
        this.CATEGORY_NAME = categoryName;
    }

    public String getCategoryID() {
        return CATEGORY_ID;
    }

    public void setCategoryID(String categoryID) {
        this.CATEGORY_ID = categoryID;
    }

    public String getCategoryName() {
        return CATEGORY_NAME;
    }

    public void setCategoryName(String categoryName) {
        this.CATEGORY_NAME = categoryName;
    }
}
