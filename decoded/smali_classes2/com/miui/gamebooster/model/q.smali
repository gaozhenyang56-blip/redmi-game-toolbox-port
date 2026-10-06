.class public Lcom/miui/gamebooster/model/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/miui/gamebooster/model/r;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
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
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/model/q;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/miui/gamebooster/model/r;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/q;->b:Lcom/miui/gamebooster/model/r;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/q;->d:I

    return v0
.end method

.method public e(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/gamebooster/model/q;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/q;->a:Ljava/lang/String;

    return-void
.end method

.method public g(Lcom/miui/gamebooster/model/r;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/q;->b:Lcom/miui/gamebooster/model/r;

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/q;->d:I

    return-void
.end method
