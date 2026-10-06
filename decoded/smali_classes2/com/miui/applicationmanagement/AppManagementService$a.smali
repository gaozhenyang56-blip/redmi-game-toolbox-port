.class Lcom/miui/applicationmanagement/AppManagementService$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationmanagement/AppManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/app/AppOpsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/applicationmanagement/AppManagementService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/miui/applicationmanagement/AppManagementService$a;->b:Landroid/app/AppOpsManager;

    return-void
.end method

.method static synthetic a(Lcom/miui/applicationmanagement/AppManagementService$a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationmanagement/AppManagementService$a;->e(Landroid/content/Context;)V

    return-void
.end method

.method private c(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const-string p1, "null"

    goto :goto_0

    :pswitch_0
    const-string p1, "hidden_id_switch"

    goto :goto_0

    :pswitch_1
    const-string p1, "palm_rejection_switch"

    goto :goto_0

    :pswitch_2
    const-string p1, "prevent_wrong_install_switch"

    goto :goto_0

    :pswitch_3
    const-string p1, "isolated_storage_switch"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x273f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;)Z
    .locals 2

    iget v0, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x2740

    if-ne p2, v1, :cond_0

    invoke-static {p1, v0, p3}, Lcom/miui/appmanager/AppManageUtils;->F(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationmanagement/AppManagementService$a;->b:Landroid/app/AppOpsManager;

    invoke-static {p1, p2, v0, p3}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/miui/permcenter/o;->t:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/miui/permcenter/o;->y:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lyc/c;->a:Lyc/c;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Lyc/c;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/ArrayList;

    return-void
.end method

.method private f(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    sget-boolean p1, Lcom/miui/permcenter/o;->u:Z

    goto :goto_0

    :pswitch_1
    sget-boolean p1, Lcom/miui/permcenter/o;->t:Z

    goto :goto_0

    :pswitch_2
    sget-boolean p1, Lcom/miui/permcenter/o;->s:Z

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/miui/permcenter/o;->h()Z

    move-result p1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x273f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private g()V
    .locals 10

    iget-object v0, p0, Lcom/miui/applicationmanagement/AppManagementService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/appmanager/AppManageUtils;->G(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    :goto_0
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_6

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_0

    goto :goto_4

    :cond_0
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    if-eqz v7, :cond_2

    goto :goto_4

    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "package_name"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x273f

    :goto_2
    const/16 v8, 0x2742

    if-gt v7, v8, :cond_5

    invoke-direct {p0, v7}, Lcom/miui/applicationmanagement/AppManagementService$a;->f(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0, v0, v7, v5}, Lcom/miui/applicationmanagement/AppManagementService$a;->d(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "on"

    goto :goto_3

    :cond_3
    const-string v8, "off"

    :goto_3
    invoke-direct {p0, v7}, Lcom/miui/applicationmanagement/AppManagementService$a;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    const-string v0, "receive"

    invoke-static {v0, v2}, Lmb/b;->f(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    const-string p1, "doInBackground: "

    const-string v0, "packageinstaller_guide_install_permisson_merge_status"

    const-string v1, "first_v_forbidden_chain_merge_status"

    const-string v2, "AppManagementService"

    iget-object v3, p0, Lcom/miui/applicationmanagement/AppManagementService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_2

    invoke-static {}, Lcom/miui/permcenter/o;->j()Z

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v7, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {}, Lcom/miui/applicationmanagement/AppManagementService;->a()Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v8}, Lam/a;->g(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStatus: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/applicationmanagement/AppManagementService;->c:Landroid/net/Uri;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v5, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "doInBackground: update"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/applicationmanagement/AppManagementService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_1
    invoke-static {v3}, Lbm/d;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v5, Lcom/miui/applicationmanagement/AppManagementService$a$a;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v7, v3}, Lcom/miui/applicationmanagement/AppManagementService$a$a;-><init>(Lcom/miui/applicationmanagement/AppManagementService$a;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v3}, Lcom/miui/applicationmanagement/AppManagementService$a;->e(Landroid/content/Context;)V

    :goto_2
    invoke-direct {p0}, Lcom/miui/applicationmanagement/AppManagementService$a;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/applicationmanagement/AppManagementService$a;->b([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
