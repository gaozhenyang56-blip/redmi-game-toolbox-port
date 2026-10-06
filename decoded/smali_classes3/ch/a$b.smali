.class Lch/a$b;
.super Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/a;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lch/a;


# direct methods
.method constructor <init>(Lch/a;)V
    .locals 0

    iput-object p1, p0, Lch/a$b;->a:Lch/a;

    invoke-direct {p0}, Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)V
    .locals 2

    iget-object p1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const-string v0, "com.miui.home"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xd4

    if-nez v0, :cond_2

    iget-object v0, p0, Lch/a$b;->a:Lch/a;

    invoke-static {v0}, Lch/a;->a(Lch/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lch/a$b;->a:Lch/a;

    invoke-static {v0, p1}, Lch/a;->d(Lch/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/a$b;->a:Lch/a;

    invoke-static {v0, p1}, Lch/a;->f(Lch/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lch/a$b;->a:Lch/a;

    invoke-static {p1}, Lch/a;->b(Lch/a;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3de

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lch/a$b;->a:Lch/a;

    invoke-static {p1}, Lch/a;->b(Lch/a;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object p1, p0, Lch/a$b;->a:Lch/a;

    invoke-static {p1}, Lch/a;->b(Lch/a;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
