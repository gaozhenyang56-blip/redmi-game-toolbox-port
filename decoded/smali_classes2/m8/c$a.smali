.class Lm8/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm8/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lm8/c;


# direct methods
.method constructor <init>(Lm8/c;)V
    .locals 0

    iput-object p1, p0, Lm8/c$a;->a:Lm8/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lm8/c$a;->a:Lm8/c;

    invoke-virtual {v0}, Lm8/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, La8/a2;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lc7/b;->b(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lm8/c$a;->a:Lm8/c;

    invoke-static {v1}, Lm8/c;->a(Lm8/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    invoke-static {}, La8/e0;->b()I

    move-result v1

    :goto_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lm8/c$a;->a:Lm8/c;

    invoke-static {v4, v0}, Lm8/c;->b(Lm8/c;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lm8/c$a;->a:Lm8/c;

    invoke-static {v4, v1}, Lm8/c;->b(Lm8/c;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lm8/c$a;->a:Lm8/c;

    invoke-static {v0}, Lm8/c;->c(Lm8/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
