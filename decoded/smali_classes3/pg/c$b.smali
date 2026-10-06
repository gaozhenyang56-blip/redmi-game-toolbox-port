.class Lpg/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpg/c;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpg/c;


# direct methods
.method constructor <init>(Lpg/c;)V
    .locals 0

    iput-object p1, p0, Lpg/c$b;->a:Lpg/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lpg/c$b;->a:Lpg/c;

    invoke-static {v1}, Lpg/c;->i(Lpg/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lpg/c$b;->a:Lpg/c;

    invoke-static {v1}, Lpg/c;->i(Lpg/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v3, p0, Lpg/c$b;->a:Lpg/c;

    invoke-static {v3}, Lpg/c;->e(Lpg/c;)I

    move-result v3

    if-eq v3, v1, :cond_2

    iget-object v3, p0, Lpg/c$b;->a:Lpg/c;

    invoke-static {v3}, Lpg/c;->e(Lpg/c;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lpg/c$b;->a:Lpg/c;

    invoke-static {v3}, Lpg/c;->c(Lpg/c;)I

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v2, p0, Lpg/c$b;->a:Lpg/c;

    invoke-static {v2}, Lpg/c;->e(Lpg/c;)I

    move-result v3

    invoke-static {v2, v3}, Lpg/c;->j(Lpg/c;I)V

    :cond_2
    iget-object v2, p0, Lpg/c$b;->a:Lpg/c;

    invoke-static {v2, v1}, Lpg/c;->f(Lpg/c;I)I

    iget-object v1, p0, Lpg/c$b;->a:Lpg/c;

    invoke-static {v1}, Lpg/c;->e(Lpg/c;)I

    move-result v2

    invoke-static {v1, v2}, Lpg/c;->k(Lpg/c;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v1, p0, Lpg/c$b;->a:Lpg/c;

    invoke-static {v1}, Lpg/c;->h(Lpg/c;)V

    iget-object v1, p0, Lpg/c$b;->a:Lpg/c;

    invoke-static {v1, v0}, Lpg/c;->d(Lpg/c;I)I

    :goto_1
    return-void
.end method
