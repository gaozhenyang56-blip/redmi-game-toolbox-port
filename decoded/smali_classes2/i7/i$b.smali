.class Li7/i$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li7/i;


# direct methods
.method constructor <init>(Li7/i;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Li7/i$b;->a:Li7/i;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Li7/i;->t(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Li7/i$b;->a:Li7/i;

    invoke-static {p1}, Li7/i;->f(Li7/i;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Li7/i$b;->a:Li7/i;

    invoke-static {p1}, Li7/i;->g(Li7/i;)V

    :goto_0
    return-void
.end method
