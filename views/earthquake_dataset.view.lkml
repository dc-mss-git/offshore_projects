view: earthquake_dataset {
  sql_table_name: `decisive-triode-363515.offshore.Earthquake_dataset`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: depth {
    type: number
    sql: ${TABLE}.depth ;;
  }

  dimension: depth_error {
    type: number
    sql: ${TABLE}.depthError ;;
  }

  dimension: dmin {
    type: number
    sql: ${TABLE}.dmin ;;
  }

  dimension: gap {
    type: number
    sql: ${TABLE}.gap ;;
  }

  dimension: horizontal_error {
    type: number
    sql: ${TABLE}.horizontalError ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: mag {
    type: number
    sql: ${TABLE}.mag ;;
  }

  dimension: mag_error {
    type: number
    sql: ${TABLE}.magError ;;
  }

  dimension: mag_nst {
    type: number
    sql: ${TABLE}.magNst ;;
  }

  dimension: mag_type {
    type: string
    sql: ${TABLE}.magType ;;
  }

  dimension: place {
    type: string
    sql: ${TABLE}.place ;;
  }

  dimension: rms {
    type: number
    sql: ${TABLE}.rms ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: time {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.time ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }


  dimension: swapna {
    sql: ${id} ;;
    html: <img src="https://img.jagranjosh.com/imported/images/E/GK/Earthquake.png"  height="300" width="400">  ;;

  }


  dimension: state_flag_image {
    type: string
    sql: ${place} ;;
    html:
              {% if place._value == "45 km S of Levuka, Fiji" %}
              <img src="https://cdn.britannica.com/86/3286-004-ADA8C1B4/Flag-Fiji.jpg" height="170" width="255">
              {% elsif place._value == "Bonin Islands, Japan region" %}
              <img src="https://d20aeo683mqd6t.cloudfront.net/articles/title_images/000/040/775/original/japanese-flag_b.png?2022&d=750x400" height="170" width="255">
              {% elsif place._value == "Fiji region" %}
              <img src="https://cdn.britannica.com/86/3286-004-ADA8C1B4/Flag-Fiji.jpg" height="170" width="255">
              {% elsif place._value == "72 km S of Panubigan, Philippines"%}
              <img src="https://www.shutterstock.com/image-photo/large-philippines-flag-waving-wind-260nw-1916786600.jpg" height="170" width="255">
              {% elsif place._value == "141 km E of Levuka, Fiji"%}
              <img src="https://cdn.britannica.com/86/3286-004-ADA8C1B4/Flag-Fiji.jpg" height="170" width="255">
              {% elsif place._value == "262 km ESE of Sola, Vanuatu"%}
              <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnsb6zY5Q-jEVODI0TJtJydGtjSxxnxlQhsw&usqp=CAU" height="170" width="255">
              {% elsif place._value == "south of the Fiji Islands"%}
              <img src="https://cdn.britannica.com/17/3017-050-CD9032F3/Flag-New-Zealand.jpg" height="170" width="255">
              {% elsif place._value == "136 km W of Iñapari, Peru"%}
              <img src="https://st2.depositphotos.com/1424188/5791/i/950/depositphotos_57915367-stock-photo-peruvian-flag.jpg" height="170" width="255">
              {% elsif place._value == "245 km E of Levuka, Fiji"%}
              <img src="https://cdn.britannica.com/86/3286-004-ADA8C1B4/Flag-Fiji.jpg" height="170" width="255">
              {% elsif place._value == "189 km SSE of Tabiauan, Philippines"%}
              <img src="https://www.shutterstock.com/image-photo/large-philippines-flag-waving-wind-260nw-1916786600.jpg" height="170" width="255">
              {% else %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png" height="170" width="170">
{% endif %} ;;
  }


  dimension: earth {
    sql: ${id} ;;
    html: <img src="https://www.amnh.org/var/ezflow_site/storage/images/media/amnh/images/explore/ology-images/features-listing-images/olg_tv_earthquake-hero/3877306-2-eng-US/olg_tv_earthquake-hero_facebookshare_1200.jpg"  height="300" width="400">  ;;

  }

}
