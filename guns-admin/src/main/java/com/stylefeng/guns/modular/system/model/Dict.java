package com.stylefeng.guns.modular.system.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

import java.io.Serializable;

/**
 * <p>
 * 字典表
 * </p>
 *
 * @author stylefeng
 * @since 2017-07-11
 */
@TableName("sys_dict")
public class Dict extends Model<Dict> {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	@TableId(value="id", type= IdType.UUID)
	private String id;
	/**
	 * 排序
	 */
	private String num;
	/**
	 * 父级字典
	 */
	private String pid;
	/**
	 * 名称
	 */
	private String name;

	/**
	 * 编码
	 */
	private String code;
	/**
	 * 提示
	 */
	private String tips;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTips() {
		return tips;
	}

	public void setTips(String tips) {
		this.tips = tips;
	}

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Override
	public String toString() {
		return "Dict{" +
				"id=" + id +
				", num=" + num +
				", pid=" + pid +
				", name='" + name + '\'' +
				", code='" + code + '\'' +
				", tips='" + tips + '\'' +
				'}';
	}
}
