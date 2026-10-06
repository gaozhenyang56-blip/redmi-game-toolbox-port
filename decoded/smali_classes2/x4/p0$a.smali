.class Lx4/p0$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx4/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lx4/p0;


# direct methods
.method constructor <init>(Lx4/p0;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lx4/p0$a;->a:Lx4/p0;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lx4/p0$a;->a:Lx4/p0;

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/p0;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lx4/p0;->b(Lx4/p0;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: isLockTaskEnable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lx4/p0$a;->a:Lx4/p0;

    invoke-static {v0}, Lx4/p0;->a(Lx4/p0;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockTaskUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
