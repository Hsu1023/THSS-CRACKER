#include "pch.h"
#include "Rectangle.h"

void rectangle::Set(int xx1, int yy1, int xx2, int yy2)
{
	x1 = xx1; x2 = xx2; y1 = yy1; y2 = yy2;
}
void rectangle::Draw(CDC *pCD)
{
	HGDIOBJ oldobj = pCD->SelectObject(GetStockObject(DC_BRUSH));
	COLORREF oldcol = pCD->SetDCBrushColor(RGB(128, 128, 0));
	pCD->Rectangle(x1, y1, x2, y2);
	pCD->SetDCBrushColor(oldcol);
	pCD->SelectObject(oldobj);
}