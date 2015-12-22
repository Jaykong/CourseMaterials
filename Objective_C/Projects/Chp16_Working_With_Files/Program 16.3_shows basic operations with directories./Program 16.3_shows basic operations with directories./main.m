//
//  main.m
//  Program 16.3_shows basic operations with directories.
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *dirName = @"testdir";
        NSString *path;
        NSFileManager *fm;
        // Need to create an instance of the file manager
        fm = [NSFileManager defaultManager];
        // Get current directory
        path = [fm currentDirectoryPath];
        NSLog (@"Current directory path is %@", path);
        // Create a new directory
        if ([fm createDirectoryAtPath: dirName withIntermediateDirectories: YES
                           attributes: nil error: NULL] == NO) {
            NSLog (@"Couldn't create directory!");
            return 1;
        }
        // Rename the new directory
      
        if ([fm moveItemAtPath: dirName toPath: @"newdir" error: NULL] == NO) {
            NSLog (@"Directory rename failed!");
            return 2;
        }
        // Change directory into the new directory
        if ([fm changeCurrentDirectoryPath: @"newdir"] == NO) {
            NSLog (@"Change directory failed!");
            return 3;
        }
        // Now get and display current working directory
        path = [fm currentDirectoryPath];
        NSLog (@"Current directory path is %@", path);
        NSLog (@"All operations were successful!");
    }
    return 0;
}
