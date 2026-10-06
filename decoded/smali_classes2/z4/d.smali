.class public Lz4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz4/d$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz4/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/d;->a:Landroid/content/Context;

    new-instance p1, Lz4/d$a;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lz4/d$a;-><init>(Lz4/d;Landroid/os/Looper;)V

    iput-object p1, p0, Lz4/d;->b:Landroid/os/Handler;

    iput-boolean p3, p0, Lz4/d;->c:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz4/d;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lz4/d;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lz4/d;->g(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Lz4/d;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lz4/d;->e(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic c(Lz4/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lz4/d;->d:Ljava/util/List;

    return-object p0
.end method

.method private e(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ldc/d;->c(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object p1, p0, Lz4/d;->a:Landroid/content/Context;

    invoke-static {p1, v2}, Lz4/b;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoke "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " permission:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIUISafety-Terminal"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lz4/d;->a:Landroid/content/Context;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x3

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lz4/b;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZ)V

    :cond_1
    return-void
.end method

.method private synthetic g(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lz4/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/permission/PermissionContract;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private i(ZILjava/lang/String;I)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lz4/d;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lz4/d;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object p2, p0, Lz4/d;->b:Landroid/os/Handler;

    int-to-long p3, p4

    const-wide/16 v0, 0x3e8

    mul-long/2addr p3, v0

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public static j(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lx4/z1;->e()I

    move-result v1

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "action"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {v0, v1}, Lkc/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.action.sync_status_bar"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "miui.permission.READ_AND_WIRTE_PERMISSION_MANAGER"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Ldc/d;->e(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lz4/d;->b:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delayOneTimeSession for app request, permissionName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "MIUISafety-Terminal"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lz4/d;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lz4/d;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v0, p1, Landroid/os/Message;->arg1:I

    iget-object p2, p0, Lz4/d;->b:Landroid/os/Handler;

    const-wide/16 v0, 0x2710

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public f(Ljava/lang/String;IZILjava/lang/String;I)Z
    .locals 9

    invoke-static {p1, p5}, Lz4/b;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {p4}, Lz4/b;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p5}, Lz4/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptRemoteDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",op:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",active:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",delay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIUISafety-Terminal"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3, p4, v4, p6}, Lz4/d;->i(ZILjava/lang/String;I)V

    iget-boolean p6, p0, Lz4/d;->c:Z

    const/4 v0, 0x1

    if-nez p6, :cond_2

    return v0

    :cond_2
    invoke-static {p4}, Lz4/b;->n(I)Z

    move-result p6

    if-eqz p6, :cond_3

    iget-object p6, p0, Lz4/d;->a:Landroid/content/Context;

    invoke-static {p6}, Lkc/q;->G(Landroid/content/Context;)Lkc/q;

    move-result-object v2

    invoke-static {p2}, Lx4/z1;->m(I)I

    move-result v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v5, p4

    move v6, p3

    invoke-virtual/range {v2 .. v8}, Lkc/q;->f0(ILjava/lang/String;IZZZ)V

    :cond_3
    if-eqz p3, :cond_4

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p6, "pkgName"

    invoke-virtual {p3, p6, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "calleePkg"

    invoke-virtual {p3, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "op"

    invoke-virtual {p3, p1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p4}, Ldc/d;->d(I)J

    move-result-wide p4

    const-string p1, "permissionId"

    invoke-virtual {p3, p1, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "mode"

    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "callerUid"

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lx4/z1;->y()I

    move-result p1

    const-string p2, "user"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lz4/c;

    invoke-direct {p1, p0, p3}, Lz4/c;-><init>(Lz4/d;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v1, 0x1

    const-string v2, "action"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v1, "permissionName"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.ATTRIBUTION_TAGS"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Ldc/d;->e(Ljava/lang/String;)I

    move-result v11

    const-string v1, "terminal.revoke_perm_gap"

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    move-object v1, p0

    move-object v2, v0

    move v3, v8

    move v4, v9

    move v5, v11

    move-object v6, v10

    invoke-virtual/range {v1 .. v7}, Lz4/d;->f(Ljava/lang/String;IZILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v7, Lz4/d$b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move v4, v8

    move v5, v11

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lz4/d$b;-><init>(Lz4/d;Ljava/lang/String;IILjava/lang/String;)V

    if-eqz v9, :cond_2

    const-string v0, "android.intent.extra.remote_intent_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v7, p1}, Lz4/d$b;->a(Landroid/os/IBinder;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lz4/d$b;->b()V

    :cond_3
    :goto_1
    return-void
.end method
