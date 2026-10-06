.class public Lbg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lsf/d;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lsf/d;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lbg/a;-><init>(Lsf/d;I)V

    return-void
.end method

.method public constructor <init>(Lsf/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbg/a;->a:Lsf/d;

    invoke-virtual {p1, p2}, Lsf/d;->n(I)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lbg/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lsf/d;->e()Z

    move-result p2

    iput-boolean p2, p0, Lbg/a;->c:Z

    invoke-virtual {p1}, Lsf/d;->f()Z

    move-result p2

    iput-boolean p2, p0, Lbg/a;->d:Z

    invoke-virtual {p1}, Lsf/d;->u()Z

    move-result p1

    iput-boolean p1, p0, Lbg/a;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lsf/d;
    .locals 1

    iget-object v0, p0, Lbg/a;->a:Lsf/d;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbg/a;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lbg/a;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lbg/a;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lbg/a;->e:Z

    return v0
.end method
