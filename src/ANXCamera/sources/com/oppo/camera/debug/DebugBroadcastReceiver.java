package com.oppo.camera.debug;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.text.TextUtils;
import color.support.v7.app.b;
import com.oppo.camera.R;
import com.oppo.camera.d;

public class DebugBroadcastReceiver extends BroadcastReceiver {
    private static final String DEBUG_ENV = "*#2785*368*324#";
    private static final String DEBUG_PROPERTY = "*#2324*778#";
    private static final String ENGINEER_MODE_TEST_BROADCAST = "com.oppo.engineermode.EngineerModeMain";
    private static final String OPERATOR_AUDITING_CODE = "*#2785*6787#";
    private static final String ORDER_EXTRA = "order";
    private static final String RELEASED_CODE = "*#2785*757#";
    private static final String RELEASE_ENV = "*#2785*368*757#";
    private static final String TAG = "DebugBroadcastReceiver";
    private static final String TESTER_AUDITING_CODE = "*#2785*8378#";
    private static final String TO_BE_RELEASE_CODE = "*#2785*82757#";
    private static final String TRACE_DEBUG_OFF = "*#2872*324*633#";
    private static final String TRACE_DEBUG_ON = "*#2872*324*66#";
    /* access modifiers changed from: private */
    public Context mContext = null;
    /* access modifiers changed from: private */
    public String mCurrCode = null;
    private DialogInterface.OnClickListener mOnDialogButtonClickListener = new DialogInterface.OnClickListener() {
        public void onClick(DialogInterface dialogInterface, int i) {
            if (!TextUtils.isEmpty(DebugBroadcastReceiver.this.mCurrCode)) {
                char c = 65535;
                if (i == -1) {
                    d.b(DebugBroadcastReceiver.TAG, "onClick, mCurrCode: " + DebugBroadcastReceiver.this.mCurrCode);
                    String access$000 = DebugBroadcastReceiver.this.mCurrCode;
                    switch (access$000.hashCode()) {
                        case -1863506190:
                            if (access$000.equals(DebugBroadcastReceiver.DEBUG_ENV)) {
                                c = 4;
                                break;
                            }
                            break;
                        case -1863384050:
                            if (access$000.equals(DebugBroadcastReceiver.RELEASE_ENV)) {
                                c = 5;
                                break;
                            }
                            break;
                        case -1073678413:
                            if (access$000.equals(DebugBroadcastReceiver.TO_BE_RELEASE_CODE)) {
                                c = 2;
                                break;
                            }
                            break;
                        case 159749497:
                            if (access$000.equals(DebugBroadcastReceiver.RELEASED_CODE)) {
                                c = 3;
                                break;
                            }
                            break;
                        case 457016094:
                            if (access$000.equals(DebugBroadcastReceiver.TRACE_DEBUG_ON)) {
                                c = 6;
                                break;
                            }
                            break;
                        case 656404788:
                            if (access$000.equals(DebugBroadcastReceiver.OPERATOR_AUDITING_CODE)) {
                                c = 0;
                                break;
                            }
                            break;
                        case 658131736:
                            if (access$000.equals(DebugBroadcastReceiver.TESTER_AUDITING_CODE)) {
                                c = 1;
                                break;
                            }
                            break;
                        case 719760761:
                            if (access$000.equals(DebugBroadcastReceiver.DEBUG_PROPERTY)) {
                                c = 8;
                                break;
                            }
                            break;
                        case 1282594674:
                            if (access$000.equals(DebugBroadcastReceiver.TRACE_DEBUG_OFF)) {
                                c = 7;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            PrefUtils.setAuditingMode(DebugBroadcastReceiver.this.mContext, 1);
                            return;
                        case 1:
                            PrefUtils.setAuditingMode(DebugBroadcastReceiver.this.mContext, 2);
                            return;
                        case 2:
                            PrefUtils.setAuditingMode(DebugBroadcastReceiver.this.mContext, 5);
                            return;
                        case 3:
                            PrefUtils.setAuditingMode(DebugBroadcastReceiver.this.mContext, 3);
                            return;
                        case 4:
                            PrefUtils.setAsDebugEnv(DebugBroadcastReceiver.this.mContext, true);
                            return;
                        case 5:
                            PrefUtils.setAsDebugEnv(DebugBroadcastReceiver.this.mContext, false);
                            return;
                        case 6:
                            PrefUtils.setTraceDebug(DebugBroadcastReceiver.this.mContext, true);
                            return;
                        case 7:
                            PrefUtils.setTraceDebug(DebugBroadcastReceiver.this.mContext, false);
                            return;
                        case 8:
                            PrefUtils.setDebugProperty(DebugBroadcastReceiver.this.mContext, true);
                            return;
                        default:
                            return;
                    }
                }
            }
        }
    };

    /* JADX WARNING: Can't fix incorrect switch cases order */
    private String getDialogContent(Context context, String str) {
        char c;
        String str2;
        switch (str.hashCode()) {
            case -1863506190:
                if (str.equals(DEBUG_ENV)) {
                    c = 3;
                    break;
                }
            case -1863384050:
                if (str.equals(RELEASE_ENV)) {
                    c = 4;
                    break;
                }
            case -1073678413:
                if (str.equals(TO_BE_RELEASE_CODE)) {
                    c = 2;
                    break;
                }
            case 159749497:
                if (str.equals(RELEASED_CODE)) {
                    c = 5;
                    break;
                }
            case 457016094:
                if (str.equals(TRACE_DEBUG_ON)) {
                    c = 6;
                    break;
                }
            case 656404788:
                if (str.equals(OPERATOR_AUDITING_CODE)) {
                    c = 0;
                    break;
                }
            case 658131736:
                if (str.equals(TESTER_AUDITING_CODE)) {
                    c = 1;
                    break;
                }
            case 719760761:
                if (str.equals(DEBUG_PROPERTY)) {
                    c = 8;
                    break;
                }
            case 1282594674:
                if (str.equals(TRACE_DEBUG_OFF)) {
                    c = 7;
                    break;
                }
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                str2 = context.getString(R.string.operator_auditing_mode);
                break;
            case 1:
                str2 = context.getString(R.string.tester_auditing_mode);
                break;
            case 2:
                str2 = context.getString(R.string.to_be_release_mode);
                break;
            case 3:
                str2 = context.getString(R.string.switch_to_debug_env);
                break;
            case 4:
                return context.getString(R.string.switch_to_release_env);
            case 5:
                return context.getString(R.string.released_mode);
            case 6:
                str2 = context.getString(R.string.trace_debug_on);
                break;
            case 7:
                return context.getString(R.string.trace_debug_off);
            case 8:
                str2 = context.getString(R.string.debug_property_on);
                break;
            default:
                d.b(TAG, "getDialogContent, do not support this mode, mode: " + str);
                str2 = "";
                break;
        }
        return context.getString(R.string.audit_mode_warning_content, new Object[]{str2});
    }

    private boolean isCodeValid(String str) {
        return OPERATOR_AUDITING_CODE.equals(str) || TESTER_AUDITING_CODE.equals(str) || TO_BE_RELEASE_CODE.equals(str) || RELEASED_CODE.equals(str) || DEBUG_ENV.equals(str) || RELEASE_ENV.equals(str) || TRACE_DEBUG_ON.equals(str) || TRACE_DEBUG_OFF.equals(str) || DEBUG_PROPERTY.equals(str);
    }

    private boolean showOnlyShowPositiveButton(String str) {
        return RELEASE_ENV.equals(str) || RELEASED_CODE.equals(str) || TRACE_DEBUG_OFF.equals(str);
    }

    private void showWarningDialog(Context context, String str) {
        this.mCurrCode = str;
        b.a aVar = new b.a(context, 2131755476);
        aVar.a((int) R.string.audit_mode_warning_title);
        aVar.b((CharSequence) getDialogContent(context, str));
        aVar.a(false);
        aVar.a(17039370, this.mOnDialogButtonClickListener);
        if (!showOnlyShowPositiveButton(str)) {
            aVar.b(17039360, (DialogInterface.OnClickListener) null);
        }
        b c = aVar.b();
        c.getWindow().setType(2038);
        c.show();
    }

    public void onReceive(Context context, Intent intent) {
        if (intent != null && ENGINEER_MODE_TEST_BROADCAST.equals(intent.getAction())) {
            String str = null;
            try {
                str = intent.getStringExtra(ORDER_EXTRA);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (!TextUtils.isEmpty(str) && isCodeValid(str)) {
                this.mContext = context;
                showWarningDialog(context, str);
            }
        }
    }
}
