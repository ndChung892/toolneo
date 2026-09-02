using Risu.Reconstruction.Abstractions;
using Risu.Reconstruction.Domain;

namespace Risu.Reconstruction.Services;

// REIMPLEMENTED orchestration skeleton. Exact wire messages remain UNKNOWN.
public sealed class AutomationCoordinator(IGameGateway game)
{
    public async Task EnsureAutoBattleAsync(CancellationToken cancellationToken)
    {
        var state = await game.ReadSnapshotAsync(cancellationToken);
        if (state.RemainingAutoTurns is > 0)
            await game.SetAutoBattleAsync(true, cancellationToken);
    }

    public async Task MoveToNpcByNameAsync(string npcName, CancellationToken cancellationToken)
    {
        var state = await game.ReadSnapshotAsync(cancellationToken);
        var npc = state.Npcs.FirstOrDefault(n => string.Equals(n.Name, npcName, StringComparison.OrdinalIgnoreCase))
            ?? throw new InvalidOperationException($"NPC '{npcName}' is not present in the current snapshot.");
        await game.MoveToNpcAsync(npc.Id, cancellationToken);
    }

    public async Task CreatePartyAsync(IEnumerable<CharacterRef> members, CancellationToken cancellationToken)
    {
        await game.CreatePartyAsync(cancellationToken);
        foreach (var member in members)
            await game.InviteAsync(member.Id, cancellationToken);
    }
}
