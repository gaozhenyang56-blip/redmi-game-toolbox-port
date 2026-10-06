.class Lsd/f$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsd/f;->p(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lsd/f;


# direct methods
.method constructor <init>(Lsd/f;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lsd/f$b;->b:Lsd/f;

    iput-object p3, p0, Lsd/f$b;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lsd/f$b;->b:Lsd/f;

    invoke-static {p1}, Lsd/f;->h(Lsd/f;)Z

    move-result v0

    invoke-static {p1, v0}, Lsd/f;->g(Lsd/f;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange isInFastMode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsd/f$b;->b:Lsd/f;

    invoke-static {v0}, Lsd/f;->f(Lsd/f;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FastChargeReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lsd/f$b;->b:Lsd/f;

    iget-object v0, p0, Lsd/f$b;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lsd/f;->i(Lsd/f;Landroid/content/Context;)V

    return-void
.end method
