.class public Lmc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Z

.field public static h:Z

.field private static i:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmc/c;->c:Ljava/util/List;

    const-string v0, "com.android.email"

    const-string v1, "com.miui.gallery"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmc/c;->d:Ljava/util/List;

    const-string v0, "com.android.deskclock"

    const-string v1, "com.android.calendar"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmc/c;->e:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Long;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmc/c;->f:Ljava/util/List;

    invoke-static {}, Lmc/c;->q()Z

    move-result v0

    sput-boolean v0, Lmc/c;->g:Z

    const/4 v0, 0x0

    sput-object v0, Lmc/c;->i:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lmc/c;->a:Ljava/util/List;

    const-string v1, "com.miui.home"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.xmsf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "recentTask"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "appwidget"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Lmc/c;->b:Ljava/util/Map;

    const-wide v3, 0x200000000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v3, 0x7f1203cd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v3, 0x7f1203ca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v3, 0x4000000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v3, 0x7f1203cb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v3, 0x80000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v3, 0x7f1203cc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v3, 0x200000000000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v3, 0x7f1203c9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_app_behavior_show_system_app"

    invoke-static {v0, v2}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmc/c;->h:Z

    return-void
.end method

.method public static A()V
    .locals 2

    sget-boolean v0, Lmc/c;->h:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lmc/c;->h:Z

    const-string v1, "key_app_behavior_show_system_app"

    invoke-static {v1, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic a(Llc/a;Llc/a;)I
    .locals 0

    invoke-static {p0, p1}, Lmc/c;->v(Llc/a;Llc/a;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/content/Context;JLandroid/content/pm/ApplicationInfo;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmc/c;->u(Landroid/content/Context;JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)J
    .locals 2

    const-string v0, "yyyy-MM-dd HH:mm"

    invoke-static {v0}, Lof/n;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static d(Ljava/util/List;J)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;J)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " is always allow state"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BehaviorRecord-Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static e(Landroid/app/ActivityManager;Ljava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v2, p2, :cond_0

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v2, :cond_0

    :goto_0
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "permissionId"

    const-string v2, "description"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/miui/permission/PermissionContract;->DESCRIPTION_URI:Landroid/net/Uri;

    const/4 p0, 0x2

    new-array v7, p0, [Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v7, v1

    const/4 p0, 0x1

    aput-object p1, v7, p0

    const-string v6, "locale = ? and pkgName = ?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "null"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {v1}, Lof/n;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120163

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v2, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120164

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f12014a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lof/n;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static h(J)I
    .locals 2

    sget-object v0, Lmc/c;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(JJ)I
    .locals 0

    sub-long/2addr p0, p2

    const-wide/32 p2, 0x5265c00

    div-long/2addr p0, p2

    long-to-int p0, p0

    return p0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0xc0040

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/miui/permcenter/o;->d:Z

    return v0
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Lcom/miui/permcenter/o;->e:Z

    return v0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Ldb/c;->k()Z

    move-result v1

    const-string v2, "PERMISSION_USE_WARNING"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Ldb/c;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/miui/permcenter/n;->r()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lof/h;->b()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Lmc/c;->y(Landroid/content/Context;Z)V

    const-string p0, "BehaviorRecord-Utils"

    const-string v0, "open PermissionUseWarning when check."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :cond_1
    if-eqz v0, :cond_3

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/miui/permcenter/o;->M()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public static n()Z
    .locals 1

    sget-boolean v0, Lmc/c;->h:Z

    return v0
.end method

.method public static o(Ljava/lang/String;I)Z
    .locals 3

    sget-object v0, Lmc/c;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-nez v2, :cond_3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v2, "adapt_force_start"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lx4/f1;->I(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return p1
.end method

.method public static p(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lmc/c;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static q()Z
    .locals 3

    :try_start_0
    const-class v0, Lmiui/security/SecurityManager;

    const-string v1, "IS_SUPPORT_CDD"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p0, p1, p2}, Lug/a;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is ignored"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Enterprise"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-static {p1}, Lmc/d;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    sget-boolean v1, Lmc/c;->g:Z

    and-int/2addr p3, v1

    if-eqz p3, :cond_3

    sget-object v1, Lmc/c;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    if-nez p3, :cond_4

    invoke-static {}, Lmc/d;->a()Lmc/d;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lmc/d;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    const/4 v1, -0x2

    if-ne p2, v1, :cond_5

    invoke-static {}, Lx4/z1;->y()I

    move-result p2

    :cond_5
    const/16 v1, 0x80

    invoke-static {p1, v1, p2}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_8

    if-eqz p3, :cond_7

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3}, Lx4/z1;->b(I)I

    move-result p3

    const/16 v1, 0x7d0

    if-le p3, v1, :cond_6

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_8

    invoke-static {p0, p1}, Lmc/c;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    :cond_6
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_7
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Lx4/z1;->b(I)I

    move-result p0

    const/16 p3, 0x2710

    if-lt p0, p3, :cond_6

    iget-object p0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p0, v2

    if-nez p0, :cond_6

    sget-object p0, Lmc/c;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    return v0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;IJZ)Z
    .locals 4

    const-wide/16 v0, 0x20

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v2, "com.miui.cit"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.longcheertel.cit"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/permcenter/o;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-wide/16 v2, 0x1000

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lkc/c;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastS()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-static {p0, p1}, Lcom/miui/permcenter/compact/PermissionManagerCompat;->shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    :cond_3
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_6

    invoke-static {p1, v1, p2}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3}, Lx4/z1;->b(I)I

    move-result p3

    const/16 p4, 0x2710

    if-lt p3, p4, :cond_4

    if-nez v0, :cond_5

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p2, v3

    if-eqz p2, :cond_5

    invoke-static {p0, p1}, Lmc/c;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    return v1

    :cond_6
    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_7

    sget-object v0, Lkc/c;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v3

    :cond_7
    invoke-static {}, Lmc/d;->a()Lmc/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3, p4}, Lmc/d;->f(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p3

    if-eqz p3, :cond_8

    return v3

    :cond_8
    invoke-static {p0, p1, p2, p5}, Lmc/c;->r(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public static t(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {v1}, Lof/n;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v1, v4, :cond_1

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    move v3, p0

    :cond_0
    return v3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v3
.end method

.method private static synthetic u(Landroid/content/Context;JLandroid/content/pm/ApplicationInfo;)Z
    .locals 2

    const-wide v0, 0x200000000000L

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    invoke-static {p0, p3}, Lxc/m;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lxc/m$a;

    move-result-object p0

    sget-object p1, Lxc/m$a;->a:Lxc/m$a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic v(Llc/a;Llc/a;)I
    .locals 0

    iget p1, p1, Llc/a;->c:I

    iget p0, p0, Llc/a;->c:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public static w(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Long;

    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-wide v7, 0x80000000L

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v2, v10

    const-wide/16 v9, 0x8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v2, v12

    const-wide/32 v12, 0x40000000

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v2, v15

    const-wide/16 v14, 0x10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x4

    aput-object v12, v2, v13

    const-wide/32 v14, 0x20000

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v16, 0x5

    aput-object v13, v2, v16

    const-wide v14, 0x200000000000L

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Lmc/b;

    invoke-direct {v8, v0}, Lmc/b;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-static {v0, v6, v2, v8}, Lcom/miui/permcenter/n;->y(Landroid/content/Context;ZLjava/util/List;Lxc/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lmc/c;->d(Ljava/util/List;J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v9, v10}, Lmc/c;->d(Ljava/util/List;J)I

    move-result v2

    const-wide v3, 0x80000000L

    invoke-static {v0, v3, v4}, Lmc/c;->d(Ljava/util/List;J)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x10

    invoke-static {v0, v2, v3}, Lmc/c;->d(Ljava/util/List;J)I

    move-result v2

    const-wide/32 v3, 0x40000000

    invoke-static {v0, v3, v4}, Lmc/c;->d(Ljava/util/List;J)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v2, 0x20000

    invoke-static {v0, v2, v3}, Lmc/c;->d(Ljava/util/List;J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v14, v15}, Lmc/c;->d(Ljava/util/List;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v2, -0x3

    invoke-static {v2, v3}, Lxc/u;->q(J)Ljava/util/ArrayList;

    move-result-object v0

    const-wide/16 v4, -0x2

    invoke-static {v4, v5}, Lxc/u;->q(J)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v0, v2, v3}, Lmc/c;->d(Ljava/util/List;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6, v4, v5}, Lmc/c;->d(Ljava/util/List;J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public static x(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Llc/a;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "op"

    const-string v3, "permissionId"

    const-string v4, "pkgName"

    const-string v5, "calleePkg"

    const-string v6, "mode"

    const-string v7, "endTime"

    const-string v8, "count"

    const-string v9, "user"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "(permissionId == ? OR permissionId == ? OR permissionId == ? OR permissionId == ? OR permissionId == ? OR op == ? OR op == ? OR op == ? OR op == ?) AND mode == ? AND calleePkg == \'null\'"

    const/16 v2, 0xa

    new-array v14, v2, [Ljava/lang/String;

    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v14, v5

    const-wide v6, 0x80000000L

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v14, v6

    const-wide v7, 0x4000000000L

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v14, v7

    const-wide v8, 0x200000000000L

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x3

    aput-object v4, v14, v10

    const-wide/high16 v10, 0x200000000000000L

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x4

    aput-object v4, v14, v10

    const/16 v4, 0x55

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x5

    aput-object v10, v14, v15

    const/16 v11, 0x53

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x6

    aput-object v10, v14, v8

    const/16 v9, 0x51

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x7

    aput-object v10, v14, v8

    const/16 v10, 0x7b

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x8

    aput-object v17, v14, v18

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x9

    aput-object v17, v14, v18

    const-string v17, "endTime DESC"

    const-string v10, "key_app_behavior_show_system_app"

    invoke-static {v10, v5}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v19

    const/16 v20, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v21, Lcom/miui/permission/PermissionContract;->RECORD_URI:Landroid/net/Uri;

    const/16 v2, 0x7b

    move v3, v11

    move-object/from16 v11, v21

    move v2, v15

    move-object/from16 v15, v17

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v10, :cond_9

    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v11, v12, v6}, Lmc/c;->r(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-static {v13}, Lmc/c;->t(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    if-nez v19, :cond_0

    invoke-static {v0, v11}, Lx4/f1;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-wide/16 v20, 0x0

    cmp-long v15, v13, v20

    if-nez v15, :cond_2

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eq v15, v4, :cond_1

    if-eq v15, v3, :cond_1

    if-eq v15, v9, :cond_1

    const/16 v2, 0x7b

    if-ne v15, v2, :cond_3

    goto :goto_1

    :cond_1
    const/16 v2, 0x7b

    :goto_1
    const-wide v13, 0x200000000000L

    goto :goto_2

    :cond_2
    const/16 v2, 0x7b

    :cond_3
    :goto_2
    cmp-long v15, v13, v20

    if-nez v15, :cond_4

    const/4 v2, 0x5

    goto :goto_0

    :cond_4
    const-wide/16 v20, 0x20

    cmp-long v15, v13, v20

    if-nez v15, :cond_5

    move v2, v6

    const/4 v15, 0x6

    goto :goto_3

    :cond_5
    const/4 v15, 0x6

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v2, v16

    :goto_3
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    new-instance v4, Llc/a;

    invoke-direct {v4, v12, v11}, Llc/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llc/a;

    invoke-virtual {v4, v2}, Llc/a;->a(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {v4, v2}, Llc/a;->a(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x5

    const/16 v3, 0x53

    const/16 v4, 0x55

    goto/16 :goto_0

    :cond_8
    const/4 v15, 0x6

    const-wide/16 v20, 0x20

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v20, v10

    goto :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v20, v10

    goto :goto_5

    :cond_9
    invoke-static {v10}, Lbl/e;->a(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    :goto_5
    :try_start_2
    const-string v2, "BehaviorRecord-Utils"

    const-string v3, "loadPermStatistics error "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static/range {v20 .. v20}, Lbl/e;->a(Ljava/io/Closeable;)V

    :goto_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lmc/a;

    invoke-direct {v4}, Lmc/a;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    return-object v0

    :goto_8
    invoke-static/range {v20 .. v20}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static y(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "PERMISSION_USE_WARNING"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lmc/c;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/permission/PermissionManager;->supportCloseBehaviorRecord()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lmc/c;->i:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
