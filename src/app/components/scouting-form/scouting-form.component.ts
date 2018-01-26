import { FormBuilder } from '@angular/forms';
import { FormGroup } from '@angular/forms';
import { Component } from "@angular/core";
import { query } from "@angular/core/src/animation/dsl";

@Component({
    templateUrl: './scouting-form.component.html',
    styleUrls: ['./scouting-form.component.less']
})
export class ScoutingFormComponent {

    form: FormGroup;

    constructor(private fb: FormBuilder) {
        this.form = fb.group({});
    }

    var1 = document.querySelectorAll("#autoCheckBox");
    var2 = document.querySelectorAll(".autoItem");

}





