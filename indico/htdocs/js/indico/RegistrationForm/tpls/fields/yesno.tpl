<select
    id="{{ getName(field.input) }}"
    name="{{ getName(field.input) }}"
    ng-class="{regFormIsBillable: item.isBillable}"
    ng-required="field.mandatory"
    ng-disabled="!hasPlacesLeft(field)">

    <option value="">-- {{ 'Choose a value' | i18n }} --</option>
    <option value="yes">
        {{ 'yes' | i18n }}
        <!-- TODO ng-show within <option>? -->
        {% if field.placesLimit != 0 %}
            [{{field.noPlacesLeft}} {% _ 'place(s) left' %}]
        {% endif %}
    </option>
    <option value="no">
        {{ 'no' | i18n }}
    </option>
</select>

<span ng-show="field.billable" class="regFormPrice">{{ field.price }}</span>
<span ng-show="field.billable" class="regFormCurrency"></span>

<span class="inputDescription">
    {{ field.description }}
</span>
