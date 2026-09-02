using Risu.Reconstruction.Abstractions;
using Risu.Reconstruction.Domain;

namespace Risu.Reconstruction.Mocks;

public sealed class InMemoryGameGateway(GameSnapshot initial) : IGameGateway
{
    private GameSnapshot _state = initial;
    public List<string> Commands { get; } = [];

    public Task<GameSnapshot> ReadSnapshotAsync(CancellationToken cancellationToken) => Task.FromResult(_state);
    public Task MoveToMapAsync(string mapId, CancellationToken cancellationToken) => Record($"move-map:{mapId}");
    public Task MoveToNpcAsync(string npcId, CancellationToken cancellationToken) => Record($"move-npc:{npcId}");
    public Task SetAutoBattleAsync(bool enabled, CancellationToken cancellationToken) => Record($"auto-battle:{enabled}");
    public Task CreatePartyAsync(CancellationToken cancellationToken) => Record("party:create");
    public Task InviteAsync(string characterId, CancellationToken cancellationToken) => Record($"party:invite:{characterId}");

    private Task Record(string command)
    {
        Commands.Add(command);
        return Task.CompletedTask;
    }
}
