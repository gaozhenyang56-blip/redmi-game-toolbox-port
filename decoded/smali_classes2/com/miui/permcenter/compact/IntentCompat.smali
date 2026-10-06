.class public Lcom/miui/permcenter/compact/IntentCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTRA_INSTALL_RESULT:Ljava/lang/String; = "android.intent.extra.INSTALL_RESULT"

.field public static final EXTRA_ORIGINATING_UID:Ljava/lang/String; = "android.intent.extra.ORIGINATING_UID"

.field public static final EXTRA_ORIGINATING_URI:Ljava/lang/String; = "android.intent.extra.ORIGINATING_URI"

.field public static final EXTRA_REFERRER:Ljava/lang/String; = "android.intent.extra.REFERRER"

.field public static final EXTRA_REMOTE_CALLBACK:Ljava/lang/String; = "android.intent.extra.REMOTE_CALLBACK"

.field public static final EXTRA_RESULT_NEEDED:Ljava/lang/String; = "android.intent.extra.RESULT_NEEDED"

.field public static final EXTRA_UNINSTALL_ALL_USERS:Ljava/lang/String; = "android.intent.extra.UNINSTALL_ALL_USERS"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "android.intent.extra.USER_ID"

.field public static final TAG:Ljava/lang/String; = "IntentCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIBinderExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const-class v3, Landroid/os/IBinder;

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p1, v6, v2

    const-string v1, "IntentCompat"

    const-string v4, "getIBinderExtra"

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->callObjectMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public static putExtra(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/os/IBinder;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    const-string p1, "IntentCompat"

    const-string p2, "putExtra"

    invoke-static {p1, p0, p2, v1, v0}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->callObjectMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
