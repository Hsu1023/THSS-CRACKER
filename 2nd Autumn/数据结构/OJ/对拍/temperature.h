#ifndef _TEMPERATURE_H_

#ifdef __cplusplus
extern "C"
{
#endif

    int GetNumOfStation(void);
    
    void GetStationInfo(int no, int *x, int *y, int *temp);

    int GetQuery(int *x1, int *y1, int *x2, int *y2);

    void Response(int temp);

#ifdef __cplusplus
}
#endif

#endif //_TEMPERATURE_H_
