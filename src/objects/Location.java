package objects;

import java.util.List;
import java.util.Map;

public class Location {

	private String name;
	private Integer level;
	private LocationType Type;
	private List<Neighbor> neighbors;
	private Map<Enemy, Double> enemies;
	
}
