package com.services.home.dao.impl;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.services.home.dao.WorkDao;
import com.services.home.entities.Work;

@Repository
@Transactional
public class WorkDaoImpl implements WorkDao{

	private HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	@Transactional
	public int insert(Work work) {
		return (Integer) this.template.save(work);
	}

}
