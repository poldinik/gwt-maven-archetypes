package ${package};

import com.google.gwt.core.client.EntryPoint;
import com.google.gwt.user.client.ui.Label;

/**
 * Entry point classes define <code>onModuleLoad()</code>.
 */
public class ${module} implements EntryPoint {

	public void onModuleLoad() {
		RootPanel.get().add(new Label("hello!"));
	}
}
