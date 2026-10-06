.class public Lcom/miui/applicationlock/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/r;->b:Ljava/util/Map;

    iput p1, p0, Lcom/miui/applicationlock/widget/r;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/widget/r;->c(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public b(Ljava/lang/String;FFF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/widget/r;->c(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/r;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/r;->b:Ljava/util/Map;

    iget v1, p0, Lcom/miui/applicationlock/widget/r;->a:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/r;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
