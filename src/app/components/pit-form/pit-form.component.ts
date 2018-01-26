import { Component } from "@angular/core";
import { FormBuilder } from "@angular/forms";
import { FormGroup } from "@angular/forms/src/model";

@Component({
    templateUrl: './pit-form.component.html',
    styleUrls: ['./pit-form.component.less']
})
export class PitFormComponent {

    form: FormGroup;

    constructor(private fb: FormBuilder) {
        this.form = fb.group({});
    }

    onDrivetrainSelect(event: Event, drivetrainType) {
        event.preventDefault();
    }
}