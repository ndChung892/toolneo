using Risu.Reconstruction.Domain;

namespace Risu.Reconstruction.Services;

// REIMPLEMENTED breadth-first search matching the inferred portal-routing responsibility.
public sealed class MapRoutePlanner
{
    public IReadOnlyList<Portal> FindRoute(IEnumerable<Portal> portals, string fromMapId, string toMapId)
    {
        if (fromMapId == toMapId) return Array.Empty<Portal>();

        var outgoing = portals.GroupBy(p => p.FromMapId).ToDictionary(g => g.Key, g => g.ToArray());
        var queue = new Queue<string>();
        var previous = new Dictionary<string, Portal>(StringComparer.Ordinal);
        queue.Enqueue(fromMapId);

        while (queue.Count > 0)
        {
            var current = queue.Dequeue();
            if (!outgoing.TryGetValue(current, out var next)) continue;
            foreach (var portal in next)
            {
                if (portal.ToMapId == fromMapId || previous.ContainsKey(portal.ToMapId)) continue;
                previous[portal.ToMapId] = portal;
                if (portal.ToMapId == toMapId) return Reconstruct(previous, fromMapId, toMapId);
                queue.Enqueue(portal.ToMapId);
            }
        }

        throw new InvalidOperationException($"No portal route from '{fromMapId}' to '{toMapId}'.");
    }

    private static IReadOnlyList<Portal> Reconstruct(Dictionary<string, Portal> previous, string start, string end)
    {
        var result = new List<Portal>();
        for (var cursor = end; cursor != start;)
        {
            var portal = previous[cursor];
            result.Add(portal);
            cursor = portal.FromMapId;
        }
        result.Reverse();
        return result;
    }
}
