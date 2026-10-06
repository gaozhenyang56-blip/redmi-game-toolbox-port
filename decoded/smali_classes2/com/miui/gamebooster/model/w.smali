.class public Lcom/miui/gamebooster/model/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/miui/gamebooster/model/r;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh8/r;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/miui/gamebooster/model/r;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/w;->b:Lcom/miui/gamebooster/model/r;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/w;->d:I

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh8/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/model/w;->c:Ljava/util/List;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/w;->a:Ljava/lang/String;

    return-void
.end method

.method public f(Lcom/miui/gamebooster/model/r;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/w;->b:Lcom/miui/gamebooster/model/r;

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/w;->d:I

    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh8/r;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/gamebooster/model/w;->c:Ljava/util/List;

    return-void
.end method
