package ${package};

import com.google.gwt.core.client.EntryPoint;
import com.google.gwt.user.client.ui.Label;
import com.google.gwt.user.client.ui.RootPanel;

public class ${module} implements EntryPoint {

	public void onModuleLoad() {
		RootPanel.get().add(new Label("Hello!"));
	}
}
