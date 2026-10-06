.class public abstract Lmg/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field public c:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmg/a;->b:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lmg/a;->c:Landroid/content/IntentFilter;

    iput-object p1, p0, Lmg/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 3

    iget-boolean v0, p0, Lmg/a;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmg/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmg/a;->b:Z

    iget-object v0, p0, Lmg/a;->c:Landroid/content/IntentFilter;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lmg/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lmg/a;->c:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lmg/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmg/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmg/a;->b:Z

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method
