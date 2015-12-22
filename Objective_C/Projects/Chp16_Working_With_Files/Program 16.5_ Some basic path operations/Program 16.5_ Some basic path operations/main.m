//
//  main.m
//  Program 16.5_ Some basic path operations
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *fName = @"path.m";
        NSFileManager *fm;
        NSString *path, *tempdir, *extension, *homedir, *fullpath;
        NSArray *components;
        fm = [NSFileManager defaultManager];
        // Get the temporary working directory
        tempdir = NSTemporaryDirectory ();
        NSLog (@"Temporary Directory is %@", tempdir);
        // Extract the base directory from current directory
        path = [fm currentDirectoryPath];
        NSLog (@"Base dir is %@", [path lastPathComponent]);
        // Create a full path to the file fName in current directory
        fullpath = [path stringByAppendingPathComponent: fName];
        NSLog (@"fullpath to %@ is %@", fName, fullpath);
        // Get the filename extension
        extension = [fullpath pathExtension];
        NSLog (@"extension for %@ is %@", fullpath, extension);
        // Get user's home directory
        homedir = NSHomeDirectory ();
        NSLog (@"Your home directory is %@", homedir);
        // Divide a path into its components
        
        for ( path in components )
            NSLog (@"%@", path);
    }
    return 0;
}
