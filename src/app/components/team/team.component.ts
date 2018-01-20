import { OnInit } from '@angular/core/src/metadata/lifecycle_hooks';
import { Component } from "@angular/core";
import { ActivatedRoute } from "@angular/router";
import { TeamService } from '../../services/team.service';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/finally';

@Component({
    templateUrl: './team.component.html',
    styleUrls: ['./team.component.less']
})
export class TeamComponent implements OnInit {    

    id: number;
    team: any;
    loading: boolean;

    constructor(private route: ActivatedRoute,
        private teamService: TeamService) {
        this.id = this.route.snapshot.params['id'];
    }

    ngOnInit(): void {
        this.loading = true;
        this.teamService.getTeam(this.id)
            .finally(() => this.loading = false)
            .subscribe((team) => {
                this.team = team;
            },
            (error) => {
                console.error(error);
            });
    }
    
}