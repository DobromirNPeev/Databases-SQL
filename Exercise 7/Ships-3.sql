﻿/*12. Променете данните в релацията Classes така, че калибърът (bore) да се измерва в сантиметри (в
момента е в инчове, 1 инч ~ 2.5 см) и водоизместимостта да се измерва в метрични тонове (1 м.т.
= 1.1 т.)*/

UPDATE CLASSES
SET BORE=BORE*2.5,DISPLACEMENT=DISPLACEMENT*1.1