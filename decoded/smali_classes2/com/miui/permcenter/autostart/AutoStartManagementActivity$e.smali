.class Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/autostart/AutoStartManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
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
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/permcenter/autostart/AutoStartManagementActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method constructor <init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;IILjava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->a:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->b:I

    iput-object p4, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->d:Z

    iput-boolean p6, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->e:Z

    iput p2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->f:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v1

    invoke-static {}, Lx4/z1;->r()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->f:I

    if-eqz v2, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    const/16 v6, 0x3e7

    if-eq v2, v6, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v5, 0x4000

    const-string v2, "extra_permission"

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->b:I

    const-string v5, "extra_action"

    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "extra_package"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "extra_flags"

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->f:I

    const-string v3, "extra_user_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "@com.lbe.security.miui.permmgr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "AutoStartManagementActivity"

    const-string v2, "doInBackground: "

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x4000

    iget p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->b:I

    iget v7, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->f:I

    new-array v8, v3, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->c:Ljava/lang/String;

    aput-object v2, v8, v4

    move-wide v2, v5

    move v4, p1

    move v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JII[Ljava/lang/String;)V

    :goto_2
    iget-boolean p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->e:Z

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    invoke-static {}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->t0()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$f;

    iget-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->e:Z

    invoke-direct {v1, v2, v3}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$f;-><init>(Ljava/lang/String;Z)V

    const-wide/16 v2, 0x190

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
