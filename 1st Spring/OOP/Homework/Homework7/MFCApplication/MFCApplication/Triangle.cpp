#include "pch.h"
#include "Triangle.h"

void triangle::Set(int xx, int yy, int ll, int hh)
{
	x = xx; y = yy; l = ll; h = hh;
}
void triangle::Draw(CDC *pDC)
{
	HGDIOBJ oldobj = pDC->SelectObject(GetStockObject(DC_PEN));
	COLORREF oldcol = pDC->SetDCPenColor(RGB(0, 255, 0));
	double x1 = 1.0 *x, y1 = 1.0*y;
	double x2 = 1.0*x - 1.0*l / 2, y2 = 1.0*y + h;
	double x3 = 1.0*x + 1.0*l / 2, y3 = 1.0*y + h;
	for (int i = y; i <= y + h; i++)
	{
		int l = (int)((1.0*i - y1)*(x1 - x2) / (y1 - y2) + x1);
		int r = (int)((1.0*i - y1)*(x1 - x3) / (y1 - y3) + x1);
		pDC->MoveTo(l, i);
		pDC->LineTo(r, i);
	}
	pDC->SetDCPenColor(oldcol);
	pDC->SelectObject(oldobj);
}
