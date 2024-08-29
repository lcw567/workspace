package test.t240731.object1;

import java.util.Objects;

public class Nut extends Farm {
	private String name;

	public Nut() {
		super();
	}

	public Nut(String kind, String name) {
		super(kind);
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return super.getKind() +  ": " + this.name;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Nut) {
			Nut n = ((Nut) obj);
			if (n.getName().equals(this.getName()) && n.getKind().equals(getKind())) {
				return true;
			}
		}
		return false;
	}
}
