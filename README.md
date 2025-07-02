# Fuzzy C-Means Clustering with Region Constraints for Superpixel Generation

Abstract—Superpixels are becoming increasingly essential in computer vision applications, as they significantly reduce the number of computational primitives required for subsequent tasks. However, most existing superpixel algorithms primarily focus on color intensity and position coordinates, often ignoring local neighborhood factors and region constraints. This oversight reduces their effectiveness in noisy and cluttered environments. To address this issue, we propose a seminal and novel Fuzzy C-Means clustering with Region Constraints for Superpixel generation (RCFCMS). First, RCFCMS employs watershed transform to establish region constraints, effectively preventing boundary crossings. Second, relative position relationship is utilized to initialize superpixel centers within each region, offering an adaptive grid layout. Third, RCFCMS adopts spatial information to perceive local similarity, significantly mitigating noise interference. Finally, connected components are applied to eliminate isolated pixels, further optimizing pixel assignment. The experimental results on multiple benchmark datasets demonstrate that the proposed RCFCMS achieves superior performance compared to existing state-of-the-art superpixel algorithms.

![Uploading image.png…]()


# ✨ Getting Start



# Cite Us 📚 

Please cite us if this work is helpful to you ✨

```bibtex
@ARTICLE{10960337,
  author={Xiaohong Jia, Yonghui Li, Jianjun Jiao, Yao Zhao, and Zhiwei Xia.},
  journal={IEEE Signal Processing Letters}, 
  title={SSMamba: Superpixel Segmentation With Mamba}, 
  year={2025},
  volume={32},
  pages={1715-1719},
  keywords={Convolutional neural network; Mamba; superpixel segmentation},
  doi={10.1109/LSP.2025.3559425}}
