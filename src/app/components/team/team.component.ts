import { Component } from "@angular/core";
import { ActivatedRoute } from "@angular/router";

@Component({
    templateUrl: './team.component.html',
    styleUrls: ['./team.component.less']
})
export class TeamComponent {    
  
    id: string;

    constructor(private route: ActivatedRoute) {
        this.id = this.route.snapshot.params['id'];
    }
}