package com.oppo.camera;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.oppo.statistics.DataTypeConstants;

public class VideoCamera extends Activity {
    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        d.a("VideoCamera", "onActivityResult(), requestCode: " + i + ", resultCode: " + i2);
        super.onActivityResult(i, i2, intent);
        if (i == 1003) {
            setResult(i2, intent);
            finish();
            overridePendingTransition(R.anim.oppo_close_slide_enter, R.anim.oppo_close_slide_exit);
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        Uri uri;
        d.a("VideoCamera", "onCreate");
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        Intent intent = new Intent("com.oppo.action.VIDEO_CAMERA");
        intent.setComponent(new ComponentName(this, Camera.class));
        try {
            uri = getReferrer();
        } catch (Exception e) {
            e.printStackTrace();
            uri = null;
        }
        if (uri != null && !TextUtils.isEmpty(uri.getHost())) {
            intent.putExtra("extra_key_caller_package_name", uri.getHost());
        }
        if (extras != null) {
            try {
                d.a("VideoCamera", "onCreate, save uri: " + extras.getParcelable("output") + ", crop value: " + extras.getString("crop"));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            intent.putExtras(extras);
        }
        startActivityForResult(intent, DataTypeConstants.PAGE_VISIT);
    }
}
