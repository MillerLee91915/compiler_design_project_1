#include <stdio.h>
/*  probID: W5-2-BinarySearch  */

int BinarySearch(int A[],int n,int k)
{


    int left=-1, right=n;

    if(k<A[0])
    {
        return 0;
    }
    else if(k>A[n-1])
    {
        return n;
    }
    else 
    {

      int mid;
      while(right-left>1)
      {
        //printf("%d %d %d\n", left, mid ,right);
        mid=(right+left)/2;
        int current=A[mid];
        if(current>=k)
        {
            right=mid;
        }
        else if(current<k)
        {
            left=mid;;
        }
        
      }
      return right;
    } 
}