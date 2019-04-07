# eks_test_fixture example      

[Uses this Terraform Module:](https://github.com/terraform-aws-modules/terraform-aws-eks)     

#### **This very basic template is usefull for the following. It:**

1.  shows how to use the module in a straightforward way as integrated with other terraform community supported modules.
2.  serves as the test infrastructure for CI on the project.
3.  provides a simple way to work with with EKS clusters for testing things like Custom AMI Images.

#### Sample IAM policy for a Role to manage EKS:    
**/TODO: Needs better resource scoping**    
[eks_role.json](https://github.com/gjyoung1974/eks_test_fixture/blob/master/IAM/eks_role.json)    

[Configure .kube/config](https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html)          

```sh
aws eks --region {region} update-kubeconfig --name {cluster_name}
```

####    

2019 Gordon Young gjyoung1974@gmail.com
