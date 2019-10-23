## El juego de la vida de Conway 🦠

El juego de la vida de Conway es un autómata celular que fue ideado en la década de 1970 por un matemático británico llamado John Conway.

Dada una grilla de celdas bidimensional, con algunos "on" o "alive" y otros "off" o "dead", y un conjunto de reglas que rigen cómo cobran vida o mueren, podemos tener una "forma de vida" interesante "desplegarse justo en frente de nosotros. Entonces, simplemente dibujando algunos patrones en nuestra matriz, y luego comenzando la simulación, podemos ver las formas de vida básicas evolucionar, extenderse, extinguirse y eventualmente estabilizarse.

**Los que conozcan de lenguajes formales y autómatas: Es un TURING COMPLETO**

Para su realización en Swift podemos contemplar un ciclo que sea capaz de encargarse en cada repasada evaluar el estado de las células vecinas para poder decidir si una célula vive o muere.

