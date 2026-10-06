.class Lpg/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpg/c;->y(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lpg/c;


# direct methods
.method constructor <init>(Lpg/c;Z)V
    .locals 0

    iput-object p1, p0, Lpg/c$a;->b:Lpg/c;

    iput-boolean p2, p0, Lpg/c$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lpg/c$a;->b:Lpg/c;

    iget-boolean v1, p0, Lpg/c$a;->a:Z

    invoke-static {v0, v1}, Lpg/c;->b(Lpg/c;Z)Z

    iget-object v0, p0, Lpg/c$a;->b:Lpg/c;

    invoke-static {v0}, Lpg/c;->a(Lpg/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpg/c$a;->b:Lpg/c;

    invoke-static {v0}, Lpg/c;->c(Lpg/c;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lpg/c$a;->b:Lpg/c;

    invoke-static {v0}, Lpg/c;->e(Lpg/c;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpg/c$a;->b:Lpg/c;

    invoke-static {v0}, Lpg/c;->e(Lpg/c;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lpg/c;->g(Lpg/c;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lpg/c$a;->b:Lpg/c;

    invoke-static {v0}, Lpg/c;->h(Lpg/c;)V

    iget-object v0, p0, Lpg/c$a;->b:Lpg/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpg/c;->d(Lpg/c;I)I

    :cond_0
    :goto_0
    return-void
.end method
