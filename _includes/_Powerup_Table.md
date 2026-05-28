{% assign note="IMPORTANT: Do not remove the final blank line. It is required for proper rendering on the markdown table." %}

| {{ game_mode }} | {{ availability}} |
| :---: | :---: |
| {{ race_name }} | {%- if include.race == "yes" -%} {{ available_yes }} {%- else -%} {{ available_no }} {%- endif -%} |
| {{ ftl_name }} | {%- if include.ftl == "yes" -%} {{ available_yes }} {%- else -%} {{ available_no }} {%- endif -%} |
| {{ soccer_name }} | {%- if include.soccer == "yes" -%} {{ available_yes }} {%- else -%} {{ available_no }} {%- endif -%} |
| {{ egg_name }} | {%- if include.egg == "yes" -%} {{ available_yes }} {%- else -%} {{ available_no }} {%- endif -%} |
| {{ battle_name }} | {%- if include.battle == "yes" -%} {{ available_yes }} {%- else -%} {{ available_no }} {%- endif -%} |
