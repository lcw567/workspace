package test240726.object2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class MusicController {
	
	private List list = new ArrayList();
	
	public int addList(Music music) {
		list.add(music);
		return 1;
	}
	
	public int addAtZero(Music music) {
		list.add(0, music);
		return 1;
	}
	
	public List printAll() {
		return this.list;
	}
	
	public Music searchMusic(String title) {
		for(Object obj : list) {
			Music m = ((Music)obj);
			if( m.getTitle().equals(title) ) {
				return m;
			}
		}
		return null;
	}
	
	public Music removeMusic(String title) {
		Music m = this.searchMusic(title);
		if(m != null) {
			this.list.remove(m);
		}
		return m;
	}
	
	public Music setMusic(String title, Music music) {
		Music m = this.searchMusic(title);
		if(m != null) {
			int index = list.indexOf(m);
			this.list.set(index, m);
		}
		return m;
	}
	
	public int ascTitle() {
		Collections.sort(list, new AscTitle());
		return 1;
	}
	
	public int descSinger() {
		Collections.sort(list, new Comparator<Music>() {

			@Override
			public int compare(Music o1, Music o2) {
				return o2.getSinger().compareTo(o1.getSinger());
			}
		});
		return 0;
	}
}
