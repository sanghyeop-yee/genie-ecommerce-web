package com.genie.myapp.vo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.management.relation.Role;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

public class AccountVO {
    private String genie_id;
	private String genie_pwd;
    private Role role;

	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();

		if (this.role.equals("ADMIN")) {
			auth.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
		} else if(this.role.equals("SELLER")){
			auth.add(new SimpleGrantedAuthority("ROLE_SELLER"));
		}else{
            auth.add(new SimpleGrantedAuthority("ROLE_USER"));
        }
		
		return auth;
	}

    

    @Override
    public String toString() {
        return "AccountVO [genie_id=" + genie_id + ", genie_pwd=" + genie_pwd + ", role=" + role + "]";
    }



    public String getGenie_id() {
        return genie_id;
    }

    public void setGenie_id(String genie_id) {
        this.genie_id = genie_id;
    }

    public String getGenie_pwd() {
        return genie_pwd;
    }

    public void setGenie_pwd(String genie_pwd) {
        this.genie_pwd = genie_pwd;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
    

    

    
}
