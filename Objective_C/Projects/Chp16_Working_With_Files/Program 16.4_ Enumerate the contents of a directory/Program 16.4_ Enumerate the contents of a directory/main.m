//
//  main.m
//  Program 16.4_ Enumerate the contents of a directory
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *path;
        NSFileManager *fm;
        NSDirectoryEnumerator *dirEnum;
        NSArray *dirArray;
        // Need to create an instance of the file manager
        fm = [NSFileManager defaultManager];
        // Get current working directory path
        path = [fm currentDirectoryPath];
        // Enumerate the directory
        
        dirEnum = [fm enumeratorAtPath: path];
        NSLog (@"Contents of %@", path);
        while ((path = [dirEnum nextObject]) != nil)
            NSLog (@"%@", path);
        // Another way to enumerate a directory
        dirArray = [fm contentsOfDirectoryAtPath:
                    [fm currentDirectoryPath] error: NULL];
        NSLog (@"Contents using contentsOfDirectoryAtPath:error:");
        for ( path in dirArray )
            NSLog (@"%@", path);
    }
    return 0;
}
