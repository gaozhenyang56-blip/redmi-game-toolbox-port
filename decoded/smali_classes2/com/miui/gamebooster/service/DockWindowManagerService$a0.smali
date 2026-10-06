.class Lcom/miui/gamebooster/service/DockWindowManagerService$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/DockWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a0"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/DockWindowManagerService;


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$a0;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService;Lcom/miui/gamebooster/service/DockWindowManagerService$k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService$a0;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$a0;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$a0;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->n0()I

    move-result v1

    invoke-static {v0, v1}, Lw6/i;->b(Ljava/lang/String;I)Lx6/b;

    move-result-object v0

    invoke-virtual {v0}, Lx6/b;->c()Z

    move-result v0

    const-string v1, "com.xiaomi.macro"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "DockWindowManagerService"

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$a0;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v3}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Le7/b;->h(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La8/y0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$a0;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$a0;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->W(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "start Macro when service online"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v1, "com.xiaomi.migameservice"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$a0;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lv8/c;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/i2;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$a0;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->u1()V

    const-string v0, "startMiGameService when service online"

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiver app change. pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
