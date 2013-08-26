//
//  StickyNoteListViewController.h
//  SampleCoreDataProject
//
//  Created by Matt on 8/26/13.
//  Copyright (c) 2013 Blue Rocket, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <BRFullTextSearch/BRFullTextSearch.h>

@interface StickyNoteListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate,
	UISearchDisplayDelegate, UISearchBarDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, strong) IBOutlet UISearchBar *searchBar;

@property (nonatomic, strong) id<BRSearchService> searchService;

@end
