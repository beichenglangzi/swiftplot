import LinePlot
import Util
import Renderers

var filePath = "examples/Reference/"
let fileName = "_01_single_series_line_chart"

let x:[Float] = [0,100,263,489]
let y:[Float] = [0,320,310,170]

var agg_renderer: Renderer = AGGRenderer()
var svg_renderer: Renderer = SVGRenderer()

var plotTitle: PlotTitle = PlotTitle()

var lineGraph: LineGraph = LineGraph()
lineGraph.addSeries(x, y, label: "Plot 1", color: Color.lightBlue)
plotTitle.title = "PLOT 1"
lineGraph.plotTitle = plotTitle

lineGraph.drawGraphAndOutput(fileName: filePath+"agg/"+fileName, renderer: agg_renderer)
lineGraph.drawGraphAndOutput(fileName: filePath+"svg/"+fileName, renderer: svg_renderer)