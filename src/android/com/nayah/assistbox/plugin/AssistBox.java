package com.nayah.assistbox.plugin;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;

import android.content.Context;
import android.content.Intent;

import com.nayah.assistbox.AssistBoxActivity;

import org.json.JSONArray;
import org.json.JSONException;

public class AssistBox extends CordovaPlugin {
    private static final String ACTION_GO_TO_ASSISTBOX = "goToAssistBox";

    public AssistBox() {

    }

    @Override
    public boolean execute(String action, JSONArray args, final CallbackContext callbackContext) throws JSONException {
        try {
            if (ACTION_GO_TO_ASSISTBOX.equals(action)) {
                String token = args.getString(0);
                String mobileServiceEndpoint = args.getString(1);
                String mobileStorageEndpoint = args.getString(2);
                if (token != null && mobileServiceEndpoint != null && mobileStorageEndpoint != null) {
                    Context context = cordova.getActivity().getApplicationContext();
                    Intent intent = new Intent(context, AssistBoxActivity.class);
                    intent.putExtra("accessToken", token);
                    intent.putExtra("mobileServiceEndpoint", mobileServiceEndpoint);
                    intent.putExtra("mobileStorageEndpoint", mobileStorageEndpoint);
                    cordova.getActivity().startActivity(intent);
                    callbackContext.success("redirected");
                    return true;
                } else {
                    callbackContext.error("Token is required!");
                    return false;
                }
            } else {
                callbackContext.error("AssistBox plugin error." + action + " is not a supported function. Did you mean '" + ACTION_GO_TO_ASSISTBOX + "'?");
                return false;
            }
        } catch (Exception e) {
            callbackContext.error(e.getMessage());
            return false;
        }
    }
}