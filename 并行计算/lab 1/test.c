#include<stdio.h>
#include<mpi.h>

int main(int argc, char *argv[]){
        int totalTaskNum, rankID;

        int rt = MPI_Init(&argc, &argv);
        if(rt != MPI_SUCCESS){
                printf("Error starting MPI.\n");
                MPI_Abort(MPI_COMM_WORLD, rt);
        }

        MPI_Comm_size(MPI_COMM_WORLD, &totalTaskNum);
        MPI_Comm_rank(MPI_COMM_WORLD, &rankID);

        printf("Hellow, world! %dth of totalTaskNum = %d\n", rankID, totalTaskNum);

        MPI_Finalize();

        return 0;
}