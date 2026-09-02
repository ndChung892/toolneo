using Risu.Reconstruction.Domain;

namespace Risu.Reconstruction.Abstractions;

// UNKNOWN implementations: binary evidence establishes responsibilities, not exact protocol bodies.
public interface IAuthProvider
{
    Task<AuthSession> LoginAsync(AuthRequest request, CancellationToken cancellationToken);
}

public interface IProxyPortAllocator
{
    Task<int> AllocateAsync(CancellationToken cancellationToken);
    Task FreeAsync(int port, CancellationToken cancellationToken);
}

public interface IGameGateway
{
    Task<GameSnapshot> ReadSnapshotAsync(CancellationToken cancellationToken);
    Task MoveToMapAsync(string mapId, CancellationToken cancellationToken);
    Task MoveToNpcAsync(string npcId, CancellationToken cancellationToken);
    Task SetAutoBattleAsync(bool enabled, CancellationToken cancellationToken);
    Task CreatePartyAsync(CancellationToken cancellationToken);
    Task InviteAsync(string characterId, CancellationToken cancellationToken);
}
