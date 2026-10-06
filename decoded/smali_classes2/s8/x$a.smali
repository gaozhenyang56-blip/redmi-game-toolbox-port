.class Ls8/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls8/x;->i(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ls8/x;


# direct methods
.method constructor <init>(Ls8/x;I)V
    .locals 0

    iput-object p1, p0, Ls8/x$a;->b:Ls8/x;

    iput p2, p0, Ls8/x$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ls8/x$a;->b:Ls8/x;

    iget v1, p0, Ls8/x$a;->a:I

    invoke-static {v0, v1}, Ls8/x;->a(Ls8/x;I)V

    iget-object v0, p0, Ls8/x$a;->b:Ls8/x;

    invoke-static {v0}, Ls8/x;->b(Ls8/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls8/x$c;

    invoke-interface {v1}, Ls8/x$c;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
