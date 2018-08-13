package com.stylefeng.guns.core.node;

/**
 * 
 * jquery ztree 插件的节点
 * 
 * @author fengshuonan
 * @date 2017年2月17日 下午8:25:14
 */
public class ZTreeNode {

	private String id;	//节点id
	
	private String pId;//父节点id
	
	private String name;//节点名称
	
	private String open;//是否打开节点
	
	private String checked;//是否被选中

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOpen() {
		return open;
	}

	public void setOpen(String open) {
		this.open = open;
	}

	public String getIsOpen() {
		return open;
	}

	public void setIsOpen(String open) {
		this.open = open;
	}

	public String getChecked() {
		return checked;
	}

	public void setChecked(String checked) {
		this.checked = checked;
	}
	
	public static ZTreeNode createParent(){
		ZTreeNode zTreeNode = new ZTreeNode();
		zTreeNode.setChecked("true");
		zTreeNode.setId("0");
		zTreeNode.setName("顶级");
		zTreeNode.setOpen("true");
		zTreeNode.setpId("0");
		return zTreeNode;
	}
}
