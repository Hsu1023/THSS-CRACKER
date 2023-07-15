#include <iostream>
#include <time.h>
using namespace std;

// ������������װ��һ��CCalculator��
class CCalculator {
public:
	// N���Ա�����
	static const int N = 512;	// N = 64, 128, 256 or 512

public:
	// ����Ҫ�����ѭ�����㲢��ʱ
	void Calculate() const;
};

// ����Ҫ�����ѭ�����㲢��ʱ
void CCalculator::Calculate() const{
	// ������̬��������
	static int a[N][N][N], b[N][N][N], c[N][N][N];

	// ��ѭ��ǰ��ֱ��õ�ǰʱ�䣬startΪ��ʼʱ�䣬finishΪ����ʱ��
	// ����ѭ����˳��ɱ��ֶ��ı�
	int start = clock();
	for (int i = 0; i < N; i++) {
		for (int j = 0; j < N; j++) {
			for (int k = 0; k < N; k++) {
				a[i][j][k] = b[i][j][k] + c[i][j][k];
			}
		}
	}
	int finish = clock();

	// ��ѯCLOCKS_PER_SECֵΪ1000�����ȡ��finish����ʱ���start��ʼʱ�䵥λ��Ϊ΢��
	// finish - start ���ѭ��������ʱ��
	cout << finish - start << ' ';
}

int main()
{
	// �������󲢵��ù���
	CCalculator t_Calculator;
	t_Calculator.Calculate();

	return 0;
}