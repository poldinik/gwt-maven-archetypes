#!/bin/sh

PROJECT_NAME=${artifactId}

function cmd_widget {
  echo "Name of the new widget: $1"
  package=$2
  relativepackagepath=$(echo $2 | tr "." /)
  echo "relative path: $relativepackagepath"
  packagepath=${PROJECT_NAME}-client/src/main/java/$relativepackagepath
  echo "Destination package: $packagepath"
  cd $packagepath
  echo "package $package;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.HTMLPanel;

public class $1 extends Composite {
    interface  $1UiBinder extends UiBinder<HTMLPanel, $1> {
    }

    private static final $1UiBinder ourUiBinder = GWT.create($1UiBinder.class);

    public $1() {
        initWidget(ourUiBinder.createAndBindUi(this));
    }

    @UiField
    HTMLPanel root;
}" >> $1.java

  echo "<ui:UiBinder xmlns:ui='urn:ui:com.google.gwt.uibinder'
             xmlns:g='urn:import:com.google.gwt.user.client.ui'>
    <g:HTMLPanel ui:field=\"root\"/>
</ui:UiBinder>" >> $1.ui.xml

  echo "done"!

}

function cmd_connected_widget {
  echo "Name of the new widget: $1"
  package=$2
  relativepackagepath=$(echo $2 | tr "." /)
  echo "relative path: $relativepackagepath"
  packagepath=${PROJECT_NAME}-client/src/main/java/$relativepackagepath
  echo "Destination package: $packagepath"
  cd $packagepath
  echo "package $package;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.HTMLPanel;

public class $1 extends Composite {
    interface  $1UiBinder extends UiBinder<HTMLPanel, $1> {
    }

    private static final $1UiBinder ourUiBinder = GWT.create($1UiBinder.class);

    public $1(ViewModel vm) {
        initWidget(ourUiBinder.createAndBindUi(this));
    }

    ViewModel vm;

    public interface ViewModel{

    }

    @UiField
    HTMLPanel root;
}" >> $1.java

  echo "<ui:UiBinder xmlns:ui='urn:ui:com.google.gwt.uibinder'
             xmlns:g='urn:import:com.google.gwt.user.client.ui'>
    <g:HTMLPanel ui:field=\"root\"/>
</ui:UiBinder>" >> $1.ui.xml

  echo "done"!
}

function cmd_widget {
  echo "Name of the new widget: $1"
  package=$2
  relativepackagepath=$(echo $2 | tr "." /)
  echo "relative path: $relativepackagepath"
  packagepath=${PROJECT_NAME}-client/src/main/java/$relativepackagepath
  echo "Destination package: $packagepath"
  cd $packagepath
  echo "package $package;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.HTMLPanel;

public class $1 extends Composite {
    interface  $1UiBinder extends UiBinder<HTMLPanel, $1> {
    }

    private static final $1UiBinder ourUiBinder = GWT.create($1UiBinder.class);

    public $1() {
        initWidget(ourUiBinder.createAndBindUi(this));
    }

    @UiField
    HTMLPanel root;
}" >> $1.java

  echo "<ui:UiBinder xmlns:ui='urn:ui:com.google.gwt.uibinder'
             xmlns:g='urn:import:com.google.gwt.user.client.ui'>
    <g:HTMLPanel ui:field=\"root\"/>
</ui:UiBinder>" >> $1.ui.xml

  echo "done"!
}


function cmd_connected_snippet {
  widget=$1
  lcw=$(echo $widget | tr '[:upper:]' '[:lower:]')
  echo "Widget ${lcw}Container = new StoreConnector<>(
				(StoreConverter<AppState, $widget.ViewModel>) store -> new $widget.ViewModel(){

				},
				$widget::new,
				mainStore
		);"
}

eval cmd_${1} ${2} ${3}
{ set +x; } 2>/dev/null