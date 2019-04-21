import Cocoa

//选择排序
func selectionSort(_ nums:inout [Int]) -> [Int] {
    if nums.count == 0 {
        return nums
    }
    
    for i in 0 ..< nums.count - 1 {
        var min = i
        for j in i + 1 ..< nums.count {
            if nums[j] < nums[min] {
                min = j
            }
        }
        //交换数组的两个数
        nums.swapAt(i, min)
    }
    return nums
}

var a = [4,3,2,31,7,8,2,3,1,0,98,23]
var b = [Int]()
let s = selectionSort(&a)
let s2 = selectionSort(&b)

//冒泡排序
func bubnleSort(_ nums:inout [Int]) -> [Int] {
    if nums.count == 0 {
        return nums
    }
    
    for i in 0 ..< nums.count - 1 {
        for j in i + 1 ..< nums.count  {
            if nums[j] < nums[i] {
                nums.swapAt(i, j)
            }
        }
    }
    return nums
}

//冒泡排序优化
//如果某一轮中没有交换，那么说明数组已经有序了
func bubnleSort_optimize(_ nums :inout [Int]) -> [Int] {
    if nums.count == 0 {
        return nums
    }
    var isSorted = false
    for i in 0 ..< nums.count - 1 {
        if isSorted {
            return nums
        }
        isSorted = true
        for j in i + 1 ..< nums.count  {
            if nums[j] < nums[i] {
                isSorted = false
                nums.swapAt(i, j)
            }
        }
    }
    return nums
}

let b_r = bubnleSort(&a)
let b_r_o = bubnleSort_optimize(&a)

//插入排序
func insertSort(_ nums:inout [Int]) -> [Int] {
    if nums.count == 0 {
        return nums
    }
    for i in 1 ..< nums.count {
        for f_j in 0 ... i - 1 {
            //因为swift不能倒序遍历，所以就使用i-f_j 来表示从数组最后一个数开始遍历
            let j = i - f_j;
            if nums[j] < nums[j - 1] {
                nums.swapAt(j, j - 1)
            }
        }
    }
    return nums
}

let i_r = insertSort(&a)





