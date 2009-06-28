//
//  Yakyu_kenViewController.m
//  Yakyu-ken
//
//  Created by noid on 6/27/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "Yakyu_kenViewController.h"

@implementation Yakyu_kenViewController

@synthesize btn_g, btn_t, btn_p, btn_restart;
@synthesize beforetitle, aftertitle, rslt, other;
@synthesize win, lose, ready, even;

-(IBAction) btn_restart_down:(id) sender {
	self.btn_g.hidden = NO;
	self.btn_g.enabled = YES;
	self.btn_t.hidden = NO;
	self.btn_t.enabled = YES;
	self.btn_p.hidden = NO;
	self.btn_p.enabled = YES;
	self.aftertitle.hidden = YES;
	self.rslt.text = @"";
	self.other.text = @"";
	self.win.hidden = YES; 
	self.lose.hidden = YES; 
	self.ready.hidden = NO; 
	self.even.hidden = YES; 	
}

// ぐー
-(IBAction) btn_g_down:(id) sender {
	self.aftertitle.hidden = NO;
	
	srand(time(nil));
	NSInteger result;
	result = rand()% 3;
	if(result==0) {
		self.other.text = @"ぐー";
	} else if(result==1) {
		self.other.text = @"ちょき";
	} else if(result==2) {
		self.other.text = @"ぱー";
	}
	
	if(result==0) {
		self.rslt.text = @"あいこで...";
		self.btn_g.hidden = NO;
		self.btn_t.hidden = NO;
		self.btn_p.hidden = NO;
		self.btn_restart.hidden = YES;
		self.btn_restart.enabled = NO;
		self.win.hidden = YES; 
		self.lose.hidden = YES; 
		self.ready.hidden = YES; 
		self.even.hidden = NO; 
	} else if(result==1) {
		self.rslt.text = @"You Win!";
		self.btn_g.hidden = NO;
		self.btn_g.enabled = NO;
		self.btn_t.hidden = YES;
		self.btn_p.hidden = YES;
		self.btn_restart.hidden = NO;
		self.btn_restart.enabled = YES;
		self.win.hidden = NO; 
		self.lose.hidden = YES; 
		self.ready.hidden = YES; 		
		self.even.hidden = YES;
	} else {
		self.rslt.text = @"You Lose!";
		self.btn_g.hidden = NO;
		self.btn_g.enabled = NO;
		self.btn_t.hidden = YES;
		self.btn_p.hidden = YES;	
		self.btn_restart.hidden = NO;
		self.btn_restart.enabled = YES;
		self.win.hidden = YES; 
		self.lose.hidden = NO; 
		self.ready.hidden = YES; 	
		self.even.hidden = YES;
	}
}

// ちょき
-(IBAction) btn_t_down:(id) sender {
	self.aftertitle.hidden = NO;
	
	srand(time(nil));
	NSInteger result;
	result = rand()% 3;
	if(result==0) {
		self.other.text = @"ちょき";
	} else if(result==1) {
		self.other.text = @"ぱー";
	} else if(result==2) {
		self.other.text = @"ぐー";
	}
	
	if(result==0) {
		self.rslt.text = @"あいこで...";
		self.btn_g.hidden = NO;
		self.btn_t.hidden = NO;
		self.btn_p.hidden = NO;
		self.btn_restart.hidden = YES;
		self.win.hidden = YES; 
		self.lose.hidden = YES; 
		self.ready.hidden = YES; 
		self.even.hidden = NO; 
	} else if(result==1) {
		self.rslt.text = @"You Win!";
		self.btn_t.hidden = NO;
		self.btn_t.enabled = NO;
		self.btn_g.hidden = YES;
		self.btn_p.hidden = YES;
		self.btn_restart.hidden = NO;
		self.btn_restart.enabled = YES;
		self.win.hidden = NO; 
		self.lose.hidden = YES; 
		self.ready.hidden = YES; 		
		self.even.hidden = YES; 
	} else {
		self.rslt.text = @"You Lose!";
		self.btn_t.hidden = NO;
		self.btn_t.enabled = NO;
		self.btn_g.hidden = YES;
		self.btn_p.hidden = YES;	
		self.btn_restart.hidden = NO;
		self.btn_restart.enabled = YES;
		self.win.hidden = YES; 
		self.lose.hidden = NO; 
		self.ready.hidden = YES; 		
		self.even.hidden = YES;
	}
}

// ぱー
-(IBAction) btn_p_down:(id) sender {
	self.aftertitle.hidden = NO;
	
	srand(time(nil));
	NSInteger result;
	result = rand()% 3;
	if(result==0) {
		self.other.text = @"ぱー";
	} else if(result==1) {
		self.other.text = @"ぐー";
	} else if(result==2) {
		self.other.text = @"ちょき";
	}
	
	if(result==0) {
		self.rslt.text = @"あいこで...";
		self.btn_p.hidden = NO;
		self.btn_t.hidden = NO;
		self.btn_g.hidden = NO;
		self.btn_restart.hidden = YES;
		self.win.hidden = YES; 
		self.lose.hidden = YES; 
		self.ready.hidden = YES; 
		self.even.hidden = NO; 
	} else if(result==1) {
		self.rslt.text = @"You Win!";
		self.btn_p.hidden = NO;
		self.btn_p.enabled = NO;
		self.btn_t.hidden = YES;
		self.btn_g.hidden = YES;
		self.btn_restart.hidden = NO;
		self.btn_restart.enabled = YES;
		self.win.hidden = NO; 
		self.lose.hidden = YES; 
		self.ready.hidden = YES; 		
		self.even.hidden = YES;
	} else {
		self.rslt.text = @"You Lose!";
		self.btn_p.hidden = NO;
		self.btn_p.enabled = NO;
		self.btn_t.hidden = YES;
		self.btn_g.hidden = YES;	
		self.btn_restart.hidden = NO;
		self.btn_restart.enabled = YES;
		self.win.hidden = YES; 
		self.lose.hidden = NO; 
		self.ready.hidden = YES; 		
		self.even.hidden = YES;
	}
}



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.aftertitle.hidden = YES;
	self.rslt.text = @"";
	self.other.text = @"";
	self.btn_restart.hidden = YES;
	
//	win = [[UIImage imageNamed:@"win"] retain];
//	lose = [[UIImage imageNamed:@"lose"] retain];
//	ready = [[UIImage imageNamed:@"ready"] retain];
	self.win.hidden = YES;
	self.lose.hidden = YES;
	self.ready.hidden = NO;
	self.even.hidden = YES;
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[btn_g release];
	[btn_t release];
	[btn_p release];
	[btn_restart release];
	[beforetitle release];
	[aftertitle release];
	[rslt release];
	[other release];
	[win release];	
	[lose release];
	[ready release];
	[even release];
	[super dealloc];
}

@end
