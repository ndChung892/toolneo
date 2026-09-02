namespace Risu.Reconstruction.Domain;

// INFERRED from NativeAOT serializer/type-name strings recorded in the analysis report.
public sealed record AuthRequest(string Username, string Password, string PublicKey, string ClientSignature);
public sealed record AuthSession(string Token, string Name, string Role, DateTimeOffset Expiry);

public sealed record CharacterRef(string Id, string Name);
public sealed record MapRef(string Id, string Name);
public sealed record Portal(string Id, string FromMapId, string ToMapId);
public sealed record NpcRef(string Id, string Name, string MapId);
public sealed record PartyMember(string CharacterId, string Name, bool IsLeader);

public enum BattleState { Unknown, OutsideBattle, InBattle }

public sealed record GameSnapshot(
    CharacterRef? Character,
    MapRef? CurrentMap,
    BattleState BattleState,
    int? RemainingAutoTurns,
    IReadOnlyList<NpcRef> Npcs,
    IReadOnlyList<PartyMember> Party);
