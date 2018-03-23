package cn.lz.common;

import cn.lz.utils.ResourceUtil;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.stereotype.Component;


/**
 * Created by lz on 2018/3/22.
 */
@Component
public class UserAuthorizingRealm extends AuthorizingRealm{
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        ResourceUtil.getAdminName();
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        Object principal =  principalCollection.getPrimaryPrincipal();
        if("admin".equals(principal)){
            info.addRole("admin");
        }
        if("user".equals(principal)){
            info.addRole("list");
        }
        info.addRole("user");
        return null;
    }

    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        return null;
    }
}
