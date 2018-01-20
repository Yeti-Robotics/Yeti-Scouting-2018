import { Component } from "@angular/core";

@Component({
    templateUrl: './pit-form.component.html',
    styleUrls: ['./pit-form.component.less']
})
export class PitFormComponent {
    onDrivetrainSelect(event: Event, drivetrainType) {
        event.preventDefault();
    }
}