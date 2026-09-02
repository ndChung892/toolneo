using Risu.Reconstruction.Domain;
using Risu.Reconstruction.Mocks;
using Risu.Reconstruction.Services;

var snapshot = new GameSnapshot(
    new CharacterRef("demo-1", "Research Character"),
    new MapRef("map-a", "Map A"),
    BattleState.OutsideBattle,
    RemainingAutoTurns: 3,
    Npcs: [new NpcRef("npc-1", "Research NPC", "map-a")],
    Party: []);

var mock = new InMemoryGameGateway(snapshot);
var coordinator = new AutomationCoordinator(mock);
await coordinator.EnsureAutoBattleAsync(CancellationToken.None);
await coordinator.MoveToNpcByNameAsync("Research NPC", CancellationToken.None);

Console.WriteLine("Clean-room demo commands:");
foreach (var command in mock.Commands) Console.WriteLine($"- {command}");
