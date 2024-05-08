### REGRESION LINEAL ###
# Se asume linealidad para hacer regresion lineal
# Probar linealidad con el coeficiente de correlacion
# Si este es cercano a 1 o -1 hay una relacion lineal fuerte


# Coeficiente de Correlacion
cor.test() # Parámetros son dos columnas de parámetros

# Revisar valores extremos si hay

# Funcion para crear una regresion lineal
lm()
# Esta funcion recibe como parametro Y ~ X 
# Donde Y es la variable resultado y X el predictor de la variable
# Se pueden anadir más predcitores con +
# Ej
model <- lm(salaries ~ work_year + salary_in_usd)

# Evaluar la regresion, se puede usar el Residual Standard Error (RSE)
# Can be found with summary or sigma with the model as parameter
summary(model)
sigma(model)

# Otra forma de evaluar el modelo "R squared" (Coeficiente de determinacion)
# Un valor de 1 significa que toda la varianza en los datos
# es explicada por el modelo y este modela bien los datos
# Lo contrario indica un calor de 0
summary(model)$r.squared

# Calculo del MSE para el modelo
model_sum <- summary(model)
mean(model_sum$residuals^2) # MSE


### PREUEBAS DE HIPOTESIS ###
# Para este tipo de prueba se puede usar la funcion test
t.test(x, y=NULL,
       alternative=c("two.sided", "less", "greater"),
       mu=0, paired=FALSE, var.equal=FALSE,
       conf.level=0.95, ...)

# x: vector numérico con los datos.
# alternative: tipo de hipótesis alterna. Los valores disponibles son "two.sided" cuando la hipótesis alterna es  
#≠, "less" para el caso  < y "greater" para el caso >.
# mu: valor de referencia de la prueba.
# conf.level: nivel de confianza para reportar el intervalo de confianza asociado (opcional).
