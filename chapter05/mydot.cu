#include "../common/book.h"

#define imin(a, b) (a<b?a:b)

const int N = 33 * 1024;
const int threadPerBlock = 256;
const int blocksPerGrid = imin(32, (N+threadsPerBlock-1)/threadsPerBlock);

int main(void)
{
	float *a, *b, c, *partial_c;
	float *dev_a, *dev_b, *dev_partial_c;


	a = (float*)malloc(N*sizeof(float));
	b = (float*)malloc(N*sizeof(float));
	partial_c = (float*)malloc(blocksPerGrid * sizeof(float));

	HANDLE_ERROR(cudaMalloc((void**)&dev_a, N*sizeof(float)));
	HANDLE_ERROR(cudaMalloc((void**)&dev_b, N*sizeof(flaot)));
	HANDLE_ERROR(cudaMalloc((void**)&partial_c, blocksPerGrid*sizeof(float)));

	


}
