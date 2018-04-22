#include<stdio.h>
#include<conio.h>
#include<math.h>
void main()
{
int pop=1,j,wt[100],cost[100],copy[100],chro_cpy[100],n,cap,i,com,chro[100][10],up_chro[100][10],up_wt[100],up_cost[100],up_cop[100],s_cost[100];
clrscr();
printf("Enter the number of  Itmes: ");
scanf("%d",&n);
for(i=0;i<n ;i++)
{
printf("Enter the weight ,cost and copies for item %d: ",i+1);
scanf("%d",&wt[i]);
scanf("%d",&cost[i]);
scanf("%d",&copy[i]);
}
printf("Enter the capacity of Knap Sack:");
scanf("%d",&cap);
printf("  Items\tWeight\tCost\tCopies");
for(i=0;i<n;i++)
{
printf("\n");
printf("    %d\t%d\t%d\t%d",i+1,wt[i],cost[i],copy[i]);
}
//******************* MAKING CHROMOSOMES ********************
com=pow(2,n);
printf("\nTotal number of Chromosomes are: %d",com);
int q,p;
for(i=0;i<com;i++)

  {
    q=i,p=n-1;
   while(q!=0)
   {
    chro[i][p]=q%2;
    q=q/2;
    p--;
   }
   while(p>=0)
   {
    chro[i][p]=0;
    p--;
   }
  }
  printf("\n");
  printf("****************** ALL POSSIBLE CHROMOSOMES ******************");
  printf("\n");
  printf("  Chromosomes\tWeight\tCost\tTotal Copy");
  int wt1,cos,cop,l=0;
for(i=0;i<com;i++)
{printf("\n");
 printf("%d  ",i+1);
   wt1=0;cos=0;cop=0;
   for(j=0;j<n;j++)
   printf("%d ",chro[i][j]);

  for(j=0;j<n;j++)
    {
    if(chro[i][j]==1)
    {
     wt1=wt1+(wt[j]*copy[j]);
     cos=cos+(cost[j]*copy[j]);
     cop=cop+copy[j];

     }


    }

    printf("\t  %d\t  %d\t  %d",wt1,cos,cop);
    if(wt1>cap)
    {
    chro_cpy[l]=i;
    printf("\t  NOT FEASIBILE");
    l++;
    }
    else
    {
    printf("\t  FEASIBILE");


    }
    }

//************************** GREEDY TRANSFORM ******************************
if(l!=0)
{
printf("\n");
printf("******* GREEDY TRANSFORM (Converting Infeasible Chromosome to feasible) ********");
printf("\n");
int k2,k3,k1,ct,key,k,co,temp,value;
for(i=0;i<l;i++)
for(j=0;j<n;j++)
up_chro[i][j]=0;


for(i=0;i<l;i++)
{

 ct=0,co=0;

 for(k1=0;k1<n;k1++)
 {
 if(chro[chro_cpy[i]][k1]==1)
 { s_cost[co]=k1;
 co++;
 }
 }

 for(k2=0;k2<co-1;k2++)
  for(k3=k2+1;k3<co;k3++)
    if(cost[s_cost[k2]]==cost[s_cost[k3]])
    { if(wt[s_cost[k2]]>wt[s_cost[k3]])
	{ temp=s_cost[k2];
	 s_cost[k2]=s_cost[k3];
	 s_cost[k3]=temp;
	}
    }
    else if(cost[s_cost[k2]]<cost[s_cost[k3]])
	 {
	   temp=s_cost[k2];
	   s_cost[k2]=s_cost[k3];
	   s_cost[k3]=temp;
	 }


 for(j=0;j<co;j++)
 {
 value=s_cost[j];
  key=0;

   if(ct<cap)
   {
    for(k=0;k<copy[value];k++)
    {
     if(ct+wt[value]<=cap)
     {
      ct=ct+wt[value];
      key++;
     }
    }

   }

  up_chro[i][value]=key;

 }


}
printf("  Chromosomes\tNew Copies\tWeight\tCost\tTotal Copies");
for(i=0;i<l;i++)
{
 printf("\n");
 printf("%d  ",chro_cpy[i]+1);
 for(j=0;j<n;j++)
 {
  printf("%d ",chro[chro_cpy[i]][j]);

 }  printf("\t");
	wt1=0;cos=0;cop=0;
 for(j=0;j<n;j++)
{ if(chro[chro_cpy[i]][j]==1)
    {   wt1=wt1+(wt[j]*up_chro[i][j]);
       cos=cos+(cost[j]*up_chro[i][j]);
       cop=cop+up_chro[i][j];

     }
 printf("%d ",up_chro[i][j]);
 }     up_wt[i]=wt1;
 up_cost[i]=cos;
 up_cop[i]=cop;
 printf("\t");
 printf("\t  %d\t  %d\t  %d",wt1,cos,cop);
}
}
 int f,k;
printf("\n..........INITIAL POPULATION-0..........\n");

printf("  Chromosomes\tWeight\tCost\tTotal Copies");
int col;
for(i=0;i<com;i++)
{       col=n;
printf("\n");

printf("%d  ",i+1);

for(j=0;j<n;j++)
printf("%d ",chro[i][j]);

    wt1=0;cos=0;cop=0;
    f=0;
for(j=0;j<l;j++)
if(chro_cpy[j]==i)
{      f=1;break;          }
if(f==1){ chro[i][col]=up_wt[j];
col++;chro[i][col]=up_cost[j];
col++;chro[i][col]=up_cop[j];
printf("\t  %d\t  %d\t  %d",up_wt[j],up_cost[j],up_cop[j]);
}
else
{
 for(k=0;k<n;k++){
 if(chro[i][k]==1)
{        wt1=wt1+(wt[k]*copy[k]);
     cos=cos+(cost[k]*copy[k]);
     cop=cop+copy[k];
}                  }
chro[i][col]=wt1; col++;
chro[i][col]=cos; col++;
chro[i][col]=cop;
printf("\t  %d\t  %d\t  %d",wt1,cos,cop);
}
 }

// int ch;
 //printf("\nChoose one of the following operation: \n");
 printf("\n1.Cross Over\n");
 printf("\n2.Mutation\n");
 //printf("Enter your choice: ");
 //scanf("%d",&ch);
 int best[100],ind,rem,head=0,bst=0,dec=0,dec1=0,po,size,point,pass,child,child1[10],child2[10];
 //switch(ch)
 //{
 //case 1:
 size=n; child=1,rem=com,ind=0;
 printf("\nEnter the cross over point in the range of 1-%d: ",n);
 scanf("%d",&point);
 while(rem>0)
 {  pass=1;
 printf("*************** POPULATION %d ***************",pop);
 pop++;
 for(i=ind;i<size+ind;i++)
 {printf("\nChromosome-%d\t",i+1);
 for(j=0;j<n;j++)
 {
   printf("%d ",chro[i][j]);
 }

 }



 for(i=ind;i<size+ind-1;i++)
 {


 for(j=i+1;j<size+ind;j++)
 { printf("\nCross over operation after pass-%d\n",pass);pass++;
   printf("Parent-%d  ",i+1);
  for(k=0;k<n;k++)
   printf("%d ",chro[i][k]);
   printf("\t\t");
   printf("Parent-%d  ",j+1);
   for(k=0;k<n;k++)
   printf("%d ",chro[j][k]);
    printf("\n");

   for(k=0;k<n;k++)
   {
   if(k<point){
   child1[k]=chro[i][k];
   child2[k]=chro[j][k];
	 }
   else
   {   child1[k]=chro[j][k];
       child2[k]=chro[i][k];
   }
   }
  printf("Child-%d   ",child);
  child++;
  for(k=0;k<n;k++)
   printf("%d ",child1[k]);
   printf("\t\t");
   printf("Child-%d   ",child);
   child++;
   for(k=0;k<n;k++)
   printf("%d ",child2[k]);
    printf("\n");
       po=n-1;  dec=0;dec1=0;
    for(k=0;k<n;k++)
    {
    dec=dec+(child1[k]*pow(2,po));
    po--;
    }
     po=n-1;
    best[bst]=dec;bst++;
    for(k=0;k<n;k++)
    {
    dec1=dec1+(child2[k]*pow(2,po));
    po--;
    }    best[bst]=dec1;    head=bst;
    for(k=0;k<head;k++)
    if(best[0]!=best[k+1])
    if(chro[best[0]][n]==chro[best[k+1]][n])
    {
       if(chro[best[0]][n+1]==chro[best[k+1]][n+1])
       {
	 if(chro[best[0]][n+2]==chro[best[k+1]][n+2])
	 { best[bst]=best[k+1] ;
	 }
	 else if(chro[best[0]][n+2]<chro[best[k+1]][n+2])
	 {        bst--;
	 }
	 else
	 {              best[0]=best[k+1];bst--;
	 }
       }
       else if(chro[best[0]][n+1]<chro[best[k+1]][n+1])
       {        bst--;
       }
       else
       {      best[0]=best[k+1]; bst--;
       }
    }
    else if(chro[best[0]][n]>chro[best[k+1]][n])
    {         bst--;
    }
    else
    {         best[0]=best[k+1];bst--;
    }


 }bst++;
 }
     rem=rem-n;
     if(n<=rem)
     size=n;
     else
     size=rem;
     ind=ind+n;

 }

printf("Chromosome with optimal solution: \n");
 printf("  Chromosomes\tWeight\tCost\tTotal Copy");
 for(i=0;i<bst;i++)
 {if(best[i]!=best[i+1]){
  printf("\n");

  printf("   ");
 for(j=0;j<n;j++)
 {
 printf("%d ",chro[best[i]][j]);
  }
	 printf("\t\t  %d\t\t  %d\t\t  %d",chro[best[i]][n],chro[best[i]][n+1],chro[best[i]][n+2]);
  }  }
 //break;
 //case 2:
 //size=n; child=1,rem=com,ind=0;
 printf("\nEnter the Parity bit for Mutation in the range of 1-%d: ",n);
 scanf("%d",&point);
 while(rem>0)
 {  pass=1;
 printf("*************** POPULATION %d ***************",pop);
 pop++;
 for(i=ind;i<size+ind;i++)
 {printf("\nChromosome-%d\t",i+1);
 for(j=0;j<n;j++)
 {
   printf("%d ",chro[i][j]);
 }

 }



 for(i=ind;i<size+ind-1;i++)
 {


 for(j=i+1;j<size+ind;j++)
 { printf("\nMutation operation after pass-%d\n",pass);pass++;
   printf("Parent-%d  ",i+1);
  for(k=0;k<n;k++)
   printf("%d ",chro[i][k]);
   printf("\t\t");
   printf("Parent-%d  ",j+1);
   for(k=0;k<n;k++)
   printf("%d ",chro[j][k]);
    printf("\n");

   for(k=0;k<n;k++)
   {
   if(k==point-1){
   if(chro[i][k]==0)
   child1[k]=1;
   else
   child1[k]=0;
   child1[k]=chro[i][k];
   child2[k]=chro[j][k];
	 }
   else
   {   child1[k]=chro[i][k];
      child2[k]=chro[i][k];
   }
   }
  printf("Child-%d   ",child);
  child++;
  for(k=0;k<n;k++)
   printf("%d ",child1[k]);
   printf("\t\t");
   printf("Child-%d   ",child);
   child++;
   for(k=0;k<n;k++)
   printf("%d ",child2[k]);
    printf("\n");
       po=n-1;  dec=0;dec1=0;
    for(k=0;k<n;k++)
    {
    dec=dec+(child1[k]*pow(2,po));
    po--;
    }
     po=n-1;
    best[bst]=dec;bst++;
    for(k=0;k<n;k++)
    {
    dec1=dec1+(child2[k]*pow(2,po));
    po--;
    }    best[bst]=dec1;
   head=bst;


    for(k=0;k<head;k++)
    if(bst != 0)
    if(best[0]!=best[k+1])
    if(chro[best[0]][n]==chro[best[k+1]][n])
    {
       if(chro[best[0]][n+1]==chro[best[k+1]][n+1])
       {
	 if(chro[best[0]][n+2]==chro[best[k+1]][n+2])
	 { best[bst]=best[k+1] ;
	 }
	 else if(chro[best[0]][n+2]<chro[best[k+1]][n+2])
	 {        bst--;
	 }
	 else
	 {              best[0]=best[k+1];bst--;
	 }
       }
       else if(chro[best[0]][n+1]<chro[best[k+1]][n+1])
       {        bst--;
       }
       else
       {      best[0]=best[k+1]; bst--;
       }
    }
    else if(chro[best[0]][n]>chro[best[k+1]][n])
    {         bst--;
    }
    else
    {         best[0]=best[k+1];bst--;
    }


 }bst++;
 }
     rem=rem-n;
     if(n<=rem)
     size=n;
     else
     size=rem;
     ind=ind+n;

 }

printf("Chromosome with optimal solution: \n");
 printf("  Chromosomes\tWeight\tCost\tTotal Copy");
 for(i=0;i<bst;i++)
 {if(best[i]!=best[i+1]){
  printf("\n");

  printf("   ");
 for(j=0;j<n;j++)
 {
 printf("%d ",chro[best[i]][j]);
  }
	 printf("\t  %d\t  %d\t  %d",chro[best[i]][n],chro[best[i]][n+1],chro[best[i]][n+2]);
  }  }
 //break;

 //default: printf("\nWrong Choice");


 //}




getch();
}