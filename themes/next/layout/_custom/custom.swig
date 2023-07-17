<!-- 鼠标点击特效 -->
{% if theme.cursor_effect %}
  {% if theme.cursor_effect.type == "fireworks" %}
    <script async src="/js/cursor/fireworks.js"></script>
  {% elseif theme.cursor_effect.type == "explosion" %}
    <canvas class="fireworks" style="position: fixed;left: 0;top: 0;z-index: 1; pointer-events: none;" ></canvas>
    <script async src="//cdn.bootcss.com/animejs/2.2.0/anime.min.js"></script>
    <script async src="/js/cursor/explosion.min.js"></script>
  {% elseif theme.cursor_effect.type == "love" %}
    <script async src="/js/cursor/love.min.js"></script>
  {% elseif theme.cursor_effect.type == "text" %}
    <script async src="/js/cursor/text.js"></script>
  {% endif %}
{% endif %}


<!-- 旋转魔方 -->
{% if theme.cube.enable %}
   {% if theme.cube.type == "mini" %}
      {% include 'cube-mini.swig' %}
   {% elseif theme.cube.type == "hollow" %}
      {% include 'cube-hollow.swig' %}
   {% endif %}
{% endif %}

{# 网站底部运行时间 #}
{% if theme.footer.runtime.enable %}

  <script async language="javascript">

    var div = document.createElement("div");
    //插入到自定义的theme-info或者copyright之后
    var copyright = document.querySelector(".theme-info2") || document.querySelector(".copyright");

    function show_run_time(){
        window.setTimeout("show_run_time()", 1000);
      // BirthDay=new Date("08/07/2019 20:00:00");
        BirthDay=new Date("{{ theme.footer.runtime.birthday }}");
        today=new Date();
        timeold=(today.getTime()-BirthDay.getTime());
        sectimeold=timeold/1000
        secondsold=Math.floor(sectimeold);
        msPerDay=24*60*60*1000
        e_daysold=timeold/msPerDay
        daysold=Math.floor(e_daysold);
        e_hrsold=(e_daysold-daysold)*24;
        hrsold=setzero(Math.floor(e_hrsold));
        e_minsold=(e_hrsold-hrsold)*60;
        minsold=setzero(Math.floor((e_hrsold-hrsold)*60));
        seconds=setzero(Math.floor((e_minsold-minsold)*60));

        // 使用zh-Hans.yml的文字替换
        div.innerHTML = "{{ __('footer.wait')}} " + "<span style='color: {{ theme.footer.runtime.color }}'> " + daysold + " </span> 天 <span style='color: {{ theme.footer.runtime.color }}'>" + hrsold + " </span>时 <span style='color: {{ theme.footer.runtime.color }}'>" + minsold + " </span>分 <span style='color: {{ theme.footer.runtime.color }}'>" + seconds + " </span>秒 ";

        document.querySelector(".footer-inner").insertBefore(div, copyright.nextSibling);

    }
    function setzero(i){
        if (i<10)
        {i="0" + i};
        return i;
    }

    show_run_time();

  </script>

{% endif %}


<script type="text/javascript" src="/js/src/clipboard.min.js"></script>
<script type="text/javascript" src="/js/src/clipboard-use.js"></script>