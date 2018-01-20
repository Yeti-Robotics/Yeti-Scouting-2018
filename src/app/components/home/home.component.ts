import { Component } from '@angular/core';
import { TeamInfo, TeamService } from '../../services/team.service';
import { OnInit } from '@angular/core/src/metadata/lifecycle_hooks';

@Component({
    templateUrl: './home.component.html',
    styleUrls: ['./home.component.less']
})
export class HomeComponent implements OnInit {

    teams: TeamInfo[];

    constructor(private teamService: TeamService) {
    }

    ngOnInit(): void {
        this.teamService.getTeams()
            .subscribe((teamInfo: TeamInfo[]) => {
                this.teams = teamInfo;
            },
            (error) => {
                console.error(error);
            });
    }
}