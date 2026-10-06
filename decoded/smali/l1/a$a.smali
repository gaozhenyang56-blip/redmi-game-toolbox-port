.class Ll1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll1/a;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll1/a;


# direct methods
.method constructor <init>(Ll1/a;)V
    .locals 0

    iput-object p1, p0, Ll1/a$a;->a:Ll1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Ll1/a$a;->a:Ll1/a;

    invoke-static {v0}, Ll1/a;->f(Ll1/a;)Lg1/c;

    move-result-object v1

    invoke-virtual {v1}, Lg1/c;->o()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Ll1/a;->i(Ll1/a;Z)V

    return-void
.end method
