# Code of Copper Extensions

This pack provides a couple additional functions to Code of Copper, aimed at providing functionality for those who would
prefer to use the language in creative mode, or as an operator.

Whilst made by one of the developers of Code of Copper, this pack is **unofficial**. While some functionality
provided by this pack may one day make it upstream, much of it will not.

## Requirements
- **This datapack will only work in versions 1.20.2 and higher**
- **This datapack will not work without [Code of Copper](https://modrinth.com/datapack/code-of-copper)**

## Provided Functions
### Exec
Exec will run any command given to it, in a string. It runs as the bot, positioned at the bot.
It allows multiple strings in the same function.

```ruby
exec("time set day") # Set time to day
exec("weather clear", "gamemode adventure @p") # Set weather to clear, and @p to adventure mode
```

### Tp
Teleports the selected entity to the given coordinates.
Coordinates can be an integer, or a string.
Defaults to "@s" if unset. Tilde `~` is relative to the bot.

```ruby
tp(0, 64, 0) # Teleport bot (@s) to 0, 64, 0
tp(0, 64, 0, "@a") # Teleport all players (@a) to 0, 64, 0
tp("~", "~8", "~", "@p") # Teleport nearest player 8 blocks above the bot
tp("~", 100, "~", "@p") # Teleport nearest player to Y 100, above the bot
```

### Setblock
Alternative to `place()`, doesn't require blocks in inventory.
Coordinates can be an integer, or a string. Tilde `~` is relative to the bot.

```ruby
setblock(:stone, 0, 64, 0) # Sets the block minecraft:stone at 0, 64, 0
setblock(:grass_block, "~", "~8", "~") # Sets the block minecraft:grass_block 8 blocks above the bot
```

### Score
Returns the score of the selected entity, as an integer. Defaults to "@p" if unset.

```ruby
score("myscoreboard") # Returns the score of @p, fo scoreboard myscoreboard
score("myotherscoreboard", "Moxvallix") # Returns the score of Moxvallix, for scoreboard myotherscoreboard
```

### Scoreset
Sets the score of the selected entity, from a given integer. Defaults to "@p" if unset.
Returns the score set.

```ruby
scoreset("myscoreboard", 8) # Sets @p to a score of 8 on scoreboard myscoreboard
scoreset("myotherscoreboard", 123, "Gears_YT") # Sets Gears_YT to a score of 123 on scoreboard myotherscoreboard
```