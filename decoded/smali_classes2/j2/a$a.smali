.class Lj2/a$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2/a$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lj2/a$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lj2/a$b;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lj2/a$a;->a:Lj2/a$b;

    return-void
.end method

.method static synthetic a(Lj2/a$a;Landroid/content/Context;JLandroid/app/DownloadManager;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lj2/a$a;->b(Landroid/content/Context;JLandroid/app/DownloadManager;)Z

    move-result p0

    return p0
.end method

.method private b(Landroid/content/Context;JLandroid/app/DownloadManager;)Z
    .locals 10

    const-string v0, "SmsEngineUpdateManager"

    const-string v1, "2.1.2"

    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [J

    const/4 v5, 0x0

    aput-wide p2, v4, v5

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    :try_start_0
    invoke-virtual {p4, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "status"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_3
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    move v4, v5

    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    const/16 v2, 0x8

    if-eq v4, v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail: download failed , Version: 2.1.2 , status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "fail_download"

    invoke-static {v1, p1}, Lc2/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lj2/a;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    const-string v4, "resource.zip"

    aput-object v4, v2, v3

    const/4 v6, 0x2

    const-string v7, ".tmp"

    aput-object v7, v2, v6

    const-string v6, "%s/%s%s"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lw2/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "6206c9f17a64246498b52e117d0cff1e"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail: md5 verify failed !  md5: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , ver:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , local: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lj2/a$a;->c()V

    const-string p1, "fail_md5"

    invoke-static {v1, p1}, Lc2/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_3
    const/4 v6, 0x0

    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "afterDownload: delete tmpFileName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/16 v2, 0x1000

    :try_start_6
    new-array v2, v2, [B

    :goto_2
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    invoke-virtual {v4, v2, v5, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    :cond_4
    new-array v2, v3, [J

    aput-wide p2, v2, v5

    invoke-virtual {p4, v2}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {v7}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {v4}, Lbl/e;->c(Ljava/io/OutputStream;)V

    invoke-direct {p0}, Lj2/a$a;->c()V

    :try_start_7
    invoke-static {v3}, Lkj/c;->c(Z)V

    invoke-static {p1}, Lj2/a;->e(Landroid/content/Context;)Lj2/a;

    move-result-object p2

    invoke-static {p2, v1}, Lj2/a;->c(Lj2/a;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "content://antispam"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string p4, "initSmsEngine"

    invoke-virtual {p2, p3, p4, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lm2/a;->B(Landroid/content/Context;J)V

    const-string p1, "success"

    invoke-static {v1, p1}, Lc2/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "5. xiaomi engine update success !"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {v5}, Lkj/c;->c(Z)V

    return v3

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_8
    const-string p2, "fail: Exception when Loader sms files ! "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "fail_crash_load"

    invoke-static {v1, p1}, Lc2/a;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {v5}, Lkj/c;->c(Z)V

    return v5

    :goto_3
    invoke-static {v5}, Lkj/c;->c(Z)V

    throw p1

    :catchall_3
    move-exception p1

    move-object v6, v7

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v6, v7

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_4

    :catchall_4
    move-exception p1

    move-object v4, v6

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v4, v6

    :goto_4
    :try_start_9
    const-string p2, "fail: Exception when copy tmp files ! "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "fail_crash_copy"

    invoke-static {v1, p1}, Lc2/a;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-static {v6}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {v4}, Lbl/e;->c(Ljava/io/OutputStream;)V

    invoke-direct {p0}, Lj2/a$a;->c()V

    return v5

    :catchall_5
    move-exception p1

    :goto_5
    invoke-static {v6}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {v4}, Lbl/e;->c(Ljava/io/OutputStream;)V

    invoke-direct {p0}, Lj2/a$a;->c()V

    throw p1

    :catch_4
    move-exception p1

    const-string p2, "afterDownload Exception"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "fail_crash_afterDownload"

    invoke-static {v1, p1}, Lc2/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lj2/a;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "resource.zip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".tmp"

    aput-object v2, v0, v1

    const-string v1, "%s/%s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;Lj2/a$b;)V
    .locals 7

    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/DownloadManager;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-direct {v0, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    sget-object p2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const-string v1, "resource.zip.tmp"

    invoke-virtual {v0, p2, v1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    invoke-virtual {v6, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v3

    new-instance v0, Lj2/a$a$a;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lj2/a$a$a;-><init>(Lj2/a$a;JLj2/a$b;Landroid/app/DownloadManager;)V

    new-instance p3, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {p3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p3, p2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAppVersionCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ver"

    const-string v2, "2.1.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lp4/i;

    const-string v2, "antispam_checkupdate"

    invoke-direct {v1, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v2, "https://api.sec.miui.com/GuardProviderV1/GetResourceZipFile"

    const-string v3, "7htr5238-a8cf-3k79-ec73-75382145ns5c"

    invoke-static {v0, v2, v3, v1}, Leg/j;->r(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "fileUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " JSONException:  response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsEngineUpdateManager"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private g(Landroid/content/Context;Lj2/a$b;)V
    .locals 4

    const-string v0, "SmsEngineUpdateManager"

    const-string v1, "2.1.2"

    const-string v2, "start"

    invoke-static {v1, v2}, Lc2/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lj2/a$a;->c()V

    invoke-direct {p0}, Lj2/a$a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1, v2, p2}, Lj2/a$a;->e(Landroid/content/Context;Ljava/lang/String;Lj2/a$b;)V

    return-void

    :cond_0
    const-string p2, "fail: downloadUrl is null"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "fail_getDownloadUrl"

    invoke-static {v1, p2}, Lc2/a;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v2, "Exception when startCheckUpdate"

    invoke-static {v0, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p2, "fail_crash_startCheckUpdate"

    invoke-static {v1, p2}, Lc2/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lj2/a;->e(Landroid/content/Context;)Lj2/a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lj2/a;->a(Lj2/a;Z)Z

    iget-object p1, p0, Lj2/a$a;->a:Lj2/a$b;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lj2/a$b;->a(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs d([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    iget-object v0, p0, Lj2/a$a;->a:Lj2/a$b;

    invoke-direct {p0, p1, v0}, Lj2/a$a;->g(Landroid/content/Context;Lj2/a$b;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lj2/a$a;->d([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
