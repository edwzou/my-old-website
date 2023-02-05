import { Component } from '@angular/core';

@Component({
  selector: 'app-resume',
  templateUrl: './resume.component.html',
  styleUrls: ['./resume.component.scss']
})
export class ResumeComponent {
  title: string = "Resume page";

  downloadResume() {
    console.log("DAMN");
  }
}
