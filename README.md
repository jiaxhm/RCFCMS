# Fuzzy C-Means Clustering with Region Constraints for Superpixel Generation

Abstract—Superpixels are becoming increasingly essential in computer vision applications, as they significantly reduce the number of computational primitives required for subsequent tasks. However, most existing superpixel algorithms primarily focus on color intensity and position coordinates, often ignoring local neighborhood factors and region constraints. This oversight reduces their effectiveness in noisy and cluttered environments. To address this issue, we propose a seminal and novel Fuzzy C-Means clustering with Region Constraints for Superpixel generation (RCFCMS). First, RCFCMS employs watershed transform to establish region constraints, effectively preventing boundary crossings. Second, relative position relationship is utilized to initialize superpixel centers within each region, offering an adaptive grid layout. Third, RCFCMS adopts spatial information to perceive local similarity, significantly mitigating noise interference. Finally, connected components are applied to eliminate isolated pixels, further optimizing pixel assignment. The experimental results on multiple benchmark datasets demonstrate that the proposed RCFCMS achieves superior performance compared to existing state-of-the-art superpixel algorithms.

<img width="5954" height="1958" alt="Fig6" src="https://github.com/user-attachments/assets/037891f2-eee9-4e2d-a89e-c1fd6e97c499" />





Fig. 1 The framework of the proposed RCFCMS. (a) Input image. (b) Region constraints from AMR-WT. (c) Initialize centers. (d) The highest membership heatmap. (e) The superpixel result.

We utilize the AMR-WT to provide adaptive region constraints, effectively preventing forced cross-boundary segmentation, as depicted in Fig. 1(b). In each subregion, superpixel centers are initialized to maximize the distance from both the boundaries and other superpixel centers, resulting in a more uniform distribution of initialized centers, as shown in Fig. 1(c). Following this, FCM incorporating local information is employed to assign pixels within each subregion. Fig. 1(d) illustrates the heatmap of the highest membership values obtained from the FCM. Based on the membership intensities, the final superpixels are generated, as demonstrated in Fig. 1(d). It can be observed that RCFCMS inherits the prior contours from AMR-WT and exploits the fuzzy properties of FCM. Similar to SLIC, the region constraints enhance the execution efficiency of RCFCMS, while, like FLICM, the local information improves the noise immunity of RCFCMS.

# 📚 Cite Us

✨ Please cite us if this work is helpful to you 

```bibtex
@ARTICLE{
  author={Xiaohong Jia, Yao Zhao, Bin Zhang, Xuejun Zhang, and Guanghui Yan.},
  journal={International Journal of Fuzzy Systems}, 
  title={Fuzzy C-Means Clustering with Region Constraints for Superpixel Generation}, 
  keywords={Fuzzy C-means clustering; Superpixel generation; Region constraints; Noise interference},
  doi={10.1007/s40815-025-02017-w}}
