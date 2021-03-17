/*
Cristian Fernández Jiménez
Ángel Gómez Ferrer
*/


package GUI;

import java.awt.BasicStroke;
import java.awt.Color;

import javax.swing.JFrame;
import meetnmatch.Controlador;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.plot.XYPlot;
import org.jfree.chart.renderer.xy.XYLineAndShapeRenderer;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;

public class Grafica
{
    
                private JFrame ventana;
                private XYSeries local;
                private XYSeries visitante;
                private XYSeriesCollection dataset;
                private JFreeChart xylineChart;
                private XYPlot plot;
                private XYLineAndShapeRenderer renderer;
                private ChartPanel panel;
                private Integer ticks=0;
                
	public Grafica() {
            

		//Informacion

		local = new XYSeries("Local");
		local.add(0, 0);


		visitante = new XYSeries("Visitante");
		visitante.add(0, 0);



		dataset = new XYSeriesCollection();
		dataset.addSeries(local);
		dataset.addSeries(visitante);

		xylineChart = ChartFactory.createXYLineChart(
				"Grafica XY", 
				"Tiempo", 
				"Putuacion", 
				dataset,
				PlotOrientation.VERTICAL, true, true, false);

		
		plot = xylineChart.getXYPlot();
		
		renderer = new XYLineAndShapeRenderer();
		
		renderer.setSeriesPaint(0, Color.RED);
		renderer.setSeriesPaint(1, Color.GREEN);
		renderer.setSeriesPaint(2, Color.YELLOW);
		renderer.setSeriesStroke(0, new BasicStroke(4.0f));
		renderer.setSeriesStroke(1, new BasicStroke(3.0f));
		renderer.setSeriesStroke(2, new BasicStroke(2.0f));
		plot.setRenderer(renderer);
		
		panel = new ChartPanel(xylineChart);

		// Creamos la ventana
		ventana=new JFrame("Grafica");
		ventana.setVisible(true);
		ventana.setSize(800, 600);
                ventana.setLocation(700,0);
		ventana.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		ventana.add(panel);

	}
        
        void actualizarGrafica(){
                ticks++;
         
		local.add(ticks,Controlador.getInstance().getPuntuacion("GRAFICO", "LOCAL"));


		visitante.add(ticks, Controlador.getInstance().getPuntuacion("GRAFICO", "VISITANTE"));


		dataset.removeAllSeries();
		dataset.addSeries(local);
		dataset.addSeries(visitante);

		xylineChart = ChartFactory.createXYLineChart(
				"Observador Sofisticado", 
				"Tiempo", 
				"Putuacion", 
				dataset,
				PlotOrientation.VERTICAL, true, true, false);

		
		plot = xylineChart.getXYPlot();
		
			
		renderer.setSeriesPaint(0, Color.RED);
		renderer.setSeriesPaint(1, Color.GREEN);
		renderer.setSeriesStroke(0, new BasicStroke(4.0f));
		renderer.setSeriesStroke(1, new BasicStroke(3.0f));
		plot.setRenderer(renderer);
		
		panel = new ChartPanel(xylineChart);
                
		// Creamos la ventana

		ventana.remove(panel);
                ventana.setVisible(true);
		ventana.setSize(800, 600);
                ventana.setLocation(700,0);
		ventana.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

                ventana.add(panel);
        }

}
