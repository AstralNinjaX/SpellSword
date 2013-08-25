package database;

public class SpellSwordDBFacade {

	private static DatabaseConnection connection;
	
	public static void createHero() {
		if(null == connection) {
			connection = new DatabaseConnection("spellsword", "webuser", "password");
		}
	}
	
}
