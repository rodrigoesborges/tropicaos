---
layout: default
title: Repertório
blocos:

  - nome: "Novas"
    musicas:

      - nome: 'Divino Maravilhoso (C)'
        links:
          'c':  'partituras/divino_maravilhoso/divino_maravilhoso_C.pdf'
          'bb': 'partituras/divino_maravilhoso/divino_maravilhoso_Bb.pdf'
          'eb': 'partituras/divino_maravilhoso/divino_maravilhoso_Eb.pdf'
          'cemF':  'partituras/divino_maravilhoso/divino_maravilhoso_C_clave_F.pdf'
          'ebnotas': 'partituras/divino_maravilhoso/divino_maravilhoso_Eb.pdf'
 

---



<style type="text/css" media="screen">
  td {
    padding: 5px 10px;
  }

  h4 {
    font-size: 1.5em;
    font-weight: bold;
    margin-top:30px;
  }
</style>



## Agenda de ensaios

  [CLIQUE AQUI](/VQF_2018_ensaios.pdf)

## Repertório

  <table>

    {% for bloco in page.blocos  %}

      <tr>
        <td>
          <h4>{{bloco.nome}}</h4>
        </td>

<!--         {% if bloco.musicas  %}
          <td colspan='3'>
            Partituras
          </td>
        {% endif %}
 -->
      </tr>

      {% for musica in bloco.musicas  %}

        <tr>
          <td>
            {{musica.nome}}
          </td>

          {% for link in musica.links %}
            <td>
              <a href="{{ link[1] }}" target="_blank">{{ link[0] }}</a>
            </td>
          {% endfor %}

        </tr>

      {% endfor  %}

      <tr>
        <td>
          &nbsp;
        </td>
      </tr>

    {% endfor  %}


  </table>
