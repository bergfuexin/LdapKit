/*
 *  LDAP Kit
 *  Copyright (c) 2012, Bindle Binaries
 *
 *  @BINDLE_BINARIES_BSD_LICENSE_START@
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions are
 *  met:
 *
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of Bindle Binaries nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
 *  IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 *  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 *  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL BINDLE BINARIES BE LIABLE FOR
 *  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 *  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 *  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 *  OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 *  SUCH DAMAGE.
 *
 *  @BINDLE_BINARIES_BSD_LICENSE_END@
 */
/*
 *  examples/PhoneDAP/PhoneDAP/PDAppDelegate.h - app delegate
 */

#import "PDAppDelegate.h"

@implementation PDAppDelegate

// App state
@synthesize window = _window;

#pragma mark - Object Management Methods

- (void)dealloc
{
   // App state
   [_window release];

   [super dealloc];

   return;
}


#pragma mark - Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
   self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
   // Override point for customization after application launch.
   self.window.backgroundColor = [UIColor whiteColor];
   [self.window makeKeyAndVisible];

   ldapTest = [[PDLdapTest alloc] init];

   return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
   // Sent when the application is about to move from active to inactive state.
   // This can occur for certain types of temporary interruptions (such as an
   // incoming phone call or SMS message) or when the user quits the application
   // and it begins the transition to the background state.
   //
   // Use this method to pause ongoing tasks, disable timers, and throttle down
   // OpenGL ES frame rates. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application
{
   // Use this method to release shared resources, save user data, invalidate
   // timers, and store enough application state information to restore your
   // application to its current state in case it is terminated later.
   //
   // If your application supports background execution, this method is called
   // instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application
{
   // Called as part of the transition from the background to the inactive
   // state; here you can undo many of the changes made on entering the
   // background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application
{
   // Restart any tasks that were paused (or not yet started) while the
   // application was inactive. If the application was previously in the
   // background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application
{
   // Called when the application is about to terminate. Save data if
   // appropriate. See also applicationDidEnterBackground:.
}

@end
