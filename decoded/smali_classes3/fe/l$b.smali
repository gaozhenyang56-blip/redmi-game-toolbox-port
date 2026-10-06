.class Lfe/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfe/l;->j(Lfe/l$c;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfe/l$c;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lfe/l;


# direct methods
.method constructor <init>(Lfe/l;Lfe/l$c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lfe/l$b;->c:Lfe/l;

    iput-object p2, p0, Lfe/l$b;->a:Lfe/l$c;

    iput-object p3, p0, Lfe/l$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lfe/l$b;->c:Lfe/l;

    iget-object v1, p0, Lfe/l$b;->a:Lfe/l$c;

    iget-object v2, p0, Lfe/l$b;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Lfe/l;->e(Lfe/l;Lfe/l$c;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
