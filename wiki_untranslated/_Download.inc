{%- if include.os == 'switch' -%}
    {%- assign icon = 'fas fa-gamepad' -%}
{%- elsif include.os == 'source' -%}
    {%- assign icon = 'fas fa-code' -%}
{%- else -%}
    {%- capture icon -%}
    fab fa-{{ include.os }}
    {%- endcapture -%}
{%- endif -%}
{%- capture show_text -%}
{%translate Show%}
{%- endcapture -%}
{%- capture hide_text -%}
{%translate Hide%}
{%- endcapture -%}
<div>
<span class="download-closing-bracket"></span><input type="checkbox" id="{{ include.os }}-download-callback"><label class="download-toggle" data-show-text="{{ show_text }}" data-hide-text="{{ hide_text }}" for="{{ include.os }}-download-callback"></label><span class="download-opening-bracket"></span>
<div class="download-container">
<div class="download-button download-title">
<a href="{{ include.main_link }}"><strong><span><i class="{{ icon }} fa-fw"></i> {{ include.name }}</span></strong></a>
</div>
<div class="download-content">
<div class="download-left" markdown="1">
{{ include.content }}
</div>
<div class="download-right">
<i class="fa fa-download fa-fw fa-2x"></i>
</div>
</div>
</div>
</div>
