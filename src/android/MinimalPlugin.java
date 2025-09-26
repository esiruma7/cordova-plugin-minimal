package com.ofe.minimal;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.PluginResult;
import org.json.JSONArray;
import org.json.JSONException;

public class MinimalPlugin extends CordovaPlugin {
    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if ("echo".equals(action)) {
            String message = args.getString(0);
            callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, "Echo: " + message));
            return true;
        }
        return false;
    }
}
