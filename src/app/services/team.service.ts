import { HttpClient } from '@angular/common/http';
import { Injectable } from "@angular/core";
import { Observable } from 'rxjs/Observable';


@Injectable()
export class TeamService {

    constructor(private httpClient: HttpClient) {
    }

    getTeams(): Observable<TeamInfo[]> {
        return this.httpClient
            .get('/php/list.php') as Observable<TeamInfo[]>;
    }

    getTeam(id: number): Observable<any> {
        return this.httpClient.get(`/php/getTeam.php?teamNumber=${id}`);
    }
}

export class TeamInfo {
    team: number;
    name: string;
}