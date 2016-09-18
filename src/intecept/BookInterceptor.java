package intecept;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.rainhowchan.action.BookAction;
import com.rainhowchan.domain.User;


public class BookInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		User user=(User) ServletActionContext.getRequest().getSession().getAttribute("user");
		if(user==null){
			BookAction bookAction=(BookAction) invocation.getAction();
			bookAction.addActionError("权限不足，请先登录！");
			return Action.LOGIN;
		}
		return invocation.invoke();
	}

}
