
// CalculatorDlg.h: 头文件
//


#pragma once

#include <string>
using namespace std;

// CCalculatorDlg 对话框
class CCalculatorDlg : public CDialogEx
{
// 构造
public:
	CCalculatorDlg(CWnd* pParent = nullptr);	// 标准构造函数

// 对话框数据
#ifdef AFX_DESIGN_TIME
	enum { IDD = IDD_CALCULATOR_DIALOG };
#endif

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV 支持


// 实现
protected:
	HICON m_hIcon;

	// 生成的消息映射函数
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	DECLARE_MESSAGE_MAP()
public:
	
	double num1, num2, res;
	CString str1, str2, strres;
	afx_msg void OnBnClickedPlus();
	afx_msg void OnBnClickedDiv();
	afx_msg void OnBnClickedMul();
	afx_msg void OnBnClickedMinus();
	afx_msg void OnEnChangeNum1();
	bool judge(CString);
	afx_msg void OnEnChangeNum2();
};
