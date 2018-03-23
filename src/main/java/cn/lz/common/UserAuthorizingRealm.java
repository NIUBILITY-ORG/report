package cn.lz.common;

import cn.lz.service.LoginService;
import cn.lz.utils.ResourceUtil;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


/**
 * Created by lz on 2018/3/22.
 */
@Component
public class UserAuthorizingRealm extends AuthorizingRealm{

    @Autowired
    private LoginService loginService;

    /**
     * 用户授权
     * @param principalCollection
     * @return
     */
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        ResourceUtil.getAdminName();
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        Object principal =  principalCollection.getPrimaryPrincipal();
        System.out.println(principal.toString());
        return null;
    }

    /**
     * 登录认证
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) authenticationToken;
        String username = usernamePasswordToken.getUsername();
        //判断是否是管理员


        return null;
    }
}
