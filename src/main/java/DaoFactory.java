public class DaoFactory {
    private static Albums albumsDao;
    public static Albums getAlbumsDao() {
        if (albumsDao == null) {
//            albumsDao = new AlbumsDao();
        }
        return albumsDao;
    }
}
