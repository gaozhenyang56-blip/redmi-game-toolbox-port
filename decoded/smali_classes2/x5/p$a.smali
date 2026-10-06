.class Lx5/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx5/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lx5/p;


# direct methods
.method constructor <init>(Lx5/p;)V
    .locals 0

    iput-object p1, p0, Lx5/p$a;->a:Lx5/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lx5/p$a;)V
    .locals 0

    invoke-direct {p0}, Lx5/p$a;->d()V

    return-void
.end method

.method public static synthetic b(Lx5/p$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lx5/p$a;->c(I)V

    return-void
.end method

.method private synthetic c(I)V
    .locals 2

    iget-object v0, p0, Lx5/p$a;->a:Lx5/p;

    invoke-static {v0}, Lx5/p;->q(Lx5/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx5/p$a;->a:Lx5/p;

    invoke-virtual {v0}, Lx5/p;->P()Ld6/a;

    move-result-object v0

    invoke-static {}, Ld6/a;->e()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ld6/a;->q(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lx5/p$a;->a:Lx5/p;

    invoke-virtual {p1}, Lx5/p;->M1()V

    :goto_0
    return-void
.end method

.method private synthetic d()V
    .locals 4

    invoke-static {}, Ld6/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ld6/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lx5/p$a;->a:Lx5/p;

    invoke-virtual {v0}, Lx5/p;->s0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lx5/p$a;->a:Lx5/p;

    invoke-static {v0}, Lx5/p;->e(Lx5/p;)F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp\uff1b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConversationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lx5/p$a;->a:Lx5/p;

    invoke-virtual {v1}, Lx5/p;->P()Ld6/a;

    move-result-object v1

    invoke-virtual {v1}, Ld6/a;->b()I

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    const/16 v1, 0x4b

    goto :goto_0

    :cond_0
    cmpl-float v2, v0, v2

    const/high16 v3, 0x42280000    # 42.0f

    if-ltz v2, :cond_1

    cmpg-float v2, v0, v3

    if-gtz v2, :cond_1

    const/16 v1, 0x41

    goto :goto_0

    :cond_1
    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    const/16 v1, 0x37

    :cond_2
    :goto_0
    iget-object v0, p0, Lx5/p$a;->a:Lx5/p;

    invoke-static {v0}, Lx5/p;->f(Lx5/p;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lx5/o;

    invoke-direct {v2, p0, v1}, Lx5/o;-><init>(Lx5/p$a;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lx5/p$a;->a:Lx5/p;

    invoke-static {v0}, Lx5/p;->f(Lx5/p;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lx5/p$a;->a:Lx5/p;

    invoke-static {v1}, Lx5/p;->p(Lx5/p;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lx5/p$a;->a:Lx5/p;

    invoke-virtual {v0}, Lx5/p;->M1()V

    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lx5/n;

    invoke-direct {v1, p0}, Lx5/n;-><init>(Lx5/p$a;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method
