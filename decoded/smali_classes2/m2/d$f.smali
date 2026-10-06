.class Lm2/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lm2/d$e;

.field final synthetic c:Lm2/d;


# direct methods
.method public constructor <init>(Lm2/d;Ljava/lang/String;Lm2/d$e;)V
    .locals 0

    iput-object p1, p0, Lm2/d$f;->c:Lm2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm2/d$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lm2/d$f;->b:Lm2/d$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lm2/d$f;->c:Lm2/d;

    invoke-static {v0}, Lm2/d;->c(Lm2/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lm2/d$f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lm2/f;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    new-instance v1, Lm2/d$g;

    iget-object v2, p0, Lm2/d$f;->c:Lm2/d;

    iget-object v3, p0, Lm2/d$f;->a:Ljava/lang/String;

    iget-object v4, p0, Lm2/d$f;->b:Lm2/d$e;

    invoke-direct {v1, v2, v3, v0, v4}, Lm2/d$g;-><init>(Lm2/d;Ljava/lang/String;Landroid/util/Pair;Lm2/d$e;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lm2/d$f;->c:Lm2/d;

    invoke-static {v1}, Lm2/d;->d(Lm2/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
