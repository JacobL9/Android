package com.main.touch;

import com.csounds.CsoundObj;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.*;

public class TestActivity extends BaseCsoundActivity{
	
	private static final String TRIGGER_CHANNEL = "trigger";
	
	private Button btnTrigger;
	private CsoundObj csoundObj;
	
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_test);
		csoundObj = new CsoundObj();
		initialiseViews();
		csoundObj.startCsound(createTempFile(getResourceFileAsString(R.raw.trigger)));
		btnTrigger.setOnClickListener(new OnClickListener(){

			@Override
			public void onClick(View v) {
				csoundObj.inputMessage("i2 0 1 0.5");
			}
			
		});
	}
	
	private void initialiseViews(){
		btnTrigger = (Button)findViewById(R.id.btnTrigger);
	}
	
	
	
}
