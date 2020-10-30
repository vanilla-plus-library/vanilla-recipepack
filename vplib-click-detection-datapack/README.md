# Vanilla+ Library: Click Detection

Ways to detect right-clicks using carrot on a sticks, warped fungus on a sticks and villagers.

## Requirements
- Minecraft 1.16+.
- [Vanilla+ Library: Core](https://github.com/TheWii/vanilla-plus-library/tree/master/vplib-core-datapack)

## Releases
- v1(incomplete)

## Documentation

|Type     |Name                |Description                                                                    |Permission    |
|---------|--------------------|-------------------------------------------------------------------------------|--------------|
|Objective|vplib.clk_detect    |Determines if the library should set the villager click detection.             |Read and Write|
|Objective|vplib.clk_precis    |Determines how precise the villager detection should be(1, 2 or 3).            |Read and Write|
|Tag      |vplib.click.prepared|Used internally by the library to control spawning/despawning of the villagers.|Read-only     |