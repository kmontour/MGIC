//
//  DashboardViewController.swift
//  Pickers
//
//  Created by Kaitlyn Barbara Montour on 3/23/16.
//  Copyright (c) 2016 Kaitlyn Barbara Montour. All rights reserved.
// test from different computer
//

import UIKit
import Charts

class DashboardViewController: UIViewController {
    
    
    var days: [String]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        days = ["Mon", "Tues", "Wed", "Thurs", "Fri", "Sat","Sun", "Total"]
        let points = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 5.0, 66.0]
        
        setChart(days, values: points)
        setChart2(days, values: points)

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var barChartView: BarChartView!
    
    
    @IBOutlet weak var pieChartView: PieChartView!
    
    
    
    func setChart(dataPoints: [String], values: [Double]) {
        barChartView.noDataText = "You need to provide data for the chart."
        
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(yVals: dataEntries, label: "Points")
        let chartData = BarChartData(xVals: days, dataSet: chartDataSet)
        barChartView.data = chartData
        
        
        barChartView.descriptionText = ""
        
        
        chartDataSet.colors = [UIColor(red: 77/255, green: 176/255, blue: 175/255, alpha: 1)]
        
        barChartView.xAxis.labelPosition = .Bottom
        
        1
        barChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
        
        let ll = ChartLimitLine(limit: 10.0, label: "Weekly Goal")
        barChartView.rightAxis.addLimitLine(ll)
        
    }
    
    
    
    
    func setChart2(dataPoints: [String], values: [Double]) {
        
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let pieChartDataSet = PieChartDataSet(yVals: dataEntries, label: "Points")
        let pieChartData = PieChartData(xVals: dataPoints, dataSet: pieChartDataSet)
        pieChartView.data = pieChartData
        
     /*   var colors: [UIColor] = []
        
        for i in 0..<dataPoints.count {
            let red = Double(arc4random_uniform(256))
            let green = Double(arc4random_uniform(256))
            let blue = Double(arc4random_uniform(256))
            
            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
            colors.append(color)
        } */
        
        pieChartDataSet.colors = [UIColor(red: 77/255, green: 176/255, blue: 175/255, alpha: 1), UIColor(red: 255/255, green: 176/255, blue: 175/255, alpha: 1)]
        
    
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
