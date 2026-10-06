.class Lcom/miui/antifraud/d$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antifraud/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antifraud/d;


# direct methods
.method constructor <init>(Lcom/miui/antifraud/d;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antifraud/d$b;->a:Lcom/miui/antifraud/d;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/miui/antifraud/d$b;->a:Lcom/miui/antifraud/d;

    invoke-static {p1}, Lcom/miui/antifraud/d;->d(Lcom/miui/antifraud/d;)Lcom/miui/antifraud/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/antifraud/d$b;->a:Lcom/miui/antifraud/d;

    invoke-static {p1}, Lcom/miui/antifraud/d;->d(Lcom/miui/antifraud/d;)Lcom/miui/antifraud/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/antifraud/a;->h()I

    move-result p1

    iget-object v0, p0, Lcom/miui/antifraud/d$b;->a:Lcom/miui/antifraud/d;

    invoke-static {v0}, Lcom/miui/antifraud/d;->d(Lcom/miui/antifraud/d;)Lcom/miui/antifraud/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antifraud/a;->dismiss()V

    iget-object v0, p0, Lcom/miui/antifraud/d$b;->a:Lcom/miui/antifraud/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/antifraud/d;->e(Lcom/miui/antifraud/d;Lcom/miui/antifraud/a;)Lcom/miui/antifraud/a;

    iget-object v0, p0, Lcom/miui/antifraud/d$b;->a:Lcom/miui/antifraud/d;

    invoke-static {v0}, Lcom/miui/antifraud/d;->g(Lcom/miui/antifraud/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/antifraud/d$b$a;

    invoke-direct {v1, p0, p1}, Lcom/miui/antifraud/d$b$a;-><init>(Lcom/miui/antifraud/d$b;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
