import { FormBuilder } from '@angular/forms';
import { FormGroup } from '@angular/forms';
import { Component } from "@angular/core";
import { ActivatedRoute } from "@angular/router";

@Component({
    selector: 'app-header-bar',
    templateUrl: './header-bar.component.html',
    styleUrls: ['./header-bar.component.less']
})
export class HeaderBarComponent {

    id: number;
    form: FormGroup;

    constructor(private route: ActivatedRoute, private fb: FormBuilder) {
        this.id = this.route.snapshot.params['id'];
        this.form = fb.group({});
    }

    teamRoute () {
       const x =  document.getElementById("teamSearch").nodeValue;

    }

}
