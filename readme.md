# Meta-pdf

Small script to get pdf metadata

## Dependencies

It uses two command-line utils:
* Poppler for pdfinfo
* Csvkit for csvlook

```bash
pacman -S poppler
apt-get install poppler
pip install csvkit
```

## Usage and results

sh meta-pdf.sh <folder> <csv>

```bash
➜  sh meta-pdf.sh pdfs/ info.csv
| Filename                                                                 | Author         | Producer                          |    ModDate | Pages | Format                   |
| ------------------------------------------------------------------------ | -------------- | --------------------------------- | ---------- | ----- | ------------------------ |
| 392ConvocatoriaAsigTFGEI2cset2016.pdf                                    |                | Canon iR C2380                    | 0001-10-10 |     3 | 594.36 x 840.6 pts       |
| CalendarioTFG_GREI_201617.pdf                                            |                | Canon iR C2380                    | 0001-07-13 |     1 | 594.36 x 840.6 pts       |
| 53DefensaTFG EIfeb2016.pdf                                               |                | Canon iR C2380                    | 0001-02-14 |     2 | 840.6 x 594.36 pts       |
| 434AsignaciondefinitivaTFG_17112016.pdf                                  |                | Canon iR C2380                    | 0001-12-09 |     3 | 594.36 x 840.6 pts       |
| GEITFGInformeTitor_vf.pdf                                                | Pet            | OpenOffice.org 2.0                | 0001-10-14 |     1 | 595 x 842 pts (A4)       |
| 867AsignacionprovisionalTFG_EIConvocatoriaAsigTFGEI_2cout_2017.pdf       |                | Canon iR C2380                    | 0001-11-13 |     3 | 594.36 x 840.6 pts       |
| GEITFGInformeTitor_vf(1).pdf                                             | Pet            | OpenOffice.org 2.0                | 0001-10-14 |     1 | 595 x 842 pts (A4)       |
| 301DefensaTFGEIxullo2016.pdf                                             |                | Canon iR C2380                    | 0001-07-10 |     4 | 840.6 x 594.36 pts       |
| Pto_15.-_Regulamento_de_matrxculax_elaboracixn_e_defensa_TFG_e_TFMok.pdf |                | Xerox WorkCentre 7845             | 0001-04-14 |    11 | 596.04 x 842.04 pts (A4) |
| GEITFGInformeTribunal_vf.pdf                                             | Pet            | OpenOffice.org 2.0                | 0001-10-14 |     1 | 595 x 842 pts (A4)       |
| 99AprobdefanteproxectosTFGEI25xan.pdf                                    |                | Canon iR C2380                    | 0001-04-12 |     1 | 840.6 x 594.36 pts       |
| 592convocatoriaasignacinprazaTelevesabril.pdf                            |                | Canon iR C2380                    | 0001-04-13 |     3 | 840.6 x 594.36 pts       |
| PresentacionProfesoradoPropostasTraballos.pdf                            | MROSARIO.NORES | Acrobat Distiller 8.1.0 (Windows) | 0001-10-11 |     1 | 595 x 842 pts (A4)       |
| 831ConvocatoriaAsignacionTFGEI_vf.pdf                                    |                | Canon iR C2380                    | 0001-11-11 |     2 | 594.36 x 840.6 pts       |
| RegulamentoTFG_GrEI_CG_30xan2014.pdf                                     | jrr.viqueira   | Acrobat Distiller 8.1.0 (Windows) | 0001-05-16 |     9 | 595 x 842 pts (A4)       |
| 348DefensaTFGEIset2016.pdf                                               |                | Canon iR C2380                    | 0001-09-15 |     5 | 840.6 x 594.36 pts       |
```
## References
[https://gist.github.com/Nani-o/cef3293c1cb34312609b651d2ed81be9](https://gist.github.com/Nani-o/cef3293c1cb34312609b651d2ed81be9)
