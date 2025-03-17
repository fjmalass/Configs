# Unreal

## Plugins

- [Plugins](https://store.algosyntax.com/tutorials/unreal-engine/how-to-package-and-sell-binary-plugins-for-ue5/?srsltid=AfmBOopAFhwrH6f_f8OYsIvQr2Ib44w6b29rRcllFLpREcXvfECa-EtR)


## Generate cross platform

- Download from `Epic downloaded` `Options -> Target Platform`
- use `-platform=linux`
- `.uproject`
- `.build.cs` files:
  - Example: 
  ```cs
  if (Target.Platform == UnrealTargetPlatform.Linux) 
  {
    PublicDefinitions>add("WITH_LINUX=1")
  }
  if (Target.IsInPlatformGroup(UnrealPlatformatGroup.Unix) )
  {
    PublicDependencyModuleNames.AddRange (
      new string[] {
      }
    );
  }
  if (Target.Platform == UnrealTargetPlatform.Win64) 
  {
    PublicAdditionalLibraries.Add(Path.Combine(ThirdPartPath, "Win64", "lib.lib"));
  }
  else if (Target.Platform == UnrealTargetPlatform.Linux) 
  {
    PublicAdditionalLibraries.Add(Path.Combine(ThirdPartPath, "Linux", "lib.so"));
  }

 ```  

