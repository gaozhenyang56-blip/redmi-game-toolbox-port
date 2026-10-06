.class public final Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData$CloudData;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->a:Landroid/net/Uri;

    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/single"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->b:Landroid/net/Uri;

    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/notify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->c:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8

    const-class v0, Ljava/lang/String;

    const-string v1, "android.provider.MiuiSettings$SettingsCloudData"

    invoke-static {v1}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v6, 0x2

    aput-object v0, v3, v6

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v0, v3, v7

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v5

    aput-object p1, v0, v4

    aput-object p2, v0, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v7

    const-string p0, "getCloudDataBoolean"

    invoke-virtual {v1, p0, v3, v0}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->a()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8

    const-class v0, Ljava/lang/String;

    const-string v1, "android.provider.MiuiSettings$SettingsCloudData"

    invoke-static {v1}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v6, 0x2

    aput-object v0, v3, v6

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v0, v3, v7

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v5

    aput-object p1, v0, v4

    aput-object p2, v0, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v7

    const-string p0, "getCloudDataInt"

    invoke-virtual {v1, p0, v3, v0}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->i()I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData$CloudData;",
            ">;"
        }
    .end annotation

    const-string v0, "android.provider.MiuiSettings$SettingsCloudData"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    const-string p0, "getCloudDataList"

    invoke-virtual {v0, p0, v2, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->k()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static d()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public static e(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-class v0, Ljava/lang/String;

    const-string v1, "android.provider.MiuiSettings$SettingsCloudData"

    invoke-static {v1}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v6, 0x2

    aput-object v0, v3, v6

    const/4 v7, 0x3

    aput-object v0, v3, v7

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v5

    aput-object p1, v0, v4

    aput-object p2, v0, v6

    aput-object p3, v0, v7

    const-string p0, "getCloudDataString"

    invoke-virtual {v1, p0, v3, v0}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
