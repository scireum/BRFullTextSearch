//
//  TestIndexable.m
//  BRFullTextSearch
//
//  Created by Matt on 11/28/13.
//  Copyright (c) 2013 Blue Rocket. Distributable under the terms of the Apache License, Version 2.0.
//

#import "TestIndexable.h"

NSString * const kBRTestIndexableSearchFieldNameTags = @"T";

@implementation TestIndexable

- (NSArray *)tags {
	return [self indexFieldsDictionary][kBRTestIndexableSearchFieldNameTags];
}

- (void)setTags:(NSArray *)tags {
	[self setDataObject:tags forKey:kBRTestIndexableSearchFieldNameTags];
}

- (BRIndexableIndexType)indexFieldIndexType:(NSString *)fieldName {
	if ( [fieldName isEqualToString:kBRTestIndexableSearchFieldNameTags] ) {
		return BRIndexableIndexTypeUntokenized;
	}
	return [super indexFieldIndexType:fieldName];
}


@end
