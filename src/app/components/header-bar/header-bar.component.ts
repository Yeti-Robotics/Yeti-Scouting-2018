import { Component } from "@angular/core";
import { ActivatedRoute } from "@angular/router";

@Component({
    selector: 'app-header-bar',
    templateUrl: './header-bar.component.html',
    styleUrls: ['./header-bar.component.less']
})
export class HeaderBarComponent {

    id: number;

    constructor(private route: ActivatedRoute) {
        this.id = this.route.snapshot.params['id'];
    }

    teamRoute () {
       const x =  document.getElementById("teamSearch").nodeValue;

    }

}
