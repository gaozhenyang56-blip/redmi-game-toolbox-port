package com.gzy.qinglian.remote;
import android.os.ParcelFileDescriptor;
interface IShell {
    ParcelFileDescriptor execute(String action, String payload);
    void destroy();
}
