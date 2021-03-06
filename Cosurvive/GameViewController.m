//
//  GameViewController.m
//  Cosurvive
//
//  Created by Errol Cheong on 2017-07-21.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"
#import "MainMenu.h"

@implementation GameViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
  // including entities and graphs.
  GKScene *scene = [GKScene sceneWithFileNamed:@"MainMenu"];
  
  // Get the SKScene from the loaded GKScene
  GameScene *sceneNode = (GameScene *)scene.rootNode;
  
  // Set the scale mode to scale to fit the window
  //    sceneNode.scaleMode = SKSceneScaleModeAspectFill;
  sceneNode.scaleMode = SKSceneScaleModeResizeFill;
  
  SKView *skView = (SKView *)self.view;
  
  // Present the scene
  [skView presentScene:sceneNode];
  
//  skView.showsFPS = YES;
//  skView.showsNodeCount = YES;
}

- (BOOL)shouldAutorotate {
  return YES;
}


- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
    return UIInterfaceOrientationMaskAllButUpsideDown;
  } else {
    return UIInterfaceOrientationMaskAll;
  }
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
  return YES;
}

@end
