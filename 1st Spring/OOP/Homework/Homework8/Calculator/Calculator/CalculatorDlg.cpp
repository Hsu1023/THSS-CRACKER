﻿
// CalculatorDlg.cpp: 实现文件
//

#include "pch.h"
#include "framework.h"
#include "Calculator.h"
#include "CalculatorDlg.h"
#include "afxdialogex.h"
#include <string>

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

// 用于应用程序“关于”菜单项的 CAboutDlg 对话框

class CAboutDlg : public CDialogEx
{
public:
	CAboutDlg();

// 对话框数据
#ifdef AFX_DESIGN_TIME
	enum { IDD = IDD_ABOUTBOX };
#endif

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV 支持

// 实现
protected:
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialogEx(IDD_ABOUTBOX)
{
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialogEx::DoDataExchange(pDX);
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialogEx)
END_MESSAGE_MAP()


// CCalculatorDlg 对话框



CCalculatorDlg::CCalculatorDlg(CWnd* pParent /*=nullptr*/)
	: CDialogEx(IDD_CALCULATOR_DIALOG, pParent)
	, num1(0)
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CCalculatorDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialogEx::DoDataExchange(pDX);
	DDX_Text(pDX, IDC_NUM1, str1);
	DDX_Text(pDX, IDC_NUM2, str2);
	DDX_Text(pDX, IDC_RESULT, strres);
}

BEGIN_MESSAGE_MAP(CCalculatorDlg, CDialogEx)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_PLUS, &CCalculatorDlg::OnBnClickedPlus)
	ON_BN_CLICKED(IDC_DIV, &CCalculatorDlg::OnBnClickedDiv)
	ON_BN_CLICKED(IDC_MUL, &CCalculatorDlg::OnBnClickedMul)
	ON_BN_CLICKED(IDC_MINUS, &CCalculatorDlg::OnBnClickedMinus)
	ON_EN_CHANGE(IDC_NUM1, &CCalculatorDlg::OnEnChangeNum1)
	ON_EN_CHANGE(IDC_NUM2, &CCalculatorDlg::OnEnChangeNum2)
END_MESSAGE_MAP()


// CCalculatorDlg 消息处理程序

BOOL CCalculatorDlg::OnInitDialog()
{
	CDialogEx::OnInitDialog();

	// 将“关于...”菜单项添加到系统菜单中。

	// IDM_ABOUTBOX 必须在系统命令范围内。
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != nullptr)
	{
		BOOL bNameValid;
		CString strAboutMenu;
		bNameValid = strAboutMenu.LoadString(IDS_ABOUTBOX);
		ASSERT(bNameValid);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// 设置此对话框的图标。  当应用程序主窗口不是对话框时，框架将自动
	//  执行此操作
	SetIcon(m_hIcon, TRUE);			// 设置大图标
	SetIcon(m_hIcon, FALSE);		// 设置小图标

	// TODO: 在此添加额外的初始化代码

	return TRUE;  // 除非将焦点设置到控件，否则返回 TRUE
}

void CCalculatorDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialogEx::OnSysCommand(nID, lParam);
	}
}

// 如果向对话框添加最小化按钮，则需要下面的代码
//  来绘制该图标。  对于使用文档/视图模型的 MFC 应用程序，
//  这将由框架自动完成。

void CCalculatorDlg::OnPaint()
{
	if (IsIconic())
	{
		CPaintDC dc(this); // 用于绘制的设备上下文

		SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

		// 使图标在工作区矩形中居中
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// 绘制图标
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialogEx::OnPaint();
	}
}

//当用户拖动最小化窗口时系统调用此函数取得光标
//显示。
HCURSOR CCalculatorDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}


void CCalculatorDlg::OnBnClickedPlus()
{
	// TODO: 在此添加控件通知处理程序代码
	UpdateData();
	num1 = _tstof(str1);
	num2 = _tstof(str2);
	res = num1 + num2;
	if (res == (int)res)strres.Format(_T("%d"), (int)res);
	else strres.Format(_T("%e"), res);
	if (!judge(str1))strres.Format(_T("您的输入不合法"));
	if (!judge(str2))strres.Format(_T("您的输入不合法"));
	UpdateData(FALSE);
}

void CCalculatorDlg::OnBnClickedMinus()
{
	// TODO: 在此添加控件通知处理程序代码
	UpdateData();
	num1 = _tstof(str1);
	num2 = _tstof(str2);
	res = num1 - num2;
	if (res == (int)res)strres.Format(_T("%d"), (int)res);
	else strres.Format(_T("%e"), res);
	if (!judge(str1))strres.Format(_T("您的输入不合法"));
	if (!judge(str2))strres.Format(_T("您的输入不合法"));
	UpdateData(FALSE);
}
void CCalculatorDlg::OnBnClickedMul()
{
	// TODO: 在此添加控件通知处理程序代码
	UpdateData();
	num1 = _tstof(str1);
	num2 = _tstof(str2);
	res = num1 * num2;
	if (res == (int)res)strres.Format(_T("%d"), (int)res);
	else strres.Format(_T("%e"), res);
	if (!judge(str1))strres.Format(_T("您的输入不合法"));
	if (!judge(str2))strres.Format(_T("您的输入不合法"));
	UpdateData(FALSE);
}
void CCalculatorDlg::OnBnClickedDiv()
{
	// TODO: 在此添加控件通知处理程序代码
	UpdateData();
	num1 = _tstof(str1);
	num2 = _tstof(str2);
	res = num1 / num2;
	if (res == (int)res)strres.Format(_T("%d"), (int)res);
	else strres.Format(_T("%e"), res);
	if (!judge(str1))strres.Format(_T("您的输入不合法"));
	if (!judge(str2))strres.Format(_T("您的输入不合法"));
	if (num2 == 0)strres.Format(_T("除数不能为0"));
	UpdateData(FALSE);
}



void CCalculatorDlg::OnEnChangeNum1()
{
	// TODO:  如果该控件是 RICHEDIT 控件，它将不
	// 发送此通知，除非重写 CDialogEx::OnInitDialog()
	// 函数并调用 CRichEditCtrl().SetEventMask()，
	// 同时将 ENM_CHANGE 标志“或”运算到掩码中。

	// TODO:  在此添加控件通知处理程序代码
	UpdateData();
	if (!judge(str1))strres.Format(_T("您的输入不合法"));
	else strres.Format(_T(""));
	UpdateData(FALSE);
}

void CCalculatorDlg::OnEnChangeNum2()
{
	// TODO:  如果该控件是 RICHEDIT 控件，它将不
	// 发送此通知，除非重写 CDialogEx::OnInitDialog()
	// 函数并调用 CRichEditCtrl().SetEventMask()，
	// 同时将 ENM_CHANGE 标志“或”运算到掩码中。

	// TODO:  在此添加控件通知处理程序代码
	UpdateData();
	if (!judge(str2))strres.Format(_T("您的输入不合法"));
	else strres.Format(_T(""));
	UpdateData(FALSE);
}

bool CCalculatorDlg::judge(CString cstr)
{
	string str;
	str = (LPCSTR)(CStringA)(cstr);
	int len = str.length();
	bool flag = true;
	for (int i = 0; i < len; i++)
	{
		if (!isdigit(str[i]))flag = false;
		if (str[i] == '-'&&i == 0)flag = true;
	}
	if (flag)return true;
	return false;
}

