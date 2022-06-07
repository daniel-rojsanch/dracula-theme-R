## Vamos a crear un tema famoso "Dracula", que es populas en editores de codigo.
## usaremes la paleta de colores: https://github.com/dracula/dracula-theme 


dracol <- c(     "#282a36",  # 1.Background
                 "#f8f8f2",  # 2.Foreground
                 "#6272a4",  # 3.comment
                 "#ff5555",  # 4.red
                 "#f1fa8c",  # 5.yellow
                 "#bd93f9",  # 6.purple
                 "#ff79c6",  # 7.pink
                 "#ffb86c",  # 8.orange
                 "#50fa7b",  # 9.green
                 "#8be9fd"   # 10.cian
                )

dracula <- function() par(bg = dracol[1],
                          fg = dracol[2],
                          col.main = dracol[10],
                          col.axis = dracol[5], 
                          col.lab = dracol[7] , 
                          col.sub = dracol[10],
                          mar = c(5.5,5.5,5,2),
                          family = "sans", 
                          bty = "n",
                          cex.lab = 1.2,
                          cex.main = 1.5,
                          cex.sub = 1.3,
                          pch = 19,
                          lwd = 2,
                          col = dracol[4]
)

size_norm <- function() options(repr.plot.width=7, repr.plot.height=7)


dracula()

plot(iris$Petal.Length, iris$Sepal.Length, col = dracol[4:6][as.integer(iris$Species)], 
    lwd = 6, pch = 19, main = "Scatter",
    xlab = "Largo del Petalo", ylab = "Largo del Sepalo", sub = "Datos de Iris")

legend(5.3,5.5, col = dracol[4:6], legend = unique(iris$Species), pch = 19 , lwd = 1.3, 
       title = "Especie", title.col = "white", text.col = dracol[2], pt.cex = 2)

grid(col = "#f8f8f230" , lty = "solid")

dracula()
boxplot(iris$Petal.Length ~ iris$Species, col = dracol[10], main = "Boxplot", boder = dracol[7])


dracula()

x <- seq(0, 100, by = 25)
y <- rbinom( length(x), 20, 1/2 )

plot(x, y, type = "h", xlim = c(-10, 120), ylim = c(0, 18), main ="Lollipop" )
points(x, y, lwd = 60)
abline(h = c(4, 8, 12), col = "#f8f8f250", lty = "aa")


dracula()
options(repr.plot.width=15, repr.plot.height=8)

x <- seq(as.Date("2020-01-01"), as.Date("2020-06-30"), by = 1 )
n <- length(x)
y <- rbinom(n, 10, 1/2)

plot(x, y,type = "l", main = "Mi grafico 2.0", xlab = "Fecha", lwd = 4, col = dracol[3])
points(x, y, lwd = 5, col = dracol[6])
abline(h = c(1:10), col = "#f8f8f230")


dracula()
size_norm()
barplot(table(y), col = dracol[5], main = "Barplot")



