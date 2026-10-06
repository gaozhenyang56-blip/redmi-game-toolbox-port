.class Lfe/l$a;
.super Lfe/l$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfe/l;->A(Landroid/content/Context;Lfe/l$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lfe/l;


# direct methods
.method constructor <init>(Lfe/l;Lfe/l$c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lfe/l$a;->c:Lfe/l;

    iput-object p3, p0, Lfe/l$a;->b:Landroid/content/Context;

    invoke-direct {p0, p2}, Lfe/l$d;-><init>(Lfe/l$c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lfe/l$a;->c:Lfe/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfe/l;->a(Lfe/l;Z)Z

    iget-object v0, p0, Lfe/l$a;->c:Lfe/l;

    invoke-static {v0}, Lfe/l;->b(Lfe/l;)V

    iget-object v0, p0, Lfe/l$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfe/l$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lfe/l$a;->c:Lfe/l;

    iget-object v2, p0, Lfe/l$a;->b:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lfe/l;->c(Lfe/l;Landroid/content/Context;Lfe/l$c;)V

    iget-object v1, p0, Lfe/l$a;->c:Lfe/l;

    iget-object v2, p0, Lfe/l$a;->b:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lfe/l;->d(Lfe/l;Lfe/l$c;Landroid/content/Context;)V

    return-void
.end method
