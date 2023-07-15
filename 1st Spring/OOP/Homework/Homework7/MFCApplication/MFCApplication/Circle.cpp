#include "pch.h"
#include "Circle.h"
#include <cstdio>

void circle::Set(int xx, int yy, int rr)
{
	x = xx;
	y = yy;
	r = rr;
}
void circle::PrintPosition()
{
	printf("当前圆的圆心为(%d,%d)，半径为%d.\n", x, y, r);
}
void circle::Draw(CDC * pDC)
{
	HGDIOBJ oldobj = pDC->SelectObject(GetStockObject(DC_BRUSH));
	COLORREF oldcol = pDC->SetDCBrushColor(RGB(255, 0, 0));
	pDC->Ellipse(x - r, y - r, x + r, y + r);
	pDC->SetDCBrushColor(oldcol);
	pDC->SelectObject(oldobj);

	
	oldobj = pDC->SelectObject(GetStockObject(DC_PEN));
	oldcol = pDC->SetDCPenColor(RGB(128, 0, 128));
	pDC->MoveTo(x, y);
	pDC->LineTo(x, y - 1.5*r);	
	pDC->MoveTo(x - 0.5*r, y);
	pDC->LineTo(x + 0.5*r, y);
	pDC->SetDCBrushColor(oldcol);
	pDC->SelectObject(oldobj);
}