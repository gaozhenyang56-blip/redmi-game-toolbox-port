.class Lcom/miui/antivirus/service/GuardService$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/service/GuardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/service/GuardService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/miui/antivirus/service/GuardService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService$f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-string v0, "com.gzy.redmiport.compat.process.IActivityChangeListener"

    const-string v1, "miui.process.ProcessManager"

    iget-object v2, p0, Lcom/miui/antivirus/service/GuardService$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antivirus/service/GuardService;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    const-string v4, "GuardService"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "unregisterActivityChanageListener"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v6

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/miui/antivirus/service/GuardService;->m(Lcom/miui/antivirus/service/GuardService;)Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    move-result-object v5

    aput-object v5, v0, v6

    invoke-static {v4, p1, v1, v3, v0}, Lbh/e;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "unregisterActivityChanageListener exception!"

    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {v6}, Lo2/h;->P(Z)V

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lcom/miui/antivirus/service/GuardService;->x(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-static {v2, p1}, Lcom/miui/antivirus/service/GuardService;->z(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-static {v2, p1}, Lcom/miui/antivirus/service/GuardService;->B(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-static {v2, p1}, Lcom/miui/antivirus/service/GuardService;->D(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lo2/h;->k(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/miui/antivirus/service/GuardService;->x(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-static {v2}, Lo2/h;->j(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/miui/antivirus/service/GuardService;->z(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-static {v2}, Lw2/t;->p(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/miui/antivirus/service/GuardService;->B(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-static {v2}, Lw2/t;->m(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/miui/antivirus/service/GuardService;->D(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "registerActivityChangeListener"

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/util/List;

    aput-object v8, v7, v6

    const-class v8, Ljava/util/List;

    aput-object v8, v7, v5

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v8, 0x2

    aput-object v0, v7, v8

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2}, Lo2/h;->k(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-static {v2}, Lo2/h;->j(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-static {v2}, Lcom/miui/antivirus/service/GuardService;->m(Lcom/miui/antivirus/service/GuardService;)Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-static {v4, p1, v1, v7, v0}, Lbh/e;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "registerActivityChangeListener exception!"

    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {v5}, Lo2/h;->P(Z)V

    :goto_2
    return-void
.end method
