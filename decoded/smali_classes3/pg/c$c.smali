.class Lpg/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpg/c;->x(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lpg/c;


# direct methods
.method constructor <init>(Lpg/c;ZII)V
    .locals 0

    iput-object p1, p0, Lpg/c$c;->d:Lpg/c;

    iput-boolean p2, p0, Lpg/c$c;->a:Z

    iput p3, p0, Lpg/c$c;->b:I

    iput p4, p0, Lpg/c$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lpg/c$c;->d:Lpg/c;

    invoke-static {v0}, Lpg/c;->e(Lpg/c;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lpg/c$c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpg/c$c;->d:Lpg/c;

    invoke-static {v0}, Lpg/c;->c(Lpg/c;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lpg/c$c;->d:Lpg/c;

    invoke-static {v0}, Lpg/c;->e(Lpg/c;)I

    move-result v1

    invoke-static {v0, v1}, Lpg/c;->j(Lpg/c;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lpg/c$c;->d:Lpg/c;

    iget v1, p0, Lpg/c$c;->b:I

    iget v2, p0, Lpg/c$c;->c:I

    invoke-static {v0, v1, v2}, Lpg/c;->l(Lpg/c;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lpg/c$c;->d:Lpg/c;

    invoke-static {v0}, Lpg/c;->h(Lpg/c;)V

    iget-object v0, p0, Lpg/c$c;->d:Lpg/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpg/c;->d(Lpg/c;I)I

    :goto_0
    return-void
.end method
