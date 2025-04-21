//
//  NSDictionary+MTLMappingAdditions.m
//  Mantle
//
//  Created by Robert Böhnke on 10/31/13.
//  Copyright (c) 2013 GitHub. All rights reserved.
//

#import "include/MTLModel.h"

#import "include/NSDictionary+MTLMappingAdditions.h"

@implementation NSDictionary (MTLMappingAdditions)

+ (NSDictionary *)mtl_identityPropertyMapWithModel:(Class)modelClass {
	NSCParameterAssert([modelClass conformsToProtocol:@protocol(MTLModel)]);

	NSArray *propertyKeys = [modelClass propertyKeys].allObjects;

	return [NSDictionary dictionaryWithObjects:propertyKeys forKeys:propertyKeys];
}

@end
