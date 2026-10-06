.class Lua/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lua/c;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lab/g;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lab/g;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lua/c$a;->a:Lab/g;

    iput-object p2, p0, Lua/c$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 13

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.android.settingslib.RestrictedLockUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "com.android.settingslib.RestrictedLockUtils$EnforcedAdmin"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "checkIfRestrictionEnforced"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    const/4 v7, 0x1

    aput-object v0, v6, v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v8, v6, v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v11

    aput-object v11, v10, v1

    aput-object p1, v10, v7

    invoke-static {}, Lx4/z1;->y()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v2, v3, v4, v6, v10}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "hasBaseUserRestriction"

    new-array v10, v5, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v1

    aput-object v0, v10, v7

    aput-object v8, v10, v9

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v12

    aput-object v12, v11, v1

    aput-object p1, v11, v7

    invoke-static {}, Lx4/z1;->y()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v2, v4, v6, v10, v11}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    const-string v3, "sendShowAdminSupportDetailsIntent"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v1

    aput-object v0, v4, v7

    aput-object v8, v4, v9

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v5

    aput-object v5, v0, v1

    aput-object p1, v0, v7

    invoke-static {}, Lx4/z1;->y()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v9

    invoke-static {v2, v3, v4, v0}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "no_physical_media"

    invoke-direct {p0, p1}, Lua/c$a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lua/c$a;->a:Lab/g;

    invoke-virtual {p1}, Lab/g;->a()Lab/b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lab/b;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "no_usb_file_transfer"

    invoke-direct {p0, p1}, Lua/c$a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lya/a;

    iget-object p2, p0, Lua/c$a;->b:Landroid/content/Context;

    iget-object v0, p0, Lua/c$a;->a:Lab/g;

    invoke-direct {p1, p2, v0}, Lya/a;-><init>(Landroid/content/Context;Lab/g;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
