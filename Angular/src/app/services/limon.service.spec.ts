import { TestBed } from '@angular/core/testing';

import { LimonService } from './limon.service';

describe('LimonService', () => {
  let service: LimonService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(LimonService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
