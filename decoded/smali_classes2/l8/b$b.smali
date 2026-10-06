.class public Ll8/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/View;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8/b$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "default_float_window_tag"

    invoke-virtual {p0, v0}, Ll8/b$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ll8/b;->o()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ll8/b;->o()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll8/b;

    invoke-virtual {v0}, Ll8/b;->t()V

    invoke-static {}, Ll8/b;->o()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Ll8/b;

    invoke-direct {v0, p0, p1}, Ll8/b;-><init>(Ll8/b$b;Ljava/lang/String;)V

    invoke-static {}, Ll8/b;->o()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ll8/b;->C()V

    return-void
.end method

.method public c(Ljava/lang/String;)Ll8/b$b;
    .locals 0

    iput-object p1, p0, Ll8/b$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d(II)Ll8/b$b;
    .locals 0

    iput p1, p0, Ll8/b$b;->c:I

    iput p2, p0, Ll8/b$b;->d:I

    return-object p0
.end method

.method public e(Landroid/view/View;II)Ll8/b$b;
    .locals 0

    iput-object p1, p0, Ll8/b$b;->b:Landroid/view/View;

    iput p2, p0, Ll8/b$b;->e:I

    iput p3, p0, Ll8/b$b;->f:I

    return-object p0
.end method
